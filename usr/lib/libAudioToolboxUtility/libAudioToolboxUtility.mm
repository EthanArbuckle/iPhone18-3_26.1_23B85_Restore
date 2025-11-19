BOOL CADeprecated::CAMutex::Lock(CADeprecated::CAMutex *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((this + 24));
    if (v4)
    {
      v7 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "CAMutex.cpp";
        v11 = 1024;
        v12 = 106;
        _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Lock: Could not lock the mutex", &v9, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F595E710;
      exception[2] = v7;
    }

    atomic_store(v2, this + 2);
  }

  result = v3 == 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void CADeprecated::CAMutex::Unlock(CADeprecated::CAMutex *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    atomic_store(0, this + 2);
    v3 = pthread_mutex_unlock((this + 24));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "CAMutex.cpp";
        v9 = 1024;
        v10 = 152;
        _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Unlock: Could not unlock the mutex", &v7, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F595E710;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "CAMutex.cpp";
    v9 = 1024;
    v10 = 160;
    _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

BOOL CACFPreferencesGetAppBooleanValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v6 = v4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &v10;
  }

  v8 = CASmartPreferences::InterpretBoolean(v4, v7, v5);
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

BOOL CASmartPreferences::InterpretBoolean(CASmartPreferences *this, _BYTE *a2, BOOL *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  *a2 = 0;
  if (this)
  {
    v4 = this;
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      LODWORD(this) = CFBooleanGetValue(v4);
LABEL_6:
      *a2 = 1;
      goto LABEL_7;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      LODWORD(this) = valuePtr != 0;
      goto LABEL_6;
    }

    if (v5 != CFStringGetTypeID())
    {
      LODWORD(this) = 0;
      goto LABEL_7;
    }

    CFStringGetCString(v4, buffer, 64, 0x600u);
    if (sscanf(buffer, "%d", &valuePtr) == 1)
    {
      *a2 = 1;
      LODWORD(this) = valuePtr != 0;
      goto LABEL_7;
    }

    v8 = buffer[0];
    if (buffer[0])
    {
      v9 = &buffer[1];
      do
      {
        *(v9 - 1) = __tolower(v8);
        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }

    if (!(*buffer ^ 0x6F6E | buffer[2]) || (*buffer == 1936482662 ? (v11 = v14 == 101) : (v11 = 0), v11))
    {
      LODWORD(this) = 0;
      goto LABEL_6;
    }

    if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | v14))
    {
      LODWORD(this) = 1;
      *a2 = 1;
    }

    else
    {
      LODWORD(this) = valuePtr;
    }
  }

LABEL_7:
  result = this != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void CASerializer::~CASerializer(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const __CFDictionary *CACFDictionary::GetCACFString(const __CFDictionary **this, const __CFString *a2, CACFString *a3)
{
  CACFString::operator=(a3, 0);
  result = *this;
  if (*this)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v7 = result;
      v8 = CFGetTypeID(result);
      result = CFStringGetTypeID();
      if (v8 == result)
      {

        return CACFString::operator=(a3, v7);
      }
    }
  }

  return result;
}

uint64_t CACFString::operator=(uint64_t a1, CFTypeRef cf)
{
  v3 = *a1;
  if (v3 == cf)
  {
    v4 = v3;
  }

  else
  {
    v4 = cf;
    if (v3 && (*(a1 + 8) & 1) != 0)
    {
      CFRelease(v3);
    }

    *a1 = v4;
  }

  *(a1 + 8) = 1;
  if (v4)
  {
    CFRetain(v4);
  }

  return a1;
}

uint64_t CADeprecated::XMachServer::DoForEachClient(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 112);
  result = (*(*(a1 + 112) + 16))(a1 + 112);
  v6 = result;
  v7 = v4[11];
  if (v7 != v4[12])
  {
    do
    {
      result = (*(a2 + 16))(a2, *v7++);
    }

    while (v7 != *(a1 + 208));
  }

  if (v6)
  {
    return (*(*v4 + 24))(v4);
  }

  return result;
}

void *CASmartPreferences::instance(CASmartPreferences *this)
{
  {
    CASmartPreferences::CASmartPreferences(&CASmartPreferences::instance(void)::global);
  }

  return &CASmartPreferences::instance(void)::global;
}

void CASmartPreferences::CASmartPreferences(CASmartPreferences *this)
{
  *this = 850045863;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 8) = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  global_queue = dispatch_get_global_queue(0, 0);
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v3 = dispatch_source_create(MEMORY[0x1E69E9700], 1uLL, 0, global_queue);
  *(this + 12) = v3;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = ___ZN18CASmartPreferencesC2Ev_block_invoke;
  handler[3] = &__block_descriptor_tmp_245;
  handler[4] = this;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_resume(*(this + 12));
}

void CASmartPreferences::_RegisterFirstHandler(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4)
{
  std::mutex::lock(a1);
  if ((CASmartPreferences::HavePref(a1, a2, a3) & 1) == 0)
  {
    CFRetain(a2);
    CFRetain(a3);
    v9 = *(a1 + 80);
    v8 = *(a1 + 88);
    if (v9 < v8)
    {
      std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(*(a1 + 80), a2, a3, a4);
      v10 = v9 + 48;
      *(a1 + 80) = v9 + 48;
LABEL_24:
      *(a1 + 80) = v10;
      CFSetAddValue(*(a1 + 64), a3);
      CASmartPreferences::Pref::Load((*(a1 + 80) - 48));
      goto LABEL_25;
    }

    v11 = *(a1 + 72);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
    if (v12 + 1 > 0x555555555555555)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v11) >> 4);
    v14 = 2 * v13;
    if (2 * v13 <= v12 + 1)
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v14;
    }

    v31 = a1 + 72;
    if (v15)
    {
      if (v15 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v28 = 0;
    v29 = 48 * v12;
    v30 = 48 * v12;
    std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>((48 * v12), a2, a3, a4);
    v17 = *(a1 + 72);
    v16 = *(a1 + 80);
    v18 = 48 * v12 - (v16 - v17);
    *&v30 = v30 + 48;
    if (v16 == v17)
    {
LABEL_23:
      v25 = *(a1 + 72);
      *(a1 + 72) = v18;
      v26 = *(a1 + 88);
      v27 = v30;
      *(a1 + 80) = v30;
      *&v30 = v25;
      *(&v30 + 1) = v26;
      v28 = v25;
      v29 = v25;
      std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(&v28);
      v10 = v27;
      goto LABEL_24;
    }

    v19 = (v29 - 16 * ((v16 - v17) >> 4) + 40);
    v20 = v17 + 40;
    v21 = v29 - (v16 - v17);
    while (1)
    {
      *(v19 - 5) = *(v20 - 5);
      v22 = *v20;
      if (*v20)
      {
        if (v20 - 3 == v22)
        {
          *v19 = v19 - 3;
          (*(**v20 + 24))();
          goto LABEL_21;
        }

        *v19 = v22;
        v23 = v20;
      }

      else
      {
        v23 = (v21 + 40);
      }

      *v23 = 0;
LABEL_21:
      v21 += 48;
      v19 += 6;
      v24 = (v20 + 1);
      v20 += 6;
      if (v24 == v16)
      {
        do
        {
          std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100]((v17 + 16));
          v17 += 48;
        }

        while (v17 != v16);
        goto LABEL_23;
      }
    }
  }

LABEL_25:
  std::mutex::unlock(a1);
}

void sub_1DE1D388C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(va);
  std::mutex::unlock(v4);
  _Unwind_Resume(a1);
}

uint64_t CASmartPreferences::HavePref(CASmartPreferences *this, CFTypeRef cf1, const __CFString *a3)
{
  v3 = *(this + 9);
  v4 = *(this + 10);
  if (v3 == v4)
  {
    return 0;
  }

  while (!CFEqual(cf1, *v3) || !CFEqual(a3, v3[1]))
  {
    v3 += 6;
    if (v3 == v4)
    {
      return 0;
    }
  }

  return 1;
}

void *std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](v9, a4);
  *a1 = a2;
  a1[1] = a3;
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100]((a1 + 2), v9);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](v9);
  v7 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE1D39BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

CFPropertyListRef CASmartPreferences::Pref::Load(CFStringRef *this)
{
  result = CFPreferencesCopyAppValue(*this, this[1]);
  if (result)
  {
    v4 = result;
    v3 = this[5];
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(v3->isa + 6))(v3, &v4);
  }

  return result;
}

void CALog::Scope::SetPriorityThresholdFromPreference(CALog::Scope *this, const __CFString *a2, const __CFString *a3)
{
  v4[8] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F595E448;
  v3[1] = this;
  v3[3] = v3;
  CASmartPreferences::instance(this);
  v3[4] = CALog::PrefValueToPriority;
  std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v4, v3);
  v4[7] = 0;
  operator new();
}

void sub_1DE1D3CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *CAAudioChannelLayout::RefCountedLayout::operator new(CAAudioChannelLayout::RefCountedLayout *this)
{
  result = malloc_type_malloc(this + 16, 0xE11AA448uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_alloc::bad_alloc(exception);
  }

  return result;
}

_DWORD *CAAudioChannelLayout::RefCountedLayout::CreateWithNumberChannelDescriptions(CAAudioChannelLayout::RefCountedLayout *this)
{
  v1 = caulk::numeric::exceptional_mul<unsigned int>(this);
  v2 = caulk::numeric::exceptional_add<unsigned int>(v1);
  v3 = CAAudioChannelLayout::RefCountedLayout::operator new(v2);
  v3[2] = 1;
  v3[3] = v2;
  *v3 = &unk_1F595E030;
  bzero(v3 + 4, v2);
  return v3;
}

void CAAudioChannelLayout::CAAudioChannelLayout(CAAudioChannelLayout *this)
{
  *this = CAAudioChannelLayout::RefCountedLayout::CreateWithNumberChannelDescriptions(0);
}

{
  *this = CAAudioChannelLayout::RefCountedLayout::CreateWithNumberChannelDescriptions(0);
}

uint64_t caulk::numeric::exceptional_mul<unsigned int>(unsigned int a1)
{
  result = 20 * a1;
  if ((result & 0xFFFFFFFF00000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic multiplication overflow");
  }

  return result;
}

uint64_t caulk::numeric::exceptional_add<unsigned int>(int a1)
{
  v1 = __CFADD__(a1, 12);
  result = (a1 + 12);
  if (v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
  }

  return result;
}

void caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::_addOrReplace(uint64_t a1, unsigned int a2)
{
  std::mutex::lock((a1 + 48));
  v4 = atomic_load((a1 + 8));
  v5 = *a1 + 1;
  *a1 = v5;
  if (v4)
  {
    v6 = 16 * v5;
    v7 = *(v4 + 8);
    if (v6 / v7 < 0xB)
    {
      goto LABEL_6;
    }

    v8 = 2 * v7;
  }

  else
  {
    v8 = 8;
  }

  v4 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::rehash(a1, v8);
LABEL_6:
  if ((caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(v4, a2) & 1) == 0)
  {
    operator new();
  }

  --*a1;

  std::mutex::unlock((a1 + 48));
}

void BaseOpaqueObject::BaseOpaqueObject(BaseOpaqueObject *this)
{
  *this = &unk_1F595E5E8;
  v2 = OpaqueObjectMgrInstance();
  *(this + 2) = OpaqueObjectMgr::add(v2, this);
}

uint64_t OpaqueObjectMgrInstance(void)
{
  if (atomic_load_explicit(&OpaqueObjectMgrInstance(void)::onceflag, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&OpaqueObjectMgrInstance(void)::onceflag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<OpaqueObjectMgrInstance(void)::$_0 &&>>);
  }

  return OpaqueObjectMgr::sInstance;
}

uint64_t OpaqueObjectMgr::add(atomic_uint *this, BaseOpaqueObject *a2)
{
  do
  {
    add = atomic_fetch_add(this + 28, 1u);
    if ((add & 0x80000000) != 0)
    {
      v4 = (add & 0x7FFFFFFF) + 4096;
      atomic_compare_exchange_strong(this + 28, &add, v4);
      add = v4;
    }

    v5 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::lookup<(caulk::concurrent::guarded_lookup_hash_table_options)0,void>(this, add);
  }

  while ((v6 & 1) != 0 && v5);
  caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::_addOrReplace(this, add);
  return add;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::lookup<(caulk::concurrent::guarded_lookup_hash_table_options)0,void>(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 16);
  atomic_fetch_add((a1 + 16), 1u);
  result = atomic_load((a1 + 8));
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(result, a2);
    if (v4)
    {
      result = *(v4 + 8);
    }

    else
    {
      result = 0;
    }
  }

  atomic_fetch_add(v2, 0xFFFFFFFF);
  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  v3 = a2 % v2;
  if ((a2 % v2) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(result + 8);
  }

  v5 = (v3 + v4 - 3);
  v6 = 0xFFFFFFFFLL;
  v7 = 1;
  v8 = a2 % v2;
  do
  {
    v9 = v5;
    v10 = atomic_load((result + 16 + 8 * v8));
    if (v10 == -1)
    {
      if (v6 >= 0)
      {
        v6 = v6;
      }

      else
      {
        v6 = v8;
      }
    }

    else
    {
      if (!v10)
      {
        v7 = 0;
        if (v6 >= 0)
        {
          v8 = v6;
        }

        else
        {
          v8 = v8;
        }

        return v7 | (v8 << 32);
      }

      if (*(v10 + 4) == a2)
      {
        return v7 | (v8 << 32);
      }
    }

    if (v9 >= 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(result + 8);
    }

    v5 = (v9 + v11 - 3);
    v8 = v9;
  }

  while (v9 != v3);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = v6;
    return v7 | (v8 << 32);
  }

  __break(1u);
  return result;
}

uint64_t CADeprecated::XMachReceivePort::CreateMachPort(atomic_uint *this, integer_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  CADeprecated::XMachReceivePort::SetMachPort(this, 0);
  name = 0;
  v4 = MEMORY[0x1E69E9A60];
  v5 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
  if (v5)
  {
    v19 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v26 = "XMachServer.cpp";
      v27 = 1024;
      v28 = 149;
      v29 = 2080;
      v30 = "ret = mach_port_allocate(mach_task_self(), MACH_PORT_RIGHT_RECEIVE, &port)";
      v31 = 1024;
      v32 = v19;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_verify_noerr: [%s, %d]", buf, 0x22u);
    }
  }

  else
  {
    inserted = mach_port_insert_right(*v4, name, name, 0x14u);
    if (!inserted)
    {
      atomic_store(name, this);
      if (a2 >= 1)
      {
        port_info_outCnt = 1;
        v7 = *v4;
        v8 = atomic_load(this);
        attributes = mach_port_get_attributes(v7, v8, 1, &port_info_out, &port_info_outCnt);
        if (!attributes)
        {
          port_info_out = a2;
          v14 = *v4;
          v15 = atomic_load(this);
          v16 = MEMORY[0x1E12BF980](v14, v15, 1, &port_info_out, 1);
          if (!v16)
          {
            goto LABEL_11;
          }

          v17 = v16;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }

          v18 = mach_error_string(v17);
          *buf = 136315650;
          v26 = "XMachServer.cpp";
          v27 = 1024;
          v28 = 169;
          v29 = 2080;
          v30 = v18;
          v12 = MEMORY[0x1E69E9C10];
          v13 = "%25s:%-5d couldn't set mach port limits info (%s)";
          goto LABEL_10;
        }

        v10 = attributes;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = mach_error_string(v10);
          *buf = 136315650;
          v26 = "XMachServer.cpp";
          v27 = 1024;
          v28 = 164;
          v29 = 2080;
          v30 = v11;
          v12 = MEMORY[0x1E69E9C10];
          v13 = "%25s:%-5d couldn't get mach port limits info (%s)";
LABEL_10:
          _os_log_impl(&dword_1DE1D2000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x1Cu);
        }
      }

LABEL_11:
      v19 = 0;
      goto LABEL_12;
    }

    v19 = inserted;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v26 = "XMachServer.cpp";
      v27 = 1024;
      v28 = 153;
      v29 = 2080;
      v30 = "ret = mach_port_insert_right(mach_task_self(), port, port, MACH_MSG_TYPE_MAKE_SEND)";
      v31 = 1024;
      v32 = v19;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_verify_noerr: [%s, %d]", buf, 0x22u);
    }

    mach_port_mod_refs(*v4, name, 1u, -1);
  }

LABEL_12:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

atomic_uint *CADeprecated::XMachReceivePort::SetMachPort(atomic_uint *this, unsigned int a2)
{
  v2 = atomic_exchange(this, a2);
  if (v2)
  {
    v3 = MEMORY[0x1E69E9A60];
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v2, 1u, -1);
    v4 = *v3;

    return mach_port_deallocate(v4, v2);
  }

  return this;
}

uint64_t CADeprecated::XBasicMIGServer::SetServerDispatchQueue(uint64_t result, dispatch_queue_t *a2)
{
  if (atomic_load_explicit(*(result + 40), memory_order_acquire))
  {
    v3 = result;
    explicit = atomic_load_explicit(*(result + 40), memory_order_acquire);
    v5 = dispatch_source_create(MEMORY[0x1E69E96D8], explicit, 0, *a2);
    v6 = v5;
    handler[6] = v5;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 1174405120;
    handler[2] = ___ZN12CADeprecated15XBasicMIGServer22SetServerDispatchQueueERKN10applesauce8dispatch2v15queueE_block_invoke;
    handler[3] = &__block_descriptor_tmp_8;
    handler[4] = v3;
    handler[5] = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    dispatch_source_set_event_handler(v6, handler);
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1174405120;
    v9[2] = ___ZN12CADeprecated15XBasicMIGServer22SetServerDispatchQueueERKN10applesauce8dispatch2v15queueE_block_invoke_9;
    v9[3] = &__block_descriptor_tmp_10;
    v9[4] = v7;
    v9[5] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    dispatch_source_set_cancel_handler(v6, v9);
    CADeprecated::XMachPortServicer::SetQueueAndSource();
  }

  return result;
}

void sub_1DE1D479C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_object_t object)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c37_ZTSN10applesauce8dispatch2v16sourceE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

uint64_t __copy_helper_block_e8_32c60_ZTSNSt3__110shared_ptrIN12CADeprecated16XMachReceivePortEEE(uint64_t result, uint64_t a2)
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

