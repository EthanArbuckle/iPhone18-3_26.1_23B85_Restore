void ComputeHash::ComputeHash(ComputeHash *this)
{
  *this = &unk_2A1D1C358;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 2) = 2;
}

{
  *this = &unk_2A1D1C358;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 2) = 2;
}

void ComputeHash::setDigestGenerator(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t ComputeHash::init(ComputeHash *this)
{
  if (*(this + 2) != 2)
  {
    return 0;
  }

  if (((***(this + 2))(*(this + 2)) & 0x80000000) != 0)
  {
    return 0;
  }

  *(this + 2) = 0;
  return 1;
}

const __CFData *ComputeHash::digest_file(ComputeHash *this, FileSystemManager *a2)
{
  if (*(this + 2))
  {
    return 0;
  }

  FileSystemManager::fileContentsAtPath(a2, &cf);
  v4 = cf;
  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v2 = ComputeHash::digest_data(this, &v6);
  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

void sub_296002BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

const __CFData *ComputeHash::digest_data(uint64_t a1, CFDataRef *a2)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  result = *a2;
  if (*a2)
  {
    Length = CFDataGetLength(result);
    result = CFDataGetBytePtr(*a2);
    if (result)
    {
      return ((*(**(a1 + 16) + 8))(*(a1 + 16), result, Length) >= 0);
    }
  }

  return result;
}

const void **ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL ComputeHash::digest_string(uint64_t a1, CFStringRef *a2)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  Length = CFStringGetLength(*a2);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v7 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  usedBufLen = 0;
  v12.location = 0;
  v12.length = Length;
  v2 = CFStringGetBytes(*a2, v12, 0x8000100u, 0, 0, v7, MaximumSizeForEncoding, &usedBufLen) == Length && (v11 = bswap32(usedBufLen), !*(a1 + 8)) && ((*(**(a1 + 16) + 8))(*(a1 + 16), &v11, 4) & 0x80000000) == 0 && (*(**(a1 + 16) + 8))(*(a1 + 16), v8, usedBufLen) >= 0;
  free(v8);
  return v2;
}

const __CFData *ComputeHash::digest_data_xml(uint64_t a1, CFDataRef *a2)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  result = *a2;
  if (*a2)
  {
    Length = CFDataGetLength(result);
    v8 = bswap32(Length);
    if (!*(a1 + 8))
    {
      (*(**(a1 + 16) + 8))(*(a1 + 16), &v8, 4);
    }

    result = CFDataGetBytePtr(*a2);
    if (result)
    {
      return ((*(**(a1 + 16) + 8))(*(a1 + 16), result, Length) >= 0);
    }
  }

  return result;
}

const __CFData *ComputeHash::digest_plist_file(ComputeHash *this, const char *__s)
{
  if (*(this + 2))
  {
    return 0;
  }

  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v11 = v5;
  if (v5)
  {
    memcpy(&__dst, __s, v5);
  }

  *(&__dst + v6) = 0;
  v7 = FileSystemManager::copyBinaryPlistAsXML(&__dst);
  v12 = v7;
  if (v11 < 0)
  {
    operator delete(__dst);
  }

  if (!v7)
  {
    return 0;
  }

  v9 = v7;
  CFRetain(v7);
  v2 = ComputeHash::digest_data(this, &v9);
  CFRelease(v7);
  CFRelease(v7);
  return v2;
}

void sub_296003068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

uint64_t ComputeHash::digest_files(ComputeHash *a1, uint64_t a2)
{
  if (!*(a1 + 2))
  {
    v5 = 0;
    v6 = *(a2 + 8);
    while (1)
    {
      if (v6 == a2)
      {
LABEL_18:
        v2 = v5 ^ 1;
        return v2 & 1;
      }

      memset(&v12, 0, sizeof(v12));
      v7 = (v6 + 16);
      FileSystemManager::getFileExtension((v6 + 16));
      v8 = std::string::compare(&v12, "plist");
      v9 = *(v6 + 39);
      if (v8)
      {
        if (v9 < 0)
        {
          v7 = *v7;
        }

        if (!ComputeHash::digest_file(a1, v7))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v9 < 0)
        {
          v7 = *v7;
        }

        if ((ComputeHash::digest_plist_file(a1, v7) & 1) == 0)
        {
LABEL_13:
          v10 = 0;
          v5 = 1;
          goto LABEL_14;
        }
      }

      v6 = *(v6 + 8);
      v10 = 1;
LABEL_14:
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
        if ((v10 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if ((v10 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  v2 = 0;
  return v2 & 1;
}

void sub_296003198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ComputeHash::digest_BOOL(uint64_t a1, const void **a2)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v7 = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v8 = CFGetTypeID(v7);
  if (v8 == CFBooleanGetTypeID())
  {
    v7 = *a2;
LABEL_6:
    Value = CFBooleanGetValue(v7);
    return (*(**(a1 + 16) + 8))(*(a1 + 16), &Value, 1) != 0;
  }

  return 0;
}

uint64_t ComputeHash::digest_number(uint64_t a1, CFNumberRef *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 8) && !CFNumberIsFloatType(*a2))
  {
    ByteSize = CFNumberGetByteSize(*a2);
    if (ByteSize >= 9)
    {
      v8 = bswap32(ByteSize);
      if (!*(a1 + 8))
      {
        (*(**(a1 + 16) + 8))(*(a1 + 16), &v8, 4);
      }

      Type = CFNumberGetType(*a2);
      CFNumberGetValue(*a2, Type, &v8);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

const __CFData *ComputeHash::digest_date(uint64_t a1, const void **a2)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  v11 = 0;
  v6 = *a2;
  if (!v6)
  {
    v7 = CFGetTypeID(0);
    if (v7 != CFDateGetTypeID())
    {
      return 0;
    }

    v6 = *a2;
  }

  Data = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], v6, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v9 = Data;
  v11 = Data;
  if (Data)
  {
    v10 = Data;
    CFRetain(Data);
    v2 = ComputeHash::digest_data(a1, &v10);
    CFRelease(v9);
    CFRelease(v9);
    return v2;
  }

  return 0;
}

void sub_296003408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t ComputeHash::digest_array(uint64_t a1, CFArrayRef *a2)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    return v2 & 1;
  }

  v33 = 0;
  Count = CFArrayGetCount(*a2);
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x29EDB8ED8], Count, *a2);
  v7 = MutableCopy;
  v32[1] = MutableCopy;
  if (MutableCopy)
  {
    v8 = Count < 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v32[0] = CFArrayGetValueAtIndex(MutableCopy, 0);
    ctu::cf::CFSharedRef<void const>::operator=(&v33, v32);
    v9 = CFGetTypeID(v33);
    TypeID = CFStringGetTypeID();
    v11 = CFDictionaryGetTypeID();
    v12 = CFNumberGetTypeID();
    v24 = CFBooleanGetTypeID();
    v23 = CFDataGetTypeID();
    v22 = CFDateGetTypeID();
    v21 = CFArrayGetTypeID();
    v13 = MEMORY[0x29EDB8CA0];
    if (v9 == TypeID || (v13 = MEMORY[0x29EDB8C88], v9 == v12) || (v13 = MEMORY[0x29EDB8C80], v9 == v22))
    {
      v34.location = 0;
      v34.length = Count;
      CFArraySortValues(v7, v34, v13, 0);
    }

    v14 = 0;
    v15 = 0;
    v16 = Count - 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v14);
      v32[0] = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      if (v9 == TypeID)
      {
        ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&cf, v32);
        v2 = ComputeHash::digest_string(a1, &cf);
        v18 = cf;
        if (cf)
        {
          goto LABEL_37;
        }
      }

      else if (v9 == v11)
      {
        ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v30, v32);
        v2 = ComputeHash::digest_dictionary(a1, &v30);
        v18 = v30;
        if (v30)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v9 == v12)
        {
          ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(&v29, v32);
          ComputeHash::digest_number(a1, &v29);
          if (v29)
          {
            CFRelease(v29);
          }

          v2 = 0;
          goto LABEL_38;
        }

        if (v9 == v24)
        {
          ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(&v28, v32);
          v2 = ComputeHash::digest_BOOL(a1, &v28);
          v18 = v28;
          if (v28)
          {
            goto LABEL_37;
          }
        }

        else if (v9 == v23)
        {
          ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&v27, v32);
          v2 = ComputeHash::digest_data_xml(a1, &v27);
          v18 = v27;
          if (v27)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v9 != v22)
          {
            v2 = v15;
            if (v9 != v21)
            {
              goto LABEL_38;
            }

            ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(&v25, v32);
            v2 = ComputeHash::digest_array(a1, &v25);
            v18 = v25;
            if (!v25)
            {
              goto LABEL_38;
            }

LABEL_37:
            CFRelease(v18);
            goto LABEL_38;
          }

          ctu::cf::CFSharedRef<__CFDate const>::CFSharedRef<void const,void>(&v26, v32);
          v2 = ComputeHash::digest_date(a1, &v26);
          v18 = v26;
          if (v26)
          {
            goto LABEL_37;
          }
        }
      }

LABEL_38:
      if (v32[0])
      {
        CFRelease(v32[0]);
      }

      if (v2)
      {
        v15 = 1;
        if (v16 != v14++)
        {
          continue;
        }
      }

      goto LABEL_43;
    }
  }

  v2 = 0;
LABEL_43:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v2 & 1;
}

void sub_2960037AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, const void *);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va2);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v5 - 88));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<void const>::operator=(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    CFRelease(v4);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL ComputeHash::digest_dictionary(uint64_t a1, CFDictionaryRef *a2)
{
  if (*(a1 + 8) || !*a2)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(*a2);
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], Count, MEMORY[0x29EDB9000]);
  v25[2] = Mutable;
  CFDictionaryApplyFunction(*a2, add_key, Mutable);
  v8 = CFArrayGetCount(Mutable);
  v26.location = 0;
  v26.length = v8;
  CFArraySortValues(Mutable, v26, MEMORY[0x29EDB8CA0], 0);
  if (v8 < 1)
  {
    v2 = 1;
    goto LABEL_49;
  }

  v2 = 0;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v9);
    v11 = ValueAtIndex;
    v25[1] = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
      v25[0] = v11;
      CFRetain(v11);
    }

    else
    {
      v25[0] = 0;
    }

    v12 = ComputeHash::digest_string(a1, v25);
    if (v11)
    {
      CFRelease(v11);
    }

    if (!v12)
    {
      if (!v11)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    Value = CFDictionaryGetValue(*a2, v11);
    cf = Value;
    if (Value)
    {
      CFRetain(Value);
      Value = cf;
    }

    v14 = CFGetTypeID(Value);
    if (v14 == CFStringGetTypeID())
    {
      ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&v23, &cf);
      v15 = ComputeHash::digest_string(a1, &v23);
      v16 = v23;
      if (!v23)
      {
        goto LABEL_34;
      }

LABEL_33:
      CFRelease(v16);
      goto LABEL_34;
    }

    if (v14 == CFDictionaryGetTypeID())
    {
      ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v22, &cf);
      v15 = ComputeHash::digest_dictionary(a1, &v22);
      v16 = v22;
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (v14 == CFNumberGetTypeID())
    {
      break;
    }

    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(&v20, &cf);
      v15 = ComputeHash::digest_BOOL(a1, &v20);
      v16 = v20;
      if (!v20)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (v14 == CFDataGetTypeID())
    {
      ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&v19, &cf);
      v15 = ComputeHash::digest_data_xml(a1, &v19);
      v16 = v19;
      if (!v19)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (v14 == CFDateGetTypeID())
    {
      ctu::cf::CFSharedRef<__CFDate const>::CFSharedRef<void const,void>(&v18, &cf);
      v15 = ComputeHash::digest_date(a1, &v18);
      v16 = v18;
      if (!v18)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (v14 != CFArrayGetTypeID())
    {
      goto LABEL_35;
    }

    ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(&v17, &cf);
    v15 = ComputeHash::digest_array(a1, &v17);
    v16 = v17;
    if (v17)
    {
      goto LABEL_33;
    }

LABEL_34:
    if ((v15 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_35:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    v2 = ++v9 >= v8;
    if (v8 == v9)
    {
      goto LABEL_49;
    }
  }

  ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(&v21, &cf);
  ComputeHash::digest_number(a1, &v21);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&v21);
LABEL_45:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
LABEL_48:
    CFRelease(v11);
  }

LABEL_49:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v2;
}

void sub_296003C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, const void *);
  v14 = va_arg(va2, void);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va2);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef((v6 - 72));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFDate const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void add_key(const void *a1, const void *a2, __CFArray *a3)
{
  if (!CFEqual(a1, @"signature"))
  {

    CFArrayAppendValue(a3, a1);
  }
}