void *CADeprecated::XMachPortServicer::DispatchImpl::DispatchImpl(void *a1, dispatch_queue_t *a2, dispatch_object_t *a3)
{
  v6 = *a2;
  *a1 = &unk_1F595DEB8;
  a1[1] = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *a3;
  a1[2] = *a3;
  if (v7)
  {
    dispatch_retain(v7);
    v7 = *a3;
  }

  dispatch_set_target_queue(v7, *a2);
  dispatch_resume(*a3);
  return a1;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t BaseOpaqueObject::checkRTTI(uint64_t a1)
{
  if ((*(*a1 + 24))(a1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t mshMIGPerform(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(a4 + 4);
  v7 = *(a1 + 20);
  v8 = *(v6 + 8);
  if (*(v6 + 12) <= v7 || v7 < v8)
  {
    MEMORY[0x1EEE9AC00]();
    v11 = &v32;
    v12 = 0;
    v14 = 0;
  }

  else
  {
    v13 = v6 + 40 * (v7 - v8);
    v14 = *(v13 + 40);
    *(v13 + 64);
    v15 = MEMORY[0x1EEE9AC00]();
    v11 = (&previous - v16);
    if (v15 <= 0x2000)
    {
      v12 = 0;
    }

    else
    {
      v11 = malloc_type_malloc(v15, 0x19B6FAB4uLL);
      v10 = *(a1 + 20);
      v12 = 1;
    }
  }

  v17 = *(a1 + 8);
  v11->msgh_bits = *a1 & 0x1F;
  v11->msgh_size = 36;
  *&v11->msgh_remote_port = v17;
  v11->msgh_id = v10 + 100;
  if (!v14)
  {
    v19 = *(a1 + 20);
    if (v19 == 71)
    {
      v25 = *(a4 + 3);
      if (v25)
      {
        v25(a1, *(a4 + 1));
      }
    }

    else
    {
      if (v19 != 70)
      {
        *&v11[1].msgh_bits = *MEMORY[0x1E69E99E0];
        v11[1].msgh_remote_port = -303;
        goto LABEL_28;
      }

      v20 = *(a4 + 2);
      if (v20)
      {
        v21 = *(a1 + 32);
        v34 = *(a1 + 32);
        if (*(a1 + 28) != *(MEMORY[0x1E69E99E0] + 4))
        {
          v21 = bswap32(v34);
        }

        v22 = v20(v21, a1, *(a4 + 1));
        v34 = v22;
        if (v22)
        {
          previous = 0;
          v23 = *a4;
          v24 = *MEMORY[0x1E69E9A60];
          mach_port_request_notification(*MEMORY[0x1E69E9A60], v23, 70, v22, v23, 0x15u, &previous);
          if (previous)
          {
            mach_port_mod_refs(v24, previous, 2u, -1);
          }
        }

        else
        {
          *(a4 + 2) = 0;
        }
      }
    }

    if ((v12 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if ((a4[1] & 2) != 0)
  {
    *(a1 + 12) = *(a4 + 1);
  }

  v14(a1, v11);
  if ((v11->msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  msgh_remote_port = v11[1].msgh_remote_port;
  if (!msgh_remote_port)
  {
    goto LABEL_30;
  }

  if (msgh_remote_port == -305)
  {
    v11->msgh_remote_port = 0;
    goto LABEL_38;
  }

LABEL_28:
  if ((*a1 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0;
    mach_msg_destroy(a1);
  }

LABEL_30:
  if (v11->msgh_remote_port)
  {
    if ((v11->msgh_bits & 0x1F) == 0x12)
    {
      v26 = 1;
    }

    else
    {
      v26 = 17;
    }

    v27 = mach_msg(v11, v26, v11->msgh_size, 0, 0, 0, 0);
    if ((v27 - 268435459) >= 2)
    {
      if (v27)
      {
        v28 = *MEMORY[0x1E69E9848];
        v29 = getpid();
        fprintf(v28, "%d: badly generated MIG reply for port %x\n", v29, *a4);
      }
    }

    else
    {
      mach_msg_destroy(v11);
    }
  }

LABEL_38:
  if (v12)
  {
LABEL_39:
    free(v11);
  }

LABEL_40:
  v30 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t MSHMIGDispatchMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v4, 0, sizeof(v4));
  v5 = a3;
  return mshMIGPerform(a1, a2, a3, v4);
}

uint64_t CADeprecated::CAGuard::NotifyAll(CADeprecated::CAGuard *this)
{
  v9 = *MEMORY[0x1E69E9840];
  result = pthread_cond_broadcast((this + 88));
  if (result)
  {
    v4 = result;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v6 = "CAGuard.cpp";
      v7 = 1024;
      v8 = 320;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::NotifyAll: failed", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F595E710;
    exception[2] = v4;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void CASerializer::Write(const __CFData **this, const UInt8 *a2, unsigned int a3, int a4)
{
  CASerializer::PrepareToWrite(this, a4);
  v7 = *this;

  CFDataAppendBytes(v7, a2, a3);
}

void CASerializer::PrepareToWrite(const __CFData **this, int a2)
{
  Mutable = *this;
  if (Mutable)
  {
    if (!a2)
    {
      return;
    }
  }

  else
  {
    Mutable = CFDataCreateMutable(0, 0);
    *this = Mutable;
    if (!a2)
    {
      return;
    }
  }

  v5 = (a2 - 1) & CFDataGetLength(Mutable);
  if (v5)
  {
    v6 = *this;

    CFDataAppendBytes(v6, CASerializer::PrepareToWrite::pad, (a2 - v5));
  }
}

uint64_t BaseOpaqueObject::ResolveOpaqueRef(uint64_t a1, unsigned int a2)
{
  result = OpaqueObjectMgr::sInstance;
  if (OpaqueObjectMgr::sInstance)
  {
    v4 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::lookup<(caulk::concurrent::guarded_lookup_hash_table_options)0,void>(OpaqueObjectMgr::sInstance, a2);
    result = 0;
    if (v5)
    {
      if (v4)
      {
        if ((*(*v4 + 24))(v4, a1))
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t PropertyMarshaller::Deserialize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1[4];
  if (a1[5])
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (v6)
  {
    return 829646194;
  }

  v12 = (*(*a1 + 16))(a1);
  v13 = a1[5];
  a1[5] = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    v12 = a1[5];
  }

  if (!v12)
  {
    v14 = *(*a1 + 24);
    v15 = a1;

    return v14(v15);
  }

  if (!(*(*v12 + 24))(v12, v5, a3, a4))
  {
    v14 = *(*a1 + 32);
    v15 = a1;

    return v14(v15);
  }

  result = 0;
  if (!a5)
  {
    *(a1[5] + 16) = *(a1[5] + 8);
  }

  return result;
}

BOOL CADeserializer::Read(CADeserializer *this, void *a2, unsigned int a3, int a4)
{
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this, a3, a4);
  if (Ptr)
  {
    memcpy(a2, Ptr, a3);
  }

  else
  {
    bzero(a2, a3);
  }

  return Ptr != 0;
}

uint64_t CADeserializer::GetAndAdvanceReadPtr(CADeserializer *this, unsigned int a2, int a3)
{
  result = *(this + 2);
  if (a3)
  {
    v5 = (a3 - 1) & (result - *(this + 2));
    if (v5)
    {
      v6 = (a3 - v5);
      if (*(this + 3) - result < v6)
      {
LABEL_6:
        result = 0;
        *(this + 32) = 1;
        return result;
      }

      result += v6;
      *(this + 2) = result;
    }
  }

  if (*(this + 3) - result < a2)
  {
    goto LABEL_6;
  }

  *(this + 2) = result + a2;
  return result;
}

void CADeserializer::~CADeserializer(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL CADeprecated::CAGuard::WaitFor(CADeprecated::CAGuard *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = pthread_self();
  v5 = atomic_load(this + 2);
  if (!pthread_equal(v4, v5))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "CAGuard.cpp";
      v16 = 1024;
      v17 = 130;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::WaitFor: A thread has to have locked a guard be for it can wait", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F595E710;
    exception[2] = 1;
LABEL_13:
  }

  v6 = a2 / 0x3B9ACA00;
  v7 = a2 % 0x3B9ACA00;
  if (a2 < 0x3B9ACA00)
  {
    v6 = 0;
    v7 = a2;
  }

  v13.tv_sec = v6;
  v13.tv_nsec = v7;
  atomic_store(0, this + 2);
  v8 = pthread_cond_timedwait_relative_np((this + 88), (this + 24), &v13);
  v9 = v8;
  if (v8 && v8 != 60)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "CAGuard.cpp";
      v16 = 1024;
      v17 = 169;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::WaitFor: Wait got an error", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F595E710;
    exception[2] = v9;
    goto LABEL_13;
  }

  atomic_store(pthread_self(), this + 2);
  result = v9 == 60;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void CABundleLocker::CABundleLocker(CABundleLocker *this)
{
  pthread_mutex_lock(&sCABundleLocker);
}

{
  pthread_mutex_lock(&sCABundleLocker);
}

void CABundleLocker::~CABundleLocker(CABundleLocker *this)
{
  pthread_mutex_unlock(&sCABundleLocker);
}

{
  pthread_mutex_unlock(&sCABundleLocker);
}

uint64_t SharableMemoryBlock::InitServer(uint64_t a1, size_t a2, _DWORD *a3)
{
  address[8] = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(a1);
  v6 = a3[2];
  if (v6 == 2)
  {
    v13 = atomic_fetch_add_explicit(&SharableMemoryBlock::InitServer(unsigned long,SharableMemoryBlock::ServerToken &)::gBufSerialNum, 1u, memory_order_relaxed) + 1;
    *(a1 + 40) = v13;
    v14 = getpid();
    snprintf(address, 0x40uLL, "AppleABL.%x.%x", v14, v13);
    v15 = shm_open(address, 514, 511);
    *(a1 + 36) = v15;
    if (v15 == -1)
    {
      LogPosixError("shm_open");
      memory_entry_64 = *__error();
      goto LABEL_26;
    }

    ftruncate(v15, a2);
    *(a1 + 16) = a2;
    v16 = mmap(0, a2, 3, 1, *(a1 + 36), 0);
    *(a1 + 24) = v16;
    if (v16 + 1 <= 1)
    {
      memory_entry_64 = *__error();
      LogPosixError("mmap");
      close(*(a1 + 36));
      *(a1 + 36) = -1;
      shm_unlink(address);
      goto LABEL_26;
    }

    memory_entry_64 = 0;
    *(a1 + 8) = 257;
    a3[3] = *(a1 + 16);
    v17 = *(a1 + 36);
LABEL_22:
    a3[4] = v17;
    goto LABEL_26;
  }

  if (v6 == 1)
  {
    *(a1 + 16) = a2;
    v12 = mmap(0, a2, 3, 4097, -1, 0);
    *(a1 + 24) = v12;
    if (v12 + 1 <= 1)
    {
      memory_entry_64 = *__error();
      LogPosixError("mmap");
      goto LABEL_26;
    }

    *(a1 + 8) = 257;
    v19 = xpc_shmem_create(v12, *(a1 + 16));
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    v20 = *(a1 + 48);
    *(a1 + 48) = v19;
    xpc_release(v20);
    a3[3] = *(a1 + 16);
    v21 = *(a1 + 48);
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      v21 = xpc_null_create();
    }

    v22 = *(a3 + 2);
    *(a3 + 2) = v21;
    xpc_release(v22);
LABEL_25:
    memory_entry_64 = 0;
    goto LABEL_26;
  }

  if (v6)
  {
    goto LABEL_25;
  }

  v7 = a2 + *MEMORY[0x1E69E9AC8] - 1;
  v8 = -*MEMORY[0x1E69E9AC8];
  address[0] = 0;
  v9 = v7 & v8;
  if ((v7 & v8) == 0)
  {
    v17 = 0;
    v18 = 0;
    *(a1 + 32) = 0;
LABEL_13:
    memory_entry_64 = 0;
    *(a1 + 8) = 257;
    *(a1 + 16) = v9;
    *(a1 + 24) = v18;
    a3[3] = v9;
    goto LABEL_22;
  }

  v10 = MEMORY[0x1E69E9A60];
  memory_entry_64 = vm_allocate(*MEMORY[0x1E69E9A60], address, v7 & v8, 1);
  if (!memory_entry_64)
  {
    size = v9;
    memory_entry_64 = mach_make_memory_entry_64(*v10, &size, address[0], 3, (a1 + 32), 0);
    if (memory_entry_64)
    {
      MEMORY[0x1E12BFDB0](*v10, address[0], v9);
      LogMachError("mach_make_memory_entry_64", memory_entry_64);
      goto LABEL_26;
    }

    ++debugSerial;
    v18 = address[0];
    *address[0] = debugSerial;
    v17 = *(a1 + 32);
    goto LABEL_13;
  }

  LogMachError("vm_allocate", memory_entry_64);
LABEL_26:
  v23 = *MEMORY[0x1E69E9840];
  return memory_entry_64;
}

void sub_1DE1D57B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const __CFData **operator<<(const __CFData **a1, const UInt8 *a2)
{
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, a2, 4);
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, a2 + 4, 4);
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, a2 + 8, 4);
  if (*(a2 + 2))
  {
    v4 = 0;
    v5 = a2 + 28;
    do
    {
      CASerializer::PrepareToWrite(a1, 4);
      CFDataAppendBytes(*a1, v5 - 16, 4);
      CASerializer::PrepareToWrite(a1, 4);
      CFDataAppendBytes(*a1, v5 - 12, 4);
      CASerializer::PrepareToWrite(a1, 4);
      CFDataAppendBytes(*a1, v5 - 8, 4);
      CASerializer::PrepareToWrite(a1, 4);
      CFDataAppendBytes(*a1, v5 - 4, 4);
      CASerializer::PrepareToWrite(a1, 4);
      CFDataAppendBytes(*a1, v5, 4);
      ++v4;
      v5 += 20;
    }

    while (v4 < *(a2 + 2));
  }

  return a1;
}

{
  CASerializer::PrepareToWrite(a1, 8);
  CFDataAppendBytes(*a1, a2, 8);
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, a2 + 8, 4);
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, a2 + 12, 4);
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, a2 + 16, 4);
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, a2 + 20, 4);
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, a2 + 24, 4);
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, a2 + 28, 4);
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, a2 + 32, 4);
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, a2 + 36, 4);
  return a1;
}

{
  CASerializer::PrepareToWrite(a1, 8);
  CFDataAppendBytes(*a1, a2, 8);
  CASerializer::PrepareToWrite(a1, 8);
  CFDataAppendBytes(*a1, a2 + 8, 8);
  return a1;
}

uint64_t Read(CADeserializer *a1, AudioChannelLayout **a2, unint64_t *a3)
{
  *a2 = 0;
  *a3 = 0;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (Ptr)
  {
    v7 = *Ptr;
  }

  else
  {
    v7 = 0;
  }

  v8 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (v8)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (v10)
  {
    v11 = *v10;
    if (*v10 > 0x400)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 32))
  {
    return 0;
  }

  v13 = 20 * v11 + 12;
  *a3 = v13;
  v14 = malloc_type_malloc(v13, 0x1000040E0EAB150uLL);
  *a2 = v14;
  v14->mChannelLayoutTag = v7;
  v14->mChannelBitmap = v9;
  v14->mNumberChannelDescriptions = v11;
  if (v11)
  {
    v15 = 0;
    v16 = 20 * v11;
    do
    {
      v17 = *a2;
      v18 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
      if (v18)
      {
        v19 = *v18;
      }

      else
      {
        v19 = 0;
      }

      *&v17[v15 + 12] = v19;
      v20 = *a2;
      v21 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
      if (v21)
      {
        v22 = *v21;
      }

      else
      {
        v22 = 0;
      }

      *&v20[v15 + 16] = v22;
      v23 = *a2;
      v24 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
      if (v24)
      {
        v25 = *v24;
      }

      else
      {
        v25 = 0;
      }

      *&v23[v15 + 20] = v25;
      v26 = *a2;
      v27 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
      if (v27)
      {
        v28 = *v27;
      }

      else
      {
        v28 = 0;
      }

      *&v26[v15 + 24] = v28;
      v29 = *a2;
      v30 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
      if (v30)
      {
        v31 = *v30;
      }

      else
      {
        v31 = 0;
      }

      *&v29[v15 + 28] = v31;
      v15 += 20;
    }

    while (v16 != v15);
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    return 1;
  }

  free(*a2);
  result = 0;
  *a2 = 0;
  *a3 = 0;
  return result;
}

uint64_t SharableMemoryBlock::InitClient(uint64_t a1, _DWORD *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(a1);
  v4 = a2[2];
  if (v4 == 2)
  {
    v10 = a2[4];
    *(a1 + 36) = v10;
    a2[4] = -1;
    v11 = a2[3];
    *(a1 + 16) = v11;
    v12 = mmap(0, v11, 3, 1, v10, 0);
    *(a1 + 24) = v12;
    if (v12 + 1 < 2)
    {
      v8 = *__error();
      LogPosixError("mmap");
      close(*(a1 + 36));
      *(a1 + 36) = -1;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v4 != 1)
  {
    if (v4)
    {
      v8 = 0;
    }

    else
    {
      *address = 0;
      v5 = a2[4];
      v6 = (*MEMORY[0x1E69E9AC8] + a2[3] - 1) & -*MEMORY[0x1E69E9AC8];
      *(a1 + 32) = v5;
      a2[4] = 0;
      v7 = MEMORY[0x1E69E9A60];
      v8 = vm_map(*MEMORY[0x1E69E9A60], address, v6, 0xFuLL, 1, v5, 0, 0, 3, 3, 1u);
      if (v8)
      {
        mach_port_deallocate(*v7, *(a1 + 32));
        *(a1 + 32) = 0;
        LogMachError("vm_map", v8);
      }

      else
      {
        *(a1 + 8) = 256;
        v17 = *address;
        *(a1 + 16) = v6;
        *(a1 + 24) = v17;
      }
    }

    goto LABEL_18;
  }

  v9 = *(a2 + 2);
  if (v9)
  {
    xpc_retain(*(a2 + 2));
  }

  else
  {
    v9 = xpc_null_create();
  }

  v13 = *(a1 + 48);
  *(a1 + 48) = v9;
  xpc_release(v13);
  v14 = xpc_null_create();
  v15 = *(a2 + 2);
  *(a2 + 2) = v14;
  xpc_release(v15);
  v16 = xpc_shmem_map(*(a1 + 48), (a1 + 24));
  *(a1 + 16) = v16;
  if (v16)
  {
LABEL_13:
    v8 = 0;
    *(a1 + 8) = 256;
    goto LABEL_18;
  }

  v18 = xpc_null_create();
  v19 = *(a1 + 48);
  *(a1 + 48) = v18;
  xpc_release(v19);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *address = 136315394;
    *&address[4] = "SharableMemory.cpp";
    v23 = 1024;
    v24 = 211;
    _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d xpc_shmem_map failed", address, 0x12u);
  }

  v8 = 0xFFFFFFFFLL;
LABEL_18:
  v20 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE1D5DAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t XOSTransactor::beginTransaction(uint64_t this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*this == 1)
  {
    v1 = this;
    if (!*(this + 24))
    {
      v2 = *(this + 8);
      v3 = *(this + 16);
      caulk::platform::process_name(v3);
      if (v7 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      snprintf(__str, 0x80uLL, "%s %p (%d:%s)", v2, v1, v3, p_p);
      if (v7 < 0)
      {
        operator delete(__p);
      }

      this = os_transaction_create();
      v1[3] = this;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return this;
}

void caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::remove(uint64_t a1, unsigned int a2)
{
  std::mutex::lock((a1 + 48));
  v4 = atomic_load((a1 + 8));
  if (v4)
  {
    SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(v4, a2);
    if (SlotForKey)
    {
      v7 = v6;
      atomic_store(0xFFFFFFFFFFFFFFFFLL, (v4 + 8 * HIDWORD(SlotForKey) + 16));
      if (v6)
      {
        v8 = atomic_load((a1 + 16));
        if (v8 >= 1)
        {
          do
          {
            __ns.__rep_ = 50000;
            std::this_thread::sleep_for (&__ns);
            v9 = atomic_load((a1 + 16));
          }

          while (v9 > 0);
        }

        if (atomic_load(v7))
        {
          std::mutex::unlock((a1 + 48));
          while (atomic_load(v7))
          {
            __ns.__rep_ = 500000;
            std::this_thread::sleep_for (&__ns);
          }

          std::mutex::lock((a1 + 48));
          v4 = atomic_load((a1 + 8));
        }

        caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::element_t::release(v7);
        v13 = *a1 - 1;
        *a1 = v13;
        if (v4)
        {
          v14 = 16 * v13;
          v15 = *(v4 + 8);
          if (v14 / v15 <= 2 && v15 >= 9)
          {
            caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::rehash(a1, v15 >> 1);
          }
        }
      }
    }
  }

  v17 = atomic_load((a1 + 16));
  if (v17 <= 0)
  {
    v19 = *(a1 + 24);
    for (i = *(a1 + 32); i != v19; std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>,void,0>(i))
    {
      --i;
    }

    *(a1 + 32) = v19;
  }

  std::mutex::unlock((a1 + 48));
}

void BaseOpaqueObject::destroyOpaqueRef(BaseOpaqueObject *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::remove(OpaqueObjectMgr::sInstance, v1);
    *(this + 2) = 0;
  }
}

void CADeprecated::XMachServer::AddMachClient(void *a1, uint64_t a2)
{
  CADeprecated::XMachPortDeathListener::RequestPortDeathNotification((a1 + 10), *(a2 + 12));
  v4 = (*(a1[14] + 16))(a1 + 14);
  v6 = a1[26];
  v5 = a1[27];
  if (v6 >= v5)
  {
    v8 = a1[25];
    v9 = v6 - v8;
    v10 = (v6 - v8) >> 3;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = (v6 - v8) >> 3;
    v15 = (8 * v10);
    v16 = (8 * v10 - 8 * v14);
    *v15 = a2;
    v7 = v15 + 1;
    memcpy(v16, v8, v9);
    a1[25] = v16;
    a1[26] = v7;
    a1[27] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = a2;
    v7 = v6 + 8;
  }

  a1[26] = v7;
  if (v4)
  {
    (*(a1[14] + 24))(a1 + 14);
  }
}

void CADeprecated::XMachPortDeathListener::RequestPortDeathNotification(CADeprecated::XMachPortDeathListener *this, mach_port_name_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (CADeprecated::XMachPortDeathListener::GetPortDeathCFPort(this))
  {
    previous = 0;
    v4 = MEMORY[0x1E69E9A60];
    v5 = *MEMORY[0x1E69E9A60];
    PortDeathCFPort = CADeprecated::XMachPortDeathListener::GetPortDeathCFPort(this);
    Port = CFMachPortGetPort(PortDeathCFPort);
    v8 = mach_port_request_notification(v5, a2, 72, 1u, Port, 0x15u, &previous);
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v10 = (*(*this + 24))(this);
        *buf = 136315906;
        v16 = "XMachServer.cpp";
        v17 = 1024;
        v18 = 103;
        v19 = 2080;
        v20 = v10;
        v21 = 1024;
        v22 = v9;
        _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: XMachServer couldn't request port-death notification (0x%x)", buf, 0x22u);
      }
    }

    v11 = previous;
    if (previous)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v12 = (*(*this + 24))(this);
        *buf = 136315906;
        v16 = "XMachServer.cpp";
        v17 = 1024;
        v18 = 116;
        v19 = 2080;
        v20 = v12;
        v21 = 1024;
        v22 = previous;
        _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%25s:%-5d %s is deallocating notification port (0x%x) because a new notification port has been registered.", buf, 0x22u);
        v11 = previous;
      }

      mach_port_deallocate(*v4, v11);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

CFMachPortRef CADeprecated::XMachPortDeathListener::GetPortDeathCFPort(CADeprecated::XMachPortDeathListener *this)
{
  result = *(this + 2);
  if (!result)
  {
    shouldFreeInfo = 0;
    v3.version = 0;
    v3.info = this;
    memset(&v3.retain, 0, 24);
    result = CFMachPortCreate(0, CADeprecated::XMachPortDeathListener::PortDeathListenerProc, &v3, &shouldFreeInfo);
    *(this + 2) = result;
  }

  return result;
}

atomic_uint **CAAudioChannelLayout::operator=(atomic_uint **a1, atomic_uint **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
      }

      v4 = *a2;
    }

    *a1 = v4;
    if (v4)
    {
      atomic_fetch_add(v4 + 2, 1u);
    }
  }

  return a1;
}

uint64_t CAReferenceCounted::releaseObject(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void CAAudioChannelLayout::~CAAudioChannelLayout(atomic_uint **this)
{
  v2 = *this;
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
    }

    *this = 0;
  }
}

void CAAudioChannelLayout::CAAudioChannelLayout(CAAudioChannelLayout *this, atomic_uint **a2)
{
  *this = 0;
  CAAudioChannelLayout::operator=(this, a2);
}

{
  *this = 0;
  CAAudioChannelLayout::operator=(this, a2);
}

uint64_t PropertyMarshaller::Serialize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1[3];
  if (a1[5])
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (v6)
  {
    return 829646194;
  }

  v12 = (*(*a1 + 16))(a1);
  v13 = a1[5];
  a1[5] = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    v12 = a1[5];
  }

  if (v12)
  {
    if (a5 == 1)
    {
      v12[32] = 1;
    }

    if ((*(*v12 + 16))(v12, v5, a3, a4))
    {
      return 0;
    }

    v14 = *(*a1 + 32);
    v15 = a1;
  }

  else
  {
    v14 = *(*a1 + 24);
    v15 = a1;
  }

  return v14(v15);
}

uint64_t ___ZN12CADeprecated15XBasicMIGServer22SetServerDispatchQueueERKN10applesauce8dispatch2v15queueE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    mach_absolute_time();
  }

  v3 = *(a1 + 40);
  v5 = *(v2 + 24);
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE70070](v3, v4, v5);
}

void XOSTransactor::endTransaction(XOSTransactor *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    os_release(v2);
    *(this + 3) = 0;
  }
}

void CADeprecated::XMachPortSendRight::~XMachPortSendRight(mach_port_name_t *this)
{
  if (*this)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *this);
  }
}

void SharableMemoryBlock::Free(SharableMemoryBlock *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 3))
  {
    if (*(this + 9) == 1)
    {
      if (*(this + 8))
      {
        v2 = MEMORY[0x1E69E9A60];
        v3 = *(this + 2);
        v4 = MEMORY[0x1E12BFDB0](*MEMORY[0x1E69E9A60]);
        if (v4)
        {
          LogMachError("vm_deallocate", v4);
        }

        v5 = *(this + 8);
        if (v5)
        {
          v6 = mach_port_deallocate(*v2, v5);
          if (v6)
          {
            LogMachError("mach_port_deallocate", v6);
          }
        }

        *(this + 9) = 0;
        *(this + 8) = 0;
      }

      else if (MEMORY[0x1E12BFF40](*(this + 6)) == MEMORY[0x1E69E9ED0])
      {
        if (*(this + 9) != -1)
        {
          if (munmap(*(this + 3), *(this + 2)))
          {
            LogPosixError("munmap");
          }

          if (close(*(this + 9)))
          {
            LogPosixError("close");
          }

          if (*(this + 8) == 1)
          {
            v9 = *(this + 10);
            v10 = getpid();
            snprintf(__str, 0x40uLL, "AppleABL.%x.%x", v10, v9);
            if (shm_unlink(__str))
            {
              LogPosixError("shm_unlink");
            }
          }

          *(this + 9) = -1;
        }
      }

      else
      {
        v7 = xpc_null_create();
        v8 = *(this + 6);
        *(this + 6) = v7;
        xpc_release(v8);
        if (munmap(*(this + 3), *(this + 2)))
        {
          LogPosixError("munmap");
        }
      }
    }

    else if (*(this + 8) == 1)
    {
      free(*(this + 3));
    }
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1DE1D69B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t XPC_Connection::ProcessMessage(XPC_Connection *this, void *a2)
{
  if (MEMORY[0x1E12BFF40](a2) == MEMORY[0x1E69E9E98])
  {
    result = *(this + 5);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(this + 3);
    if (!result)
    {
      return result;
    }
  }

  v4 = *(result + 16);

  return v4();
}

uint64_t std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<CALog::Scope::SetPriorityThresholdFromPreference(__CFString const*,__CFString const*)::$_0,std::allocator<CALog::Scope::SetPriorityThresholdFromPreference(__CFString const*,__CFString const*)::$_0>,void ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F595E448;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

void XPC_Object::~XPC_Object(XPC_Object *this)
{
  *this = &unk_1F595DDB8;
  if (*(this + 1))
  {
    v1 = atomic_load(this + 16);
    if (v1)
    {
      xpc_release(*(this + 1));
    }
  }
}

{
  XPC_Object::~XPC_Object(this);

  JUMPOUT(0x1E12BF450);
}

void sub_1DE1D6CCC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void BaseOpaqueObject::~BaseOpaqueObject(BaseOpaqueObject *this)
{
  *this = &unk_1F595E5E8;
  v2 = *(this + 2);
  if (v2)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::remove(OpaqueObjectMgr::sInstance, v2);
    *(this + 2) = 0;
  }
}

void swix::ipc_endpoint::handle_event(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (*(v4 + 88) == 1)
  {
    v5 = *(v4 + 80);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      swix::connection::xpc_connection(a1, &object);
      v6 = object;
      v7 = MEMORY[0x1E12BFEC0](*a2);
      std::string::basic_string[abi:ne200100]<0>(__p, v7);
      free(v7);
      if (v13 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 134218242;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = v8;
      _os_log_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_DEFAULT, "%p received event %s", buf, 0x16u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(object);
    }
  }

  v9 = *a2;
  *buf = v9;
  v10 = MEMORY[0x1E69E9E80];
  if (v9 && MEMORY[0x1E12BFF40](v9) == v10)
  {
    xpc_retain(v9);
  }

  else
  {
    v9 = xpc_null_create();
    *buf = v9;
  }

  swix::decode_message::decode_message(__p, buf, *(*(a1 + 8) + 80));
  xpc_release(v9);
  (*(**(a1 + 56) + 16))(buf);
  if (MEMORY[0x1E12BFF40](*&buf[8]) == v10)
  {
    swix::connection::send(a1, buf);
  }

  xpc_release(*&buf[8]);
  xpc_release(__p[1]);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1DE1D6F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, xpc_object_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4swix10connection5state11set_handlerEP17_xpc_connection_sU13block_pointerFvPvE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 168);
  v5 = *v3;
  v4 = v3[1];
  v9 = *v3;
  if (!v4 || (v10 = std::__shared_weak_count::lock(v4)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  shared_weak_owners = v5[2].__shared_weak_owners_;
  v8 = dispatch_time(0, v5->__shared_weak_owners_);
  dispatch_source_set_timer(shared_weak_owners, v8, 0xFFFFFFFFFFFFFFFFLL, v5->__shared_weak_owners_ >> 6);
  (*(*(a1 + 32) + 16))(*(a1 + 32), a2);
  swix::detail::watchdog_timer::transaction::~transaction(&v9);
}

uint64_t CACFDictionary::GetBool(CACFDictionary *this, const __CFString *a2, BOOL *a3)
{
  result = *this;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFBooleanGetTypeID())
      {
        v7 = CFBooleanGetValue(v5) == 0;
      }

      else
      {
        v8 = CFGetTypeID(v5);
        if (v8 != CFNumberGetTypeID())
        {
          return 0;
        }

        valuePtr = 0;
        CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
        v7 = valuePtr == 0;
      }

      v9 = !v7;
      *a3 = v9;
      return 1;
    }
  }

  return result;
}

unsigned int *caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::element_t::release(unsigned int *result)
{
  if ((atomic_fetch_add(result, 0xFFFF0000) & 0xFFFF0000) == 0x10000)
  {
    if (atomic_load(result))
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    JUMPOUT(0x1E12BF450);
  }

  return result;
}

void *swix::ipc_interface::ipc_interface(void *result, uint64_t a2)
{
  *result = &unk_1F595E1B8;
  result[1] = 0;
  if (*(a2 + 128) == 1)
  {
    operator new();
  }

  return result;
}

void sub_1DE1D7210(_Unwind_Exception *a1)
{
  MEMORY[0x1E12BF450](v2, 0x10A1C404C29359ELL);
  v4 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

std::string *swix::connection_config::connection_config(std::string *this, const swix::connection_config *a2)
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

  v6 = *(a2 + 6);
  this[2].__r_.__value_.__r.__words[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    this[2].__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v7 = *(a2 + 7);
  this[2].__r_.__value_.__l.__size_ = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *(a2 + 8);
  LOWORD(this[3].__r_.__value_.__l.__data_) = *(a2 + 36);
  this[2].__r_.__value_.__r.__words[2] = v8;
  this[3].__r_.__value_.__s.__data_[8] = 0;
  this[5].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 120) == 1)
  {
    this[3].__r_.__value_.__l.__size_ = *(a2 + 10);
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](&this[3].__r_.__value_.__r.__words[2], a2 + 88);
    this[5].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_1DE1D735C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE1D747C(_Unwind_Exception *a1)
{
  xpc_release(*(v2 - 24));
  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100]((v1 + 3));
  *v1 = &unk_1F595E120;
  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void swix::connection::connection(swix::connection *this, const swix::connection_config *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F595E120;
  swix::connection_config::connection_config(&v5, a2);
  if (!object)
  {
    v2 = dispatch_queue_create("", 0);
    v3 = object;
    object = v2;
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  swix::make_connection(&v4, &v5);
  operator new();
}

void sub_1DE1D76AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void swix::make_connection(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E12BFF40](*(a2 + 48));
  v5 = MEMORY[0x1E69E9E68];
  v6 = v4 == MEMORY[0x1E69E9E68];
  v7 = *(a2 + 23);
  v8 = *(a2 + 8);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  v9 = *(a2 + 47);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 32);
  }

  if (v8)
  {
    ++v6;
  }

  if (v9)
  {
    ++v6;
  }

  if (v6 != 1)
  {
    std::terminate();
  }

  if (v8)
  {
    if (v7 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    mach_service = xpc_connection_create_mach_service(v11, 0, 0);
    if (mach_service)
    {
      v13 = mach_service;
      *a1 = mach_service;
      goto LABEL_23;
    }

    v13 = xpc_null_create();
    *a1 = v13;
    if (v13)
    {
LABEL_23:
      if (MEMORY[0x1E12BFF40](v13) != v5)
      {
        goto LABEL_29;
      }

LABEL_30:
      xpc_retain(v13);
      goto LABEL_31;
    }
  }

  else
  {
    if (!v9)
    {
      v16 = xpc_null_create();
      *a1 = *(a2 + 48);
      *(a2 + 48) = xpc_null_create();
      v17 = xpc_null_create();
      v18 = *(a2 + 48);
      *(a2 + 48) = v16;
      xpc_release(v18);
      xpc_release(v17);
      return;
    }

    if (v10 >= 0)
    {
      v14 = (a2 + 24);
    }

    else
    {
      v14 = *(a2 + 24);
    }

    v15 = xpc_connection_create(v14, 0);
    v13 = v15;
    if (v15)
    {
      *a1 = v15;
    }

    else
    {
      v13 = xpc_null_create();
      *a1 = v13;
      if (!v13)
      {
        goto LABEL_29;
      }
    }

    if (MEMORY[0x1E12BFF40](v13) == v5)
    {
      goto LABEL_30;
    }
  }

LABEL_29:
  *a1 = xpc_null_create();
LABEL_31:
  xpc_release(v13);
}

void swix::connection::state::state(swix::connection::state *this, const swix::connection_config *a2, const applesauce::xpc::connection *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  swix::connection_config::connection_config((this + 16), a2);
  *(this + 18) = 0;
  swix::detail::connection_impl::create((this + 16), a3, v5);
}

void sub_1DE1D7ADC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  v5 = v1[18];
  if (v5)
  {
    _Block_release(v5);
  }

  swix::connection_config::~connection_config((v1 + 2));
  v6 = v1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1DE1D7CE0(_Unwind_Exception *a1)
{
  applesauce::xpc::connection::~connection(v3);
  v5 = *(v2 + 8);
  if (v5)
  {
    dispatch_release(v5);
  }

  MEMORY[0x1E12BF450](v2, v1);
  _Unwind_Resume(a1);
}

void applesauce::xpc::connection::to_debug_string(applesauce::xpc::connection *this, uint64_t a2)
{
  v3 = MEMORY[0x1E12BFEC0](a2);
  std::string::basic_string[abi:ne200100]<0>(this, v3);

  free(v3);
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

void swix::connection::xpc_connection(os_unfair_lock_s **this@<X0>, const swix::connection_config *a2@<X8>)
{
  swix::connection::state::xpc_connection(this[1], &v12);
  v4 = v12;
  if (MEMORY[0x1E12BFF40](v12) == MEMORY[0x1E69E9E68])
  {
    *a2 = v4;
    v4 = xpc_null_create();
    v12 = v4;
  }

  else
  {
    v5 = this[1];
    v6 = *(v5 + 89);
    v7 = *(v5 + 80);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6 != 1)
    {
      if (v8)
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_1DE1D2000, v7, OS_LOG_TYPE_ERROR, "null connection", &buf, 2u);
      }

      exception = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&buf, "null connection");
      std::runtime_error::runtime_error(exception, &buf);
      exception->__vftable = &unk_1F595E248;
      LODWORD(exception[1].__vftable) = -2;
    }

    if (v8)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_1DE1D2000, v7, OS_LOG_TYPE_ERROR, "rebuilding null connection", &buf, 2u);
      v5 = this[1];
    }

    v10 = this;
    buf.__r_.__value_.__r.__words[0] = caulk::function_ref<void ()(applesauce::xpc::connection const&)>::functor_invoker<swix::connection::xpc_connection(void)::$_0>;
    buf.__r_.__value_.__l.__size_ = &v10;
    swix::connection::state::rebuild_connection(v5, a2);
  }

  xpc_release(v4);
}

void sub_1DE1D7FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      xpc_release(v16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void swix::connection::state::xpc_connection(os_unfair_lock_s *this@<X0>, swix::detail::connection_impl *a2@<X8>)
{
  os_unfair_lock_lock(this + 38);
  v4 = *&this[40]._os_unfair_lock_opaque;
  if (v4)
  {
    swix::detail::connection_impl::get(a2, *(v4 + 16));
  }

  else
  {
    *a2 = xpc_null_create();
  }

  os_unfair_lock_unlock(this + 38);
}

xpc_object_t swix::detail::connection_impl::get(swix::detail::connection_impl *this, void *a2)
{
  *this = a2;
  if (a2)
  {
    return xpc_retain(a2);
  }

  result = xpc_null_create();
  *this = result;
  return result;
}

void swix::connection::state::set_handler(uint64_t a1, _xpc_connection_s *a2, void *aBlock)
{
  if (*(a1 + 168))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZN4swix10connection5state11set_handlerEP17_xpc_connection_sU13block_pointerFvPvE_block_invoke;
    v9[3] = &unk_1E8672A18;
    v9[4] = aBlock;
    v9[5] = a1;
    v5 = _Block_copy(v9);
    v6 = *(a1 + 144);
    *(a1 + 144) = v5;
    if (v6)
    {
      _Block_release(v6);
    }
  }

  else
  {
    if (aBlock)
    {
      v7 = _Block_copy(aBlock);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 144);
    *(a1 + 144) = v7;
    if (v8)
    {
      _Block_release(v8);
    }
  }

  xpc_connection_set_event_handler(a2, *(a1 + 144));
}

void swix::connection::description(os_unfair_lock_s **this@<X0>, _BYTE *a2@<X8>)
{
  swix::connection::state::xpc_connection(this[1], &v7);
  v3 = v7;
  v4 = MEMORY[0x1E12BFF40](v7);
  v5 = MEMORY[0x1E69E9E68];
  if (v4 == MEMORY[0x1E69E9E68])
  {
    v6 = MEMORY[0x1E12BFEC0](v3);
    std::string::basic_string[abi:ne200100]<0>(a2, v6);
    free(v6);
  }

  xpc_release(v3);
  if (v4 != v5)
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "(destroyed connection)");
  }
}

void swix::ipc_endpoint::handle_event_or_error(uint64_t a1, void *a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = MEMORY[0x1E69E9E80];
  if (*a2 && MEMORY[0x1E12BFF40](*a2) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
  }

  if (MEMORY[0x1E12BFF40](v4) == v5)
  {
    v8[0] = v4;
    if (v4)
    {
      xpc_retain(v4);
      v6 = v4;
    }

    else
    {
      v6 = xpc_null_create();
      v8[0] = v6;
    }

    swix::ipc_endpoint::handle_event(a1, v8);
    xpc_release(v6);
  }

  else
  {
    swix::ipc_endpoint::handle_error(a1, a2);
  }

  xpc_release(v4);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE1D83A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t swix::decode_message::decode_message(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v5 = xpc_null_create();
  }

  *a1 = 0;
  *(a1 + 8) = v5;
  v6 = xpc_null_create();
  *(a1 + 16) = 0;
  xpc_release(v6);
  *(a1 + 24) = a3;
  if (MEMORY[0x1E12BFF40](*(a1 + 8)) != MEMORY[0x1E69E9E80])
  {
    v9 = *(a1 + 24);
    std::string::basic_string[abi:ne200100]<0>(&v12, "!(is_valid())");
    swix::decode_message::throw_error(v9, -304, &v12);
  }

  int64 = xpc_dictionary_get_int64(*(a1 + 8), "#");
  if (int64 != int64)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_1F595E008;
  }

  *a1 = int64;
  if (!int64)
  {
    v11 = *(a1 + 24);
    std::string::basic_string[abi:ne200100]<0>(&v12, "!(mMessageID != 0)");
    swix::decode_message::throw_error(v11, -303, &v12);
  }

  return a1;
}

void sub_1DE1D8600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  swix::message::~message(v15);
  _Unwind_Resume(a1);
}

void ___ZN4swix12ipc_endpointC2ERKNS_17connection_configERNS_13ipc_interfaceE_block_invoke(uint64_t a1, xpc_object_t object)
{
  v2 = *(a1 + 32);
  objecta = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    objecta = xpc_null_create();
  }

  swix::ipc_endpoint::handle_event_or_error(v2, &objecta);
  xpc_release(objecta);
}

void swix::connection::audit_token(os_unfair_lock_s **this@<X0>, uint64_t a2@<X8>)
{
  swix::connection::state::xpc_connection(this[1], &v4);
  v3 = v4;
  if (MEMORY[0x1E12BFF40](v4) == MEMORY[0x1E69E9E68])
  {
    xpc_connection_get_audit_token();
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  xpc_release(v3);
}

swix::encode_message *swix::encode_message::encode_message(swix::encode_message *this, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    v4 = xpc_null_create();
    if (!v4)
    {
      v5 = 0;
      goto LABEL_7;
    }
  }

  if (MEMORY[0x1E12BFF40](v4) != MEMORY[0x1E69E9E80])
  {
    v5 = v4;
LABEL_7:
    v4 = xpc_null_create();
    goto LABEL_8;
  }

  xpc_retain(v4);
  v5 = v4;
LABEL_8:
  xpc_release(v5);
  *this = a2;
  *(this + 1) = 0;
  *(this + 1) = v4;
  v6 = xpc_null_create();
  *(this + 2) = 0;
  xpc_release(v6);
  xpc_dictionary_set_int64(*(this + 1), "#", *this);
  return this;
}

void swix::connection::send_and_await_reply(os_unfair_lock_s **this@<X0>, const swix::encode_message *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  swix::connection::xpc_connection(this, &connection);
  swix::encode_message::xpc_message(a2, &message);
  v6 = this[1];
  if (v6[22]._os_unfair_lock_opaque)
  {
    v7 = *&v6[20]._os_unfair_lock_opaque;
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    v9 = message;
    if (v8)
    {
      v10 = connection;
      v11 = MEMORY[0x1E12BFEC0](message);
      std::string::basic_string[abi:ne200100]<0>(&v43, v11);
      free(v11);
      v12 = (v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v43 : v43.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
      *(buf.__r_.__value_.__r.__words + 4) = v10;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
      _os_log_impl(&dword_1DE1D2000, v7, OS_LOG_TYPE_DEFAULT, "%p send msg %s", &buf, 0x16u);
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v9 = message;
  }

  v13 = xpc_connection_send_message_with_reply_sync(connection, v9);
  v35 = v13;
  if (!v13)
  {
    v13 = xpc_null_create();
    v35 = v13;
  }

  v14 = this[1];
  if (LOBYTE(v14[22]._os_unfair_lock_opaque) == 1)
  {
    v15 = *&v14[20]._os_unfair_lock_opaque;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = connection;
      v17 = MEMORY[0x1E12BFEC0](v13);
      std::string::basic_string[abi:ne200100]<0>(&v43, v17);
      free(v17);
      v18 = (v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v43 : v43.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
      *(buf.__r_.__value_.__r.__words + 4) = v16;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v18;
      _os_log_impl(&dword_1DE1D2000, v15, OS_LOG_TYPE_DEFAULT, "%p msg reply %s", &buf, 0x16u);
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }
    }
  }

  swix::connection::check_valid_reply(this, &v35);
  v43.__r_.__value_.__r.__words[0] = v13;
  if (v13 && MEMORY[0x1E12BFF40](v13) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v13);
    v19 = v13;
  }

  else
  {
    v19 = xpc_null_create();
    v43.__r_.__value_.__r.__words[0] = v19;
  }

  swix::decode_message::decode_message(a3, &v43.__r_.__value_.__l.__data_, *&this[1][20]._os_unfair_lock_opaque);
  xpc_release(v19);
  v20 = *a2;
  if (*a3 + *a2)
  {
    v22 = *(a3 + 24);
    std::string::basic_string[abi:ne200100]<0>(&v40, "unexpected message ID (");
    std::to_string(&v39, -v20);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v39;
    }

    else
    {
      v23 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    v25 = std::string::append(&v40, v23, size);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v41, "/", 1uLL);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v38, *a3);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v38;
    }

    else
    {
      v29 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = v38.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(&v42, v29, v30);
    v32 = *&v31->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&buf, ")", 1uLL);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    swix::decode_message::throw_error(v22, -301, &v43);
  }

  xpc_release(v13);
  xpc_release(message);
  xpc_release(connection);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1DE1D8BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  swix::decode_message::~decode_message(v42);
  xpc_release(v43);
  xpc_release(object);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