uint64_t ComputeHash::finalize@<X0>(ComputeHash *this@<X0>, const void **a2@<X8>)
{
  v9[1] = *MEMORY[0x29EDCA608];
  *a2 = 0;
  v4 = (*(**(this + 2) + 24))(*(this + 2));
  result = MEMORY[0x2A1C7C4A8]();
  v7 = v9 - v6;
  if (!*(this + 2))
  {
    bzero(v7, v4);
    result = (*(**(this + 2) + 16))(*(this + 2), v7);
    if ((result & 0x80000000) == 0)
    {
      v9[0] = CFDataCreate(*MEMORY[0x29EDB8ED8], v7, v4);
      result = ctu::cf::CFSharedRef<__CFData const>::operator=(a2, v9);
      *(this + 2) = 1;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void ComputeHash::~ComputeHash(ComputeHash *this)
{
  *this = &unk_2A1D1C358;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A1D1C358;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EDED210, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::SharedRef(a1, v5);
}

void *ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDictionaryGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void *ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFNumberGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void *ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFBooleanGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void *ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDataGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFDataGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(a1, v5);
}

void *ctu::cf::CFSharedRef<__CFDate const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDateGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void *ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFArrayGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void CBSignUtilityLogger::CBSignUtilityLogger(CBSignUtilityLogger *this)
{
  *this = defaultLogFunction;
}

{
  *this = defaultLogFunction;
}

uint64_t CBSignUtilityLogger::getMyInstance(CBSignUtilityLogger *this)
{
  result = CBSignUtilityLogger::myInstance;
  if (!CBSignUtilityLogger::myInstance)
  {
    operator new();
  }

  return result;
}

uint64_t writeLog(const char *__format, ...)
{
  va_start(va, __format);
  v4 = *MEMORY[0x29EDCA608];
  vsnprintf(__str, 0x400uLL, __format, va);
  if (!CBSignUtilityLogger::myInstance)
  {
    operator new();
  }

  result = (*CBSignUtilityLogger::myInstance)(__str);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void *PublicKeys::get_public_key(uint64_t a1, int a2, int a3)
{
  v3 = &PublicKeys::pkcs1_sha2_384_production_publickey;
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (!a3)
  {
    v3 = &PublicKeys::pkcs1_sha2_384_development_publickey;
  }

  v4 = &PublicKeys::pkcs1_sha2_256_production_publickey;
  if (a3 != 1)
  {
    v4 = 0;
  }

  if (!a3)
  {
    v4 = &PublicKeys::pkcs1_sha2_256_development_publickey;
  }

  v5 = &PublicKeys::pkcs1_sha1_production_publickey;
  if (a3 != 1)
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = &PublicKeys::pkcs1_sha1_development_publickey;
  }

  if (a2)
  {
    v5 = 0;
  }

  if (a2 != 1)
  {
    v4 = v5;
  }

  if (a2 == 2)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t PublicKeys::get_public_key_size(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 97;
  }

  if (a3 >= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = 270;
  }

  if (a3 >= 2)
  {
    v5 = -1;
  }

  else
  {
    v5 = 140;
  }

  if (a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 1)
  {
    v6 = v4;
  }

  if (a2 == 2)
  {
    return v3;
  }

  else
  {
    return v6;
  }
}

void *CarrierBundle::CarrierBundle(void *result, uint64_t a2)
{
  result[2] = 0;
  *result = a2;
  result[1] = result + 2;
  result[5] = 0;
  result[3] = 0;
  result[4] = result + 5;
  result[8] = 0;
  result[6] = 0;
  result[7] = result + 8;
  result[12] = 0;
  result[11] = 0;
  result[9] = 0;
  result[10] = result + 11;
  return result;
}

{
  result[2] = 0;
  *result = a2;
  result[1] = result + 2;
  result[5] = 0;
  result[3] = 0;
  result[4] = result + 5;
  result[8] = 0;
  result[6] = 0;
  result[7] = result + 8;
  result[12] = 0;
  result[11] = 0;
  result[9] = 0;
  result[10] = result + 11;
  return result;
}

void CarrierBundle::~CarrierBundle(CarrierBundle *this)
{
  std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>>::destroy(this + 80, *(this + 11));
  std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>>::destroy(this + 56, *(this + 8));
  std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::destroy(this + 8, *(this + 2));
}

uint64_t CarrierBundle::print(CarrierBundle *this)
{
  v2 = CarrierBundle::printDeviceModelFileMap(this, this + 1);
  CarrierBundle::printDeviceModelFileMap(v2, this + 4);

  return CarrierBundle::printDeviceModelFileDataMap(this);
}

uint64_t CarrierBundle::printDeviceModelFileMap(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      writeLog("-----------------------------------------------------------\n");
      v4 = (v3 + 4);
      if (*(v3 + 55) < 0)
      {
        v4 = *v4;
      }

      writeLog("Class name: %s\n", v4);
      result = writeLog("---------- List of files in the class ---------------------\n");
      for (i = v3[8]; i != v3 + 7; i = *(i + 8))
      {
        v7 = (i + 16);
        if (*(i + 39) < 0)
        {
          v7 = *v7;
        }

        result = writeLog("%s\n", v7);
      }

      v8 = v3[1];
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
          v9 = v3[2];
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v2);
  }

  return result;
}

uint64_t CarrierBundle::printDeviceModelFileDataMap(uint64_t this)
{
  v1 = *(this + 56);
  v2 = (this + 64);
  if (v1 != (this + 64))
  {
    do
    {
      writeLog("-----------------------------------------------------------\n");
      v3 = (v1 + 4);
      if (*(v1 + 55) < 0)
      {
        v3 = *v3;
      }

      this = writeLog("Device Class = %s\n", v3);
      v4 = v1[7];
      if (v4 != v1 + 8)
      {
        do
        {
          FileSystemManager::basename((v4 + 4), __p);
          if (v12 >= 0)
          {
            v5 = __p;
          }

          else
          {
            v5 = __p[0];
          }

          writeLog("\t\t FileName = %s\t", v5);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }

          if (CFDataGetBytePtr(v4[7]))
          {
            CFDataGetLength(v4[7]);
            this = writeLog("fileDataLength = %ld \n");
          }

          else
          {
            this = writeLog("FileData is NULL\n");
          }

          v6 = v4[1];
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
              v7 = v4[2];
              v8 = *v7 == v4;
              v4 = v7;
            }

            while (!v8);
          }

          v4 = v7;
        }

        while (v7 != v1 + 8);
      }

      v9 = v1[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v1[2];
          v8 = *v10 == v1;
          v1 = v10;
        }

        while (!v8);
      }

      v1 = v10;
    }

    while (v10 != v2);
  }

  return this;
}

void sub_296004B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CarrierBundle::classifyFiles(uint64_t a1, char *a2, uint64_t a3)
{
  v17 = &v17;
  v18 = &v17;
  v19 = 0;
  if (FileSystemManager::directoryContentsAtPath(a2, &v17, 1))
  {
    std::list<std::string>::__sort<std::__less<void,void>>(v18, &v17, v19, &v12);
    v5 = v18;
    if (v18 != &v17)
    {
      while (1)
      {
        memset(&v16, 0, sizeof(v16));
        FileSystemManager::getFileExtension((v5 + 16));
        if (!std::string::compare(&v16, "lproj") || !std::string::compare(&v16, "loctable"))
        {
          break;
        }

        FileSystemManager::basename(v5 + 16, &v12);
        if (!std::string::compare(&v12, "version.plist"))
        {
          v6 = 1;
        }

        else
        {
          FileSystemManager::basename(v5 + 16, &v15);
          v6 = std::string::compare(&v15, "signatures") == 0;
          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v15.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__r_.__value_.__l.__data_);
          if (v6)
          {
            break;
          }
        }

        else if (v6)
        {
          break;
        }

        if (FileSystemManager::isDirectory((v5 + 16)))
        {
          if (CarrierBundle::classifyFiles(a1, v5 + 16, a3))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (!FileSystemManager::isRegularFile((v5 + 16)))
          {
LABEL_38:
            v7 = 0;
            goto LABEL_12;
          }

          FileSystemManager::basename(v5 + 16, &v11);
          CarrierBundle::getDeviceModelName(&v11, &v12);
          v15 = v12;
          memset(&v12, 0, sizeof(v12));
          if (v14 < 0)
          {
            operator delete(__p);
            if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v12.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v11.__r_.__value_.__l.__data_);
          }

          if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v15.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            if (a3 + 8 != std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::find<std::string>(a3, &v15.__r_.__value_.__l.__data_))
            {
              std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
            }

            v11.__r_.__value_.__r.__words[0] = &v11;
            v11.__r_.__value_.__l.__size_ = &v11;
            v11.__r_.__value_.__r.__words[2] = 0;
            std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
          }

          writeLog("Invalid file format\n");
          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v15.__r_.__value_.__l.__data_);
          }
        }

        v7 = 1;
LABEL_13:
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        if ((v7 | 2) != 2)
        {
          goto LABEL_41;
        }

        if (v5 == &v17)
        {
          goto LABEL_42;
        }
      }

      v7 = 2;
LABEL_12:
      v5 = *(v5 + 8);
      goto LABEL_13;
    }

LABEL_42:
    v9 = 1;
  }

  else
  {
LABEL_41:
    v9 = 0;
  }

  std::__list_imp<std::string>::clear(&v17);
  return v9;
}

void sub_296004F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::pair<std::string,std::list<std::string>>::~pair(&a16);
  std::__list_imp<std::string>::clear(&a10);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  std::__list_imp<std::string>::clear((v36 - 112));
  _Unwind_Resume(a1);
}

void CarrierBundle::getDeviceModelName(const std::string *a1@<X1>, std::string *a2@<X8>)
{
  memset(&v31, 0, sizeof(v31));
  memset(&__p, 0, sizeof(__p));
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_7;
  }

  MEMORY[0x29C256590](&v31, "common");
  v5 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80u) != 0)
  {
    v5 = a1->__r_.__value_.__l.__size_;
  }

  if (v5 <= 8)
  {
LABEL_7:
    std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(a2, &v31, &__p);
    goto LABEL_21;
  }

  std::string::basic_string(&v29, a1, 0, 9uLL, &__str);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v29.__r_.__value_.__l.__size_ != 9)
    {
      goto LABEL_18;
    }

    v6 = v29.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) != 9)
    {
      goto LABEL_18;
    }

    v6 = &v29;
  }

  v7 = v6->__r_.__value_.__r.__words[0];
  v8 = v6->__r_.__value_.__s.__data_[8];
  if (v7 == 0x656469727265766FLL && v8 == 115)
  {
    v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v10 < 0)
    {
      v11 = a1->__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      v12 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = a1->__r_.__value_.__l.__size_;
    }

    if (!ctu::starts_with())
    {
      goto LABEL_44;
    }

    v13 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    v14 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    v15 = v13 < 0;
    if (v13 >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = a1->__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      v14 = a1->__r_.__value_.__l.__size_;
    }

    if (v14 < 0xF)
    {
      goto LABEL_44;
    }

    v17 = 14;
    while (v16->__r_.__value_.__s.__data_[v17] != 95)
    {
      if (v14 == ++v17)
      {
        goto LABEL_44;
      }
    }

    if (v14 == v17 || v17 == -1)
    {
LABEL_44:
      v17 = 9;
    }

    std::string::basic_string(&__str, a1, v17, 0xFFFFFFFFFFFFFFFFLL, &v27);
    v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = __str.__r_.__value_.__l.__size_;
    }

    if (v18 && *std::string::at(&__str, 0) == 42)
    {
      p_str = &__str;
      std::string::erase(&__str, 0, 1uLL);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = __str.__r_.__value_.__l.__size_;
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      for (; v20; --v20)
      {
        v21 = p_str->__r_.__value_.__s.__data_[0];
        if (v21 == 46)
        {
          break;
        }

        if (v21 == 95)
        {
          break;
        }

        std::string::push_back(&__p, v21);
        p_str = (p_str + 1);
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = __p.__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&v27, &__str, v22, 0xFFFFFFFFFFFFFFFFLL, &v32);
    v23 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = __str.__r_.__value_.__l.__size_;
    }

    if (v23 && *std::string::at(&v27, 0) == 95)
    {
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        *v31.__r_.__value_.__l.__data_ = 0;
        v31.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v31.__r_.__value_.__s.__data_[0] = 0;
        *(&v31.__r_.__value_.__s + 23) = 0;
      }

      v24 = &v27;
      std::string::erase(&v27, 0, 1uLL);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v27.__r_.__value_.__l.__size_;
        v24 = v27.__r_.__value_.__r.__words[0];
      }

      for (; v25; --v25)
      {
        v26 = v24->__r_.__value_.__s.__data_[0];
        if (v26 == 46)
        {
          break;
        }

        std::string::push_back(&v31, v26);
        v24 = (v24 + 1);
      }
    }

    std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(a2, &v31, &__p);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_19;
  }

LABEL_18:
  std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(a2, &v31, &__p);
LABEL_19:
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

LABEL_21:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

void sub_296005328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CarrierBundle::readBundle(char **this)
{
  if (!CarrierBundle::classifyFiles(this, *this, (this + 1)))
  {
    return 0;
  }

  CarrierBundle::getSignatureDirPath(this, &v31);
  if (FileSystemManager::isRegularFile(&v31))
  {
    v2 = &v31;
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v2 = v31.__r_.__value_.__r.__words[0];
    }

    writeLog("signatures at path %s should be a directory, not a regular file : \n", v2);
LABEL_72:
    v3 = 0;
  }

  else
  {
    if ((CarrierBundle::classifyFiles(this, &v31, (this + 4)) & 1) == 0)
    {
      v4 = &v31;
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v4 = v31.__r_.__value_.__r.__words[0];
      }

      writeLog("Unable to read and classify the signatures fies : %s\n", v4);
    }

    v5 = this[1];
    if (v5 != (this + 2))
    {
      do
      {
        v29 = 0;
        v30 = 0;
        v28 = &v29;
        for (i = *(v5 + 8); i != (v5 + 56); i = *(i + 8))
        {
          if (*(i + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v27, *(i + 16), *(i + 24));
          }

          else
          {
            v27 = *(i + 16);
          }

          CarrierBundle::readFile(&v27, v20);
          v7 = v20[0];
          if (v20[0])
          {
            std::pair<std::string,ctu::cf::CFSharedRef<__CFData const>>::pair[abi:ne200100]<std::string&,ctu::cf::CFSharedRef<__CFData const>&,0>(&__p, &v27, v20);
            std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ctu::cf::CFSharedRef<__CFData const>>>(&v28, &__p.__r_.__value_.__l.__data_);
            ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&cf);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v8 = &v27;
            }

            else
            {
              v8 = v27.__r_.__value_.__r.__words[0];
            }

            writeLog("Error in readBundle : Unable to read the file : %s \n", v8);
          }

          ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v20);
          if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__r_.__value_.__l.__data_);
          }

          if (!v7)
          {
            std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(&v28, v29);
            goto LABEL_72;
          }
        }

        std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>&,0>(&__p, v5 + 2, &v28);
        std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>((this + 7), &__p.__r_.__value_.__l.__data_);
        std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(&cf, v26);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(&v28, v29);
        v9 = *(v5 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v5 + 2);
            v11 = *v10 == v5;
            v5 = v10;
          }

          while (!v11);
        }

        v5 = v10;
      }

      while (v10 != (this + 2));
    }

    v12 = this[4];
    if (v12 == (this + 5))
    {
      v3 = 1;
    }

    else
    {
      do
      {
        v29 = 0;
        v30 = 0;
        v28 = &v29;
        for (j = *(v12 + 8); j != (v12 + 56); j = *(j + 8))
        {
          if (*(j + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v27, *(j + 16), *(j + 24));
          }

          else
          {
            v27 = *(j + 16);
          }

          ctu::ns::AutoPool::AutoPool(v23);
          FileSystemManager::dictionaryFromPath(&v27, &v22);
          v14 = v22;
          if (v22)
          {
            FileSystemManager::basename(&v27, v20);
            *&__p.__r_.__value_.__l.__data_ = *v20;
            v15 = v21;
            v20[1] = 0;
            v21 = 0;
            v20[0] = 0;
            __p.__r_.__value_.__r.__words[2] = v15;
            cf = v22;
            if (v22)
            {
              CFRetain(v22);
            }

            std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>(&v28, &__p.__r_.__value_.__l.__data_);
            if (cf)
            {
              CFRelease(cf);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v21) < 0)
            {
              operator delete(v20[0]);
            }
          }

          else
          {
            if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v16 = &v27;
            }

            else
            {
              v16 = v27.__r_.__value_.__r.__words[0];
            }

            writeLog("Error in readBundle : Failed to load signature file at path: %s\n", v16);
          }

          if (v22)
          {
            CFRelease(v22);
          }

          MEMORY[0x29C2564F0](v23);
          if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__r_.__value_.__l.__data_);
          }

          if (!v14)
          {
            std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(&v28, v29);
            goto LABEL_72;
          }
        }

        std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>&,0>(&__p, v12 + 2, &v28);
        std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>((this + 10), &__p.__r_.__value_.__l.__data_);
        std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(&cf, v26);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(&v28, v29);
        v17 = *(v12 + 1);
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = *(v12 + 2);
            v11 = *v18 == v12;
            v12 = v18;
          }

          while (!v11);
        }

        v3 = 1;
        v12 = v18;
      }

      while (v18 != (this + 5));
    }
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_296005804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, char *a37)
{
  std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>::~pair(&a22);
  std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(&a36, a37);
  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(a1);
}

std::string *CarrierBundle::getSignatureDirPath@<X0>(const std::string **this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::operator=(a2, *this);
  v4 = *this;
  size = SHIBYTE((*this)->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v4->__r_.__value_.__l.__size_;
  }

  if (*std::string::at(v4, size - 1) != 47)
  {
    std::string::append(a2, "/");
  }

  return std::string::append(a2, "signatures");
}

void sub_296005990(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CarrierBundle::readFile(uint64_t a1@<X1>, const void **a2@<X8>)
{
  *a2 = 0;
  memset(&v10, 0, sizeof(v10));
  FileSystemManager::getFileExtension(a1);
  if (!std::string::compare(&v10, "plist"))
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v5);
    v6 = FileSystemManager::copyBinaryPlistAsXML(__p);
    v7 = *a2;
    *a2 = v6;
    v11 = v7;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v11);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (*(a1 + 23) >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    FileSystemManager::fileContentsAtPath(v4, &v11);
    if (&v11 != a2)
    {
      __p[0] = *a2;
      *a2 = v11;
      v11 = 0;
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(__p);
    }

    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v11);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_296005AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v21);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,ctu::cf::CFSharedRef<__CFData const>>::~pair(uint64_t a1)
{
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
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

uint64_t CarrierBundle::verifySignatures(uint64_t a1, int a2, uint64_t a3, _BOOL8 a4, int a5)
{
  if ((CarrierBundle::verifySignaturesOfGroup(a1, a2, a3, a4) & 1) == 0)
  {
    writeLog("Unable to verify the signatures of the some of the groups\n");
    return 0;
  }

  if (!a5)
  {
    return 1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "pri");
  v10 = CarrierBundle::verifySignaturesOfFiles(a1, a2, v9, a4, __p);
  v11 = v10;
  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_12:
    writeLog("Unable to verify the signatures of the %s files \n");
    return 0;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  std::string::basic_string[abi:ne200100]<0>(__p, "gri");
  v13 = CarrierBundle::verifySignaturesOfFiles(a1, a2, v12, a4, __p);
  v14 = v13;
  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (v14)
    {
      return 1;
    }
  }

  else if (v13)
  {
    return 1;
  }

  writeLog("Unable to verify the signatures of the %s files s\n");
  return 0;
}

void sub_296005D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CarrierBundle::verifySignaturesOfGroup(uint64_t a1, int a2, uint64_t a3, _BOOL8 a4)
{
  DigestForCBSignatureType = getDigestForCBSignatureType(a2);
  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  if ((CarrierBundle::computeHash(a1, DigestForCBSignatureType, &v34) & 1) == 0)
  {
    writeLog("Unable to compute hash for digestType %d", DigestForCBSignatureType);
    goto LABEL_43;
  }

  v7 = v34;
  if (v34 == v35)
  {
    v14 = 1;
    goto LABEL_45;
  }

  v8 = *MEMORY[0x29EDB8ED8];
  while (1)
  {
    v9 = (v7 + 4);
    v10 = std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::find<std::string>(a1 + 80, v7 + 4);
    if (a1 + 88 == v10)
    {
      break;
    }

    getSignatureFileName((v7 + 4), &v33);
    v11 = std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::find<std::string>(v10 + 56, &v33.__r_.__value_.__l.__data_);
    if (v10 + 64 == v11)
    {
      v21 = &v33;
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v33.__r_.__value_.__r.__words[0];
      }

      writeLog("Unable to find the signature dictionary for the file %s\n", v21);
      goto LABEL_56;
    }

    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&theDict, (v11 + 56));
    getPrefixForDigestType(DigestForCBSignatureType, v30);
    v12 = v31;
    if ((v31 & 0x80u) != 0)
    {
      v12 = v30[1];
    }

    if (!v12)
    {
      writeLog("Error: Failed to get the prefix for digest type: %d\n", DigestForCBSignatureType);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      if (theDict)
      {
        CFRelease(theDict);
      }

LABEL_56:
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      goto LABEL_43;
    }

    std::operator+<char>();
    if (v29 >= 0)
    {
      v13 = &v28;
    }

    else
    {
      v13 = v28;
    }

    v14 = CFStringCreateWithCString(v8, v13, 0x8000100u);
    v27 = v14;
    if (v14)
    {
      *&v36 = CFDictionaryGetValue(theDict, v14);
      ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&cf, &v36);
      if (cf)
      {
        ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(&v23, v7 + 7);
        v22 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v15 = VerifyDigest(&v23, &v22, a4, DigestForCBSignatureType);
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v22);
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v23);
        if (v15)
        {
          v14 = 1;
          goto LABEL_24;
        }

        writeLog("Verification of the signed digest failed\n");
      }

      else
      {
        v36 = 0uLL;
        v37 = 0;
        ctu::cf::assign();
        *__p = v36;
        v25 = v37;
        v16 = v36;
        if (v37 >= 0)
        {
          v16 = __p;
        }

        writeLog("Error: Failed to lookup for signature key %s in signing plist\n", v16);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v14 = 0;
LABEL_24:
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&cf);
      if (v27)
      {
        CFRelease(v27);
      }
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (theDict)
    {
      CFRelease(theDict);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (v14)
    {
      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      v7 = v18;
      if (v18 != v35)
      {
        continue;
      }
    }

    goto LABEL_45;
  }

  if (*(v7 + 55) < 0)
  {
    v9 = *v9;
  }

  writeLog("Unable to find the signatures for the device model %s\n", v9);
LABEL_43:
  v14 = 0;
LABEL_45:
  std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(&v34, v35[0]);
  return v14;
}

void sub_2960060C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, const void *a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a42);
  if (a48 < 0)
  {
    operator delete(a43);
  }

  std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(v48 - 136, *(v48 - 128));
  _Unwind_Resume(a1);
}

uint64_t CarrierBundle::verifySignaturesOfFiles(uint64_t a1, int a2, uint64_t a3, _BOOL8 a4, uint64_t a5)
{
  DigestForCBSignatureType = getDigestForCBSignatureType(a2);
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  if (CarrierBundle::computeHashForFiles(a1, DigestForCBSignatureType, &v41, a5))
  {
    v9 = v41;
    if (v41 == v42)
    {
      v22 = 1;
      goto LABEL_59;
    }

    v10 = *MEMORY[0x29EDB8ED8];
    while (1)
    {
      v11 = (v9 + 4);
      v12 = std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::find<std::string>(a1 + 80, v9 + 4);
      if (a1 + 88 == v12)
      {
        break;
      }

      getSignatureFileName((v9 + 4), &v40);
      v13 = std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::find<std::string>(v12 + 56, &v40.__r_.__value_.__l.__data_);
      if (v12 + 64 == v13)
      {
        v28 = &v40;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v40.__r_.__value_.__r.__words[0];
        }

        writeLog("Unable to find the signature dictionary for the file %s\n", v28);
        goto LABEL_70;
      }

      ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&theDict, (v13 + 56));
      getPrefixForDigestType(DigestForCBSignatureType, v37);
      v14 = v38;
      if ((v38 & 0x80u) != 0)
      {
        v14 = v37[1];
      }

      if (!v14)
      {
        writeLog("Error: Failed to get the prefix for digest type: %d\n", DigestForCBSignatureType);
        if (v38 < 0)
        {
          operator delete(v37[0]);
        }

        if (theDict)
        {
          CFRelease(theDict);
        }

LABEL_70:
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        goto LABEL_57;
      }

      v15 = v9[7];
      if (v15 == (v9 + 8))
      {
LABEL_28:
        v22 = 1;
      }

      else
      {
        while (1)
        {
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15 + 4, v37, __p);
          v16 = v36 >= 0 ? __p : __p[0];
          v17 = CFStringCreateWithCString(v10, v16, 0x8000100u);
          v34 = v17;
          if (!v17)
          {
            break;
          }

          *&v43 = CFDictionaryGetValue(theDict, v17);
          ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&cf, &v43);
          if (!cf)
          {
            v43 = 0uLL;
            v44 = 0;
            ctu::cf::assign();
            *v31 = v43;
            v32 = v44;
            v23 = v43;
            if (v44 >= 0)
            {
              v23 = v31;
            }

            writeLog("Error: Failed to lookup for signature key %s in signing plist\n", v23);
            if (SHIBYTE(v32) < 0)
            {
              operator delete(v31[0]);
            }

            goto LABEL_34;
          }

          ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(&v30, v15 + 7);
          v29 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          v18 = VerifyDigest(&v30, &v29, a4, DigestForCBSignatureType);
          ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v29);
          ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v30);
          if (!v18)
          {
            writeLog("Verification of the signed digest failed\n");
LABEL_34:
            ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&cf);
            if (v34)
            {
              CFRelease(v34);
            }

            break;
          }

          ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&cf);
          if (v34)
          {
            CFRelease(v34);
          }

          if (v36 < 0)
          {
            operator delete(__p[0]);
          }

          v19 = v15[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v15[2];
              v21 = *v20 == v15;
              v15 = v20;
            }

            while (!v21);
          }

          v15 = v20;
          if (v20 == v9 + 8)
          {
            goto LABEL_28;
          }
        }

        if (v36 < 0)
        {
          operator delete(__p[0]);
        }

        v22 = 0;
      }

      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      if (theDict)
      {
        CFRelease(theDict);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (v22)
      {
        v24 = v9[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = v9[2];
            v21 = *v25 == v9;
            v9 = v25;
          }

          while (!v21);
        }

        v9 = v25;
        if (v25 != v42)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    if (*(v9 + 55) < 0)
    {
      v11 = *v11;
    }

    writeLog("Unable to find the signatures for the device model %s\n", v11);
  }

  else
  {
    if (*(a5 + 23) >= 0)
    {
      v26 = a5;
    }

    else
    {
      v26 = *a5;
    }

    writeLog("Unable to compute the hash for the file types : %s \n", v26);
  }