xpc_object_t swix::encode_message::xpc_message@<X0>(swix::encode_message *this@<X0>, void *a2@<X8>)
{
  if (*(this + 1))
  {
    xpc_dictionary_set_uint64(*(this + 1), ".optionals", *(this + 2));
  }

  v4 = *(this + 1);
  *a2 = v4;
  if (v4)
  {
    return xpc_retain(v4);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void swix::detail::watchdog_timer::transaction::~transaction(std::__shared_weak_count **this)
{
  dispatch_source_set_timer((*this)[2].__shared_weak_owners_, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t operator>>(uint64_t a1, CFDataRef *a2)
{
  Ptr = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (Ptr)
  {
    v5 = *Ptr;
    if ((*Ptr & 0x80000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v7 = *(a1 + 16);
    if (*(a1 + 24) - v7 < v5)
    {
      v6 = 0;
      *(a1 + 32) = 1;
      goto LABEL_11;
    }

    *(a1 + 16) = &v7[v5];
    if (v7)
    {
      v6 = CFDataCreate(0, v7, v5);
      goto LABEL_11;
    }
  }

LABEL_6:
  v6 = 0;
LABEL_11:
  *a2 = v6;
  return a1;
}

int *swix::encode_message::encode_message(int *a1, uint64_t a2)
{
  reply = xpc_dictionary_create_reply(*(a2 + 8));
  if ((reply || (reply = xpc_null_create()) != 0) && MEMORY[0x1E12BFF40](reply) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(reply);
    v5 = reply;
  }

  else
  {
    v5 = xpc_null_create();
  }

  *a1 = -*a2;
  *(a1 + 1) = v5;
  v6 = xpc_null_create();
  *(a1 + 2) = 0;
  xpc_release(v6);
  xpc_release(reply);
  xpc_dictionary_set_int64(*(a1 + 1), "#", *a1);
  return a1;
}

void swix::connection::send(os_unfair_lock_s **this, const swix::encode_message *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  swix::connection::xpc_connection(this, &connection);
  swix::encode_message::xpc_message(a2, &message);
  v4 = this[1];
  if (v4[22]._os_unfair_lock_opaque)
  {
    v5 = *&v4[20]._os_unfair_lock_opaque;
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    v7 = message;
    if (v6)
    {
      v8 = connection;
      v9 = MEMORY[0x1E12BFEC0](message);
      std::string::basic_string[abi:ne200100]<0>(__p, v9);
      free(v9);
      if (v13 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 134218242;
      v17 = v8;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_DEFAULT, "%p send msg %s", buf, 0x16u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v7 = message;
  }

  xpc_connection_send_message(connection, v7);
  xpc_release(v7);
  xpc_release(connection);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1DE1D9094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(v14);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void swix::connection::check_valid_reply(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*a2 == MEMORY[0x1E69E9E18])
  {
    v3 = *(*(a1 + 8) + 80);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      v7 = a1;
      v4 = "%p reply: XPC_ERROR_CONNECTION_INTERRUPTED";
      goto LABEL_8;
    }
  }

  else if (*a2 == MEMORY[0x1E69E9E20])
  {
    v3 = *(*(a1 + 8) + 80);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      v7 = a1;
      v4 = "%p reply: XPC_ERROR_CONNECTION_INVALID";
LABEL_8:
      _os_log_error_impl(&dword_1DE1D2000, v3, OS_LOG_TYPE_ERROR, v4, &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void OpaqueObjectMgr::OpaqueObjectMgr(OpaqueObjectMgr *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 850045863;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 100) = 0u;
  atomic_store((getpid() & 0x3FFFF) << 12, this + 28);
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::rehash(unint64_t *a1, unsigned int a2)
{
  v4 = atomic_load(a1 + 1);
  v5 = operator new(8 * (a2 - 1) + 24);
  v6 = v5;
  *v5 = a1;
  *(v5 + 2) = a2;
  *(v5 + 2) = 0;
  v7 = v5 + 16;
  if (a2)
  {
    v8 = a2 + 1;
    v9 = (v5 + 16);
    do
    {
      atomic_store(0, v9++);
      --v8;
    }

    while (v8 > 1);
  }

  if (v4)
  {
    v10 = *(v4 + 8);
    if (v10)
    {
      v11 = (v4 + 16);
      do
      {
        v12 = *v11;
        if (*v11 + 1 >= 2)
        {
          SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(v6, *(v12 + 4));
          if ((SlotForKey & 1) == 0)
          {
            atomic_fetch_add(v12, 0x10000u);
            atomic_store(v12, &v7[8 * HIDWORD(SlotForKey)]);
          }
        }

        ++v11;
        --v10;
      }

      while (v10);
    }

    atomic_store(v6, a1 + 1);
    v15 = a1[4];
    v14 = a1[5];
    if (v15 >= v14)
    {
      v17 = a1[3];
      v18 = v15 - v17;
      v19 = (v15 - v17) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
      }

      v21 = v14 - v17;
      if (v21 >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (!(v22 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = (v15 - v17) >> 3;
      v24 = (8 * v19);
      v25 = (8 * v19 - 8 * v23);
      *v24 = v4;
      v16 = v24 + 1;
      memcpy(v25, v17, v18);
      a1[3] = v25;
      a1[4] = v16;
      a1[5] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v15 = v4;
      v16 = v15 + 1;
    }

    a1[4] = v16;
  }

  else
  {
    atomic_store(v5, a1 + 1);
  }

  return v6;
}

void sub_1DE1D94A0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void swix::listener::handle_connection_event(swix::listener *this, xpc_object_t object)
{
  v2 = object;
  v20 = *MEMORY[0x1E69E9840];
  if (object)
  {
    xpc_retain(object);
    v4 = v2;
  }

  else
  {
    v4 = xpc_null_create();
  }

  v5 = *(*(this + 1) + 80);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    swix::connection::xpc_connection(this, &objecta);
    v6 = objecta;
    v7 = MEMORY[0x1E12BFEC0](v4);
    std::string::basic_string[abi:ne200100]<0>(__p, v7);
    free(v7);
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 134218242;
    v17 = v6;
    v18 = 2080;
    v19 = v8;
    _os_log_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_DEFAULT, "%p connection event %s", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(objecta);
  }

  v9 = MEMORY[0x1E69E9E68];
  if (v2)
  {
    xpc_retain(v2);
    __p[0] = v2;
  }

  else
  {
    v2 = xpc_null_create();
    __p[0] = v2;
    if (!v2)
    {
LABEL_15:
      __p[0] = xpc_null_create();
      goto LABEL_17;
    }
  }

  if (MEMORY[0x1E12BFF40](v2) != v9)
  {
    goto LABEL_15;
  }

  xpc_retain(v2);
LABEL_17:
  xpc_release(v2);
  if (MEMORY[0x1E12BFF40](__p[0]) == v9)
  {
    if ((*(*this + 24))(this, __p))
    {
      xpc_connection_activate(__p[0]);
    }

    else
    {
      v11 = *(*(this + 1) + 80);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DE1D2000, v11, OS_LOG_TYPE_ERROR, "rejecting connection", buf, 2u);
      }

      xpc_connection_cancel(__p[0]);
    }
  }

  else
  {
    v10 = *(*(this + 1) + 80);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DE1D2000, v10, OS_LOG_TYPE_ERROR, "object not a connection?", buf, 2u);
    }
  }

  xpc_release(__p[0]);
  xpc_release(v4);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE1D9740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t swix::detail::watchdog_timer::watchdog_timer(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = *a2;
  v3 = a2 + 4;
  v4 = a2[4];
  if (!v4)
  {
    v3 = (a1 + 48);
    goto LABEL_5;
  }

  if (v4 != a2 + 1)
  {
    *(a1 + 48) = v4;
LABEL_5:
    *v3 = 0;
    goto LABEL_7;
  }

  *(a1 + 48) = a1 + 24;
  (*(**v3 + 24))();
LABEL_7:
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v5 = (a1 + 56);
  if (!*(a1 + 48))
  {
    std::terminate();
  }

  global_queue = dispatch_get_global_queue(25, 0);
  v7 = dispatch_queue_create_with_target_V2("", 0, global_queue);
  v8 = *v5;
  *v5 = v7;
  if (v8)
  {
    dispatch_release(v8);
    v7 = *v5;
  }

  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v7);
  v10 = *(a1 + 64);
  *(a1 + 64) = v9;
  if (v10)
  {
    dispatch_release(v10);
    v9 = *(a1 + 64);
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = ___ZN4swix6detail14watchdog_timerC2ENS_14timeout_configE_block_invoke;
  handler[3] = &__block_descriptor_tmp_121;
  handler[4] = a1;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(*(a1 + 64));
  return a1;
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

CADeprecated::CAMutex *CADeprecated::CAMutex::CAMutex(CADeprecated::CAMutex *this, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = &unk_1F595E4C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  v3 = pthread_mutex_init((this + 24), 0);
  if (v3)
  {
    v6 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CAMutex.cpp";
      v10 = 1024;
      v11 = 56;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::CAMutex: Could not init the mutex", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F595E710;
    exception[2] = v6;
  }

  v4 = *MEMORY[0x1E69E9840];
  return this;
}

void *CADeprecated::XMachServer::RemoveMachClient(void *a1, uint64_t a2)
{
  CADeprecated::XMachPortDeathListener::CancelPortDeathNotification((a1 + 10), *(a2 + 12));
  result = (*(a1[14] + 16))(a1 + 14);
  v5 = result;
  v7 = a1[25];
  v6 = a1[26];
  while (v7 != v6)
  {
    if (*v7 == a2)
    {
      v8 = v6 - (v7 + 8);
      if (v6 != v7 + 8)
      {
        result = memmove(v7, v7 + 8, v6 - (v7 + 8));
      }

      a1[26] = &v7[v8];
      break;
    }

    v7 += 8;
  }

  if (v5)
  {
    return (*(a1[14] + 24))(a1 + 14);
  }

  return result;
}

void CADeprecated::XMachPortDeathListener::CancelPortDeathNotification(CADeprecated::XMachPortDeathListener *this, mach_port_name_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  previous = 0;
  v3 = MEMORY[0x1E69E9A60];
  v4 = mach_port_request_notification(*MEMORY[0x1E69E9A60], a2, 72, 1u, 0, 0x15u, &previous);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = (*(*this + 24))(this);
      *buf = 136315906;
      v10 = "XMachServer.cpp";
      v11 = 1024;
      v12 = 128;
      v13 = 2080;
      v14 = v6;
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: XMachServer couldn't cancel port-death notification (0x%x)", buf, 0x22u);
    }
  }

  else
  {
    mach_port_deallocate(*v3, previous);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t CADeprecated::XMachPortDeathListener::ReadPortDeathMessage(CADeprecated::XMachPortDeathListener *this, mach_port_name_t rcv_name)
{
  msg.not_header.msgh_bits = 0;
  msg.not_header.msgh_remote_port = 0;
  msg.not_header.msgh_local_port = rcv_name;
  *&msg.not_header.msgh_voucher_port = 0;
  mach_msg(&msg.not_header, 2, 0, 0x38u, rcv_name, 0, 0);
  return CADeprecated::XMachPortDeathListener::DispatchPortDeathMessage(this, &msg);
}

void CADeprecated::XMachPortServicer::DispatchImpl::~DispatchImpl(dispatch_source_t *this)
{
  *this = &unk_1F595DEB8;
  dispatch_source_cancel(this[2]);
  dispatch_barrier_sync(this[1], &__block_literal_global);
  v2 = this[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = this[1];
  if (v3)
  {
    dispatch_release(v3);
  }
}

{
  CADeprecated::XMachPortServicer::DispatchImpl::~DispatchImpl(this);

  JUMPOUT(0x1E12BF450);
}

const __CFData **operator<<(const __CFData **a1, CFDataRef *a2)
{
  if (*a2)
  {
    Length = CFDataGetLength(*a2);
  }

  else
  {
    Length = -1;
  }

  *bytes = Length;
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, bytes, 4);
  if (*bytes >= 1)
  {
    BytePtr = CFDataGetBytePtr(*a2);
    v6 = *bytes;
    Mutable = *a1;
    if (!*a1)
    {
      Mutable = CFDataCreateMutable(0, 0);
      *a1 = Mutable;
    }

    CFDataAppendBytes(Mutable, BytePtr, v6);
  }

  return a1;
}

uint64_t CADeprecated::XMachPortDeathListener::DispatchPortDeathMessage(uint64_t this, const mach_dead_name_notification_t *a2)
{
  if (a2->not_header.msgh_id == 72)
  {
    v3 = this;
    not_port = a2->not_port;
    mach_port_deallocate(*MEMORY[0x1E69E9A60], a2->not_port);
    v5 = *(*v3 + 16);

    return v5(v3, not_port);
  }

  return this;
}

void __destroy_helper_block_e8_40c37_ZTSN10applesauce8dispatch2v16sourceE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void __destroy_helper_block_e8_32c60_ZTSNSt3__110shared_ptrIN12CADeprecated16XMachReceivePortEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void SharableMemoryBlock::XPCServerToken::~XPCServerToken(xpc_object_t *this)
{
  *this = &unk_1F595E080;
  xpc_release(this[2]);
  this[2] = 0;
}

{
  SharableMemoryBlock::XPCServerToken::~XPCServerToken(this);

  JUMPOUT(0x1E12BF450);
}

void SharableMemoryBlock::XPCClientToken::~XPCClientToken(xpc_object_t *this)
{
  *this = &unk_1F595E0A0;
  xpc_release(this[2]);
  this[2] = 0;
}

{
  SharableMemoryBlock::XPCClientToken::~XPCClientToken(this);

  JUMPOUT(0x1E12BF450);
}

uint64_t CACFDictionary::AddBool(CACFDictionary *this, const __CFString *key, int a3)
{
  v5 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = *v5;
  v11 = v6;
  v12 = 1;
  if (v6)
  {
    CFRetain(v6);
  }

  if (*(this + 9) != 1 || ((v7 = *this, v6) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v9 = 0;
  }

  else
  {
    CFDictionarySetValue(v7, key, v6);
    v9 = 1;
  }

  CACFBoolean::~CACFBoolean(&v11);
  return v9;
}

void CACFBoolean::~CACFBoolean(CACFBoolean *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void *SincKernelFactory::ReleaseSincKernel(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8) - 1;
    *(a2 + 8) = v3;
    if (!v3)
    {
      v4 = result;
      v6 = *result;
      v5 = result[1];
      if (v5 != *result)
      {
        v7 = 0;
        v8 = 1;
        do
        {
          if (*(v6 + 8 * v7) == a2)
          {
            v10 = v6 + 8 * v7;
            v11 = v5 - (v10 + 8);
            if (v5 != v10 + 8)
            {
              memmove((v6 + 8 * v7), (v10 + 8), v5 - (v10 + 8));
            }

            v4[1] = v10 + v11;
            free(*a2);

            JUMPOUT(0x1E12BF450);
          }

          v7 = v8;
        }

        while ((v5 - *result) >> 3 > v8++);
      }
    }
  }

  return result;
}

atomic_uint **CAAudioChannelLayout::operator=(atomic_uint **a1, CAAudioChannelLayout::RefCountedLayout *this)
{
  v4 = *a1;
  if (v4)
  {
    if (v4 + 4 == this)
    {
      return a1;
    }

    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }
  }

  if (this)
  {
    v5 = CAAudioChannelLayout::RefCountedLayout::CreateWithLayout(this, this);
  }

  else
  {
    v5 = CAAudioChannelLayout::RefCountedLayout::CreateWithNumberChannelDescriptions(0);
  }

  *a1 = v5;
  return a1;
}

_DWORD *CAAudioChannelLayout::RefCountedLayout::CreateWithLayout(CAAudioChannelLayout::RefCountedLayout *this, const AudioChannelLayout *a2)
{
  v3 = caulk::numeric::exceptional_mul<unsigned int>(*(this + 2));
  v4 = caulk::numeric::exceptional_add<unsigned int>(v3);
  v5 = CAAudioChannelLayout::RefCountedLayout::operator new(v4);
  v5[2] = 1;
  v5[3] = v4;
  *v5 = &unk_1F595E030;
  bzero(v5 + 4, v4);
  memcpy(v5 + 4, this, v4);
  return v5;
}

uint64_t SincKernelFactory::ReferenceSincKernel(SincKernelFactory *this, int a2, int a3, double a4, double a5)
{
  v5 = *(this + 1) - *this;
  if (!v5)
  {
LABEL_8:
    operator new();
  }

  v6 = 0;
  v7 = v5 >> 3;
  v8 = 1;
  while (1)
  {
    v9 = *(*this + 8 * v6);
    if (*(v9 + 32) == a5 && *(v9 + 24) == a4 && *(v9 + 12) == a2 && *(v9 + 16) == a3)
    {
      break;
    }

    v6 = v8;
    if (v7 <= v8++)
    {
      goto LABEL_8;
    }
  }

  ++*(v9 + 8);
  return v9;
}

void SincKernel::SincKernel(SincKernel *this, int a2, int a3, double a4, double a5)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = a3;
  *(this + 5) = 0;
  *(this + 3) = a4;
  *(this + 4) = a5;
  *this = malloc_type_calloc(a2 + a2 * a3, 4uLL, 0x100004052888210uLL);
  SincKernel::CalculateFilterCoefficients(this);
}

void SincKernel::CalculateFilterCoefficients(SincKernel *this)
{
  v1 = *(this + 4);
  *(this + 3);
  *(this + 4);
  operator new[]();
}

uint64_t GetKaiser(int a1, double a2)
{
  {
    GetKaiser(unsigned int,double)::sKaiserWindows = 0;
    qword_1ED6D39F8 = 0;
    qword_1ED6D3A00 = 0;
    qword_1ED6D39F0 = 0;
  }

  os_unfair_lock_lock(&GetKaiser(unsigned int,double)::sKaiserWindows);
  v4 = qword_1ED6D39F8;
  if (qword_1ED6D39F0 == qword_1ED6D39F8)
  {
LABEL_7:
    if (qword_1ED6D39F8 >= qword_1ED6D3A00)
    {
      v7 = 0xCCCCCCCCCCCCCCCDLL * ((qword_1ED6D39F8 - qword_1ED6D39F0) >> 3);
      if (v7 + 1 > 0x666666666666666)
      {
        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
      }

      v8 = 0x999999999999999ALL * ((qword_1ED6D3A00 - qword_1ED6D39F0) >> 3);
      if (v8 <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((qword_1ED6D3A00 - qword_1ED6D39F0) >> 3) >= 0x333333333333333)
      {
        v9 = 0x666666666666666;
      }

      else
      {
        v9 = v8;
      }

      v28 = &qword_1ED6D39F0;
      if (v9)
      {
        if (v9 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v25 = 0;
      v26 = (8 * ((qword_1ED6D39F8 - qword_1ED6D39F0) >> 3));
      KaiserWindow::KaiserWindow(v26, a1, a2);
      v27 = 40 * v7 + 40;
      v12 = qword_1ED6D39F0;
      v11 = qword_1ED6D39F8;
      v29[0] = &qword_1ED6D39F0;
      v29[1] = &v31;
      v29[2] = &v32;
      v30 = 0;
      v13 = 40 * v7 + qword_1ED6D39F0 - qword_1ED6D39F8;
      v31 = v13;
      v32 = v13;
      if (qword_1ED6D39F0 == qword_1ED6D39F8)
      {
        v30 = 1;
      }

      else
      {
        v14 = v26 + qword_1ED6D39F0 - qword_1ED6D39F8;
        v15 = qword_1ED6D39F0;
        do
        {
          v16 = *v15;
          *(v14 + 2) = 0;
          *v14 = v16;
          *(v14 + 3) = 0;
          *(v14 + 4) = 0;
          v18 = *(v15 + 16);
          v17 = *(v15 + 24);
          if (v17 != v18)
          {
            std::vector<float>::__vallocate[abi:ne200100]((v14 + 16), (v17 - v18) >> 2);
          }

          v15 += 40;
          v14 += 40;
          v32 = v14;
        }

        while (v15 != v11);
        v30 = 1;
        do
        {
          v19 = *(v12 + 16);
          if (v19)
          {
            *(v12 + 24) = v19;
            operator delete(v19);
          }

          v12 += 40;
        }

        while (v12 != v11);
      }

      std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<KaiserWindow>,KaiserWindow*>>::~__exception_guard_exceptions[abi:ne200100](v29);
      v20 = qword_1ED6D39F0;
      qword_1ED6D39F0 = v13;
      v21 = qword_1ED6D3A00;
      v24 = v27;
      *&qword_1ED6D39F8 = v27;
      *&v27 = v20;
      *(&v27 + 1) = v21;
      v25 = v20;
      v26 = v20;
      std::__split_buffer<KaiserWindow>::~__split_buffer(&v25);
      v6 = v24;
    }

    else
    {
      KaiserWindow::KaiserWindow(qword_1ED6D39F8, a1, a2);
      v6 = v4 + 40;
      qword_1ED6D39F8 = v4 + 40;
    }

    qword_1ED6D39F8 = v6;
    v10 = (v6 - 24);
  }

  else
  {
    v5 = qword_1ED6D39F0;
    while (*v5 != a1 || *(v5 + 8) != a2)
    {
      v5 += 40;
      if (v5 == qword_1ED6D39F8)
      {
        goto LABEL_7;
      }
    }

    v10 = (v5 + 16);
  }

  v22 = *v10;
  os_unfair_lock_unlock(&GetKaiser(unsigned int,double)::sKaiserWindows);
  return v22;
}

void sub_1DE1DAB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<KaiserWindow>::~__split_buffer(va);
  os_unfair_lock_unlock(&GetKaiser(unsigned int,double)::sKaiserWindows);
  _Unwind_Resume(a1);
}

void ___ZN4swix6detail15connection_impl6cancelENS_19CancellationContextE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  xpc_connection_set_event_handler(*(a1 + 40), &__block_literal_global_17);
  xpc_connection_cancel(*(a1 + 40));
  v3 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    applesauce::xpc::connection::to_debug_string(__p, *(v2 + 16));
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v9 = v5;
    _os_log_debug_impl(&dword_1DE1D2000, v3, OS_LOG_TYPE_DEBUG, "canceled connection %s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

os_log_t *swix::detail::connection_impl::connection_impl(swix::connection_config const&,applesauce::xpc::connection const&)::{lambda(void *)#1}::__invoke(os_log_t *result)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (os_log_type_enabled(*result, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = v1;
      _os_log_impl(&dword_1DE1D2000, v2, OS_LOG_TYPE_DEFAULT, "destructor connimpl %p", &v6, 0xCu);
    }

    xpc_release(v1[2]);
    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *MEMORY[0x1E69E9840];

    JUMPOUT(0x1E12BF450);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE1DAD68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_1DE1DAE2C(_Unwind_Exception *a1)
{
  xpc_release(*(v2 - 24));
  *v1 = &unk_1F595E120;
  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void swix::ipc_endpoint::~ipc_endpoint(swix::ipc_endpoint *this)
{
  *this = &unk_1F595E190;
  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](this + 24);
  *this = &unk_1F595E120;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x1E12BF450);
}

{
  *this = &unk_1F595E190;
  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](this + 24);
  *this = &unk_1F595E120;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void swix::ipc_interface::~ipc_interface(swix::ipc_interface *this)
{
  v2 = *(this + 1);
  *this = &unk_1F595E1B8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void swix::connection::state::~state(swix::connection::state *this)
{
  swix::connection::state::cancel_connection(this, 1);
  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(this + 136) == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 104);
  }

  v4 = *(this + 9);
  if (v4)
  {
    dispatch_release(v4);
  }

  xpc_release(*(this + 8));
  *(this + 8) = 0;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void swix::connection::state::cancel_connection(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 152));
  v4 = *(a1 + 160);
  *(a1 + 160) = 0;
  os_unfair_lock_unlock((a1 + 152));
  if (v4)
  {
    swix::detail::connection_impl::get(&v21, *(v4 + 16));
    v5 = v21;
    if (MEMORY[0x1E12BFF40](v21) == MEMORY[0x1E69E9E68])
    {
      v6 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        applesauce::xpc::connection::to_debug_string(block, *(v4 + 16));
        v14 = SHIBYTE(v17) >= 0 ? block : block[0];
        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_debug_impl(&dword_1DE1D2000, v6, OS_LOG_TYPE_DEBUG, "canceling connection %s", buf, 0xCu);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(block[0]);
        }
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      v17 = ___ZN4swix6detail15connection_impl6cancelENS_19CancellationContextE_block_invoke;
      v18 = &__block_descriptor_tmp_18;
      v19 = v4;
      object = v5;
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        object = xpc_null_create();
      }

      v7 = *(v4 + 8);
      if (a2)
      {
        if (v7)
        {
          dispatch_retain(*(v4 + 8));
        }

        dispatch_assert_queue_not_V2(v7);
        if (v7)
        {
          dispatch_release(v7);
        }

        v8 = *(v4 + 8);
        if (v8)
        {
          dispatch_retain(*(v4 + 8));
          dispatch_barrier_async_and_wait(v8, block);
          dispatch_release(v8);
        }

        else
        {
          dispatch_barrier_async_and_wait(0, block);
        }
      }

      else
      {
        if (v7)
        {
          dispatch_retain(*(v4 + 8));
        }

        dispatch_assert_queue_V2(v7);
        if (v7)
        {
          dispatch_release(v7);
        }

        v17(block);
      }

      v9 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        applesauce::xpc::connection::to_debug_string(buf, *(v4 + 16));
        if (v23 >= 0)
        {
          v15 = buf;
        }

        else
        {
          v15 = *buf;
        }

        *v24 = 136315138;
        v25 = v15;
        _os_log_debug_impl(&dword_1DE1D2000, v9, OS_LOG_TYPE_DEBUG, "proceeding after canceling %s", v24, 0xCu);
        if (v23 < 0)
        {
          operator delete(*buf);
        }
      }

      v10 = xpc_null_create();
      v11 = xpc_null_create();
      v12 = *(v4 + 16);
      *(v4 + 16) = v10;
      xpc_release(v12);
      xpc_release(v11);
      xpc_release(object);
      object = 0;
    }

    xpc_release(v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE1DB364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void swix::ipc_endpoint::handle_error(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(v4 + 80);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    swix::connection::description(a1, v22);
    if (v23 >= 0)
    {
      v12 = v22;
    }

    else
    {
      v12 = v22[0];
    }

    v13 = MEMORY[0x1E12BFEC0](*a2);
    std::string::basic_string[abi:ne200100]<0>(__p, v13);
    free(v13);
    if (v17 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = *__p;
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = v14;
    _os_log_error_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_ERROR, "connection %s : error %s", buf, 0x16u);
    if (v17 < 0)
    {
      operator delete(*__p);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    v4 = *(a1 + 8);
  }

  v6 = *(v4 + 89);
  v7 = *(a1 + 48);
  if (!v7)
  {
    v24 = 0;
    goto LABEL_9;
  }

  if (v7 == a1 + 24)
  {
    v24 = v22;
    (*(*v7 + 24))(v7, v22);
    v8 = v24;
    if (!v24)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = (*(*v7 + 16))(v7);
  v24 = v8;
  if (v8)
  {
LABEL_8:
    (*(*v8 + 48))(v8, a1, a2);
  }

LABEL_9:
  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](v22);
  if (v6)
  {
    v9 = *(a1 + 8);
    v10 = *(v9 + 80);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      swix::connection::description(a1, v22);
      if (v23 >= 0)
      {
        v15 = v22;
      }

      else
      {
        v15 = v22[0];
      }

      *__p = 136315138;
      *&__p[4] = v15;
      _os_log_error_impl(&dword_1DE1D2000, v10, OS_LOG_TYPE_ERROR, "auto-cancelling %s", __p, 0xCu);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      v9 = *(a1 + 8);
    }

    swix::connection::state::cancel_connection(v9, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void PowerMeter::Process(PowerMeter *this, float *a2, int a3, int a4, long double a5)
{
  v7 = a2;
  v30 = a2;
  PowerMeter::ScaleDecayConstants(this, a4, a5);
  v29 = a4;
  v9 = *(this + 8);
  v28 = v9;
  v27 = 0.0;
  v10 = 0.0;
  if ((v7 & 0xF) != 0 || a3 != 1)
  {
    v11 = a4;
  }

  else
  {
    v11 = a4;
    if (gCAVectorUnitType >= 1)
    {
      PowerMeter::ProcessVector(this, &v30, &v29, &v27, &v28);
      v11 = v29;
      v7 = v30;
      v10 = v27;
      v9 = v28;
    }
  }

  if (v11 >= 1)
  {
    do
    {
      v12 = *v7;
      if (*v7 < 0.0)
      {
        v12 = -*v7;
      }

      if (v12 > v10)
      {
        v10 = v12;
      }

      v9 = v9 + ((v12 * v12) - v9) * 0.03;
      v7 += a3;
      --v11;
    }

    while (v11);
  }

  if (v10 > *(this + 13))
  {
    *(this + 13) = v10;
  }

  if (v9 != 0.0 && fabs(v9) == INFINITY)
  {
    *(this + 56) = 1;
    v9 = 0.0;
    v10 = 1.0;
  }

  v13 = *this;
  if (v13 == 1)
  {
    v14.f64[0] = v10;
  }

  else
  {
    v15 = *(this + 13);
    v14.f64[0] = v10;
    if (v15 > v14.f64[0])
    {
      v14.f64[0] = v15 + (v14.f64[0] - v15) * *(this + 5);
    }
  }

  v16 = *(this + 25) + a4;
  *(this + 25) = v16;
  v17 = *(this + 15);
  if (v16 >= (*(this + 1) * 0.907029478))
  {
    v17 = v17 - v17 * *(this + 3);
  }

  v18 = sqrt(v9);
  if (v17 < v14.f64[0])
  {
    *(this + 25) = 0;
    v17 = v14.f64[0];
  }

  v19 = v18 * 1.41421356;
  if ((v13 & 1) == 0)
  {
    v20 = *(this + 14);
    if (v20 > v19)
    {
      v19 = v20 + (v19 - v20) * *(this + 5);
    }
  }

  if (v19 > v17)
  {
    v19 = v17;
  }

  v21 = fabs(v9);
  if (v21 >= 1.0e15 || v21 <= 1.0e-15)
  {
    v9 = 0.0;
  }

  v14.f64[1] = v19;
  *(this + 8) = v9;
  v23 = vabsq_f64(v14);
  *(this + 104) = vandq_s8(v14, vandq_s8(vcgtq_f64(v23, vdupq_n_s64(0x3CD203AF9EE75616uLL)), vcgtq_f64(vdupq_n_s64(0x430C6BF526340000uLL), v23)));
  v24 = fabs(v17);
  if (v24 >= 1.0e15 || v24 <= 1.0e-15)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v17;
  }

  *(this + 15) = v26;
}

float32x4_t *PowerMeter::ProcessVector(float32x4_t *this, const float **a2, int *a3, float *a4, double *a5)
{
  v5 = this[5];
  v6 = *a3;
  v7 = *a2;
  v8 = 0uLL;
  if ((*a3 + 3) >= 7)
  {
    if (v6 < 0)
    {
      v6 = *a3 + 3;
    }

    v9 = v6 >> 2;
    v10 = (v9 - 1);
    v11 = vdupq_n_s32(0x3DEAEB81u);
    v12 = *a2;
    do
    {
      v13 = *v12++;
      v8 = vmaxq_f32(v8, vabsq_f32(v13));
      v5 = vmlaq_f32(v5, v11, vsubq_f32(vmulq_f32(v13, v13), v5));
      --v9;
    }

    while (v9);
    v7 += 4 * v10 + 4;
  }

  *a2 = v7;
  this[5] = v8;
  *a4 = v8.f32[0];
  v14 = this[5].f32[1];
  if (v14 > v8.f32[0])
  {
    *a4 = v14;
    v8.f32[0] = v14;
  }

  v15 = this[5].f32[2];
  if (v15 > v8.f32[0])
  {
    *a4 = v15;
    v8.f32[0] = v15;
  }

  v16 = this[5].f32[3];
  if (v16 > v8.f32[0])
  {
    *a4 = v16;
  }

  *a5 = ((vaddv_f32(*v5.f32) + v5.f32[2]) + v5.f32[3]) * 0.25;
  v17 = vabsq_f32(v5);
  v18 = vcvt_hight_f64_f32(v17);
  v19 = vcvtq_f64_f32(*v17.f32);
  v20 = vdupq_n_s64(0x3CD203AF9EE75616uLL);
  v21 = vdupq_n_s64(0x430C6BF526340000uLL);
  this[5] = vandq_s8(v5, vuzp1q_s32(vandq_s8(vcgtq_f64(v19, v20), vcgtq_f64(v21, v19)), vandq_s8(vcgtq_f64(v18, v20), vcgtq_f64(v21, v18))));
  v22 = *a3 & 3;
  if (*a3 <= 0)
  {
    v22 = -(-*a3 & 3);
  }

  *a3 = v22;
  return this;
}

long double PowerMeter::ScaleDecayConstants(PowerMeter *this, int a2, long double result)
{
  if (*(this + 12) != a2)
  {
    if (*(this + 1) == 0.0)
    {
      *(this + 8) = xmmword_1DE1F44A0;
      *(this + 4) = 0x3FEFFEF71A09F35FLL;
      v5 = 0.999937347;
      v6 = 0.999873687;
    }

    else
    {
      v5 = *(this + 2);
      v6 = *(this + 4);
    }

    *(this + 3) = 1.0 - pow(v5, a2);
    result = 1.0 - pow(v6, a2);
    *(this + 5) = result;
    *(this + 12) = a2;
  }

  return result;
}

void PowerMeter::PowerMeter(PowerMeter *this)
{
  *this = 0;
  *(this + 8) = xmmword_1DE1F4480;
  *(this + 24) = xmmword_1DE1F4490;
  *(this + 5) = 0x3F90624DD2F1A9FCLL;
  *(this + 12) = -1;
  if (gCAVectorUnitType == -1)
  {
    CAVectorUnit_Examine();
  }

  *(this + 8) = 0;
  *(this + 28) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 6) = 0xFFFFFFFFLL;
}

uint64_t CADeprecated::CAGuard::Notify(CADeprecated::CAGuard *this)
{
  v9 = *MEMORY[0x1E69E9840];
  result = pthread_cond_signal((this + 88));
  if (result)
  {
    v4 = result;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v6 = "CAGuard.cpp";
      v7 = 1024;
      v8 = 302;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::Notify: failed", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F595E710;
    exception[2] = v4;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

pthread_t CADeprecated::CAGuard::Wait(CADeprecated::CAGuard *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  v3 = atomic_load(this + 2);
  if (!pthread_equal(v2, v3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "CAGuard.cpp";
      v11 = 1024;
      v12 = 88;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::Wait: A thread has to have locked a guard before it can wait", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F595E710;
    exception[2] = 1;
LABEL_10:
  }

  atomic_store(0, this + 2);
  v4 = pthread_cond_wait((this + 88), (this + 24));
  if (v4)
  {
    v8 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "CAGuard.cpp";
      v11 = 1024;
      v12 = 97;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::Wait: Could not wait for a signal", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F595E710;
    exception[2] = v8;
    goto LABEL_10;
  }

  result = pthread_self();
  atomic_store(result, this + 2);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CACFArray::GetUInt32(CFArrayRef *this, unsigned int a2, unsigned int *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFArray *CACFArray::GetCFType(CFArrayRef *this, unsigned int a2, const void **a3)
{
  result = *this;
  if (result)
  {
    if (CFArrayGetCount(result) <= a2)
    {
      return 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*this, a2);
      *a3 = ValueAtIndex;
      return (ValueAtIndex != 0);
    }
  }

  return result;
}

atomic_uint *CAAudioChannelLayout::SetWithTag(atomic_uint **this, atomic_uint a2)
{
  v4 = *this;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  result = CAAudioChannelLayout::RefCountedLayout::CreateWithNumberChannelDescriptions(0);
  result[4] = a2;
  *this = result;
  return result;
}

void CAAudioChannelLayout::CAAudioChannelLayout(CAAudioChannelLayout *this, atomic_uint a2)
{
  *this = 0;
  CAAudioChannelLayout::SetWithTag(this, a2);
}

{
  *this = 0;
  CAAudioChannelLayout::SetWithTag(this, a2);
}

uint64_t CADeprecated::CAPThread::Entry(CADeprecated::CAPThread *this, void *a2)
{
  atomic_store(pthread_self(), this + 1);
  if (*(this + 40))
  {
    pthread_setname_np(this + 40);
  }

  if (*(this + 121) == 1)
  {
    CADeprecated::CAPThread::SetTimeConstraints(this, *(this + 27), *(this + 28), *(this + 29), *(this + 120));
  }

  v3 = *(this + 3);
  if (v3)
  {
    v4 = v3(*(this + 4));
  }

  else
  {
    v4 = 0;
  }

  atomic_store(0, this + 1);
  if (*(this + 123) == 1)
  {
    (*(*this + 8))(this);
  }

  return v4;
}

uint64_t CACFArray::GetDictionary(CFArrayRef *this, unsigned int a2, const __CFDictionary **a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFDictionaryGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void CADeprecated::CAGuard::~CAGuard(CADeprecated::CAGuard *this)
{
  *this = &unk_1F595E660;
  pthread_cond_destroy((this + 88));

  CADeprecated::CAMutex::~CAMutex(this);
}

{
  CADeprecated::CAGuard::~CAGuard(this);

  JUMPOUT(0x1E12BF450);
}

void CADeprecated::CAMutex::~CAMutex(CADeprecated::CAMutex *this)
{
  *this = &unk_1F595E4C0;
  pthread_mutex_destroy((this + 24));
}

{
  CADeprecated::CAMutex::~CAMutex(this);

  JUMPOUT(0x1E12BF450);
}

CADeprecated::CAGuard *CADeprecated::CAGuard::CAGuard(CADeprecated::CAGuard *this, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = CADeprecated::CAMutex::CAMutex(this, a2);
  *v3 = &unk_1F595E660;
  v4 = pthread_cond_init((v3 + 88), 0);
  if (v4)
  {
    v7 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "CAGuard.cpp";
      v11 = 1024;
      v12 = 66;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::CAGuard: Could not init the cond var", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F595E710;
    exception[2] = v7;
  }

  v5 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t CADeprecated::CABufferList::AllocateBuffers(uint64_t this, unsigned int a2)
{
  if (*(this + 36) < a2)
  {
    *(this + 24);
    operator new[]();
  }

  return this;
}

uint64_t CACFPreferencesGetAppIntegerValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v6 = v4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &v10;
  }

  v8 = CASmartPreferences::InterpretInteger(v4, v7, v5);
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

uint64_t CASmartPreferences::InterpretInteger(const __CFString *this, _BYTE *a2, BOOL *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  *a2 = 0;
  if (this)
  {
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(this);
LABEL_6:
      *a2 = 1;
      goto LABEL_7;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(this, kCFNumberIntType, &valuePtr);
      goto LABEL_6;
    }

    if (v5 == CFStringGetTypeID())
    {
      CFStringGetCString(this, buffer, 64, 0x600u);
      if (sscanf(buffer, "%d", &valuePtr) == 1)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  result = valuePtr;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

CADeserializer *operator>>(CADeserializer *a1, uint64_t a2)
{
  Ptr = CADeserializer::GetAndAdvanceReadPtr(a1, 8u, 8);
  if (Ptr)
  {
    v5 = *Ptr;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 8) = v7;
  v8 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (v8)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 12) = v9;
  v10 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  *(a2 + 16) = v11;
  v12 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (v12)
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  *(a2 + 20) = v13;
  v14 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (v14)
  {
    v15 = *v14;
  }

  else
  {
    v15 = 0;
  }

  *(a2 + 24) = v15;
  v16 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  *(a2 + 28) = v17;
  v18 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *(a2 + 32) = v19;
  v20 = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *(a2 + 36) = v21;
  return a1;
}

uint64_t MultiRadixRealFFT::RealOutOfPlaceForwardTransform(MultiRadixRealFFT *this, DSPComplex *__C, DSPSplitComplex *a3, float a4)
{
  vDSP_ctoz(__C, 2, a3, 1, **this >> 1);
  MultiRadixRealFFT::RealInPlaceTransform(this, a3, 1, a4);
  return 0;
}

uint64_t MultiRadixRealFFT::RealInPlaceTransform(MultiRadixRealFFT *this, DSPSplitComplex *a2, int a3, float a4)
{
  if (!*this)
  {
    abort();
  }

  v8 = 16;
  if (a3 == 1)
  {
    v8 = 8;
  }

  vDSP_DFT_Execute(*(*this + v8), a2->realp, a2->imagp, a2->realp, a2->imagp);
  if (a3 == 1)
  {
    v10 = a4 * 0.5;
    MEMORY[0x1E12BFD70](a2->realp, 1, &v10, a2->realp, 1, **this >> 1);
    MEMORY[0x1E12BFD70](a2->imagp, 1, &v10, a2->imagp, 1, **this >> 1);
  }

  return 0;
}

uint64_t MultiRadixRealFFT::RealOutOfPlaceInverseTransform(MultiRadixRealFFT *this, const DSPSplitComplex *a2, DSPComplex *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    abort();
  }

  v5 = **this;
  MEMORY[0x1EEE9AC00]();
  v7 = (&v14 - ((v6 + 15) & 0x7FFFFFFF0));
  __Z.realp = v7;
  __Z.imagp = (v7 + ((2 * v8) & 0x1FFFFFFFCLL));
  vDSP_DFT_Execute(*(v9 + 16), *v10, v10[1], v7, __Z.imagp);
  if (*this)
  {
    v11 = **this >> 1;
  }

  else
  {
    v11 = 0;
  }

  vDSP_ztoc(&__Z, 1, a3, 2, v11);
  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

CADeprecated::CAPThread *CADeprecated::CAPThread::CAPThread(CADeprecated::CAPThread *this, void *(*a2)(void *), void *a3, int a4, char a5, char a6, const char *a7)
{
  *this = &unk_1F595E058;
  *(this + 1) = 0;
  v14 = pthread_self();
  *(this + 4) = CADeprecated::CAPThread::getScheduledPriority(v14, 0);
  *(this + 3) = a2;
  *(this + 4) = a3;
  *(this + 26) = a4;
  *(this + 27) = 0;
  *(this + 14) = 0;
  *(this + 60) = 1;
  *(this + 122) = a5;
  *(this + 123) = a6;
  if (a7)
  {
    strlcpy(this + 40, a7, 0x40uLL);
  }

  else
  {
    *(this + 88) = 0u;
    *(this + 72) = 0u;
    *(this + 56) = 0u;
    *(this + 40) = 0u;
  }

  return this;
}

_opaque_pthread_t *CADeprecated::CAPThread::getScheduledPriority(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  if (this)
  {
    v2 = a2;
    v3 = this;
    thread_info_outCnt = 10;
    v4 = pthread_mach_thread_np(this);
    thread_info(v4, 3u, thread_info_out, &thread_info_outCnt);
    switch(v13)
    {
      case 4:
        thread_info_outCnt = 4;
        v7 = pthread_mach_thread_np(v3);
        thread_info(v7, 0xCu, v11, &thread_info_outCnt);
        if (v2 == 1 && v11[2])
        {
          return v11[3];
        }

        else
        {
          return v11[1];
        }

      case 2:
        thread_info_outCnt = 5;
        v6 = pthread_mach_thread_np(v3);
        thread_info(v6, 0xBu, v10, &thread_info_outCnt);
        if (v2 == 1 && v10[3])
        {
          return v10[4];
        }

        else
        {
          return v10[1];
        }

      case 1:
        thread_info_outCnt = 5;
        v5 = pthread_mach_thread_np(v3);
        thread_info(v5, 0xAu, v9, &thread_info_outCnt);
        if (v2 == 1)
        {
          return v9[2];
        }

        else
        {
          return v9[1];
        }

      default:
        return 0;
    }
  }

  return this;
}

uint64_t CADeprecated::CAPThread::Start(uint64_t this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (atomic_load((this + 8)))
  {
    CAVerboseAbort();
  }

  if (!atomic_load((this + 8)))
  {
    v3 = this;
    v4 = pthread_attr_init(&v18);
    if (v4)
    {
      v8 = v4;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 136315394;
      v15 = "CAPThread.cpp";
      v16 = 1024;
      v17 = 255;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  CAPThread::Start: Thread attributes could not be created.";
    }

    else
    {
      v5 = pthread_attr_setdetachstate(&v18, 2);
      if (v5)
      {
        v8 = v5;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 136315394;
        v15 = "CAPThread.cpp";
        v16 = 1024;
        v17 = 258;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "%25s:%-5d  CAPThread::Start: A thread could not be created in the detached state.";
      }

      else
      {
        pthread_attr_getschedparam(&v18, &v13);
        v13.sched_priority = *(v3 + 104);
        pthread_attr_setschedparam(&v18, &v13);
        if (*(v3 + 122) == 1)
        {
          pthread_attr_setschedpolicy(&v18, 4);
        }

        v12 = 0;
        v6 = pthread_create(&v12, &v18, CADeprecated::CAPThread::Entry, v3);
        if (!v6 && v12)
        {
          atomic_store(v12, (v3 + 8));
          this = pthread_attr_destroy(&v18);
          goto LABEL_10;
        }

        v8 = v6;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_19:
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F595E710;
          exception[2] = v8;
        }

        *buf = 136315394;
        v15 = "CAPThread.cpp";
        v16 = 1024;
        v17 = 272;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "%25s:%-5d  CAPThread::Start: Could not create a thread.";
      }
    }

    _os_log_impl(&dword_1DE1D2000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
    goto LABEL_19;
  }

LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return this;
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (os_unfair_lock_trylock(v2))
  {
    v3 = std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *>,caulk::shared_instance_manager<DFTSetups>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *> const&)#1}>(*(v2 + 8), *(v2 + 16));
    std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::erase((v2 + 8), v3, *(v2 + 16));
    os_unfair_lock_unlock(v2);
  }

  std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](a1 + 5);
  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

uint64_t *std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *>,caulk::shared_instance_manager<DFTSetups>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *> const&)#1}>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (1)
    {
      v5 = v2[1];
      if (!v5 || *(v5 + 8) == -1)
      {
        break;
      }

      v2 += 2;
      if (v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = v2 + 2; i != a2; i += 2)
      {
        v7 = i[1];
        if (v7 && *(v7 + 8) != -1)
        {
          v8 = *i;
          *i = 0;
          i[1] = 0;
          v9 = v2[1];
          *v2 = v8;
          v2[1] = v7;
          if (v9)
          {
            std::__shared_weak_count::__release_weak(v9);
          }

          v2 += 2;
        }
      }
    }
  }

  return v2;
}

uint64_t *std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      vDSP_DFT_DestroySetup(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      vDSP_DFT_DestroySetup(v4);
    }

    MEMORY[0x1E12BF450](v2, 0x1060C40CA828048);
  }

  return a1;
}

uint64_t MultiRadixRealFFT::Initialize(MultiRadixRealFFT *this, unsigned int a2)
{
  {
    operator new();
  }

  v4 = DFTSetupList<false>::instance(void)::global;
  os_unfair_lock_lock(DFTSetupList<false>::instance(void)::global);
  v5 = std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *>,caulk::shared_instance_manager<DFTSetups>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *> const&)#1}>(*(v4 + 8), *(v4 + 16));
  std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::erase((v4 + 8), v5, *(v4 + 16));
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  while (1)
  {
    if (v6 == v7)
    {
      Setup = vDSP_DFT_zrop_CreateSetup(0, a2, vDSP_DFT_FORWARD);
      if (Setup)
      {
        vDSP_DFT_zrop_CreateSetup(Setup, a2, vDSP_DFT_INVERSE);
      }

      operator new();
    }

    v8 = v6[1];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        break;
      }
    }

LABEL_9:
    v6 += 2;
  }

  v10 = v9;
  if (!*v6 || (v11 = *(*v6 + 16), *v11 != a2))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  os_unfair_lock_unlock(v4);
  if (*(v11 + 8) && *(v11 + 16))
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    v13 = 0;
    v14 = 0;
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v14 = 1936292453;
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    v11 = 0;
    v10 = 0;
    v13 = 1;
  }

  v15 = *(this + 1);
  *this = v11;
  *(this + 1) = v10;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if ((v13 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v14;
}

double CACFPreferencesGetAppFloatValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v6 = v4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &v10;
  }

  v8 = CASmartPreferences::InterpretFloat(v4, v7, v5);
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

double CASmartPreferences::InterpretFloat(const __CFString *this, _BYTE *a2, BOOL *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  valuePtr = 0.0;
  *a2 = 0;
  if (this)
  {
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(this);
LABEL_6:
      *a2 = 1;
      goto LABEL_7;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(this, kCFNumberDoubleType, &valuePtr);
      goto LABEL_6;
    }

    if (v5 == CFStringGetTypeID())
    {
      CFStringGetCString(this, buffer, 64, 0x600u);
      if (sscanf(buffer, "%lf", &valuePtr) == 1)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  result = valuePtr;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFData **operator<<(const __CFData **a1, CFStringRef *a2)
{
  if (*a2)
  {
    Length = CFStringGetLength(*a2);
  }

  else
  {
    Length = -1;
  }

  *bytes = Length;
  CASerializer::PrepareToWrite(a1, 4);
  CFDataAppendBytes(*a1, bytes, 4);
  v5 = *bytes;
  if (*bytes >= 1)
  {
    v6 = *a2;
    v7 = CASerializer::AllocWritePtr(a1, 2 * *bytes, 0);
    v10.location = 0;
    v10.length = v5;
    CFStringGetCharacters(v6, v10, v7);
  }

  return a1;
}

UInt8 *CASerializer::AllocWritePtr(const __CFData **this, unsigned int a2, int a3)
{
  CASerializer::PrepareToWrite(this, a3);
  Length = CFDataGetLength(*this);
  CFDataIncreaseLength(*this, a2);
  return &CFDataGetMutableBytePtr(*this)[Length];
}

uint64_t operator>>(uint64_t a1, CFStringRef *a2)
{
  Ptr = CADeserializer::GetAndAdvanceReadPtr(a1, 4u, 4);
  if (Ptr)
  {
    v5 = *Ptr;
    if ((*Ptr & 0x80000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v7 = 2 * v5;
    v8 = *(a1 + 16);
    if (*(a1 + 24) - v8 < v7)
    {
      v6 = 0;
      *(a1 + 32) = 1;
      goto LABEL_11;
    }

    *(a1 + 16) = &v8[v7 / 2];
    if (v8)
    {
      v6 = CFStringCreateWithCharacters(0, v8, v5);
      goto LABEL_11;
    }
  }

LABEL_6:
  v6 = 0;
LABEL_11:
  *a2 = v6;
  return a1;
}

void *MIDIPacketList_New(const MIDIPacketList *a1)
{
  packet = a1->packet;
  if (a1->numPackets >= 1)
  {
    v3 = a1->numPackets + 1;
    do
    {
      packet = (packet + *(packet + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
      --v3;
    }

    while (v3 > 1);
  }

  v4 = packet - a1;
  v5 = malloc_type_malloc(packet - a1, 0x100004013C699A6uLL);

  return memcpy(v5, a1, v4);
}

unint64_t MIDIPacketList_Size(const MIDIPacketList *a1)
{
  packet = a1->packet;
  if (a1->numPackets >= 1)
  {
    v2 = a1->numPackets + 1;
    do
    {
      packet = (packet + *(packet + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
      --v2;
    }

    while (v2 > 1);
  }

  return packet - a1;
}

char *MIDIPacketList_New(uint64_t a1, size_t a2, const unsigned __int8 *a3)
{
  v6 = malloc_type_malloc(a2 + 14, 0x100004013C699A6uLL);
  *v6 = 1;
  *(v6 + 4) = a1;
  *(v6 + 6) = a2;
  memcpy(v6 + 14, a3, a2);
  return v6;
}

_WORD *MIDIPacketList_Split(MIDIPacketList *a1, unint64_t a2)
{
  if (a2 <= 0x11)
  {
    __assert_rtn("MIDIPacketList_Split", "MIDIPacket.cpp", 46, "maxLen >= offsetof(MIDIPacketList, packet[0].data[4])");
  }

  packet = a1->packet;
  numPackets = a1->numPackets;
  if (a1->numPackets < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 + a2;
  v7 = a1 + a2 - 1;
  v8 = a1->packet;
  while (1)
  {
    v9 = (v8 + 5);
    v10 = v8[4];
    v11 = (v8 + v10 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    if (v11 - a1 > a2)
    {
      break;
    }

    ++v5;
    v8 = ((v8 + v10 + 13) & 0xFFFFFFFFFFFFFFFCLL);
    if (numPackets == v5)
    {
      return 0;
    }
  }

  if (!v5)
  {
    if (v6 >= v11 || *v6 < 0)
    {
      v7 = a1 + a2;
    }

    else if ((*v7 & 0x80000000) == 0)
    {
      if (*(v6 - 2) >= 0)
      {
        v7 = a1 + a2;
      }

      else
      {
        v7 = a1 + a2 - 2;
      }
    }

    v16 = numPackets + 1;
    do
    {
      packet = (packet + *(packet + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
      --v16;
    }

    while (v16 > 1);
    v17 = v7 - v9;
    v18 = v10 - (v7 - v9);
    v12 = malloc_type_malloc(packet - (a1 + v7 - v9) + 8, 0x100004013C699A6uLL);
    *v12 = a1->numPackets;
    *(v12 + 2) = *v8;
    v19 = v12 + 2;
    v12[6] = v18;
    memcpy(v12 + 7, v7, v18);
    v20 = a1->numPackets;
    if ((a1->numPackets - 1) >= 1)
    {
      do
      {
        v8 = ((v8 + v8[4] + 13) & 0xFFFFFFFFFFFFFFFCLL);
        v19 = ((v19 + v19[4] + 13) & 0xFFFFFFFFFFFFFFFCLL);
        memcpy(v19, v8, v8[4] + 10);
        --v20;
      }

      while (v20 > 1);
    }

    a1->numPackets = 1;
    a1->packet[0].length = v17;
    return v12;
  }

  v15 = *(v8 - 1);
  v14 = (v8 - 2);
  v14->numPackets = numPackets - v5;
  result = MIDIPacketList_New(v14);
  v14->numPackets = v15;
  a1->numPackets = v5;
  return result;
}

const unsigned __int8 *NextMIDIEvent(const MIDIPacket *a1, Byte *a2)
{
  v2 = &a1->data[a1->length];
  if (a1->data <= a2 && v2 > a2)
  {
    return NextMIDIEvent(a2, v2);
  }

  else
  {
    return &a1->data[a1->length];
  }
}

const unsigned __int8 *NextMIDIEvent(const unsigned __int8 *a1, const unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 >> 4;
  if (v2 >> 4 <= 0xF)
  {
    if (((1 << v3) & 0x4F00) != 0)
    {
LABEL_3:
      v4 = a1 + 3;
      goto LABEL_21;
    }

    if (((1 << v3) & 0x3000) != 0)
    {
      goto LABEL_5;
    }

    if (v3 == 15)
    {
      if (*a1 > 0xF1u)
      {
        if (v2 == 242)
        {
          goto LABEL_3;
        }

        if (v2 != 243)
        {
          goto LABEL_26;
        }

        goto LABEL_5;
      }

      if (v2 != 240)
      {
        if (v2 != 241)
        {
LABEL_26:
          v4 = a1 + 1;
          goto LABEL_21;
        }

LABEL_5:
        v4 = a1 + 2;
        goto LABEL_21;
      }
    }
  }

  v5 = a1 + 1;
  v6 = a1 + 1;
  do
  {
    v8 = *v6++;
    v7 = v8;
    v10 = (v8 & 0x80u) == 0 || v7 == 247;
    if (v5 >= a2)
    {
      break;
    }

    v5 = v6;
  }

  while (v10);
  v4 = v6 - 1;
LABEL_21:
  if (v4 >= a2)
  {
    return a2;
  }

  else
  {
    return v4;
  }
}

void MIDIPacketList_Dump(__sFILE *a1, const MIDIPacketList *a2, const char *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = *MEMORY[0x1E69E9840];

    DumpMIDIPacketList(a1, a2, a3);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v8 = funopen(&v8, 0, CAMemoryStream::Write, 0, 0);
    DumpMIDIPacketList(v8, a2, a3);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      fflush(v8);
      v6 = v9;
      if (!v9)
      {
        v6 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
        v9 = v6;
        v11 = 1;
      }

      *(v6 + v10) = 0;
      *buf = 136315138;
      v13 = v9;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    fclose(v8);
    free(v9);
    v7 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE1DE0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, FILE *a9, void *a10)
{
  fclose(a9);
  free(a10);
  _Unwind_Resume(a1);
}

uint64_t DumpMIDIPacketList(__sFILE *a1, const MIDIPacketList *a2, const char *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  fprintf(a1, "%s ", a3);
  *&v6 = 0x2020202020202020;
  *(&v6 + 1) = 0x2020202020202020;
  v20[3] = v6;
  v20[4] = v6;
  v20[1] = v6;
  v20[2] = v6;
  v20[0] = v6;
  result = strlen(a3);
  v8 = 79;
  if ((result + 1) < 0x4F)
  {
    v8 = result + 1;
  }

  *(v20 + v8) = 0;
  numPackets = a2->numPackets;
  if (DumpMIDIPacketList(__sFILE *,MIDIPacketList const*,char const*)::baseTime)
  {
    if (!numPackets)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!numPackets)
    {
      goto LABEL_21;
    }

    DumpMIDIPacketList(__sFILE *,MIDIPacketList const*,char const*)::baseTime = a2->packet[0].timeStamp;
  }

  v10 = 0;
  packet = a2->packet;
  do
  {
    v12 = *packet;
    if (*packet)
    {
      v13 = DumpMIDIPacketList(__sFILE *,MIDIPacketList const*,char const*)::baseTime;
      v14 = __udivti3();
      if (v12 >= v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = -v14;
      }

      snprintf(__str, 0x14uLL, "%.3f", v15 * 0.000000001);
    }

    else
    {
      strcpy(__str, "---");
    }

    v16 = "";
    if (v10)
    {
      v16 = v20;
    }

    fprintf(a1, "%s[%2d] %s : ", v16, v10, __str);
    if (*(packet + 8))
    {
      v17 = 0;
      do
      {
        fprintf(a1, "%02X ", *(packet + 10 + v17++));
      }

      while (v17 < *(packet + 8));
    }

    result = fputc(10, a1);
    packet = (packet + *(packet + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
    ++v10;
  }

  while (v10 < a2->numPackets);
LABEL_21:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

const char *CAMemoryStream::Write(CAMemoryStream *this, void *a2, const char *a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = *(this + 2);
    v7 = v6 + a3;
    if ((v7 + 1) <= *(this + 3))
    {
      v8 = *(this + 1);
    }

    else
    {
      v8 = malloc_type_realloc(*(this + 1), (v7 & 0xFFFFFFFFFFFFFF80) + 128, 0x100004077774924uLL);
      if (!v8)
      {
        fwrite("realloc failed", 0xEuLL, 1uLL, *MEMORY[0x1E69E9848]);
        return 0xFFFFFFFFLL;
      }

      *(this + 1) = v8;
      *(this + 3) = (v7 & 0xFFFFFFFFFFFFFF80) + 128;
      v6 = *(this + 2);
    }

    memcpy(&v8[v6], a2, v3);
    *(this + 2) = v7;
  }

  return v3;
}

float CACFNumber::GetFixed32(const __CFNumber **this)
{
  valuePtr = 0;
  v1 = *this;
  if (v1)
  {
    CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
    v2 = valuePtr;
    v3 = 1.0;
    if (valuePtr < 0)
    {
      v3 = -1.0;
    }
  }

  else
  {
    v2 = 0;
    v3 = 1.0;
  }

  return v3 * (vcvts_n_f32_u32((v2 * v3), 0x10uLL) + (((v2 * v3) >> 16) & 0x7FFF));
}

double CACFNumber::GetFixed64(const __CFNumber **this)
{
  valuePtr = 0;
  v1 = *this;
  if (v1)
  {
    CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
    v2 = valuePtr;
    v3 = 1.0;
    if (valuePtr < 0)
    {
      v3 = -1.0;
    }
  }

  else
  {
    v2 = 0;
    v3 = 1.0;
  }

  return v3 * (vcvtd_n_f64_u64(v2 * v3, 0x20uLL) + (((v2 * v3) >> 32) & 0x7FFFFFFF));
}

void CACFNumber::PrintToLog(CACFNumber *this, const __CFNumber *a2)
{
  LODWORD(v2) = a2;
  v19 = *MEMORY[0x1E69E9840];
  Type = CFNumberGetType(this);
  if (v2)
  {
    v2 = v2;
    memset(__b, 9, v2);
  }

  else
  {
    v2 = 0;
  }

  __b[v2] = 0;
  if (Type <= kCFNumberCharType)
  {
    if (Type <= kCFNumberSInt64Type)
    {
      if (Type != kCFNumberSInt8Type)
      {
        if (Type != kCFNumberSInt16Type)
        {
          if (Type == kCFNumberSInt64Type)
          {
            valuePtr = 0.0;
            CFNumberGetValue(this, kCFNumberSInt64Type, &valuePtr);
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v11 = "CACFNumber.cpp";
              v12 = 1024;
              v13 = 86;
              v14 = 2080;
              v15 = __b;
              v16 = 2048;
              v17 = valuePtr;
              v5 = MEMORY[0x1E69E9C10];
              v6 = "%25s:%-5d  %s%lli";
LABEL_34:
              v7 = 38;
LABEL_38:
              _os_log_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, v7);
              goto LABEL_39;
            }

            goto LABEL_39;
          }

          goto LABEL_35;
        }

        goto LABEL_28;
      }

LABEL_19:
      LOBYTE(valuePtr) = 0;
      CFNumberGetValue(this, Type, &valuePtr);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      *buf = 136315906;
      v11 = "CACFNumber.cpp";
      v12 = 1024;
      v13 = 62;
      v14 = 2080;
      v15 = __b;
      v16 = 1024;
      LODWORD(v17) = SLOBYTE(valuePtr);
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  %s%i";
LABEL_37:
      v7 = 34;
      goto LABEL_38;
    }

    if (Type != kCFNumberFloat32Type)
    {
      if (Type != kCFNumberFloat64Type)
      {
        goto LABEL_19;
      }

LABEL_30:
      valuePtr = 0.0;
      CFNumberGetValue(this, Type, &valuePtr);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v11 = "CACFNumber.cpp";
        v12 = 1024;
        v13 = 102;
        v14 = 2080;
        v15 = __b;
        v16 = 2048;
        v17 = valuePtr;
        v5 = MEMORY[0x1E69E9C10];
        v6 = "%25s:%-5d  %s%f";
        goto LABEL_34;
      }

      goto LABEL_39;
    }

LABEL_26:
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(this, Type, &valuePtr);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v11 = "CACFNumber.cpp";
      v12 = 1024;
      v13 = 94;
      v14 = 2080;
      v15 = __b;
      v16 = 2048;
      v17 = *&valuePtr;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  %s%f";
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  if (Type > kCFNumberLongLongType)
  {
    switch(Type)
    {
      case kCFNumberFloatType:
        goto LABEL_26;
      case kCFNumberDoubleType:
        goto LABEL_30;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        CFNumberGetValue(this, kCFNumberCFIndexType, &valuePtr);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v11 = "CACFNumber.cpp";
          v12 = 1024;
          v13 = 123;
          v14 = 2080;
          v15 = __b;
          v16 = 2048;
          v17 = valuePtr;
          v5 = MEMORY[0x1E69E9C10];
          v6 = "%25s:%-5d  %s%li";
          goto LABEL_34;
        }

        goto LABEL_39;
    }

LABEL_35:
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(this, Type, &valuePtr);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    *buf = 136315906;
    v11 = "CACFNumber.cpp";
    v12 = 1024;
    v13 = 79;
    v14 = 2080;
    v15 = __b;
    v16 = 1024;
    LODWORD(v17) = LODWORD(valuePtr);
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  %s%i";
    goto LABEL_37;
  }

  if (Type == kCFNumberShortType)
  {
LABEL_28:
    LOWORD(valuePtr) = 0;
    CFNumberGetValue(this, Type, &valuePtr);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    *buf = 136315906;
    v11 = "CACFNumber.cpp";
    v12 = 1024;
    v13 = 70;
    v14 = 2080;
    v15 = __b;
    v16 = 1024;
    LODWORD(v17) = SLOWORD(valuePtr);
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  %s%i";
    goto LABEL_37;
  }

  if (Type == kCFNumberLongType)
  {
    valuePtr = 0.0;
    CFNumberGetValue(this, kCFNumberLongType, &valuePtr);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v11 = "CACFNumber.cpp";
      v12 = 1024;
      v13 = 109;
      v14 = 2080;
      v15 = __b;
      v16 = 2048;
      v17 = valuePtr;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  %s%li";
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  if (Type != kCFNumberLongLongType)
  {
    goto LABEL_35;
  }

  valuePtr = 0.0;
  CFNumberGetValue(this, kCFNumberLongLongType, &valuePtr);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v11 = "CACFNumber.cpp";
    v12 = 1024;
    v13 = 116;
    v14 = 2080;
    v15 = __b;
    v16 = 2048;
    v17 = valuePtr;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  %s%lli";
    goto LABEL_34;
  }

LABEL_39:
  v8 = *MEMORY[0x1E69E9840];
}

void CACFBoolean::PrintToLog(CACFBoolean *this, const __CFBoolean *a2)
{
  LODWORD(v2) = a2;
  v15 = *MEMORY[0x1E69E9840];
  Value = CFBooleanGetValue(this);
  if (v2)
  {
    v2 = v2;
    memset(__b, 9, v2);
  }

  else
  {
    v2 = 0;
  }

  __b[v2] = 0;
  v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (Value)
  {
    if (v4)
    {
      v8 = 136315650;
      v9 = "CACFNumber.cpp";
      v10 = 1024;
      v11 = 143;
      v12 = 2080;
      v13 = __b;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  %strue";
LABEL_9:
      _os_log_impl(&dword_1DE1D2000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0x1Cu);
    }
  }

  else if (v4)
  {
    v8 = 136315650;
    v9 = "CACFNumber.cpp";
    v10 = 1024;
    v11 = 147;
    v12 = 2080;
    v13 = __b;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  %sfalse";
    goto LABEL_9;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void XPC_Service::ConnectionHandler(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*a1 + 16))(a1);
}

void sub_1DE1DEC64(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE1DEC40);
}

void *CADeprecated::XMachServer::PortDied(CADeprecated::XMachServer *this, int a2)
{
  v4 = (this + 112);
  result = (*(*(this + 14) + 16))(this + 112);
  v6 = result;
  v8 = v4[11];
  v7 = v4[12];
  while (1)
  {
    if (v8 == v7)
    {
      v9 = 0;
      if (!result)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v9 = *v8;
    if (*(*v8 + 12) == a2)
    {
      break;
    }

    ++v8;
  }

  v10 = v7 - (v8 + 1);
  if (v7 != v8 + 1)
  {
    result = memmove(v8, v8 + 1, v7 - (v8 + 1));
  }

  *(this + 26) = v8 + v10;
  if (v6)
  {
LABEL_10:
    result = (*(*v4 + 24))(v4);
  }

LABEL_11:
  if (v9)
  {
    v11 = *(*this + 32);

    return v11(this, v9);
  }

  return result;
}

void CADeprecated::CAMutex::Locker::~Locker(CADeprecated::CAMutex::Locker *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    (*(**this + 24))();
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t CADeprecated::XRemoteMachServer::PortDied(CADeprecated::XRemoteMachServer *this, int a2)
{
  v4 = this + 80;
  v5 = (*(*(this + 10) + 16))(this + 80);
  v7 = *(v4 - 3);
  v6 = *(v4 - 2);
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_8;
    }

    if (*v7 == a2)
    {
      break;
    }

    v7 += 8;
  }

  v8 = *(v7 + 1);
  v9 = v6 - (v7 + 8);
  if (v6 != v7 + 8)
  {
    memmove(v7, v7 + 8, v6 - (v7 + 8));
  }

  *(this + 8) = &v7[v9];
  if (!v8)
  {
LABEL_8:
    if (*(this + 12) == a2)
    {
      v8 = *(this + 13);
    }

    else
    {
      v8 = 0;
    }
  }

  *(this + 6) = 0;
  if (v5)
  {
    (*(*v4 + 24))(v4);
  }

  v10 = *(*this + 32);

  return v10(this, v8);
}

void *CADeprecated::XMachPortDeathListener::XMachPortDeathListener(void *this)
{
  *this = &unk_1F595DDD8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void CADeprecated::XMachPortDeathListener::~XMachPortDeathListener(CADeprecated::XMachPortDeathListener *this)
{
  *this = &unk_1F595DDD8;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

void CADeprecated::XMachPortDeathListener::SetDeathNotificationRunLoopAndMode(CADeprecated::XMachPortDeathListener *this, __CFRunLoop *a2, const __CFString *a3)
{
  if (!*(this + 3))
  {
    PortDeathCFPort = CADeprecated::XMachPortDeathListener::GetPortDeathCFPort(this);
    *(this + 3) = CFMachPortCreateRunLoopSource(0, PortDeathCFPort, 1);
  }

  operator new();
}

void CADeprecated::XMachPortServicer::RunLoopImpl::~RunLoopImpl(CADeprecated::XMachPortServicer::RunLoopImpl *this)
{
  CADeprecated::XMachPortServicer::RunLoopImpl::~RunLoopImpl(this);

  JUMPOUT(0x1E12BF450);
}

{
  *this = &unk_1F595DF58;
  CFRunLoopRemoveSource(*(this + 1), *(this + 3), *(this + 2));
  CFRelease(*(this + 1));
  CFRelease(*(this + 2));
  CFRelease(*(this + 3));
}

void CADeprecated::XMachPortDeathListener::SetDeathNotificationDispatchQueue(CADeprecated::XMachPortDeathListener *a1, dispatch_queue_t *a2)
{
  PortDeathCFPort = CADeprecated::XMachPortDeathListener::GetPortDeathCFPort(a1);
  Port = CFMachPortGetPort(PortDeathCFPort);
  v8 = dispatch_source_create(MEMORY[0x1E69E96D8], Port, 0, *a2);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = ___ZN12CADeprecated22XMachPortDeathListener33SetDeathNotificationDispatchQueueERKN10applesauce8dispatch2v15queueE_block_invoke;
  handler[3] = &__block_descriptor_tmp;
  handler[4] = a1;
  v7 = Port;
  dispatch_source_set_event_handler(v8, handler);
  CADeprecated::XMachPortServicer::SetQueueAndSource();
}

void sub_1DE1DF3DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

mach_port_name_t *CADeprecated::XMachPortSendRight::SetMachPort(mach_port_name_t *this, mach_port_name_t a2)
{
  v3 = this;
  if (*this)
  {
    this = mach_port_deallocate(*MEMORY[0x1E69E9A60], *this);
  }

  *v3 = a2;
  return this;
}

uint64_t CADeprecated::XMachServer::CreateServerPort(CADeprecated::XMachServer *this, const char *a2, kern_return_t *a3, int *a4)
{
  v5 = a2;
  v27 = *MEMORY[0x1E69E9840];
  *special_port = 0;
  v7 = MEMORY[0x1E69E9A60];
  v8 = task_get_special_port(*MEMORY[0x1E69E9A60], 4, special_port);
  if (v8)
  {
    v9 = v8;
    goto LABEL_3;
  }

  if (v5)
  {
    v11 = bootstrap_check_in(special_port[0], this, &special_port[1]);
    if (!v11)
    {
      inserted = mach_port_insert_right(*v7, special_port[1], special_port[1], 0x14u);
      v10 = special_port[1];
      if (inserted | special_port[1])
      {
        goto LABEL_16;
      }

      v9 = 0;
      if ((v5 & 2) == 0)
      {
        goto LABEL_3;
      }

LABEL_11:
      inserted = mach_port_allocate(*v7, 1u, &special_port[1]);
      v10 = special_port[1];
      if (!inserted)
      {
        v9 = mach_port_insert_right(*v7, special_port[1], special_port[1], 0x14u);
        v10 = special_port[1];
        goto LABEL_17;
      }

LABEL_16:
      v9 = inserted;
      goto LABEL_17;
    }

    v9 = v11;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = mach_error_string(v9);
      *buf = 136316162;
      v18 = "XMachServer.cpp";
      v19 = 1024;
      v20 = 227;
      v21 = 2080;
      v22 = this;
      v23 = 1024;
      v24 = v9;
      v25 = 2080;
      v26 = v12;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d bootstrap_check_in(%s) failed: 0x%x; %s", buf, 0x2Cu);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = special_port[1];
  if (special_port[1])
  {
    goto LABEL_17;
  }

  if ((v5 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v10 = 0;
LABEL_17:
  *a3 = v9;
  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

void CADeprecated::XMachServer::XMachServer(uint64_t a1, __int128 *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F595DF78;
  v2 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v2;
  operator new();
}

void sub_1DE1DF844(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[26] = v5;
    operator delete(v5);
  }

  CADeprecated::CAMutex::~CAMutex((v1 + 14));
  CADeprecated::XMachPortDeathListener::~XMachPortDeathListener(v2);
  CADeprecated::XBasicMIGServer::~XBasicMIGServer(v1);
  _Unwind_Resume(a1);
}

void CAX4CCString::CAX4CCString(CAX4CCString *this, unsigned int a2)
{
  v4 = bswap32(a2);
  *(this + 1) = v4;
  v5 = MEMORY[0x1E69E9830];
  if ((v4 & 0x80) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(this + 2);
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v5 + 4 * v6 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v7 = *(this + 3);
  if ((v7 & 0x80000000) != 0)
  {
    if (!__maskrune(v7, 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_13:
    v8 = *(this + 4);
    if ((v8 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x40000uLL))
      {
        goto LABEL_17;
      }
    }

    else if ((*(v5 + 4 * v8 + 60) & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    *(this + 5) = 39;
    *this = 39;
    return;
  }

  if ((*(v5 + 4 * v7 + 60) & 0x40000) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (a2 + 199999 > 0x61A7E)
  {
    snprintf(this, 0x10uLL, "0x%x");
  }

  else
  {
    snprintf(this, 0x10uLL, "%d");
  }
}

void CAXException::CAXException(CAXException *this, const char *__s, int a3)
{
  *this = &unk_1F595E3B0;
  *(this + 66) = a3;
  if (__s)
  {
    if (strlen(__s) < 0x100)
    {
      strlcpy(this + 8, __s, 0x100uLL);
    }

    else
    {
      v5 = *__s;
      v6 = *(__s + 1);
      v7 = *(__s + 2);
      *(this + 56) = *(__s + 3);
      *(this + 40) = v7;
      *(this + 24) = v6;
      *(this + 8) = v5;
      v8 = *(__s + 4);
      v9 = *(__s + 5);
      v10 = *(__s + 6);
      *(this + 120) = *(__s + 7);
      *(this + 104) = v10;
      *(this + 88) = v9;
      *(this + 72) = v8;
      v11 = *(__s + 8);
      v12 = *(__s + 9);
      v13 = *(__s + 10);
      *(this + 184) = *(__s + 11);
      *(this + 168) = v13;
      *(this + 152) = v12;
      *(this + 136) = v11;
      v14 = *(__s + 12);
      v15 = *(__s + 13);
      v16 = *(__s + 14);
      *(this + 247) = *(__s + 239);
      *(this + 232) = v16;
      *(this + 216) = v15;
      *(this + 200) = v14;
      *(this + 263) = 0;
    }
  }

  else
  {
    *(this + 8) = 0;
  }
}

void CADeprecated::XBasicMIGServer::~XBasicMIGServer(CADeprecated::XBasicMIGServer *this)
{
  *this = &unk_1F595DF78;
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

{
  CADeprecated::XBasicMIGServer::~XBasicMIGServer(this);

  JUMPOUT(0x1E12BF450);
}

void std::__shared_ptr_emplace<CADeprecated::XMachReceivePort>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F595DF98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BF450);
}

uint64_t CADeprecated::XMachServer::DoForEachClient(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3)
{
  v6 = (a1 + 112);
  result = (*(*(a1 + 112) + 16))(a1 + 112);
  v8 = result;
  v10 = v6[11];
  for (i = v6[12]; v10 != i; i = *(a1 + 208))
  {
    result = a2(*v10++, a3);
  }

  if (v8)
  {
    return (*(*v6 + 24))(v6);
  }

  return result;
}

CADeprecated::XRemoteMachServer *CADeprecated::XRemoteMachServer::XRemoteMachServer(CADeprecated::XRemoteMachServer *this, const char *a2, const char *a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = a2;
  *this = &unk_1F595DE80;
  *(this + 5) = a3;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  CADeprecated::CAMutex::CAMutex((this + 80), "XRemoteMachServer.mLock");
  *(this + 6) = 0;
  return this;
}

void sub_1DE1DFD58(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  CADeprecated::XMachPortDeathListener::~XMachPortDeathListener(v1);
  _Unwind_Resume(a1);
}

void CADeprecated::XRemoteMachServer::~XRemoteMachServer(CADeprecated::XRemoteMachServer *this)
{
  *this = &unk_1F595DE80;
  CADeprecated::CAMutex::~CAMutex((this + 80));
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  CADeprecated::XMachPortDeathListener::~XMachPortDeathListener(this);
}

void CADeprecated::XRemoteMachServer::SetServerPort(CADeprecated::XRemoteMachServer *this, mach_port_name_t a2, int a3)
{
  v6 = this + 80;
  v7 = (*(*(this + 10) + 16))(this + 80);
  *(v6 - 8) = a2;
  *(v6 - 7) = a3;
  if (a2)
  {
    v9 = *(this + 8);
    v8 = *(this + 9);
    if (v9 >= v8)
    {
      v11 = *(this + 7);
      v12 = v9 - v11;
      v13 = (v9 - v11) >> 3;
      v14 = v13 + 1;
      if ((v13 + 1) >> 61)
      {
        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (!(v16 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = (v9 - v11) >> 3;
      v18 = (8 * v13);
      v19 = (8 * v13 - 8 * v17);
      *v18 = *(this + 6);
      v10 = v18 + 1;
      memcpy(v19, v11, v12);
      *(this + 7) = v19;
      *(this + 8) = v10;
      *(this + 9) = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v9 = *(this + 6);
      v10 = v9 + 8;
    }

    *(this + 8) = v10;
    CADeprecated::XMachPortDeathListener::RequestPortDeathNotification(this, a2);
  }

  if (v7)
  {
    (*(*v6 + 24))(v6);
  }
}

void CADeprecated::RealtimeMessenger::~RealtimeMessenger(CADeprecated::RealtimeMessenger *this)
{
  CADeprecated::RealtimeMessenger::~RealtimeMessenger(this);

  JUMPOUT(0x1E12BF450);
}

{
  *this = &unk_1F595DFD0;
  std::recursive_mutex::~recursive_mutex((this + 72));
  v2 = *(this + 3);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  CADeprecated::XMachReceivePort::~XMachReceivePort((this + 8));
}

void CADeprecated::RealtimeMessenger::RealtimeMessenger(CADeprecated::RealtimeMessenger *this)
{
  object = 0;
  CADeprecated::RealtimeMessenger::RealtimeMessenger(this, &object);
}

{
  object = 0;
  CADeprecated::RealtimeMessenger::RealtimeMessenger(this, &object);
}

void sub_1DE1E009C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CADeprecated::RealtimeMessenger::RealtimeMessenger(uint64_t a1, dispatch_queue_t *a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v5 = (a1 + 24);
  *a1 = &unk_1F595DFD0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 8;
  *(a1 + 64) = 0;
  MEMORY[0x1E12BF310](a1 + 72);
  CADeprecated::XMachReceivePort::CreateMachPort(v4, 0);
  if (!*a2)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    if (global_queue)
    {
      v11 = global_queue;
      dispatch_retain(global_queue);
      v12 = *a2;
      *a2 = v11;
      if (v12)
      {
        dispatch_release(v12);
      }
    }

    else
    {
      *a2 = 0;
    }
  }

  v6 = dispatch_queue_create("RealtimeMessenger.mServiceQueue", 0);
  v7 = *v5;
  *v5 = v6;
  if (v7)
  {
    dispatch_release(v7);
    v6 = *v5;
  }

  dispatch_set_target_queue(v6, *a2);
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v9 = dispatch_source_create(MEMORY[0x1E69E96D8], explicit, 0, *(a1 + 24));
  v13[4] = a1;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = ___ZN12CADeprecated17RealtimeMessengerC2EN10applesauce8dispatch2v15queueE_block_invoke;
  v13[3] = &__block_descriptor_tmp_24;
  dispatch_source_set_event_handler(v9, v13);
  CADeprecated::XMachPortServicer::SetQueueAndSource();
}

void sub_1DE1E0248(_Unwind_Exception *a1)
{
  v6 = v5;
  if (v6)
  {
    dispatch_release(v6);
  }

  std::recursive_mutex::~recursive_mutex((v3 + 72));
  if (*v4)
  {
    dispatch_release(*v4);
  }

  v8 = *v2;
  *v2 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  CADeprecated::XMachReceivePort::~XMachReceivePort(v1);
  _Unwind_Resume(a1);
}

void CADeprecated::RealtimeMessenger::ReceivePing(CADeprecated::RealtimeMessenger *this)
{
  v5 = *MEMORY[0x1E69E9840];
  msg.msgh_bits = 0;
  explicit = atomic_load_explicit(this + 2, memory_order_acquire);
  msg.msgh_remote_port = 0;
  msg.msgh_local_port = explicit;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 0;
  mach_msg(&msg, 2, 0, 0x2Cu, atomic_load_explicit(this + 2, memory_order_acquire), 0, 0);
  atomic_store(0, this + 64);
  CADeprecated::RealtimeMessenger::_PerformPendingMessages(this);
  v3 = *MEMORY[0x1E69E9840];
}

void CADeprecated::RealtimeMessenger::_PerformPendingMessages(CADeprecated::RealtimeMessenger *this)
{
  std::recursive_mutex::lock((this + 72));
  while (1)
  {
    v2 = OSAtomicDequeue(this + 2, *(this + 6));
    if (!v2)
    {
      break;
    }

    v2[16] = 0;
    (*(*v2 + 16))(v2);
  }

  std::recursive_mutex::unlock((this + 72));
}

void sub_1DE1E0434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CADeprecated::RealtimeMessenger::PerformAsync(uint64_t a1, _BYTE *__new)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__new[16] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v5 = 136315650;
      *&v5[4] = "RealtimeMessenger.cpp";
      v6 = 0x800000000490400;
      v7 = __new;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d RealtimeMessenger: trying to enqueue duplicate invocation on message %p", v5, 0x1Cu);
    }
  }

  else
  {
    __new[16] = 1;
    OSAtomicEnqueue((a1 + 32), __new, *(a1 + 48));
    if ((atomic_exchange((a1 + 64), 1u) & 1) == 0)
    {
      *v5 = 0x1C00000013;
      *&v5[8] = atomic_load_explicit((a1 + 8), memory_order_acquire);
      v7 = 0;
      v6 = 0;
      mach_msg(v5, 1, 0x1Cu, 0, 0, 0, 0);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DE1E0598(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void SincKernel::~SincKernel(void **this)
{
  free(*this);
}

{
  free(*this);
}

double SincKernel::SincKernel(uint64_t *a1, uint64_t *a2)
{
  a1[4] = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return SincKernel::operator=(a1, a2);
}

{
  a1[4] = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return SincKernel::operator=(a1, a2);
}

double SincKernel::operator=(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;
  *a2 = v2;
  LODWORD(v2) = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);
  *(a2 + 2) = v2;
  LODWORD(v2) = *(a1 + 3);
  *(a1 + 3) = *(a2 + 3);
  *(a2 + 3) = v2;
  LODWORD(v2) = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 4) = v2;
  LODWORD(v2) = *(a1 + 5);
  *(a1 + 5) = *(a2 + 5);
  *(a2 + 5) = v2;
  v3 = a1[3];
  a1[3] = a2[3];
  a2[3] = v3;
  result = *(a1 + 4);
  a1[4] = a2[4];
  *(a2 + 4) = result;
  return result;
}

char *PlatformUtilities::ProcessName(PlatformUtilities *this)
{
  caulk::platform::process_name(this);
  if (v4 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  strlcpy(PlatformUtilities::ProcessName(int)::namebuf, p_p, 0x20uLL);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return PlatformUtilities::ProcessName(int)::namebuf;
}

void sub_1DE1E0700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef PlatformUtilities::CopyHardwareModelFullName(PlatformUtilities *this)
{
  caulk::product::full_hardware_model_name(__p, this);
  if (v5 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v1, 0x8000100u);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1DE1E0790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef PlatformUtilities::CopyHardwareModelShortName(PlatformUtilities *this)
{
  caulk::product::short_hardware_model_name(__p, this);
  if (v5 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v1, 0x8000100u);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1DE1E081C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *CAStringForOSType(unsigned int a1, char *__dst, size_t a3, int8x8_t a4)
{
  a4.i32[0] = bswap32(a1);
  v5 = vzip1_s8(a4, a4);
  v6.i64[0] = 0x1F0000001FLL;
  v6.i64[1] = 0x1F0000001FLL;
  v7.i64[0] = 0x5F0000005FLL;
  v7.i64[1] = 0x5F0000005FLL;
  v8 = vbsl_s8(vmovn_s32(vcgtq_u32(v7, vsraq_n_s32(v6, vshlq_n_s32(vmovl_u16(v5), 0x18uLL), 0x18uLL))), v5, 0x2E002E002E002ELL);
  v11 = 4;
  *__source = vuzp1_s8(v8, v8).u32[0];
  __source[4] = 0;
  strlcpy(__dst, __source, a3);
  if (v11 < 0)
  {
    operator delete(*__source);
  }

  return __dst;
}

void sub_1DE1E08E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *CAStreamBasicDescription::VirtualizeLinearPCMFormat(_DWORD *this, AudioStreamBasicDescription *a2)
{
  if (this[2] == 1819304813 && (this[3] & 0x40) == 0)
  {
    v2 = 4 * this[7];
    this[3] = 9;
    this[4] = v2;
    this[5] = 1;
    this[6] = v2;
    this[8] = 32;
  }

  return this;
}

uint64_t CAStreamBasicDescription::VirtualizeLinearPCMFormat(uint64_t this, _DWORD *a2, AudioStreamBasicDescription *a3)
{
  if (a2[2] == 1819304813 && (a2[3] & 0x40) == 0)
  {
    if (this)
    {
      v3 = 9;
    }

    else
    {
      v3 = 11;
    }

    v4 = 4 * a2[7];
    a2[3] = v3;
    a2[4] = v4;
    a2[5] = 1;
    a2[6] = v4;
    a2[8] = 32;
  }

  return this;
}

double CAStreamBasicDescription::ResetFormat(CAStreamBasicDescription *this, AudioStreamBasicDescription *a2)
{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t CAStreamBasicDescription::FillOutFormat(uint64_t this, AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  if (*this == 0.0)
  {
    *this = a2->mSampleRate;
  }

  if (!*(this + 8))
  {
    *(this + 8) = a2->mFormatID;
  }

  if (!*(this + 12))
  {
    *(this + 12) = a2->mFormatFlags;
  }

  if (!*(this + 16))
  {
    *(this + 16) = a2->mBytesPerPacket;
  }

  if (!*(this + 20))
  {
    *(this + 20) = a2->mFramesPerPacket;
  }

  if (!*(this + 24))
  {
    *(this + 24) = a2->mBytesPerFrame;
  }

  if (!*(this + 28))
  {
    *(this + 28) = a2->mChannelsPerFrame;
  }

  if (!*(this + 32))
  {
    *(this + 32) = a2->mBitsPerChannel;
  }

  return this;
}

BOOL CAStreamBasicDescription::IsEqual(CAStreamBasicDescription *this, const AudioStreamBasicDescription *a2, int a3)
{
  if (a3)
  {
    return CA::StreamDescription::IsEquivalent(this, a2);
  }

  if (*this == a2->mSampleRate && *(this + 2) == a2->mFormatID && *(this + 3) == a2->mFormatFlags && *(this + 4) == a2->mBytesPerPacket && *(this + 5) == a2->mFramesPerPacket && *(this + 6) == a2->mBytesPerFrame && *(this + 7) == a2->mChannelsPerFrame)
  {
    return *(this + 8) == a2->mBitsPerChannel;
  }

  return 0;
}

BOOL CA::StreamDescription::IsEquivalent(uint64_t a1, uint64_t a2)
{
  if (*a1 != 0.0 && *a2 != 0.0 && *a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a2 + 8);
    if (v4 && v3 != v4)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      if (v6 != v7)
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + 20);
  if (v8)
  {
    v9 = *(a2 + 20);
    if (v9)
    {
      if (v8 != v9)
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = *(a2 + 24);
    if (v11)
    {
      if (v10 != v11)
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + 28);
  if (v12)
  {
    v13 = *(a2 + 28);
    if (v13)
    {
      if (v12 != v13)
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + 32);
  v15 = v14 == 0;
  if (v14)
  {
    v16 = *(a2 + 32);
    if (v16)
    {
      if (v14 != v16)
      {
        return 0;
      }
    }
  }

  v17 = 1;
  if (v3)
  {
    v19 = *(a2 + 8);
    if (v19)
    {
      v20 = *(a1 + 12);
      if (v20)
      {
        v21 = *(a2 + 12);
        if (v21)
        {
          if (v3 != 1819304813)
          {
            return v20 == v21;
          }

          v22 = v20 & 0x7FFFFFFF;
          if ((v20 & 0x7FFFFFFF) == 0)
          {
            v22 = *(a1 + 12);
          }

          if (v10)
          {
            if ((v20 & 0x20) != 0)
            {
              v23 = 1;
            }

            else
            {
              v23 = *(a1 + 28);
            }

            if (v23)
            {
              v23 = 8 * (v10 / v23);
              v15 = v23 == v14;
            }
          }

          else
          {
            v23 = 0;
          }

          if (v15)
          {
            v22 |= 8u;
          }

          if ((v14 & 7) == 0 && v23 == v14)
          {
            v22 &= ~0x10u;
          }

          if (v22)
          {
            v22 &= ~4u;
          }

          if ((v22 & 8) != 0 && v14 <= 8)
          {
            v22 &= 2u;
          }

          if (v12 == 1)
          {
            v22 &= ~0x20u;
          }

          if (!v22)
          {
            v22 = 0x80000000;
          }

          if (v19 != 1819304813)
          {
            return v22 == v21;
          }

          if ((v21 & 0x7FFFFFFF) != 0)
          {
            v27 = v21 & 0x7FFFFFFF;
          }

          else
          {
            v27 = *(a2 + 12);
          }

          v28 = *(a2 + 24);
          if (v28)
          {
            v29 = *(a2 + 28);
            if ((v21 & 0x20) != 0)
            {
              v30 = 1;
            }

            else
            {
              v30 = *(a2 + 28);
            }

            if (v30)
            {
              v30 = 8 * (v28 / v30);
              v31 = *(a2 + 32);
              v32 = v27 | 8;
              v33 = v30 == v31;
LABEL_77:
              if (v33)
              {
                v27 = v32;
              }

              v34 = (v31 & 7) == 0 && v30 == v31;
              v35 = v27 & 0xFFFFFFEF;
              if (!v34)
              {
                v35 = v27;
              }

              if (v35)
              {
                v35 &= ~4u;
              }

              v36 = (v35 & 8) == 0 || v31 > 8;
              v37 = v35 & 2;
              if (v36)
              {
                v37 = v35;
              }

              if (v29 == 1)
              {
                v38 = v37 & 0xFFFFFFDF;
              }

              else
              {
                v38 = v37;
              }

              if (v38)
              {
                v21 = v38;
              }

              else
              {
                v21 = 0x80000000;
              }

              return v22 == v21;
            }

            v31 = *(a2 + 32);
            v32 = v27 | 8;
          }

          else
          {
            v30 = 0;
            v32 = v27 | 8;
            v29 = *(a2 + 28);
            v31 = *(a2 + 32);
          }

          v33 = v31 == 0;
          goto LABEL_77;
        }
      }
    }
  }

  return v17;
}

BOOL MinimalSafetyCheck(const AudioStreamBasicDescription *a1)
{
  result = 0;
  if (a1->mSampleRate >= 0.0 && a1->mSampleRate < 3000000.0)
  {
    mBytesPerPacket = a1->mBytesPerPacket;
    if (mBytesPerPacket >= 0xF4240)
    {
      return 0;
    }

    mFramesPerPacket = a1->mFramesPerPacket;
    if (mFramesPerPacket >= 0xF4240)
    {
      return 0;
    }

    mBytesPerFrame = a1->mBytesPerFrame;
    if (mBytesPerFrame >= 0xF4240)
    {
      return 0;
    }

    result = 0;
    if (a1->mChannelsPerFrame - 1 > 0x3FF || a1->mBitsPerChannel > 0x400)
    {
      return result;
    }

    mFormatID = a1->mFormatID;
    if (!mFormatID)
    {
      return 0;
    }

    v8 = mFramesPerPacket == 1 && mBytesPerPacket == mBytesPerFrame;
    return mFormatID != 1819304813 || v8;
  }

  return result;
}

uint64_t CAStreamBasicDescription::FromText(CAStreamBasicDescription *this, char *a2, AudioStreamBasicDescription *a3)
{
  if (*this == 45)
  {
    v5 = (this + 1);
  }

  else
  {
    v5 = this;
  }

  v6 = *v5;
  if (v6 == 76)
  {
    v7 = 2 * (*(v5 + 1) == 69);
    i = 12;
  }

  else
  {
    if (v6 != 66)
    {
      i = 12;
      goto LABEL_12;
    }

    v7 = 2 * (*(v5 + 1) == 69);
    if (*(v5 + 1) == 69)
    {
      i = 14;
    }

    else
    {
      i = 12;
    }
  }

  v5 = (v5 + v7);
  v6 = *v5;
LABEL_12:
  v9 = MEMORY[0x1E69E9848];
  switch(v6)
  {
    case 'U':
      i &= 0xAu;
      v10 = *(v5 + 1);
      v5 = (v5 + 1);
      v6 = v10;
      break;
    case 'F':
      i = i & 0xFFFFFFFA | 1;
      goto LABEL_17;
    case 'I':
LABEL_17:
      v12 = (v5 + 1);
      v11 = *(v5 + 1);
      if (v11 < 0)
      {
        v13 = 0;
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x400) != 0)
      {
        v13 = 0;
        v12 = (v5 + 2);
        while (1)
        {
          v13 = 10 * v13 + v11 - 48;
          v11 = *v12;
          if (v11 < 0)
          {
            break;
          }

          v12 = (v12 + 1);
          if ((*(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x400) == 0)
          {
            v5 = (v12 - 2);
            v12 = (v12 - 1);
            goto LABEL_33;
          }
        }
      }

      else
      {
        v13 = 0;
LABEL_33:
        if (v11 == 46)
        {
          v21 = *(v5 + 2);
          v19 = (v5 + 2);
          v20 = v21;
          if (v21 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x400) == 0)
          {
            v22 = *MEMORY[0x1E69E9848];
            v23 = "Expected fractional bits following '.'\n";
            v24 = 39;
LABEL_37:
            fwrite(v23, v24, 1uLL, v22);
            goto LABEL_102;
          }

          v28 = 0;
          v12 = v19;
          while ((*(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x400) != 0)
          {
            v29 = *(v12 + 1);
            v12 = (v12 + 1);
            LOBYTE(v11) = v29;
            v28 = 10 * v28 + v20 - 48;
            LOBYTE(v20) = v29;
            if (v29 < 0)
            {
              goto LABEL_49;
            }
          }

          LOBYTE(v11) = v20;
LABEL_49:
          v13 += v28;
          i |= v28 << 7;
        }
      }

      v27 = 1819304813;
      v25 = (v13 + 7) >> 3;
      if ((v13 & 7) != 0)
      {
        i = i & 0xFFFFFFE7 | 0x10;
      }

      v26 = 1;
      goto LABEL_53;
  }

  v14 = 0;
  v50 = 538976288;
  v12 = this;
  v15 = this;
  while (1)
  {
    v17 = *v15;
    v15 = (v15 + 1);
    v16 = v17;
    if (v17 == 92)
    {
      if (*v15 != 120)
      {
        return 0;
      }

      v49 = 0;
      if (sscanf(v12 + 2, "%02X", &v49) != 1)
      {
        return 0;
      }

      *(&v50 + v14) = v49;
      v15 = (v12 + 4);
      goto LABEL_26;
    }

    *(&v50 + v14) = v16;
    if (!v16)
    {
      break;
    }

LABEL_26:
    ++v14;
    v12 = v15;
    if (v14 == 4)
    {
      v18 = SHIBYTE(v50);
      v12 = v15;
      goto LABEL_41;
    }
  }

  if (v14 != 3)
  {
    return 0;
  }

  v18 = 32;
  HIBYTE(v50) = 32;
LABEL_41:
  if (memchr("-@/#", v18, 5uLL))
  {
    HIBYTE(v50) = 32;
    v12 = (v12 - 1);
  }

  i = 0;
  v25 = 0;
  v26 = 0;
  v13 = 0;
  v27 = bswap32(v50);
  LOBYTE(v11) = *v12;
LABEL_53:
  v30 = 0.0;
  if (v11 != 64)
  {
LABEL_58:
    if (v11 == 47)
    {
      for (i = 0; ; i = (v34 + v33) | (16 * i))
      {
        v12 = (v12 + 1);
        v33 = *v12;
        if ((v33 - 48) >= 0xA)
        {
          LODWORD(v11) = *v12;
          if ((v11 - 65) >= 6)
          {
            if ((v11 - 97) > 5)
            {
              break;
            }

            v34 = -87;
          }

          else
          {
            v34 = -55;
          }
        }

        else
        {
          v34 = -48;
        }
      }
    }

    if (v11 == 35)
    {
      v36 = *(v12 + 1);
      v12 = (v12 + 1);
      v35 = v36;
      if (v36 < 0)
      {
        goto LABEL_101;
      }

      v37 = v26;
      while ((*(MEMORY[0x1E69E9830] + 4 * v35 + 60) & 0x400) != 0)
      {
        v37 = 10 * v37 + v35 - 48;
        v38 = *(v12 + 1);
        v12 = (v12 + 1);
        v35 = v38;
        if (v38 < 0)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      v35 = v11;
      v37 = v26;
    }

    if (v35 == 58)
    {
      i &= 0xFFFFFFE7;
      v39 = *(v12 + 1);
      if (v39 != 76)
      {
        if (v39 != 72)
        {
          goto LABEL_102;
        }

        i |= 0x10u;
      }

      v40 = *(v12 + 2);
      v12 = (v12 + 2);
      v35 = v40;
      if (v40 < 0)
      {
        goto LABEL_101;
      }

      v25 = 0;
      while ((*(MEMORY[0x1E69E9830] + 4 * v35 + 60) & 0x400) != 0)
      {
        v41 = *(v12 + 1);
        v12 = (v12 + 1);
        v25 = 10 * v25 + v35 - 48;
        v35 = v41;
        if (v41 < 0)
        {
          goto LABEL_101;
        }
      }
    }

    if (v35 != 44)
    {
      goto LABEL_100;
    }

    v42 = v12 + 1;
    v43 = *(v12 + 1);
    if ((*(v12 + 1) & 0x80000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * *(v12 + 1) + 60) & 0x400) != 0)
    {
      v26 = 0;
      v44 = v12 + 2;
      do
      {
        v42 = v44;
        v26 = v43 + 10 * v26 - 48;
        v45 = *v44;
        v43 = v45;
        if (v45 < 0)
        {
          break;
        }

        v46 = *(MEMORY[0x1E69E9830] + 4 * v45 + 60);
        v44 = v42 + 1;
      }

      while ((v46 & 0x400) != 0);
      v12 = (v42 - 1);
    }

    else
    {
      v26 = 0;
    }

    if (v43 == 73)
    {
      v42 = v12 + 2;
    }

    else if (v43 == 68)
    {
      if (v27 != 1819304813)
      {
        v22 = *v9;
        v23 = "non-interleaved flag invalid for non-PCM formats\n";
        v24 = 49;
        goto LABEL_37;
      }

      v12 = (v12 + 2);
      i |= 0x20u;
LABEL_100:
      if (*v12)
      {
        goto LABEL_101;
      }

      *a2 = v30;
      *(a2 + 2) = v27;
      *(a2 + 3) = i;
      *(a2 + 4) = v25;
      *(a2 + 5) = v37;
      *(a2 + 6) = v25;
      *(a2 + 7) = v26;
      result = 1;
      *(a2 + 8) = v13;
      *(a2 + 9) = 0;
      return result;
    }

    if (v27 == 1819304813)
    {
      v47 = v26;
    }

    else
    {
      v47 = 1;
    }

    v25 *= v47;
    v12 = v42;
    goto LABEL_100;
  }

  v31 = *(v12 + 1);
  v12 = (v12 + 1);
  LOBYTE(v11) = v31;
  if ((v31 & 0x80000000) == 0)
  {
    while ((*(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x400) != 0)
    {
      v30 = (v11 - 48) + v30 * 10.0;
      v32 = *(v12 + 1);
      v12 = (v12 + 1);
      LOBYTE(v11) = v32;
      if (v32 < 0)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_58;
  }

LABEL_101:
  fprintf(*v9, "extra characters at end of format string: %s\n", v12);
LABEL_102:
  fprintf(*v9, "Invalid format string: %s\n", this);
  fwrite("Syntax of format strings is: \n", 0x1EuLL, 1uLL, *v9);
  return 0;
}

const __CFString *CACFString::GetStringByteLength(const __CFString *this, const __CFString *a2)
{
  usedBufLen = 0;
  if (this)
  {
    v2 = a2;
    v3 = this;
    v5.length = CFStringGetLength(this);
    v5.location = 0;
    CFStringGetBytes(v3, v5, v2, 0, 0, 0, 0x7FFFFFFFLL, &usedBufLen);
    return usedBufLen;
  }

  return this;
}

const __CFString *CACFString::GetCString(const __CFString *theString, __CFString *a2, char *a3, unsigned int *a4)
{
  if (*a3)
  {
    v6 = theString;
    if (theString)
    {
      v7 = a4;
      usedBufLen = 0;
      v11.length = CFStringGetLength(theString);
      v11.location = 0;
      theString = CFStringGetBytes(v6, v11, v7, 0, 0, a2, (*a3 - 1), &usedBufLen);
      v8 = usedBufLen;
      *(&a2->isa + usedBufLen) = 0;
      v9 = v8 + 1;
    }

    else
    {
      LOBYTE(a2->isa) = 0;
      v9 = 1;
    }

    *a3 = v9;
  }

  return theString;
}

void CACFString::GetUnicodeString(CFStringRef theString, __CFString *a2, unsigned __int16 *a3, unsigned int *a4)
{
  if (*a3)
  {
    if (theString)
    {
      Length = CFStringGetLength(theString);
      if (*a3 >= Length)
      {
        v8 = Length;
      }

      else
      {
        v8 = *a3;
      }

      v9.location = 0;
      v9.length = v8;
      CFStringGetCharacters(theString, v9, a2);
    }

    else
    {
      LODWORD(v8) = 0;
      LOWORD(a2->isa) = 0;
    }

    *a3 = v8;
  }
}

void CACFString::PrintToLog(const __CFString *this, const __CFString *a2)
{
  LODWORD(v2) = a2;
  v45 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *buffer = 0u;
  v14 = 0u;
  memset(__b, 0, sizeof(__b));
  if (CFStringGetCString(this, buffer, 512, 0x600u))
  {
    if (v2)
    {
      v2 = v2;
      memset(__b, 9, v2);
    }

    else
    {
      v2 = 0;
    }

    *(__b + v2) = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315906;
      v5 = "CACFString.cpp";
      v6 = 1024;
      v7 = 81;
      v8 = 2080;
      v9 = __b;
      v10 = 2080;
      v11 = buffer;
      _os_log_impl(&dword_1DE1D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  %s%s", &v4, 0x26u);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void swix::decode_message::throw_error(NSObject *a1, int a2, std::string *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = a3->__r_.__value_.__r.__words[0];
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_error_impl(&dword_1DE1D2000, a1, OS_LOG_TYPE_ERROR, "throwing swix::exception: %s", &v8, 0xCu);
  }

  exception = __cxa_allocate_exception(0x18uLL);
  swix::exception::exception(exception, a2, a3);
}

void gsl::narrowing_error::~narrowing_error(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12BF450);
}

std::runtime_error *swix::exception::exception(std::runtime_error *a1, int a2, std::string *a3)
{
  result = std::runtime_error::runtime_error(a1, a3);
  result->__vftable = &unk_1F595E248;
  LODWORD(result[1].__vftable) = a2;
  return result;
}

void swix::exception::~exception(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1E12BF450);
}

std::runtime_error *std::overflow_error::overflow_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C0] + 16);
  return result;
}

void CAAudioChannelLayout::CAAudioChannelLayout(CAAudioChannelLayout *this, CAAudioChannelLayout::RefCountedLayout *a2, int a3)
{
  v3 = a2;
  if (a2 <= 4)
  {
    switch(a2)
    {
      case 1:
        v8 = 6553601;
        goto LABEL_25;
      case 2:
        v6 = 6619138;
        v7 = 6946818;
        v5 = a3 == 0;
LABEL_22:
        if (v5)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        goto LABEL_25;
      case 4:
        if (a3)
        {
          v8 = 7012356;
        }

        else
        {
          v8 = 7077892;
        }

        goto LABEL_25;
    }
  }

  else
  {
    if (a2 <= 6)
    {
      v5 = a3 == 0;
      if (a2 == 5)
      {
        v6 = 7143429;
        v7 = 7733253;
      }

      else
      {
        v6 = 7208966;
        v7 = 9109510;
      }

      goto LABEL_22;
    }

    if (a2 == 7)
    {
      v8 = 9175047;
      goto LABEL_25;
    }

    if (a2 == 8)
    {
      v8 = 7274504;
LABEL_25:
      v12 = CAAudioChannelLayout::RefCountedLayout::CreateWithNumberChannelDescriptions(0);
      v12[4] = v8;
      *this = v12;
      return;
    }
  }

  v9 = CAAudioChannelLayout::RefCountedLayout::CreateWithNumberChannelDescriptions(a2);
  *this = v9;
  *(v9 + 2) = 0;
  v9[6] = v3;
  if (v3)
  {
    v10 = v3;
    v11 = v9 + 8;
    do
    {
      *(v11 - 1) = -1;
      *v11 = 0;
      v11[1] = 0;
      v11 = (v11 + 20);
      --v10;
    }

    while (v10);
  }
}

void CAAudioChannelLayout::CAAudioChannelLayout(CAAudioChannelLayout *this, CAAudioChannelLayout::RefCountedLayout *a2)
{
  *this = 0;
  CAAudioChannelLayout::operator=(this, a2);
}

{
  *this = 0;
  CAAudioChannelLayout::operator=(this, a2);
}

uint64_t CAAudioChannelLayout::Set(CAAudioChannelLayout *this, AudioChannelLayout *a2, unint64_t a3)
{
  v6 = *this;
  if (!v6)
  {
LABEL_5:
    if (a2)
    {
      v7 = caulk::numeric::exceptional_mul<unsigned int>(a2->mNumberChannelDescriptions);
      if (caulk::numeric::exceptional_add<unsigned int>(v7) > a3)
      {
        v9 = CAAudioChannelLayout::RefCountedLayout::CreateWithNumberChannelDescriptions(0);
        result = 0;
LABEL_11:
        *this = v9;
        return result;
      }

      v11 = CAAudioChannelLayout::RefCountedLayout::CreateWithLayout(a2, v8);
    }

    else
    {
      v11 = CAAudioChannelLayout::RefCountedLayout::CreateWithNumberChannelDescriptions(0);
    }

    v9 = v11;
    result = 1;
    goto LABEL_11;
  }

  if ((v6 + 16) != a2)
  {
    if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 16))(v6);
    }

    goto LABEL_5;
  }

  return 1;
}

BOOL CAAudioChannelLayout::operator==(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    return 1;
  }

  v4 = v2[4];
  if (v4 == v3[4])
  {
    if (v4)
    {
      if (v4 == 0x10000)
      {
        return v2[5] == v3[5];
      }

      return 1;
    }

    v6 = v2[6];
    if (v6 == v3[6])
    {
      if (v6)
      {
        v7 = v2 + 7;
        v8 = v3 + 7;
        result = 1;
        while (*v7 == *v8)
        {
          if (*v7 == 100)
          {
            v9 = *v7 == *v8 && *(v7 + 1) == *(v8 + 1);
            if (!v9 || v7[4] != v8[4])
            {
              break;
            }
          }

          v8 += 5;
          v7 += 5;
          if (!--v6)
          {
            return result;
          }
        }

        return 0;
      }

      return 1;
    }
  }

  return 0;
}

BOOL CAAudioChannelLayout::operator!=(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    return 0;
  }

  v4 = v2[4];
  if (v4 == v3[4])
  {
    if (v4)
    {
      if (v4 == 0x10000)
      {
        return v2[5] != v3[5];
      }

      return 0;
    }

    v6 = v2[6];
    if (v6 == v3[6])
    {
      if (v6)
      {
        v7 = v2 + 7;
        for (i = v3 + 7; *v7 == *i; i += 5)
        {
          if (*v7 == 100)
          {
            v9 = *v7 == *i && *(v7 + 1) == *(i + 1);
            if (!v9 || v7[4] != i[4])
            {
              break;
            }
          }

          result = 0;
          v7 += 5;
          if (!--v6)
          {
            return result;
          }
        }

        return 1;
      }

      return 0;
    }
  }

  return 1;
}

void TruePeak::TruePeak(TruePeak *this)
{
  *(this + 56) = 1;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 18) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
}

{
  *(this + 56) = 1;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 18) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
}

double TruePeak::Reset(TruePeak *this)
{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  return result;
}

double TruePeak::ResetStats(TruePeak *this)
{
  *(this + 17) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  return result;
}

float TruePeak::GetStats(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = *(a1 + 80);
  v4 = *(a1 + 68);
  if (v4 < 1.1755e-38)
  {
    v4 = 1.1755e-38;
  }

  *a2 = fmaxf(log10f(v4) * 20.0, -200.0);
  if (*(a1 + 112))
  {
    v5.i32[0] = *(a1 + 72);
  }

  else
  {
    v6 = (a1 + 96);
    v8 = vld2_f32(v6);
    v5 = vbsl_s8(vcgt_f32(v8.val[0], v8.val[1]), v8.val[0], v8.val[1]);
    if (*v5.i32 <= *&v5.i32[1])
    {
      v5.i32[0] = v5.i32[1];
    }
  }

  if (*v5.i32 < *(a1 + 68))
  {
    v5.i32[0] = *(a1 + 68);
  }

  if (*v5.i32 < 1.1755e-38)
  {
    *v5.i32 = 1.1755e-38;
  }

  result = fmaxf(log10f(*v5.i32) * 20.0, -200.0);
  *(a2 + 4) = result;
  return result;
}

uint64_t TruePeak::Process(uint64_t this, int a2, const float *a3)
{
  if (*(this + 112))
  {
    v3 = *(this + 68);
    v4 = *(this + 72);
    v5 = *(this + 64);
    if (*(this + 113))
    {
      if (a2 >= 1)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = 0;
          *(this + 4 * v5) = a3[v6];
          v10 = v5 + 11;
          v5 = (v5 + 1) & 0xF;
          v11 = fabsf(*(this + 4 * (v10 & 0xF)));
          v12 = v5 - 12;
          v13 = 0.0;
          v14 = v5 - 12;
          do
          {
            v13 = v13 + (*(&TruePeak::sSincByTwo + v9) * *(this + 4 * (v14 & 0xF)));
            v9 += 4;
            ++v14;
          }

          while (v9 != 48);
          v15 = 0;
          v16 = fabsf(v13);
          v17 = 0.0;
          do
          {
            v17 = v17 + (*(&TruePeak::sSincByTwo + v15 + 48) * *(this + 4 * (v12 & 0xF)));
            v15 += 4;
            ++v12;
          }

          while (v15 != 48);
          v8 += v11 > 1.0;
          if (v3 < v11)
          {
            v3 = v11;
          }

          if (v4 < v16)
          {
            v4 = v16;
          }

          v18 = fabsf(v17);
          v19 = fmaxf(fmaxf(v18, v16), v11);
          if (v4 < v18)
          {
            v4 = v18;
          }

          if (v19 > 1.0)
          {
            ++v7;
          }

          ++v6;
        }

        while (v6 != a2);
        goto LABEL_62;
      }
    }

    else if (a2 >= 1)
    {
      v39 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        v40 = 0;
        *(this + 4 * v5) = a3[v39];
        v41 = v5 + 11;
        v5 = (v5 + 1) & 0xF;
        v42 = fabsf(*(this + 4 * (v41 & 0xF)));
        v43 = v5 - 12;
        v44 = 0.0;
        v45 = v5 - 12;
        do
        {
          v44 = v44 + (*(&TruePeak::sSinc + v40) * *(this + 4 * (v45 & 0xF)));
          v40 += 4;
          ++v45;
        }

        while (v40 != 48);
        v46 = 0;
        v47 = fabsf(v44);
        v48 = 0.0;
        v49 = v5 - 12;
        do
        {
          v48 = v48 + (*(&TruePeak::sSinc + v46 + 48) * *(this + 4 * (v49 & 0xF)));
          v46 += 4;
          ++v49;
        }

        while (v46 != 48);
        v50 = 0;
        v8 += v42 > 1.0;
        v51 = fabsf(v48);
        v52 = fmaxf(v51, v47) > 1.0;
        v53 = 0.0;
        v54 = v5 - 12;
        do
        {
          v53 = v53 + (*(&TruePeak::sSinc + v50 + 96) * *(this + 4 * (v54 & 0xF)));
          v50 += 4;
          ++v54;
        }

        while (v50 != 48);
        if (v4 < v47)
        {
          v4 = v47;
        }

        if (v3 < v42)
        {
          v3 = v42;
        }

        if (v42 > 1.0)
        {
          v52 = 1;
        }

        if (v4 < v51)
        {
          v4 = v51;
        }

        v55 = fabsf(v53);
        if (v55 > 1.0)
        {
          v52 = 1;
        }

        v56 = 0;
        v57 = 0.0;
        do
        {
          v57 = v57 + (*(&TruePeak::sSinc + v56 + 144) * *(this + 4 * (v43 & 0xF)));
          v56 += 4;
          ++v43;
        }

        while (v56 != 48);
        if (v4 < v55)
        {
          v4 = v55;
        }

        v58 = fabsf(v57);
        if (v4 < v58)
        {
          v4 = v58;
        }

        v7 += v58 > 1.0 || v52;
        ++v39;
      }

      while (v39 != a2);
      goto LABEL_62;
    }

    v8 = 0;
    v7 = 0;
LABEL_62:
    *(this + 64) = v5;
    *(this + 68) = v3;
    *(this + 72) = v4;
    v79 = *(this + 88) + v7;
    *(this + 80) += v8;
    *(this + 88) = v79;
    return this;
  }

  if (*(this + 113))
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21 = vdupq_n_s32(v20);
  v22 = vbslq_s8(v21, xmmword_1DE1F43B0, xmmword_1DE1F43A0);
  v23 = vbslq_s8(v21, xmmword_1DE1F43D0, xmmword_1DE1F43C0);
  v24 = vbslq_s8(v21, xmmword_1DE1F43F0, xmmword_1DE1F43E0);
  v25 = vbslq_s8(v21, xmmword_1DE1F4410, xmmword_1DE1F4400);
  v26 = vbslq_s8(v21, xmmword_1DE1F4430, xmmword_1DE1F4420);
  v27 = vbslq_s8(v21, xmmword_1DE1F4450, xmmword_1DE1F4440);
  v29 = *this;
  v28 = *(this + 16);
  v30 = *(this + 32);
  v31 = *(this + 96);
  v32 = *(this + 68);
  if (*(this + 113))
  {
    if (a2 >= 1)
    {
      v33 = 0uLL;
      do
      {
        v34 = *a3++;
        v35.i32[0] = vdupq_lane_s32(*v30.i8, 1).u32[0];
        *(v35.i64 + 4) = v30.i64[1];
        v35.i32[3] = v34;
        v29 = vextq_s8(v29, v28, 4uLL);
        v28 = vextq_s8(v28, v30, 4uLL);
        v36 = v34 & 0x7FFFFFFF;
        if (v32 <= (v34 & 0x7FFFFFFF))
        {
          v32 = v36;
        }

        v37 = vmlaq_f32(vmlaq_f32(vmulq_f32(v22, v29), v23, v28), v24, v35);
        v38 = vmlaq_f32(vmlaq_f32(vmulq_f32(v27, v29), v26, v28), v25, v35);
        *v37.f32 = vadd_f32(*v37.f32, *&vextq_s8(v37, v37, 8uLL));
        *v38.i8 = vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
        *v37.f32 = vadd_f32(vzip1_s32(*v37.f32, *v38.i8), vzip2_s32(*v37.f32, *v38.i8));
        v37.i64[1] = vextq_s8(v33, v33, 8uLL).u64[0];
        v33 = vabsq_f32(v37);
        v31 = vmaxq_f32(v31, v33);
        v30 = v35;
        --a2;
      }

      while (a2);
      goto LABEL_64;
    }
  }

  else if (a2 >= 1)
  {
    v59 = vrev64q_s32(v24);
    v60 = vextq_s8(v59, v59, 8uLL);
    v61 = vrev64q_s32(v23);
    v62 = vextq_s8(v61, v61, 8uLL);
    v63 = vrev64q_s32(v22);
    v64 = vextq_s8(v63, v63, 8uLL);
    v65 = vrev64q_s32(v27);
    v66 = vextq_s8(v65, v65, 8uLL);
    v67 = vrev64q_s32(v26);
    v68 = vextq_s8(v67, v67, 8uLL);
    v69 = vrev64q_s32(v25);
    v70 = vextq_s8(v69, v69, 8uLL);
    do
    {
      v71 = *a3++;
      v35.i32[0] = vdupq_lane_s32(*v30.i8, 1).u32[0];
      v35.i32[1] = v30.i32[2];
      v35.i64[1] = __PAIR64__(v71, v30.u32[3]);
      v29 = vextq_s8(v29, v28, 4uLL);
      v28 = vextq_s8(v28, v30, 4uLL);
      v72 = v71 & 0x7FFFFFFF;
      v73 = vmlaq_f32(vmlaq_f32(vmulq_f32(v22, v29), v23, v28), v24, v35);
      v74 = vmlaq_f32(vmlaq_f32(vmulq_f32(v60, v29), v62, v28), v64, v35);
      *v73.i8 = vadd_f32(*v73.i8, *&vextq_s8(v73, v73, 8uLL));
      *v74.i8 = vadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
      v75 = vmlaq_f32(vmlaq_f32(vmulq_f32(v25, v29), v26, v28), v27, v35);
      v76 = vmlaq_f32(vmlaq_f32(vmulq_f32(v66, v29), v68, v28), v70, v35);
      *v75.i8 = vadd_f32(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
      *v76.i8 = vadd_f32(*v76.i8, *&vextq_s8(v76, v76, 8uLL));
      *v77.f32 = vzip1_s32(*v73.i8, *v74.i8);
      v77.i64[1] = __PAIR64__(v76.u32[0], v75.u32[0]);
      *v78.f32 = vzip2_s32(*v73.i8, *v74.i8);
      v78.i64[1] = __PAIR64__(v76.u32[1], vdup_lane_s32(*v75.i8, 1).u32[0]);
      if (v32 <= (v71 & 0x7FFFFFFF))
      {
        v32 = v72;
      }

      v31 = vmaxq_f32(v31, vabsq_f32(vaddq_f32(v77, v78)));
      v30 = v35;
      --a2;
    }

    while (a2);
    goto LABEL_64;
  }

  v35 = *(this + 32);
LABEL_64:
  *this = v29;
  *(this + 16) = v28;
  *(this + 32) = v35;
  *(this + 96) = v31;
  *(this + 68) = v32;
  return this;
}