LABEL_57:
  v22 = 0;
LABEL_59:
  std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>>::destroy(&v41, v42[0]);
  return v22;
}

void sub_2960065C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, const void *a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a42);
  if (a48 < 0)
  {
    operator delete(a43);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>>::destroy(v48 - 136, *(v48 - 128));
  _Unwind_Resume(a1);
}

uint64_t CarrierBundle::computeHash(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "common");
  v6 = std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::find<std::string>(a1 + 56, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (a1 + 64);
  if (a1 + 64 == v6)
  {
    writeLog("Error : No set of common files found. Bundle may be missing something\n");
    return 0;
  }

  DigestGenerator::getDigestGenerator(a2, &v27);
  ComputeHash::ComputeHash(__p);
  v23 = v27;
  v24 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ComputeHash::setDigestGenerator(__p, &v23);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v8 = ComputeHash::init(__p);
  if ((v8 & 1) == 0)
  {
    writeLog("Error:ComputeHash object needs to be reset before initilazing\n");
LABEL_33:
    v16 = 0;
    goto LABEL_43;
  }

  if ((CarrierBundle::computeDigestForFileDataMap(v8, (v6 + 56), __p) & 1) == 0)
  {
    writeLog("Error : Unable to compute digest for FileDataMap\n");
    goto LABEL_33;
  }

  ComputeHash::finalize(__p, &cf);
  std::pair<std::string,ctu::cf::CFSharedRef<__CFData const>>::pair[abi:ne200100]<std::string&,ctu::cf::CFSharedRef<__CFData const>&,0>(&v20, (v6 + 32), &cf);
  std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ctu::cf::CFSharedRef<__CFData const>>>(a3, &v20.__r_.__value_.__l.__data_);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v21);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v9 = *(a1 + 56);
  if (v9 == v7)
  {
LABEL_29:
    v16 = 1;
    goto LABEL_42;
  }

  while (1)
  {
    ComputeHash::reset_state(__p);
    v10 = (v9 + 4);
    if (!std::string::compare((v9 + 4), "common"))
    {
      goto LABEL_23;
    }

    if (!ComputeHash::init(__p))
    {
      goto LABEL_35;
    }

    v19 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v11 = ComputeHash::digest_data(__p, &v19);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = CarrierBundle::computeDigestForFileDataMap(v11, v9 + 7, __p);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v19);
    if ((v12 & 1) == 0)
    {
      goto LABEL_35;
    }

    ComputeHash::finalize(__p, &v18);
    if (!v18)
    {
      if (*(v9 + 55) < 0)
      {
        v10 = *v10;
      }

      writeLog("Error : Unable to compute the digest for FileDigestMap associated with %s\n", v10);
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v18);
      goto LABEL_41;
    }

    std::pair<std::string,ctu::cf::CFSharedRef<__CFData const>>::pair[abi:ne200100]<std::string&,ctu::cf::CFSharedRef<__CFData const>&,0>(&v20, v9 + 2, &v18);
    std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ctu::cf::CFSharedRef<__CFData const>>>(a3, &v20.__r_.__value_.__l.__data_);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v21);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v18);
LABEL_23:
    v13 = v9[1];
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v9[2];
        v15 = *v14 == v9;
        v9 = v14;
      }

      while (!v15);
    }

    v9 = v14;
    if (v14 == v7)
    {
      goto LABEL_29;
    }
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v19);
LABEL_35:
  if (*(v9 + 55) < 0)
  {
    v10 = *v10;
  }

  writeLog("Error : Unable to compute the digest for FileDigestMap associated with %s\n", v10);
LABEL_41:
  v16 = 0;
LABEL_42:
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&cf);
LABEL_43:
  ComputeHash::~ComputeHash(__p);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  return v16;
}

void sub_29600699C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a10);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a21);
  ComputeHash::~ComputeHash(&__p);
  v31 = *(v29 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t CarrierBundle::computeHashForFiles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DigestGenerator::getDigestGenerator(a2, &v41);
  ComputeHash::ComputeHash(v40);
  v38 = v41;
  v39 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ComputeHash::setDigestGenerator(v6, &v38);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (ComputeHash::init(v40))
  {
    v7 = *(a1 + 56);
    v8 = (a1 + 64);
    if (v7 == (a1 + 64))
    {
LABEL_54:
      v24 = 1;
      goto LABEL_58;
    }

    while (1)
    {
      ComputeHash::reset_state(v40);
      v37[0] = 0;
      v37[1] = 0;
      v36 = v37;
      v9 = *(v7 + 7);
      if (v9 != (v7 + 4))
      {
        break;
      }

LABEL_46:
      std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>&,0>(&__p, v7 + 2, &v36);
      std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>(a3, &__p.__r_.__value_.__l.__data_);
      std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(v28, v28[1]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(&v36, v37[0]);
      v22 = *(v7 + 1);
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = *(v7 + 2);
          v17 = *v23 == v7;
          v7 = v23;
        }

        while (!v17);
      }

      v7 = v23;
      if (v23 == v8)
      {
        goto LABEL_54;
      }
    }

    while (1)
    {
      FileSystemManager::basename((v9 + 4), v34);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      FileSystemManager::getFileExtension(v34);
      v10 = *(a4 + 23);
      v11 = v33 >= 0 ? HIBYTE(v33) : v32;
      v12 = v33 >= 0 ? &v31 : v31;
      v13 = v10 >= 0 ? *(a4 + 23) : *(a4 + 8);
      v14 = v10 >= 0 ? a4 : *a4;
      v15 = v13 >= v11 ? v11 : v13;
      v16 = memcmp(v12, v14, v15);
      v17 = v13 == v11 && v16 == 0;
      if (v17)
      {
        ComputeHash::reset_state(v40);
        if (ComputeHash::init(v40) && (ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(&v30, v9 + 7), v19 = ComputeHash::digest_data(v40, &v30), ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v30), (v19 & 1) != 0))
        {
          ComputeHash::finalize(v40, &v29);
          std::pair<std::string,ctu::cf::CFSharedRef<__CFData const>>::pair[abi:ne200100]<std::string&,ctu::cf::CFSharedRef<__CFData const>&,0>(&__p, v34, &v29);
          std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ctu::cf::CFSharedRef<__CFData const>>>(&v36, &__p.__r_.__value_.__l.__data_);
          ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v28);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v29);
          v18 = 0;
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 7;
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(v31);
      }

      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      if (v18 != 7 && v18)
      {
        break;
      }

      v20 = v9[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v9[2];
          v17 = *v21 == v9;
          v9 = v21;
        }

        while (!v17);
      }

      v9 = v21;
      if (v21 == (v7 + 4))
      {
        goto LABEL_46;
      }
    }

    std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(&v36, v37[0]);
  }

  else
  {
    writeLog("Error:ComputeHash object needs to be reset before initilazing\n");
  }

  v24 = 0;
LABEL_58:
  ComputeHash::~ComputeHash(v40);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  return v24;
}

void sub_296006DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  ComputeHash::~ComputeHash((v38 - 136));
  v40 = *(v38 - 96);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(a1);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
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

uint64_t CarrierBundle::removeSignaturesDir(uint64_t **this)
{
  v2 = *this;
  std::string::basic_string[abi:ne200100]<0>(__p, "signatures");
  v3 = FileSystemManager::removeItem(v2, __p);
  v4 = v3;
  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
      return v4;
    }
  }

  else if (v3)
  {
    return v4;
  }

  v5 = *this;
  if (*(*this + 23) < 0)
  {
    v5 = *v5;
  }

  writeLog("Error: Unable remove signatures directory from bundle at path: %s\n", v5);
  return v4;
}

void sub_296006FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CarrierBundle::computeDigestForFileDataMap(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    while (1)
    {
      ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(&v23, v5 + 7);
      v7 = ComputeHash::digest_data(a3, &v23);
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v23);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
      if (v9 == v4)
      {
        v5 = *a2;
        goto LABEL_10;
      }
    }

    v18 = (v5 + 4);
    if (*(v5 + 55) < 0)
    {
      v18 = *v18;
    }

    writeLog("Error: Failed to compute digest of the fileData associated with the file : %s\n", v18);
    return 0;
  }

LABEL_10:
  if (v5 == v4)
  {
    return 1;
  }

  v11 = *MEMORY[0x29EDB8ED8];
  while (1)
  {
    FileSystemManager::basename((v5 + 4), __p);
    if (v25 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = CFStringCreateWithCString(v11, v12, 0x8000100u);
    cf[1] = v13;
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    cf[0] = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    v14 = ComputeHash::digest_string(a3, cf);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (!v14)
    {
      break;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v15 = v5[1];
    if (v15)
    {
      do
      {
        v16 = v15;
        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      do
      {
        v16 = v5[2];
        v10 = *v16 == v5;
        v5 = v16;
      }

      while (!v10);
    }

    v5 = v16;
    if (v16 == v4)
    {
      return 1;
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  ctu::cf::assign();
  *v20 = *__p;
  v21 = v25;
  v19 = v20;
  if (v25 < 0)
  {
    v19 = __p[0];
  }

  writeLog("Error: Failed to compute digest for basename of file at path: %s\n", v19);
  if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    if (!v13)
    {
      return 0;
    }

    goto LABEL_40;
  }

  operator delete(v20[0]);
  if (v13)
  {
LABEL_40:
    CFRelease(v13);
  }

  return 0;
}

void sub_29600722C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a20);
  _Unwind_Resume(a1);
}

void CarrierBundle::printDeviceModelDigestMap(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      writeLog("-----------------------------------------------------------\n");
      v4 = (v3 + 4);
      if (*(v3 + 55) < 0)
      {
        v4 = *v4;
      }

      writeLog("Class name : %s, ", v4);
      BytePtr = CFDataGetBytePtr(v3[7]);
      Length = CFDataGetLength(v3[7]);
      if (!BytePtr)
      {
        writeLog("dataBytes array returns a NULL pointer");
      }

      writeLog("Digest length = %ld, ", Length);
      writeLog("Digest : ");
      if (Length >= 1)
      {
        v7 = 0;
        v8 = 1;
        do
        {
          writeLog("%02x", BytePtr[v7]);
          v7 = v8;
        }

        while (Length > v8++);
      }

      writeLog("\n");
      v10 = v3[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v3[2];
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
    }

    while (v11 != v2);
  }
}

void CarrierBundle::printDeviceFilesDigestMap(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      writeLog("-----------------------------------------------------------\n");
      v4 = (v3 + 4);
      if (*(v3 + 55) < 0)
      {
        v4 = *v4;
      }

      writeLog("Device Class = %s\n", v4);
      v5 = v3[7];
      if (v5 != v3 + 8)
      {
        do
        {
          FileSystemManager::basename((v5 + 4), __p);
          if (v13 >= 0)
          {
            v6 = __p;
          }

          else
          {
            v6 = __p[0];
          }

          writeLog("\t\t FileName = %s\t", v6);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }

          if (CFDataGetBytePtr(v5[7]))
          {
            CFDataGetLength(v5[7]);
            writeLog("fileDataLength = %ld \n");
          }

          else
          {
            writeLog("FileData is NULL\n");
          }

          v7 = v5[1];
          if (v7)
          {
            do
            {
              v8 = v7;
              v7 = *v7;
            }

            while (v7);
          }

          else
          {
            do
            {
              v8 = v5[2];
              v9 = *v8 == v5;
              v5 = v8;
            }

            while (!v9);
          }

          v5 = v8;
        }

        while (v8 != v3 + 8);
      }

      v10 = v3[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v3[2];
          v9 = *v11 == v3;
          v3 = v11;
        }

        while (!v9);
      }

      v3 = v11;
    }

    while (v11 != v2);
  }
}

void sub_296007580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,std::list<std::string>>::~pair(uint64_t a1)
{
  std::__list_imp<std::string>::clear((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__list_imp<std::string>::clear(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      std::__list_imp<std::string>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<std::string>::__delete_node[abi:ne200100](int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::pair<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<std::string>>,0>(uint64_t a1)
{
  std::__list_imp<std::string>::clear((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::list<std::string>::__sort<std::__less<void,void>>(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a4, *a2 + 2, (a1 + 16)))
      {
        v10 = *v8;
        v9 = v8[1];
        *(v10 + 8) = v9;
        *v9 = v10;
        v11 = *v4;
        *(v11 + 8) = v8;
        *v8 = v11;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v13 = a3 >> 1;
      v14 = (a3 >> 1) + 1;
      v15 = a1;
      do
      {
        v15 = *(v15 + 8);
        --v14;
      }

      while (v14 > 1);
      v16 = std::list<std::string>::__sort<std::__less<void,void>>(a1, v15, a3 >> 1, a4);
      v4 = std::list<std::string>::__sort<std::__less<void,void>>(v15, a2, a3 - v13, a4);
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a4, (v4 + 16), (v16 + 16)))
      {
          ;
        }

        v19 = *i;
        v20 = *(*i + 8);
        v21 = *v4;
        *(v21 + 8) = v20;
        *v20 = v21;
        v22 = *v16;
        v18 = *(v16 + 8);
        *(v22 + 8) = v4;
        *v4 = v22;
        *v16 = v19;
        *(v19 + 8) = v16;
      }

      else
      {
        v18 = *(v16 + 8);
        i = v4;
        v4 = v16;
      }

      if (v18 != i && i != a2)
      {
        v23 = i;
        do
        {
          if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a4, (i + 16), v18 + 2))
          {
              ;
            }

            v25 = *j;
            v26 = *(*j + 8);
            v27 = *i;
            *(v27 + 8) = v26;
            *v26 = v27;
            if (v23 == i)
            {
              v23 = j;
            }

            v29 = *v18;
            v28 = v18[1];
            v29[1] = i;
            *i = v29;
            *v18 = v25;
            *(v25 + 8) = v18;
            v18 = v28;
            i = j;
          }

          else
          {
            v18 = v18[1];
          }
        }

        while (v18 != v23 && i != a2);
      }
    }
  }

  return v4;
}

BOOL std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::find<std::string>(uint64_t a1, const void **a2)
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
    v7 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1, (v3 + 32), a2);
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
  if (v6 == v2 || std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
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

std::string *std::pair<std::string,std::list<std::string>>::pair[abi:ne200100]<std::string&,std::list<std::string>&,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::list<std::string>::list(this[1].__r_.__value_.__r.__words, a3);
  return this;
}

void sub_296007E00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::list<std::string>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::list<std::string>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1, a3, (v4 + 32)))
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

      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::list<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::list<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<std::string const,std::list<std::string>>::pair[abi:ne200100]<std::string,std::list<std::string>,0>(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(result + 24) = result + 24;
  *(result + 32) = result + 24;
  *(result + 40) = 0;
  v3 = *(a2 + 5);
  if (v3)
  {
    v5 = *(a2 + 3);
    v4 = *(a2 + 4);
    v6 = *(v5 + 8);
    v7 = *v4;
    *(v7 + 8) = v6;
    *v6 = v7;
    v8 = *(result + 24);
    *(v8 + 8) = v4;
    *v4 = v8;
    *(result + 24) = v5;
    *(v5 + 8) = result + 24;
    *(result + 40) = v3;
    *(a2 + 5) = 0;
  }

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

void std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,ctu::cf::CFSharedRef<__CFData const>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,ctu::cf::CFSharedRef<__CFData const>>,0>(uint64_t a1)
{
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

std::string *std::pair<std::string,ctu::cf::CFSharedRef<__CFData const>>::pair[abi:ne200100]<std::string&,ctu::cf::CFSharedRef<__CFData const>&,0>(std::string *this, __int128 *a2, const void **a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(&this[1].__r_.__value_.__l.__data_, a3);
  return this;
}

uint64_t std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ctu::cf::CFSharedRef<__CFData const>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ctu::cf::CFSharedRef<__CFData const>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>&,0>(std::string *this, __int128 *a2, const void ***a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>::map[abi:ne200100](this[1].__r_.__value_.__r.__words, a3);
  return this;
}

void sub_296008510(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__tree_node<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__tree_node<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,ctu::cf::CFSharedRef<__CFData const>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,ctu::cf::CFSharedRef<__CFData const>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::__construct_node<std::pair<std::string const,ctu::cf::CFSharedRef<__CFData const>> const&>();
  }

  return v3;
}

uint64_t std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1, a5, (a2 + 32)))
  {
    if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::__find_equal<std::string>(a1, a3, a5);
}

std::string *std::pair<std::string const,ctu::cf::CFSharedRef<__CFData const>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(&this[1].__r_.__value_.__l.__data_, a2 + 3);
  return this;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>>::__construct_node<std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 7);
    if (v3)
    {
      CFRelease(v3);
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

std::string *std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>&,0>(std::string *this, __int128 *a2, const void ***a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>::map[abi:ne200100](this[1].__r_.__value_.__r.__words, a3);
  return this;
}

void sub_296008C88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__tree_node<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__tree_node<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,ctu::cf::CFSharedRef<__CFDictionary const>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,ctu::cf::CFSharedRef<__CFDictionary const>> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFData const>>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::__construct_node<std::pair<std::string const,ctu::cf::CFSharedRef<__CFDictionary const>> const&>();
  }

  return result;
}

void sub_296008E80(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,ctu::cf::CFSharedRef<__CFDictionary const>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&this[1].__r_.__value_.__l.__data_, a2 + 3);
  return this;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::list<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<std::string>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>>::__construct_node<std::pair<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFData const>>>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_296009140(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void getSignatureFileName(std::string *a1@<X0>, std::string *a2@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = 0;
  v13 = 0uLL;
  if (std::string::compare(a1, "common"))
  {
    *(&__p.__r_.__value_.__s + 23) = 9;
    strcpy(&__p, "overrides");
    v4 = std::string::append(&__p, "_");
    v5 = v4->__r_.__value_.__r.__words[0];
    v14.__r_.__value_.__r.__words[0] = v4->__r_.__value_.__l.__size_;
    *(v14.__r_.__value_.__r.__words + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
    v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    *(&v13 + 7) = *(v14.__r_.__value_.__r.__words + 7);
    v12 = v5;
    *&v13 = v14.__r_.__value_.__r.__words[0];
    HIBYTE(v13) = v6;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v12, &a1->__r_.__value_.__l.__data_, &v14);
  v7 = std::string::append(&v14, ".");
  v8 = *&v7->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&__p, "plist");
  *a2 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_2960092CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *getSignatureDirPath@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::operator=(a2, __str);
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (*std::string::at(__str, size - 1) != 47)
  {
    std::string::append(a2, "/");
  }

  return std::string::append(a2, "signatures");
}

void sub_2960093B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void FileSystemManager::FileSystemManager(FileSystemManager *this)
{
  *this = objc_alloc_init(MEMORY[0x29EDB9F38]);
}

{
  *this = objc_alloc_init(MEMORY[0x29EDB9F38]);
}

void FileSystemManager::~FileSystemManager(id *this)
{
}

{
}

_BYTE *FileSystemManager::basename@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  strlcpy(__dst, v3, 0x400uLL);
  v4 = basename(__dst);
  result = std::string::basic_string[abi:ne200100]<0>(a2, v4);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *FileSystemManager::dirname@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  strlcpy(__dst, v3, 0x400uLL);
  v4 = dirname(__dst);
  result = std::string::basic_string[abi:ne200100]<0>(a2, v4);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL FileSystemManager::directoryContentsAtPath(char *a1, void *a2, int a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v29 = 0;
  v6 = [MEMORY[0x29EDB9FB8] defaultManager];
  if (a1[23] >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  obj = [v6 contentsOfDirectoryAtPath:objc_msgSend(MEMORY[0x29EDBA0F8] error:{"stringWithUTF8String:", v7), &v29}];
  if (obj)
  {
    std::__list_imp<std::string>::clear(a2);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    if ([obj countByEnumeratingWithState:&v25 objects:v31 count:16])
    {
      *v26;
      *v26;
      v8 = **(&v25 + 1);
      __p = 0;
      v24 = 0uLL;
      if (a3)
      {
        if (a1[23] >= 0)
        {
          v9 = a1[23];
        }

        else
        {
          v9 = *(a1 + 1);
        }

        std::string::basic_string[abi:ne200100](&v22, v9 + 1);
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v22;
        }

        else
        {
          v10 = v22.__r_.__value_.__r.__words[0];
        }

        if (v9)
        {
          if (a1[23] >= 0)
          {
            v11 = a1;
          }

          else
          {
            v11 = *a1;
          }

          memmove(v10, v11, v9);
        }

        *(&v10->__r_.__value_.__l.__data_ + v9) = 47;
        std::string::basic_string[abi:ne200100]<0>(v20, [v8 UTF8String]);
        if ((v21 & 0x80u) == 0)
        {
          v12 = v20;
        }

        else
        {
          v12 = v20[0];
        }

        if ((v21 & 0x80u) == 0)
        {
          v13 = v21;
        }

        else
        {
          v13 = v20[1];
        }

        v14 = std::string::append(&v22, v12, v13);
        v15 = v14->__r_.__value_.__r.__words[0];
        v30[0] = v14->__r_.__value_.__l.__size_;
        *(v30 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
        v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p);
        }

        __p = v15;
        *&v24 = v30[0];
        *(&v24 + 7) = *(v30 + 7);
        HIBYTE(v24) = v16;
        if (v21 < 0)
        {
          operator delete(v20[0]);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        MEMORY[0x29C256590](&__p, [v8 UTF8String]);
      }

      std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
    }
  }

  if (v29)
  {
    result = [v29 code] == 0;
  }

  else
  {
    result = 1;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29600986C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL FileSystemManager::isRegularFile(const char *a1)
{
  memset(&v2, 0, sizeof(v2));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return !lstat(a1, &v2) && (v2.st_mode & 0xF000) == 0x8000;
}

BOOL FileSystemManager::isDirectory(const char *a1)
{
  memset(&v2, 0, sizeof(v2));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return !lstat(a1, &v2) && (v2.st_mode & 0xF000) == 0x4000;
}

BOOL FileSystemManager::isSymlink(const char *a1)
{
  memset(&v2, 0, sizeof(v2));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return !lstat(a1, &v2) && (v2.st_mode & 0xF000) == 0xA000;
}

CFDataRef FileSystemManager::copyBinaryPlistAsXML(uint64_t a1)
{
  v1 = *MEMORY[0x29EDB8ED8];
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v2, 0x8000100u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFURLCreateWithFileSystemPath(v1, v3, kCFURLPOSIXPathStyle, 0);
  if (v5)
  {
    v6 = CFReadStreamCreateWithFile(v1, v5);
    v7 = v6;
    if (v6)
    {
      if (CFReadStreamOpen(v6) && (v8 = CFPropertyListCreateWithStream(v1, v7, 0, 0, 0, 0)) != 0)
      {
        Data = CFPropertyListCreateData(v1, v8, kCFPropertyListXMLFormat_v1_0, 0, 0);
        CFReadStreamClose(v7);
        CFRelease(v8);
      }

      else
      {
        Data = 0;
      }

      CFRelease(v7);
    }

    else
    {
      Data = 0;
    }

    CFRelease(v5);
  }

  else
  {
    Data = 0;
  }

  CFRelease(v4);
  return Data;
}

void sub_296009B4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  ctu::cf::CFSharedRef<__CFReadStream>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va2);
  _Unwind_Resume(a1);
}

BOOL FileSystemManager::isHiddenFile(uint64_t a1)
{
  FileSystemManager::basename(a1, &v3);
  v1 = *std::string::at(&v3, 0);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  return v1 == 46;
}

void sub_296009BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void FileSystemManager::getFileExtension(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  [objc_msgSend(objc_msgSend(MEMORY[0x29EDBA0F8] stringWithCString:v1 encoding:{4), "pathExtension"), "cStringUsingEncoding:", 4}];

  JUMPOUT(0x29C256590);
}

void FileSystemManager::getFileNameWithExtensionRemoved(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  [objc_msgSend(objc_msgSend(MEMORY[0x29EDBA0F8] stringWithCString:v1 encoding:{4), "stringByDeletingPathExtension"), "cStringUsingEncoding:", 4}];

  JUMPOUT(0x29C256590);
}

ssize_t FileSystemManager::readLink@<X0>(const char *a1@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = readlink(a1, v5, 0x3FFuLL);
  if (result != -1)
  {
    v5[result] = 0;
    result = MEMORY[0x29C256590](a2, v5);
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296009D7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FileSystemManager::copyItem(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = a1[1];
  }

  if (!v2)
  {
    return 0;
  }

  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
      return 0;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    return 0;
  }

  v4 = [MEMORY[0x29EDBA0F8] stringWithCString:a2 encoding:4];
  if ([objc_msgSend(MEMORY[0x29EDB9FB8] "defaultManager")] && !objc_msgSend(objc_msgSend(MEMORY[0x29EDB9FB8], "defaultManager"), "removeItemAtPath:error:", v4, 0))
  {
    return 0;
  }

  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = [MEMORY[0x29EDBA0F8] stringWithCString:v5 encoding:4];
  v7 = [MEMORY[0x29EDB9FB8] defaultManager];

  return [v7 copyItemAtPath:v6 toPath:v4 error:0];
}

uint64_t FileSystemManager::removeItem(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = [MEMORY[0x29EDBA0F8] stringWithCString:v3 encoding:4];
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [v4 stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithCString:encoding:", v5, 4)}];
  if (![objc_msgSend(MEMORY[0x29EDB9FB8] "defaultManager")])
  {
    return 1;
  }

  result = [objc_msgSend(MEMORY[0x29EDB9FB8] "defaultManager")];
  if (result)
  {
    return 1;
  }

  return result;
}

CFTypeRef FileSystemManager::dictionaryFromPath@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  result = [MEMORY[0x29EDB8DC0] dictionaryWithContentsOfFile:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithCString:encoding:", v3, 1)}];
  *a2 = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t FileSystemManager::fileContentsAtPath@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    v4 = this;
    v5 = objc_alloc(MEMORY[0x29EDB8DA0]);
    this = [v5 initWithContentsOfFile:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v4)}];
  }

  *a2 = this;
  return this;
}

uint64_t FileSystemManager::writeDictionaryToPath(uint64_t *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v3];

  return [a2 writeToFile:v4 atomically:1];
}

const void **ctu::cf::CFSharedRef<__CFReadStream>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void ComputeHashForCarrierBundle::getDeviceModelName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v23, 0, sizeof(v23));
  memset(&__p, 0, sizeof(__p));
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  MEMORY[0x29C256590](&v23, "common");
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5 <= 8)
  {
LABEL_7:
    std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(a2, &v23, &__p);
    goto LABEL_21;
  }

  std::string::basic_string(&v21, a1, 0, 9uLL, &__str);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v21.__r_.__value_.__l.__size_ != 9)
    {
      goto LABEL_18;
    }

    v6 = v21.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) != 9)
    {
      goto LABEL_18;
    }

    v6 = &v21;
  }

  v7 = v6->__r_.__value_.__r.__words[0];
  v8 = v6->__r_.__value_.__s.__data_[8];
  if (v7 == 0x656469727265766FLL && v8 == 115)
  {
    std::string::basic_string(&__str, a1, 9uLL, 0xFFFFFFFFFFFFFFFFLL, &v19);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size && *std::string::at(&__str, 0) == 42)
    {
      p_str = &__str;
      std::string::erase(&__str, 0, 1uLL);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v12 = __str.__r_.__value_.__l.__size_;
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      for (; v12; --v12)
      {
        v13 = p_str->__r_.__value_.__s.__data_[0];
        if (v13 == 46)
        {
          break;
        }

        if (v13 == 95)
        {
          break;
        }

        std::string::push_back(&__p, v13);
        p_str = (p_str + 1);
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __p.__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&v19, &__str, v14, 0xFFFFFFFFFFFFFFFFLL, &v24);
    v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = __str.__r_.__value_.__l.__size_;
    }

    if (v15 && *std::string::at(&v19, 0) == 95)
    {
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        *v23.__r_.__value_.__l.__data_ = 0;
        v23.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v23.__r_.__value_.__s.__data_[0] = 0;
        *(&v23.__r_.__value_.__s + 23) = 0;
      }

      v16 = &v19;
      std::string::erase(&v19, 0, 1uLL);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = v19.__r_.__value_.__l.__size_;
        v16 = v19.__r_.__value_.__r.__words[0];
      }

      for (; v17; --v17)
      {
        v18 = v16->__r_.__value_.__s.__data_[0];
        if (v18 == 46)
        {
          break;
        }

        std::string::push_back(&v23, v18);
        v16 = (v16 + 1);
      }
    }

    std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(a2, &v23, &__p);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_19;
  }

LABEL_18:
  std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(a2, &v23, &__p);
LABEL_19:
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

LABEL_21:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void sub_29600A43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ComputeHashForCarrierBundle::computeIpccDigest(char *a1, ComputeHash *this, const void **a3)
{
  if ((ComputeHash::init(this) & 1) == 0)
  {
    writeLog("Error:ComputeHash object needs to be reset before initilazing\n");
    return 0;
  }

  if (a1[23] >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if ((ComputeHash::digest_file(this, v6) & 1) == 0)
  {
    if (a1[23] < 0)
    {
      v9 = *a1;
    }

    writeLog("Error: Failed to compute digest for %s\n");
    return 0;
  }

  ComputeHash::finalize(this, &v10);
  if (&v10 != a3)
  {
    v7 = *a3;
    *a3 = v10;
    v10 = 0;
    v11 = v7;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v11);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v10);
  return 1;
}

BOOL ComputeHashForCarrierBundle::computeVersionXmlDigestLegacy(uint64_t a1, ComputeHash *this, CFDictionaryRef *a3)
{
  if ((ComputeHash::init(this) & 1) == 0)
  {
    writeLog("Error:ComputeHash object needs to be reset before initilazing\n");
    return 0;
  }

  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  if (!v6)
  {
    writeLog("Error: Invalid version.xml file");
    return 0;
  }

  v7 = *MEMORY[0x29EDB8ED8];
  FileSystemManager::dictionaryFromPath(a1, &theDict);
  MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, theDict);
  v15[2] = MutableCopy;
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (!MutableCopy)
  {
    writeLog("Error: Invalid version.xml file");
    return 0;
  }

  Value = CFDictionaryGetValue(MutableCopy, @"MobileDeviceCarrierBundlesByProductVersion");
  v10 = Value;
  v15[1] = Value;
  if (Value)
  {
    CFRetain(Value);
    v15[0] = CFDictionaryCreateMutableCopy(v7, 0, v10);
    CFDictionaryRemoveValue(v15[0], @"signature");
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(&cf, v15);
    v11 = ComputeHash::digest_dictionary(this, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v11)
    {
      ComputeHash::finalize(this, &v13);
      if (&v13 != a3)
      {
        theDict = *a3;
        *a3 = v13;
        v13 = 0;
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&theDict);
      }

      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v13);
    }

    if (v15[0])
    {
      CFRelease(v15[0]);
    }

    CFRelease(v10);
  }

  else
  {
    writeLog("Error: Missing MobileDeviceCarrierBundlesByProductVersion from version.xml");
    v11 = 0;
  }

  CFRelease(MutableCopy);
  return v11;
}

void sub_29600A74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va2);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t ComputeHashForCarrierBundle::computeVersionXmlDigest(CFTypeRef *a1, ComputeHash *this, const void **a3)
{
  if ((ComputeHash::init(this) & 1) == 0)
  {
    writeLog("Error:ComputeHash object needs to be reset before initilazing\n");
    return 0;
  }

  result = *a1;
  if (!*a1)
  {
    return result;
  }

  cf = *a1;
  CFRetain(result);
  v7 = ComputeHash::digest_dictionary(this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v7)
  {
    return 0;
  }

  ComputeHash::finalize(this, &v8);
  if (&v8 != a3)
  {
    v10 = *a3;
    *a3 = v8;
    v8 = 0;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v10);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v8);
  return 1;
}

void sub_29600A8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void *ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(a1, v5);
}

uint64_t DigestGenerator::getDigestGenerator@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  switch(result)
  {
    case 2:
      operator new();
    case 1:
      operator new();
    case 0:
      operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void DigestGenerator160::DigestGenerator160(DigestGenerator160 *this)
{
  *this = &unk_2A1D1C380;
  *(this + 104) = 20;
}

{
  *this = &unk_2A1D1C380;
  *(this + 104) = 20;
}

void DigestGenerator256::DigestGenerator256(DigestGenerator256 *this)
{
  *this = &unk_2A1D1C3B0;
  *(this + 112) = 32;
}

{
  *this = &unk_2A1D1C3B0;
  *(this + 112) = 32;
}

void DigestGenerator384::DigestGenerator384(DigestGenerator384 *this)
{
  *this = &unk_2A1D1C3E0;
  *(this + 216) = 48;
}

{
  *this = &unk_2A1D1C3E0;
  *(this + 216) = 48;
}

void DigestGenerator512::DigestGenerator512(DigestGenerator512 *this)
{
  *this = &unk_2A1D1C410;
  *(this + 216) = 64;
}

{
  *this = &unk_2A1D1C410;
  *(this + 216) = 64;
}

void std::__shared_ptr_emplace<DigestGenerator160>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D1C4B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C256620);
}

void std::__shared_ptr_emplace<DigestGenerator256>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D1C500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C256620);
}

void std::__shared_ptr_emplace<DigestGenerator384>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D1C550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C256620);
}

uint64_t getDigestGeneratorFor@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  switch(result)
  {
    case 2:
      _ZNSt3__115allocate_sharedB8ne200100I18DigestGenerator384NS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    case 1:
      _ZNSt3__115allocate_sharedB8ne200100I18DigestGenerator256NS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    case 0:
      _ZNSt3__115allocate_sharedB8ne200100I18DigestGenerator160NS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t getDigestForCBSignatureType(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

_BYTE *getPrefixForDigestType@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 2:
      v2 = "3";
      return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    case 1:
      v2 = "2";
      return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    case 0:
      v2 = "1";
      return std::string::basic_string[abi:ne200100]<0>(a2, v2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

char *asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return &unk_29601093E;
  }

  else
  {
    return off_29EDED218[a1];
  }
}

const char *asString(int a1)
{
  v1 = "Unknown Format";
  if (a1 == 1)
  {
    v1 = "Format2";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Format1";
  }
}

{
  v1 = "Unknown";
  if (a1 == 1)
  {
    v1 = "production";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "development";
  }
}

{
  if (a1)
  {
    return "Unknown Format";
  }

  else
  {
    return "Format1";
  }
}

BOOL doSecVerify_iOS(const void **a1, const void **a2, _BOOL8 a3, int a4)
{
  v4 = a3;
  if (a3)
  {
    if (a4 == 2)
    {
      ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(&v14, a1);
      ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(&cf, a2);
      v4 = SecKeyVerifySignature_OSX_iOS(v4, &v14, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    else
    {
      if (a4 == 1)
      {
        v7 = 32772;
      }

      else
      {
        v7 = 32770;
      }

      BytePtr = CFDataGetBytePtr(*a1);
      Length = CFDataGetLength(*a1);
      v10 = CFDataGetBytePtr(*a2);
      v11 = CFDataGetLength(*a2);
      return SecKeyRawVerify(v4, v7, BytePtr, Length, v10, v11) == 0;
    }
  }

  else
  {
    writeLog("signKeyRef is NULL");
  }

  return v4;
}

void sub_29600B0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

BOOL SecKeyVerifySignature_OSX_iOS(__SecKey *a1, const __CFData **a2, const __CFData **a3)
{
  v6 = *MEMORY[0x29EDBBC60];
  if (!SecKeyIsAlgorithmSupported(a1, kSecKeyOperationTypeVerify, *MEMORY[0x29EDBBC60]))
  {
    writeLog("kSecKeyAlgorithmECDSASignatureDigestX962SHA384 algorithm is not supported\n");
  }

  v7 = *a2;
  v8 = *a3;
  error[0] = 0;
  error[1] = &v12;
  v12 = 0;
  v9 = SecKeyVerifySignature(a1, v6, v7, v8, error) != 0;
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v12);
  return v9;
}

void sub_29600B16C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(va);
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(va1);
  _Unwind_Resume(a1);
}

uint64_t createSecKeyRef(const unsigned __int8 *a1)
{
  v1 = *MEMORY[0x29EDB8ED8];
  RSAPublicKey = SecKeyCreateRSAPublicKey();
  if (!RSAPublicKey)
  {
    writeLog("Unable to create the RSA Public SecKey Ref\n");
  }

  return RSAPublicKey;
}

uint64_t createECDSASecKeyRef(const unsigned __int8 *a1)
{
  v1 = SecKeyCreateFromPublicBytes();
  if (!v1)
  {
    writeLog("Unable to create the ECDSA SecKey Ref\n");
  }

  return v1;
}

uint64_t getSecKeyRef(const unsigned __int8 *a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    return createECDSASecKeyRef(a1);
  }

  else
  {
    return createSecKeyRef(a1);
  }
}

BOOL VerifyDigest(const void **a1, const void **a2, _BOOL8 a3, int a4)
{
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(&v10, a1);
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(&cf, a2);
  v7 = doSecVerify_iOS(&v10, &cf, a3, a4);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

void sub_29600B2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_29600B440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_29600B648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VerifyCarrierBundleVersionsXMLSignature(const __CFDictionary *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a3 != 2)
  {
    writeLog("Error : Unsupported signature type for version xml verification.\n", v3, v4);
    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {

      return VerifyCarrierBundleVersionsXMLFormat1(a1, a2, 1);
    }

    return 0;
  }

  return VerifyCarrierBundleVersionsXMLFormat2(a1, a2, 1);
}

uint64_t VerifyCarrierBundleVersionsXMLFormat1(const __CFDictionary *a1, uint64_t a2, int a3)
{
  Value = CFDictionaryGetValue(a1, @"MobileDeviceCarrierBundlesByProductVersion");
  if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFDictionaryGetTypeID()))
  {
    writeLog("MobileDeviceCarrierBundlesByProductVersion is not found in version.xml");
    return 0;
  }

  v8 = CFDictionaryGetValue(a1, @"CarrierBundleSignatures");
  if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 != CFDictionaryGetTypeID()))
  {
    writeLog("CarrierBundleSignatures is not found in version.xml");
    return 0;
  }

  v11 = CFDictionaryGetValue(v9, @"Format1");
  if (!v11 || (v12 = v11, v13 = CFGetTypeID(v11), v13 != CFDictionaryGetTypeID()))
  {
    writeLog("Format1 is not found in the CarrierBundleSignatures of version.xml");
    return 0;
  }

  MutableCopy = CFDictionaryGetValue(v12, @"signature3");
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&cf, &MutableCopy);
  if (cf)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v6);
    CFDictionaryRemoveValue(MutableCopy, @"signature");
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(&v18, &MutableCopy);
    v17 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v14 = VerifyXMLDigestForType(&v18, &v17, 2);
    if (v17)
    {
      CFRelease(v17);
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v18);
    v15 = "Unknown";
    if (a3 == 1)
    {
      v15 = "production";
    }

    if (!a3)
    {
      v15 = "development";
    }

    if (v14)
    {
      writeLog("version XML CarrierBundle signatures verification of %s passed using the %s key\n", "Format1", v15);
    }

    else
    {
      writeLog("Error : Version XML CarrierBundle signatures verification failed on Format1 using %skeys\n", v15);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    writeLog("Error: signature3 key is not present in the Format1 signatures dictionary of the version xml");
    v14 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

void sub_29600B8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t VerifyCarrierBundleVersionsXMLFormat2(const __CFDictionary *a1, uint64_t a2, int a3)
{
  Value = CFDictionaryGetValue(a1, @"CarrierBundleSignatures");
  if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFDictionaryGetTypeID()))
  {
    writeLog("CarrierBundleSignatures is not found in version.xml");
    return 0;
  }

  v8 = CFDictionaryGetValue(v6, @"Format2");
  if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 != CFDictionaryGetTypeID()))
  {
    writeLog("Format2 is not found in the CarrierBundleSignatures of version.xml");
    return 0;
  }

  MutableCopy = CFDictionaryGetValue(v9, @"signature3");
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&v29, &MutableCopy);
  if (v29)
  {
    v11 = CFDictionaryGetValue(a1, @"CarrierBundles");
    v12 = v11;
    if (v11)
    {
      v13 = CFGetTypeID(v11);
      if (v13 == CFDictionaryGetTypeID())
      {
        v14 = *MEMORY[0x29EDB8ED8];
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v12);
        v15 = CFDictionaryGetValue(MutableCopy, @"Watch");
        theDict = v15;
        if (v15)
        {
          CFRetain(v15);
          v16 = theDict;
        }

        else
        {
          v16 = 0;
        }

        v19 = CFDictionaryCreateMutableCopy(v14, 0, v16);
        v26[1] = v19;
        v20 = CFDictionaryGetValue(theDict, @"Bundles");
        v26[0] = v20;
        if (v20)
        {
          CFRetain(v20);
          v21 = v26[0];
        }

        else
        {
          v21 = 0;
        }

        v22 = CFDictionaryCreateMutableCopy(v14, 0, v21);
        v25[1] = v22;
        CFDictionaryRemoveValue(v22, @"signature");
        CFDictionarySetValue(v19, @"Bundles", v22);
        CFDictionarySetValue(MutableCopy, @"Watch", v19);
        ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(v25, &MutableCopy);
        cf = v29;
        if (v29)
        {
          CFRetain(v29);
        }

        v17 = VerifyXMLDigestForType(v25, &cf, 2);
        if (cf)
        {
          CFRelease(cf);
        }

        ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v25);
        v23 = "Unknown";
        if (a3 == 1)
        {
          v23 = "production";
        }

        if (!a3)
        {
          v23 = "development";
        }

        if (v17)
        {
          writeLog("version XML CarrierBundle signatures verification of %s passed using the %s key\n", "Format2", v23);
        }

        else
        {
          writeLog("Error : Version XML CarrierBundle signatures verification failed on Format2 using %s keys\n", v23);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v26);
        if (v19)
        {
          CFRelease(v19);
        }

        ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        goto LABEL_17;
      }
    }

    writeLog("CarrierBundles key is not found in version.xml");
  }

  else
  {
    writeLog("Error: signature3 key is not present in the Format2 signatures dictionary of the version xml");
  }

  v17 = 0;
LABEL_17:
  if (v29)
  {
    CFRelease(v29);
  }

  return v17;
}

void sub_29600BC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va5, a3);
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v9 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v11 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v13 = va_arg(va5, const void *);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va2);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(va3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va4);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(va5);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v3 - 48));
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v3 - 40));
  _Unwind_Resume(a1);
}

uint64_t VerifyCarrierBundleVersionsXMLSignatureWithKeyType(const __CFDictionary *a1, uint64_t a2, int a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  if (a3 != 2)
  {
    writeLog("Error : Unsupported signature type for version xml verification.\n", v4, v5);
    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {

      return VerifyCarrierBundleVersionsXMLFormat1(a1, a2, a4);
    }

    return 0;
  }

  return VerifyCarrierBundleVersionsXMLFormat2(a1, a2, a4);
}

uint64_t VerifyXMLDigestForType(const void **a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  getDigestGeneratorFor(a3, &v14);
  v5 = v14;
  if (!v14)
  {
    writeLog("Error: Failed to get digest generator for digest type: %d\n", v3);
    v6 = v15;
    if (!v15)
    {
      return 0;
    }

    goto LABEL_14;
  }

  ComputeHash::ComputeHash(v13);
  v6 = v15;
  v11 = v5;
  v12 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ComputeHash::setDigestGenerator(v13, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (ComputeHash::init(v13))
  {
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(&v10, a1);
    v7 = ComputeHash::digest_dictionary(v13, &v10);
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v10);
    if (v7)
    {
      ComputeHash::finalize(v13, &cf);
      _ZNSt3__115allocate_sharedB8ne200100I10PublicKeysNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    writeLog("Error Failed to generate digest for the dictionary");
  }

  else
  {
    writeLog("Error:ComputeHash object needs to be reset before initilazing\n");
  }

  ComputeHash::~ComputeHash(v13);
  if (v6)
  {
LABEL_14:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return 0;
}

void sub_29600BF4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, std::__shared_weak_count *);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  v13 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va1);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va2);
  ComputeHash::~ComputeHash(va3);
  v4 = *(v2 - 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t VerifyCountryBundleVersionsXMLSignatureWithKeyType(const __CFDictionary *a1, uint64_t a2, int a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  if (a3 != 2)
  {
    writeLog("Error : Unsupported signature type for version xml verification.\n", v4, v5);
    return 0;
  }

  if (a2)
  {
    return 0;
  }

  return VerifyCountryBundleVersionsXMLFormat1(a1, a2, a4);
}

uint64_t VerifyCountryBundleVersionsXMLFormat1(const __CFDictionary *a1, uint64_t a2, int a3)
{
  Value = CFDictionaryGetValue(a1, @"CountryBundleSignatures");
  if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFDictionaryGetTypeID()))
  {
    v20 = 0uLL;
    v21 = 0;
    ctu::cf::assign();
    *cf = 0uLL;
    v19 = 0;
    writeLog("%s is not found in version.xml", cf);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(cf[0]);
    }

    return 0;
  }

  v8 = CFDictionaryGetValue(v6, @"Format1");
  if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 != CFDictionaryGetTypeID()))
  {
    writeLog("Format1 is not found in the CountryBundleSignatures of version.xml");
    return 0;
  }

  cf[0] = CFDictionaryGetValue(v9, @"signature3");
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&v20, cf);
  if (!v20)
  {
    writeLog("Error: signature3 key is not present in the Format1 signatures dictionary of the version xml");
    v13 = 0;
    goto LABEL_27;
  }

  v17 = CFDictionaryGetValue(a1, @"CountryBundles");
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(cf, &v17);
  if (!cf[0])
  {
    writeLog("CountryBundles key is not found in version.xml");
LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  v16 = cf[0];
  CFRetain(cf[0]);
  v15 = v20;
  if (v20)
  {
    CFRetain(v20);
  }

  v11 = VerifyXMLDigestForType(&v16, &v15, 2);
  if (v15)
  {
    CFRelease(v15);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v16);
  v12 = "Unknown";
  if (a3 == 1)
  {
    v12 = "production";
  }

  if (!a3)
  {
    v12 = "development";
  }

  if ((v11 & 1) == 0)
  {
    writeLog("Error : Version XML CountryBundle signatures verification failed on %s using %s keys\n", "Format1", v12);
    goto LABEL_25;
  }

  writeLog("version XML CountryBundle signatures verification of %s passed using the %s key\n", "Format1", v12);
  v13 = 1;
LABEL_26:
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(cf);
LABEL_27:
  if (v20)
  {
    CFRelease(v20);
  }

  return v13;
}

void sub_29600C4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void findMatchingFile_Internal(uint64_t a1@<X0>, const void **a2@<X1>, const void **a3@<X2>, unint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v62[0] = 0;
  v62[1] = 0;
  v61 = v62;
  v5 = *(a1 + 8);
  if (v5 == a1)
  {
    goto LABEL_77;
  }

  do
  {
    v8 = (v5 + 16);
    __p = 0;
    v59 = 0;
    v60 = 0;
    FileSystemManager::getFileExtension((v5 + 16));
    v9 = HIBYTE(v60);
    if (v60 >= 0)
    {
      v10 = HIBYTE(v60);
    }

    else
    {
      v10 = v59;
    }

    v11 = *(a2 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a2[1];
    }

    if (v10 != v11 || (v60 >= 0 ? (p_p = &__p) : (p_p = __p), v12 >= 0 ? (v14 = a2) : (v14 = *a2), memcmp(p_p, v14, v10)))
    {
      if (v9 < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v55 = 0;
    v56 = 0;
    v57 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    ComputeHashForCarrierBundle::getDeviceModelName(v5 + 16, &v49);
    v47 = &v52;
    v48 = &v55;
    std::tuple<std::string &,std::string &>::operator=[abi:ne200100]<std::string,std::string,0>(&v47, &v49);
    if (v51 < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    v15 = HIBYTE(v54);
    if (SHIBYTE(v54) < 0)
    {
      if (v53 == 6)
      {
        v16 = v52;
LABEL_28:
        v17 = *v16;
        v18 = v16[2];
        v19 = v17 == 1835888483 && v18 == 28271;
        if (v19)
        {
          goto LABEL_64;
        }
      }
    }

    else if (SHIBYTE(v54) == 6)
    {
      v16 = &v52;
      goto LABEL_28;
    }

    v20 = HIBYTE(v57);
    v21 = v56;
    ctu::tokenize();
    if ((v20 & 0x80u) == 0)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    v23 = v22 != 0;
    v24 = v47;
    v25 = v48;
    if (v48 == v47)
    {
      goto LABEL_63;
    }

    v45 = 1431655766 * ((v48 - v47) >> 3) - v23;
    v26 = *(a3 + 23);
    if (v26 >= 0)
    {
      v27 = *(a3 + 23);
    }

    else
    {
      v27 = a3[1];
    }

    if (v26 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    while (1)
    {
      v29 = *(v24 + 23);
      if (v29 < 0)
      {
        break;
      }

      if (*(v24 + 23))
      {
        goto LABEL_46;
      }

LABEL_53:
      v24 += 3;
      if (v24 == v25)
      {
        goto LABEL_63;
      }
    }

    if (!v24[1])
    {
      goto LABEL_53;
    }

LABEL_46:
    v30 = v24[1];
    if (v29 >= 0)
    {
      v30 = *(v24 + 23);
    }

    if (v27 != v30)
    {
      goto LABEL_53;
    }

    v31 = v29 >= 0 ? v24 : *v24;
    if (memcmp(v28, v31, v27))
    {
      goto LABEL_53;
    }

    LODWORD(v49.__r_.__value_.__l.__data_) = v45;
    if (*(v5 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v49.__r_.__value_.__r.__words[1], *(v5 + 16), *(v5 + 24));
    }

    else
    {
      v32 = *v8;
      v50 = *(v5 + 32);
      *&v49.__r_.__value_.__r.__words[1] = v32;
    }

    std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::pair<int,std::string>>(&v61, &v49);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__size_);
    }

    if (*(v5 + 39) < 0)
    {
      v8 = *v8;
    }

    writeLog("Found match, file %s contains this device's specific signature plist\n", v8);
LABEL_63:
    v49.__r_.__value_.__r.__words[0] = &v47;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
    v15 = HIBYTE(v54);
LABEL_64:
    if (v15 < 0)
    {
      operator delete(v52);
    }

    if (SHIBYTE(v57) < 0)
    {
      operator delete(v55);
    }

    if (v60 < 0)
    {
LABEL_16:
      operator delete(__p);
    }

LABEL_17:
    v5 = *(v5 + 8);
  }

  while (v5 != a1);
  v33 = v61;
  if (v61 != v62)
  {
    do
    {
      std::vector<std::string>::push_back[abi:ne200100](a4, (v33 + 5));
      v34 = v33[1];
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = v33[2];
          v19 = *v35 == v33;
          v33 = v35;
        }

        while (!v19);
      }

      v33 = v35;
    }

    while (v35 != v62);
  }

LABEL_77:
  v36 = *a4;
  v37 = a4[1];
  v38 = v37 - 24;
  if (*a4 != v37 && v38 > v36)
  {
    v40 = v36 + 24;
    do
    {
      v41 = *(v40 - 8);
      v42 = *(v40 - 24);
      v43 = *(v38 + 16);
      *(v40 - 24) = *v38;
      *(v40 - 8) = v43;
      *v38 = v42;
      *(v38 + 16) = v41;
      v38 -= 24;
      v44 = v40 >= v38;
      v40 += 24;
    }

    while (!v44);
  }

  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(&v61, v62[0]);
}

void sub_29600C8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  a15 = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(v41 - 136, *(v41 - 128));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void *std::tuple<std::string &,std::string &>::operator=[abi:ne200100]<std::string,std::string,0>(void *a1, __int128 *a2)
{
  v4 = *a1;
  if (*(*a1 + 23) < 0)
  {
    operator delete(*v4);
  }

  v5 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  v6 = a1[1];
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  v7 = *(a2 + 24);
  *(v6 + 16) = *(a2 + 5);
  *v6 = v7;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return a1;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void findMatchingFile(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  v9 = *(a3 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 8);
  }

  if (v9)
  {
    v16 = 0uLL;
    v17 = 0;
    v15[0] = 0;
    v15[1] = 0;
    v14 = v15;
    FileSystemManager::FileSystemManager(&v13);
    v12[0] = v12;
    v12[1] = v12;
    v12[2] = 0;
    if (FileSystemManager::directoryContentsAtPath(a1, v12, 0))
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      writeLog("Going through the contents in the directory searching for pattern '%s', and extension: '%s'\n", "overrides", v11);
      findMatchingFile_Internal(v12, a2, a3, a4);
    }

    else
    {
      *a4 = v16;
      a4[2] = v17;
      v17 = 0;
      v16 = 0uLL;
    }

    std::__list_imp<std::string>::clear(v12);
    FileSystemManager::~FileSystemManager(&v13);
    std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(&v14, v15[0]);
    v14 = &v16;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  else
  {
LABEL_15:
    writeLog("None of the arguments to this function can be empty\n");
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_29600CB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, char *a17)
{
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(&a16, a17);
  a16 = (v17 - 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void dictAfterMergingPlistsAtPath(const void **a1@<X0>, uint64_t *a2@<X1>, const __CFDictionary **a3@<X8>)
{
  *a3 = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      if (*(a1 + 23) >= 0)
      {
        v7 = *(a1 + 23);
      }

      else
      {
        v7 = a1[1];
      }

      std::string::basic_string[abi:ne200100](&v18, v7 + 1);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v18;
      }

      else
      {
        v8 = v18.__r_.__value_.__r.__words[0];
      }

      if (v7)
      {
        if (*(a1 + 23) >= 0)
        {
          v9 = a1;
        }

        else
        {
          v9 = *a1;
        }

        memmove(v8, v9, v7);
      }

      *(&v8->__r_.__value_.__l.__data_ + v7) = 47;
      v10 = *(v3 + 23);
      if (v10 >= 0)
      {
        v11 = v3;
      }

      else
      {
        v11 = *v3;
      }

      if (v10 >= 0)
      {
        v12 = *(v3 + 23);
      }

      else
      {
        v12 = *(v3 + 8);
      }

      v13 = std::string::append(&v18, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v20 = v13->__r_.__value_.__r.__words[2];
      *__p = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      FileSystemManager::dictionaryFromPath(__p, &v17);
      if (v17)
      {
        if (*a3)
        {
          copyMergedDictionaries(*a3, v17, &v16);
          if (&v16 != a3)
          {
            v18.__r_.__value_.__r.__words[0] = *a3;
            *a3 = v16;
            v16 = 0;
            ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v18.__r_.__value_.__l.__data_);
          }

          ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v16);
        }

        else
        {
          ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::operator=(a3, &v17);
        }
      }

      else
      {
        v15 = __p;
        if (v20 < 0)
        {
          v15 = __p[0];
        }

        writeLog("Signature dict for file at path %s is nil\n", v15);
      }

      ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v17);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }

      v3 += 24;
    }

    while (v3 != v4);
  }
}

void sub_29600CD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a11);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v23);
  _Unwind_Resume(a1);
}

void copyMergedDictionaries(const __CFDictionary *a1@<X0>, const __CFDictionary *a2@<X1>, void *a3@<X8>)
{
  theDict = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, a1);
  Count = CFDictionaryGetCount(a2);
  std::vector<void const*>::vector[abi:ne200100](keys, Count);
  std::vector<void const*>::vector[abi:ne200100](values, Count);
  CFDictionaryGetKeysAndValues(a2, keys[0], values[0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v8 = CFDictionaryGetValue(a1, keys[0][i]);
      v9 = CFDictionaryGetValue(a2, keys[0][i]);
      v10 = v9;
      if (v8 && (v11 = CFGetTypeID(v9), v11 == CFDictionaryGetTypeID()))
      {
        v12 = CFGetTypeID(v8);
        if (v12 != CFDictionaryGetTypeID())
        {
          v8 = 0;
        }

        if (v10)
        {
          v13 = CFGetTypeID(v10);
          if (v13 == CFDictionaryGetTypeID())
          {
            v14 = v10;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        copyMergedDictionaries(&value, v8, v14);
        CFDictionarySetValue(theDict, keys[0][i], value);
        ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&value);
      }

      else
      {
        CFDictionarySetValue(theDict, keys[0][i], v10);
      }
    }
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a3, &theDict);
  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }
}

void sub_29600CF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, const void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a16);
  _Unwind_Resume(a1);
}

void copyPRISignatureForDeviceNameOnSHA(const void **a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, int a4@<W3>, const void **a5@<X8>)
{
  v37 = *MEMORY[0x29EDCA608];
  writeLog("-------------------------------------copyPRISignatureForDeviceName begins-------------------------------------------\n");
  *a5 = 0;
  if (*(a1 + 23) >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  v11 = &v33;
  std::string::basic_string[abi:ne200100](&v33, v10 + 1);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v33.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a1 + 23) >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
  v13 = std::string::append(&v33, "signatures");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v35 = v13->__r_.__value_.__r.__words[2];
  *v34 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v15 = std::string::basic_string[abi:ne200100]<0>(&v36, "common");
  v16 = std::string::append(v15, ".");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v33, "plist");
  v19 = v18->__r_.__value_.__r.__words[0];
  size = v18->__r_.__value_.__l.__size_;
  v32[0] = v18->__r_.__value_.__r.__words[2];
  *(v32 + 3) = *(&v18->__r_.__value_.__r.__words[2] + 3);
  v21 = SHIBYTE(v18->__r_.__value_.__r.__words[2]);
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((v21 & 0x80000000) == 0)
  {
LABEL_17:
    v36.__r_.__value_.__r.__words[0] = v19;
    v36.__r_.__value_.__l.__size_ = size;
    LODWORD(v36.__r_.__value_.__r.__words[2]) = v32[0];
    *(&v36.__r_.__value_.__r.__words[2] + 3) = *(v32 + 3);
    *(&v36.__r_.__value_.__s + 23) = v21;
    goto LABEL_20;
  }

  std::string::__init_copy_ctor_external(&v36, v19, size);
LABEL_20:
  memset(&v33, 0, sizeof(v33));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v33, &v36, &v37, 1uLL);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "plist");
  findMatchingFile(v34, __p, a2, &v36);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v33, v33.__r_.__value_.__l.__size_, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v36.__r_.__value_.__l.__size_ - v36.__r_.__value_.__r.__words[0]) >> 3));
  dictAfterMergingPlistsAtPath(v34, &v33, &theDict);
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  if (a4 == 1)
  {
    v22 = "2";
  }

  else
  {
    if (a4 != 2)
    {
      goto LABEL_38;
    }

    v22 = "3";
  }

  MEMORY[0x29C256590](__p, v22);
  if (theDict)
  {
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, __p, cStr);
    if (v28 < 0)
    {
      if (!cStr[1])
      {
LABEL_37:
        operator delete(cStr[0]);
        goto LABEL_38;
      }

      v23 = cStr[0];
    }

    else
    {
      if (!v28)
      {
        goto LABEL_38;
      }

      v23 = cStr;
    }

    v24 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v23, 0x8000100u);
    v26[1] = v24;
    v26[0] = CFDictionaryGetValue(theDict, v24);
    ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(a5, v26);
    if (v24)
    {
      CFRelease(v24);
    }

    if (v28 < 0)
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  writeLog("-------------------------------------copyPRISignatureForDeviceName ends----------------------------------------------\n");
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
  __p[0] = &v36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  v36.__r_.__value_.__r.__words[0] = &v33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v36);
  if (v21 < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  v25 = *MEMORY[0x29EDCA608];
}

void sub_29600D38C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(const void **a1, CFTypeRef *a2)
{
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void getDigestForIpcc(char *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v3 = a2;
  getDigestGeneratorFor(a2, &v13);
  v6 = v13;
  if (v13)
  {
    ComputeHash::ComputeHash(v12);
    v7 = v14;
    v10 = v6;
    v11 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ComputeHash::setDigestGenerator(v12, &v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (ComputeHash::init(v12))
    {
      if (a1[23] >= 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = *a1;
      }

      if (ComputeHash::digest_file(v12, v8))
      {
        ComputeHash::finalize(v12, a3);
        goto LABEL_20;
      }

      if (a1[23] >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      writeLog("Error: Failed to compute digest for %s\n", v9);
    }

    else
    {
      writeLog("Error:ComputeHash object needs to be reset before initilazing\n");
    }

    *a3 = 0;
LABEL_20:
    ComputeHash::~ComputeHash(v12);
    if (!v7)
    {
      return;
    }

    goto LABEL_21;
  }

  writeLog("Error: Failed to get digest generator for digest type: %d\n", v3);
  *a3 = 0;
  v7 = v14;
  if (v14)
  {
LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_29600D640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *(v13 - 40);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
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

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
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

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::operator=(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v5);
  }

  return a1;
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<void const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_29600D7D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, a2);
  }

  std::vector<void const*>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void *_ZNSt3__120__shared_ptr_emplaceI18DigestGenerator160NS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1D1C4B0;
  DigestGenerator160::DigestGenerator160((a1 + 3));
  return a1;
}

void *_ZNSt3__120__shared_ptr_emplaceI18DigestGenerator256NS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1D1C500;
  DigestGenerator256::DigestGenerator256((a1 + 3));
  return a1;
}

void *_ZNSt3__120__shared_ptr_emplaceI18DigestGenerator384NS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1D1C550;
  DigestGenerator384::DigestGenerator384((a1 + 3));
  return a1;
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v6);
  return a1;
}

void *std::__shared_ptr_emplace<CarrierBundle>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<CarrierBundle>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1D1C5A0;
  CarrierBundle::CarrierBundle(a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<CarrierBundle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D1C5A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C256620);
}

void *_ZNSt3__120__shared_ptr_emplaceI10PublicKeysNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1D1C5F0;
  PublicKeys::PublicKeys((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<PublicKeys>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D1C5F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C256620);
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

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::pair<int,std::string>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<void const*>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29600E298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<void const*>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
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

  v10 = 1;
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

std::string *std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(std::vector<std::string> *a1, std::vector<std::string>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v19 = a5;
        std::vector<std::string>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::string::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (a3 + v16), a4, a1->__end_);
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(a1, v5, end, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<void const*>::__throw_length_error[abi:ne200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v30.__end_cap_.__value_ = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v15);
      }

      v30.__first_ = 0;
      v30.__begin_ = (8 * (v13 >> 3));
      v30.__end_ = v30.__begin_;
      v30.__end_cap_.__value_ = 0;
      std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string*>>(&v30, a3, a5);
      v22 = v30.__begin_;
      memcpy(v30.__end_, v5, a1->__end_ - v5);
      v23 = a1->__begin_;
      v24 = v30.__begin_;
      v30.__end_ = (v30.__end_ + a1->__end_ - v5);
      a1->__end_ = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = a1->__begin_;
      a1->__begin_ = v26;
      v28 = a1->__end_cap_.__value_;
      *&a1->__end_ = *&v30.__end_;
      v30.__end_ = v27;
      v30.__end_cap_.__value_ = v28;
      v30.__first_ = v27;
      v30.__begin_ = v27;
      std::__split_buffer<std::string>::~__split_buffer(&v30);
      return v22;
    }
  }

  return v5;
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v11, __from_s, v7, end);
}

void std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string*>>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = &v4[a3];
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        v4->__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&v4->__r_.__value_.__l.__data_ = v8;
      }

      ++v4;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(a1 + 16) = v4;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
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

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}