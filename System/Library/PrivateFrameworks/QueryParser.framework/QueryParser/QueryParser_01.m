void sub_1C659AD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, const void *a43, uint64_t a44, uint64_t a45, const void *a46, uint64_t a47, uint64_t a48, const void *a49)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a43, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a46, 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v49 - 120), 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a49, 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v49 - 240), 0);
  nlp::CFScopedPtr<__CFArray const*>::reset((v49 - 176), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v49 - 112), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v49 - 104), 0);
  _Unwind_Resume(a1);
}

__CFString *QP::DateFormatter::copyDisplayForDate(CFDateFormatterRef *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *a2;
  }

  v6 = QP::DateFormatter::copyDisplayForPeriodWithKey(a1, v8, *v4, *(v4 + 16), 0, a3, a4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v6;
}

void sub_1C659B09C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__CFString *QP::DateFormatter::copyDisplayForDate(CFDateFormatterRef *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v10[0] = *a2;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a2;
  }

  v8 = QP::DateFormatter::copyDisplayForPeriodWithKey(a1, v10, *v6, a3, a4, a5, a6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v8;
}

void sub_1C659B124(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *QP::DateFormatter::copyStartComponentsForDate(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 24);
  v6 = *(*a2 + 56);
  v20[1] = *(*a2 + 40);
  v20[2] = v6;
  v21 = *(v4 + 72);
  v20[0] = v5;
  v7 = *(v4 + 96);
  v18[0] = *(v4 + 80);
  v18[1] = v7;
  v18[2] = *(v4 + 112);
  v19 = *(v4 + 128);
  v8 = *(v4 + 152);
  v16[0] = *(v4 + 136);
  v16[1] = v8;
  v16[2] = *(v4 + 168);
  v17 = *(v4 + 184);
  v9 = a1[1];
  v14 = *a1;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *a2;
  }

  QP::DateConverter::resolveDateComponentsAsRange(&v14, *(v4 + 16), *(v4 + 12), v20, v18, v16, 1);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  isEmpty = QP::DateComponents::isEmpty(v20);
  v11 = *a1;
  if (!isEmpty)
  {
    return QP::copyDateComponentsDictionary(*(v11 + 88), *(v11 + 80), v20, 0);
  }

  if (*(v11 + 8) != 10)
  {
    return 0;
  }

  result = 0;
  v13 = *(*a2 + 16);
  if (v13 <= 8 && ((1 << v13) & 0x130) != 0)
  {
    return CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  return result;
}

void sub_1C659B288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *QP::copyDateComponentsDictionary(QP *this, __CFCalendar *a2, const __CFDate *a3, const QP::DateComponents *a4)
{
  v4 = a4;
  AbsoluteTime = QP::DateComponents::getAbsoluteTime(a3, this, a2);
  v31 = -1;
  valuePtr = -1;
  v29 = -1;
  v30 = -1;
  v27 = -1;
  v28 = -1;
  v25 = -1;
  v26 = -1;
  v23 = -1;
  v24 = -1;
  v22 = -1;
  if (v4)
  {
    if ((*(a3 + 3) & 0x80000000) == 0)
    {
      valuePtr = *(a3 + 3);
    }

    if ((*(a3 + 4) & 0x80000000) == 0)
    {
      v31 = *(a3 + 4);
    }

    if ((*(a3 + 5) & 0x80000000) == 0)
    {
      v30 = *(a3 + 5);
    }

    if ((*(a3 + 8) & 0x80000000) == 0)
    {
      v24 = *(a3 + 8);
    }

    if ((*(a3 + 9) & 0x80000000) == 0)
    {
      v23 = *(a3 + 9);
    }

    if ((*(a3 + 10) & 0x80000000) == 0)
    {
      v25 = *(a3 + 10);
    }

    if ((*(a3 + 11) & 0x80000000) == 0)
    {
      v26 = *(a3 + 11);
    }

    if ((*(a3 + 2) & 0x80000000) == 0)
    {
      v29 = *(a3 + 2);
    }

    if ((*(a3 + 1) & 0x80000000) == 0)
    {
      v28 = *(a3 + 1);
    }

    if ((*a3 & 0x80000000) == 0)
    {
      v27 = *a3;
    }
  }

  else
  {
    if ((*(a3 + 9) & 0x80000000) == 0)
    {
      v23 = *(a3 + 9);
    }

    CFCalendarDecomposeAbsoluteTime(this, AbsoluteTime, "dMyEwWYHms", &valuePtr, &v31, &v30, &v24, &v26, &v25, &v22, &v29, &v28, &v27);
    if (v23 == 0x7FFFFFFF)
    {
      v23 = -1;
    }
  }

  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if ((*(a3 + 3) & 0x80000000) == 0)
  {
    v10 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(Mutable, @"d", v10);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  if ((*(a3 + 4) & 0x80000000) == 0)
  {
    v11 = CFNumberCreate(v8, kCFNumberIntType, &v31);
    CFDictionarySetValue(Mutable, @"M", v11);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  if ((*(a3 + 5) & 0x80000000) == 0)
  {
    v12 = CFNumberCreate(v8, kCFNumberIntType, &v30);
    CFDictionarySetValue(Mutable, @"y", v12);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  if ((*(a3 + 8) & 0x80000000) == 0)
  {
    v13 = CFNumberCreate(v8, kCFNumberIntType, &v24);
    CFDictionarySetValue(Mutable, @"E", v13);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  if ((*(a3 + 9) & 0x80000000) == 0)
  {
    v14 = CFNumberCreate(v8, kCFNumberIntType, &v23);
    CFDictionarySetValue(Mutable, @"F", v14);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  if ((*(a3 + 10) & 0x80000000) == 0)
  {
    v15 = CFNumberCreate(v8, kCFNumberIntType, &v25);
    CFDictionarySetValue(Mutable, @"W", v15);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  if ((*(a3 + 11) & 0x80000000) == 0)
  {
    v16 = CFNumberCreate(v8, kCFNumberIntType, &v26);
    CFDictionarySetValue(Mutable, @"w", v16);
    if (v16)
    {
      CFRelease(v16);
    }
  }

  if ((*(a3 + 12) & 0x80000000) == 0)
  {
    v17 = CFNumberCreate(v8, kCFNumberIntType, &v22);
    CFDictionarySetValue(Mutable, @"Y", v17);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  if ((*(a3 + 2) & 0x80000000) == 0)
  {
    v18 = CFNumberCreate(v8, kCFNumberIntType, &v29);
    CFDictionarySetValue(Mutable, @"H", v18);
    if (v18)
    {
      CFRelease(v18);
    }
  }

  if ((*(a3 + 1) & 0x80000000) == 0)
  {
    v19 = CFNumberCreate(v8, kCFNumberIntType, a3 + 4);
    CFDictionarySetValue(Mutable, @"m", v19);
    if (v19)
    {
      CFRelease(v19);
    }
  }

  if ((*a3 & 0x80000000) == 0)
  {
    v20 = CFNumberCreate(v8, kCFNumberIntType, a3);
    CFDictionarySetValue(Mutable, @"s", v20);
    if (v20)
    {
      CFRelease(v20);
    }
  }

  return Mutable;
}

void sub_1C659B710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

__CFDictionary *QP::DateFormatter::copyEndComponentsForDate(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 24);
  v6 = *(*a2 + 56);
  v20[1] = *(*a2 + 40);
  v20[2] = v6;
  v21 = *(v4 + 72);
  v20[0] = v5;
  v7 = *(v4 + 96);
  v18[0] = *(v4 + 80);
  v18[1] = v7;
  v18[2] = *(v4 + 112);
  v19 = *(v4 + 128);
  v8 = *(v4 + 152);
  v16[0] = *(v4 + 136);
  v16[1] = v8;
  v16[2] = *(v4 + 168);
  v17 = *(v4 + 184);
  v9 = a1[1];
  v14 = *a1;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *a2;
  }

  QP::DateConverter::resolveDateComponentsAsRange(&v14, *(v4 + 16), *(v4 + 12), v20, v18, v16, 1);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  isEmpty = QP::DateComponents::isEmpty(v18);
  v11 = *a1;
  if (!isEmpty)
  {
    return QP::copyDateComponentsDictionary(*(v11 + 88), *(v11 + 80), v18, 0);
  }

  if (*(v11 + 8) != 10)
  {
    return 0;
  }

  result = 0;
  v13 = *(*a2 + 16);
  if (v13 <= 7 && ((1 << v13) & 0xC8) != 0)
  {
    return CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  return result;
}

void sub_1C659B89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *QP::DateFormatter::copyFreqComponentsForDate(uint64_t a1, uint64_t a2)
{
  if (QP::DateComponents::isEmpty((*a2 + 136)))
  {
    return 0;
  }

  v6 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v7 = (*a2 + 136);

  return QP::copyDateComponentsDictionary(v5, v6, v7, 1);
}

CFStringRef QP::DateFormatter::copyDisplayStringWithStartAndEndDateForRange(QP::DateFormatter *this, const __CFString *a2, CFDictionaryRef theDict, const __CFString *a4, const __CFDictionary *a5)
{
  v5 = 0;
  if (a2)
  {
    if (theDict)
    {
      v11 = CFDictionaryContainsKey(theDict, kQPParseAttributeValueDateTemporalModifierKey);
      v5 = 0;
      if (a5)
      {
        if (a4 && v11)
        {
          if (CFDictionaryContainsKey(a5, kQPParseAttributeValueDateTemporalModifierKey))
          {
            cf = 0;
            v30 = 0;
            Value = CFDictionaryGetValue(theDict, kQPParseAttributeValueDateTemporalModifierKey);
            v13 = CFDictionaryGetValue(a5, kQPParseAttributeValueDateTemporalModifierKey);
            valuePtr = 0;
            CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
            v27 = 0;
            CFNumberGetValue(v13, kCFNumberIntType, &v27);
            if (valuePtr == 3)
            {
              v14 = *this;
              BundleWithIdentifier = *(*this + 200);
              if (BundleWithIdentifier)
              {
                BundleWithIdentifier = CFBundleGetBundleWithIdentifier(BundleWithIdentifier);
                v14 = *this;
              }

              v16 = copyLocalizedString(BundleWithIdentifier, @"Dates", @"FROM_DATE", *(v14 + 144));
              if (v16)
              {
                Copy = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, v16, a2);
                v30 = Copy;
                CFRelease(v16);
              }

              else
              {
                Copy = 0;
              }
            }

            else
            {
              Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
              v30 = Copy;
            }

            if (v27 == 3)
            {
              v18 = *this;
              v19 = *(*this + 200);
              if (v19)
              {
                v19 = CFBundleGetBundleWithIdentifier(v19);
                v18 = *this;
              }

              v20 = copyLocalizedString(v19, @"Dates", @"TO_DATE", *(v18 + 144));
              if (v20)
              {
                v21 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, v20, a4);
                cf = v21;
                CFRelease(v20);
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              v21 = CFStringCreateCopy(*MEMORY[0x1E695E480], a4);
              cf = v21;
            }

            v22 = *this;
            v23 = *(*this + 200);
            if (v23)
            {
              v23 = CFBundleGetBundleWithIdentifier(v23);
              v22 = *this;
            }

            v24 = copyLocalizedString(v23, @"Dates", @"DATE1_DATE2", *(v22 + 144));
            v26 = v24;
            v5 = 0;
            if (v24)
            {
              if (!Copy || !v21 || (v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, v24, Copy, v21), (v24 = v26) != 0))
              {
                CFRelease(v24);
              }
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v30)
            {
              CFRelease(v30);
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v5;
}

void sub_1C659BBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va2, 0);
  _Unwind_Resume(a1);
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

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void QP::DateComponents::enumerate(unsigned int *a1, uint64_t a2)
{
  if ((a1[3] & 0x80000000) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "d");
    (*(a2 + 16))(a2, v31, a1[3]);
    if (v32 < 0)
    {
      operator delete(v31[0]);
    }
  }

  if ((a1[4] & 0x80000000) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v29, "MMMM");
    (*(a2 + 16))(a2, v29, a1[4]);
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  if ((a1[5] & 0x80000000) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v27, "y");
    (*(a2 + 16))(a2, v27, a1[5]);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }
  }

  if ((a1[2] & 0x80000000) == 0 || (a1[1] & 0x80000000) == 0 || (*a1 & 0x80000000) == 0)
  {
    if ((a1[7] & 0x80000000) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "H");
      (*(a2 + 16))(a2, __p, a1[2] & ~(a1[2] >> 31));
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v16, "m");
      (*(a2 + 16))(a2, v16, a1[1] & ~(a1[1] >> 31));
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      if ((*a1 & 0x80000000) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v15, "s");
        (*(a2 + 16))(a2, v15, *a1);
        if ((v15[23] & 0x80000000) != 0)
        {
          v6 = v15;
LABEL_34:
          operator delete(*v6);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "h");
      (*(a2 + 16))(a2, v25, a1[2] & ~(a1[2] >> 31));
      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v23, "m");
      (*(a2 + 16))(a2, v23, a1[1] & ~(a1[1] >> 31));
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if ((*a1 & 0x80000000) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v21, "s");
        (*(a2 + 16))(a2, v21, *a1);
        if (v22 < 0)
        {
          operator delete(v21[0]);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(v20, "a");
      v4 = a1[7];
      v5 = v4 > 8 || ((1 << v4) & 0x10A) == 0;
      (*(a2 + 16))(a2, v20, v5);
      if ((v20[23] & 0x80000000) != 0)
      {
        v6 = v20;
        goto LABEL_34;
      }
    }
  }

  if ((a1[8] & 0x80000000) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "EEEE");
    (*(a2 + 16))(a2, v13, a1[8]);
    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  if ((a1[11] & 0x80000000) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "w");
    (*(a2 + 16))(a2, v11, a1[11]);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  if ((a1[10] & 0x80000000) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "W");
    (*(a2 + 16))(a2, v9, a1[10]);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }

  if ((a1[12] & 0x80000000) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "Y");
    (*(a2 + 16))(a2, v7, a1[12]);
    if (v8 < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_1C659C0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK2QP14DateComponents25getShortFormatWithOptionsEbPd_block_invoke(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v15, "w");
  if (QP::equals(a2, v15))
  {
    v4 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "Y");
    if (QP::equals(a2, v13))
    {
      v4 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "F");
      v4 = !QP::equals(a2, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
    if (!v4)
    {
      return;
    }

LABEL_13:
    std::string::basic_string[abi:ne200100]<0>(v15, "h");
    if (QP::equals(a2, v15))
    {
      v5 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v13, "H");
      v5 = QP::equals(a2, v13);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
      if (v5)
      {
        goto LABEL_19;
      }
    }

    else if (v5)
    {
LABEL_19:
      v6 = "ha";
      v7 = (*(*(a1 + 32) + 8) + 40);
      v8 = 2;
LABEL_36:
      std::string::append(v7, v6, v8);
      return;
    }

    std::string::basic_string[abi:ne200100]<0>(v15, "y");
    if (!QP::equals(a2, v15))
    {
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }

      goto LABEL_29;
    }

    v9 = *(a1 + 40);
    if (v16 < 0)
    {
      operator delete(v15[0]);
      if (!v9)
      {
LABEL_29:
        v10 = *(a2 + 23);
        if (v10 >= 0)
        {
          v6 = a2;
        }

        else
        {
          v6 = *a2;
        }

        if (v10 >= 0)
        {
          v8 = *(a2 + 23);
        }

        else
        {
          v8 = *(a2 + 8);
        }

        v7 = (*(*(a1 + 32) + 8) + 40);
        goto LABEL_36;
      }
    }

    else if (!*(a1 + 40))
    {
      goto LABEL_29;
    }

    v6 = "GGGGyy";
    v7 = (*(*(a1 + 32) + 8) + 40);
    v8 = 6;
    goto LABEL_36;
  }

  if (v4)
  {
    goto LABEL_13;
  }
}

void sub_1C659C408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK2QP14DateComponents25getShortFormatWithOptionsEbPd_block_invoke_2(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "w");
  v4 = QP::equals(a2, __p);
  v5 = v4;
  if (v21 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    v6 = "d";
    v7 = (*(*(a1 + 32) + 8) + 40);
    v8 = 1;
LABEL_4:
    std::string::append(v7, v6, v8);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Y");
  v9 = QP::equals(a2, __p);
  v10 = v9;
  if (v21 < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
LABEL_9:
      v11 = *(*(a1 + 32) + 8);
      if (*(a1 + 40) == 1)
      {
        v6 = "MMMMGy";
        v7 = (v11 + 40);
        v8 = 6;
      }

      else
      {
        v6 = "MMMMy";
        v7 = (v11 + 40);
        v8 = 5;
      }

      goto LABEL_4;
    }
  }

  else if (v9)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "d");
  if (QP::equals(a2, __p))
  {
    v12 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "M");
    if (QP::equals(a2, v18))
    {
      v12 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "y");
      v12 = !QP::equals(a2, v16);
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "h");
    if (QP::equals(a2, __p))
    {
      v13 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v18, "H");
      v13 = QP::equals(a2, v18);
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = *(*(a1 + 32) + 8);
    if (v13)
    {
      v6 = "ha";
      v7 = (v14 + 40);
      v8 = 2;
    }

    else
    {
      v15 = *(a2 + 23);
      if (v15 >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      if (v15 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      v7 = (v14 + 40);
    }

    goto LABEL_4;
  }
}

void sub_1C659C6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E82664E8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
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

void nlp::CFScopedPtr<__CFNumber const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void std::__shared_ptr_emplace<QP::DatePeriod>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E80E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

void sub_1C659DE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C659E078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ecrClientLogger_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  v1 = os_log_create(v0, "QPECRClient");
  v2 = ecrClientLogger_log;
  ecrClientLogger_log = v1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t QP::Embedder::Embedder(uint64_t a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  startEmbeddingService();
  return a1;
}

void sub_1C659E53C(_Unwind_Exception *a1)
{
  v3 = v2;
  nlp::CFScopedPtr<__CFData const*>::reset(v3, 0);
  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void QP::Embedder::preheat(QP::Embedder *this)
{
  if (embeddingLogger(void)::token != -1)
  {
    QP::Embedder::preheat();
  }

  v2 = os_signpost_id_generate(embeddingLogger(void)::log);
  if (embeddingLogger(void)::token != -1)
  {
    QP::Embedder::preheat();
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = embeddingLogger(void)::log;
    if (os_signpost_enabled(embeddingLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Embedder::preheat", &unk_1C664887A, buf, 2u);
    }
  }

  if (*(*this + 37) == 1)
  {
    embeddingGeneratorPreheatSync();
  }

  else
  {
    embeddingGeneratorPreheatAsync();
  }

  if (embeddingLogger(void)::token != -1)
  {
    QP::Embedder::preheat();
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = embeddingLogger(void)::log;
    if (os_signpost_enabled(embeddingLogger(void)::log))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v4, OS_SIGNPOST_INTERVAL_END, v2, "Embedder::preheat", &unk_1C664887A, v5, 2u);
    }
  }
}

CFErrorRef QP::Embedder::copyEmbeddingError(QP::Embedder *this)
{
  userInfoKeys[1] = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  switch(v1)
  {
    case 4:
      v2 = *MEMORY[0x1E695E480];
      v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Embedding Error: Unable to generate embedding", 0);
      break;
    case 3:
      v2 = *MEMORY[0x1E695E480];
      v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Safety Error: Query is blocked by U2 Query Safety Model", 0);
      break;
    case 2:
      v2 = *MEMORY[0x1E695E480];
      v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Safety Error: Query is blocked for presence of sensitive or photo-sensitive term", 0);
      break;
    default:
LABEL_9:
      v6 = 0;
      goto LABEL_10;
  }

  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = *MEMORY[0x1E695E620];
  userInfoValues = v3;
  userInfoKeys[0] = v5;
  v6 = CFErrorCreateWithUserInfoKeysAndValues(v2, @"PhotoSearchSafetyDomainError", -8008, userInfoKeys, &userInfoValues, 1);
  CFRelease(v4);
LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1C659E850(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void QP::Embedder::setInputs(const void **this, const __CFArray *a2, const __CFArray *a3, const __CFDictionary *a4, const __CFBoolean *a5)
{
  nlp::CFScopedPtr<__CFData const*>::reset(this + 2, 0);
  this[3] = 0;
  *(this + 32) = 0;
  if (embeddingLogger(void)::token != -1)
  {
    QP::Embedder::preheat();
  }

  v10 = os_signpost_id_generate(embeddingLogger(void)::log);
  if (embeddingLogger(void)::token != -1)
  {
    QP::Embedder::preheat();
  }

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = embeddingLogger(void)::log;
    if (os_signpost_enabled(embeddingLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Embedder::setInputs", &unk_1C664887A, buf, 2u);
    }
  }

  cf = 0;
  v12 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "MD5", 0x8000100u);
  v13 = *this;
  if (*(*this + 38) == 1 && (v14 = v12, (v15 = *(v13 + 32)) != 0) && (v16 = CFStringCompare(v15, v14, 1uLL), v13 = *this, v16 == kCFCompareEqualTo))
  {
    v20 = copyEmbeddingDataForS3RTestID(*(v13 + 31));
    nlp::CFScopedPtr<__CFData const*>::reset(this + 2, v20);
  }

  else
  {
    v17 = copyEmbeddingDataForInputs(a2, a3, a4, a5, *(v13 + 24), v13[37], &cf);
    nlp::CFScopedPtr<__CFData const*>::reset(this + 2, v17);
    v18 = cf;
    if (cf)
    {
      this[3] = 4;
      CFRelease(v18);
    }
  }

  *(this + 32) = 1;
  if (embeddingLogger(void)::token != -1)
  {
    QP::Embedder::preheat();
  }

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = embeddingLogger(void)::log;
    if (os_signpost_enabled(embeddingLogger(void)::log))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v19, OS_SIGNPOST_INTERVAL_END, v10, "Embedder::setInputs", &unk_1C664887A, v21, 2u);
    }
  }
}

void QP::Embedder::clear(const void **this)
{
  nlp::CFScopedPtr<__CFData const*>::reset(this + 2, 0);
  this[3] = 0;
  *(this + 32) = 0;
}

void nlp::CFScopedPtr<__CFData const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

os_log_t ___ZL15embeddingLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "QueryParserEmbedding");
  embeddingLogger(void)::log = result;
  return result;
}

const __CFAttributedString *hasAttributes(const __CFAttributedString *result)
{
  if (result)
  {
    v1 = result;
    result = CFAttributedStringGetLength(result);
    if (result)
    {
      v2.location = 0;
      v2.length = result;
      result = CFAttributedStringGetAttributes(v1, 0, &v2);
      if (result)
      {
        return (CFDictionaryGetCount(result) > 0);
      }
    }
  }

  return result;
}

uint64_t languageSupportedForEmbedding(const __CFDictionary *a1, char *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!systemListenerIsSemanticSearchEnabled())
  {
    goto LABEL_81;
  }

  valuePtr = -1;
  if (!a1)
  {
    if (embeddingGenerationLogger(void)::token != -1)
    {
      languageSupportedForEmbedding_cold_8();
    }

    v6 = embeddingGenerationLogger(void)::log;
    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v41 = -1;
      _os_log_impl(&dword_1C6584000, v6, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] parse option information that includes both keyboard language and locale language is missing. Semantic search is not supported", buf, 0xCu);
    }

    goto LABEL_81;
  }

  if (CFDictionaryContainsKey(a1, @"queryID"))
  {
    Value = CFDictionaryGetValue(a1, @"queryID");
    CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
    if (valuePtr == -1)
    {
LABEL_81:
      v24 = 0;
      goto LABEL_87;
    }
  }

  if (CFDictionaryContainsKey(a1, @"keyboardLanguage"))
  {
    v5 = CFDictionaryGetValue(a1, @"keyboardLanguage");
  }

  else
  {
    v5 = 0;
  }

  if (CFDictionaryContainsKey(a1, @"localeLanguage"))
  {
    v7 = CFDictionaryGetValue(a1, @"localeLanguage");
  }

  else
  {
    v7 = 0;
  }

  if (![v5 length] && !objc_msgSend(v7, "length"))
  {
    if (embeddingGenerationLogger(void)::token != -1)
    {
      languageSupportedForEmbedding_cold_1();
    }

    v27 = embeddingGenerationLogger(void)::log;
    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v41 = valuePtr;
      _os_log_impl(&dword_1C6584000, v27, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Both keyboard language and locale are missing. Semantic search is not supported", buf, 0xCu);
    }

    goto LABEL_81;
  }

  if ([v5 length])
  {
    v8 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v5];

    v5 = v8;
  }

  if ([v7 length])
  {
    v9 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v7];

    v7 = v9;
  }

  if (a2)
  {
    if ([v5 hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"zh") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"ko") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"yue") & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"ja") & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"zh") & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"ko"))
    {
      v10 = 1;
    }

    else
    {
      v10 = [v7 hasPrefix:@"yue"];
    }

    *a2 = v10;
  }

  v11 = systemListenerGetSupportedSemanticLanguages();
  if ([v11 count])
  {
    if ([v5 length])
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v35 objects:v47 count:16];
      if (v13)
      {
        v14 = *v36;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(v12);
            }

            if ([v5 hasPrefix:*(*(&v35 + 1) + 8 * i)])
            {
              if (embeddingGenerationLogger(void)::token != -1)
              {
                languageSupportedForEmbedding_cold_1();
              }

              v26 = embeddingGenerationLogger(void)::log;
              if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
              {
                *buf = 134218242;
                v41 = valuePtr;
                v42 = 2112;
                v43 = v5;
                _os_log_impl(&dword_1C6584000, v26, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Semantic search is supported for keyboard language %@", buf, 0x16u);
              }

LABEL_85:
              v24 = 1;
              goto LABEL_86;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v35 objects:v47 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      if (embeddingGenerationLogger(void)::token != -1)
      {
        languageSupportedForEmbedding_cold_1();
      }

      v16 = embeddingGenerationLogger(void)::log;
      if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v41 = valuePtr;
        v42 = 2112;
        v43 = v5;
        _os_log_impl(&dword_1C6584000, v16, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Semantic search is not supported for keyboard language %@", buf, 0x16u);
      }
    }

    if ([v7 length])
    {
      if (embeddingGenerationLogger(void)::token != -1)
      {
        languageSupportedForEmbedding_cold_1();
      }

      v17 = embeddingGenerationLogger(void)::log;
      if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v41 = valuePtr;
        _os_log_impl(&dword_1C6584000, v17, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Keyboard language is missing or not supported. Relying on locale to determine if semantic search is supported", buf, 0xCu);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = v11;
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v46 count:16];
      if (v19)
      {
        v20 = *v32;
        while (2)
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v18);
            }

            if ([v7 hasPrefix:{*(*(&v31 + 1) + 8 * j), v31}])
            {
              v28 = embeddingGenerationLogger();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 134218242;
                v41 = valuePtr;
                v42 = 2112;
                v43 = v7;
                _os_log_impl(&dword_1C6584000, v28, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Semantic search is supported for locale %@", buf, 0x16u);
              }

              goto LABEL_85;
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v31 objects:v46 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      if (embeddingGenerationLogger(void)::token != -1)
      {
        languageSupportedForEmbedding_cold_1();
      }

      v22 = embeddingGenerationLogger(void)::log;
      if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v41 = valuePtr;
        v42 = 2112;
        v43 = v7;
        _os_log_impl(&dword_1C6584000, v22, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Semantic search is not supported for locale language %@", buf, 0x16u);
      }
    }

    if (embeddingGenerationLogger(void)::token != -1)
    {
      languageSupportedForEmbedding_cold_1();
    }

    v23 = embeddingGenerationLogger(void)::log;
    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v41 = valuePtr;
      v42 = 2112;
      v43 = v5;
      v44 = 2112;
      v45 = v7;
      _os_log_impl(&dword_1C6584000, v23, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Semantic search is not supported for this keyboard (%@) and locale languge (%@)", buf, 0x20u);
    }

    v24 = 0;
  }

  else
  {
    if (embeddingGenerationLogger(void)::token != -1)
    {
      languageSupportedForEmbedding_cold_1();
    }

    v25 = embeddingGenerationLogger(void)::log;
    v24 = 1;
    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v41 = valuePtr;
      _os_log_impl(&dword_1C6584000, v25, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Missing resources for supported languages, skipping language check", buf, 0xCu);
    }
  }

LABEL_86:

LABEL_87:
  v29 = *MEMORY[0x1E69E9840];
  return v24;
}

id embeddingGenerationLogger(void)
{
  if (embeddingGenerationLogger(void)::token != -1)
  {
    languageSupportedForEmbedding_cold_8();
  }

  v1 = embeddingGenerationLogger(void)::log;

  return v1;
}

void *copyEmbeddingDataForS3RTestID(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v1 stringByAppendingString:@"_emb"];
    v4 = [v2 stringForKey:v3];

    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v4 options:0];
    if (v5)
    {
      if (embeddingGenerationLogger(void)::token != -1)
      {
        languageSupportedForEmbedding_cold_8();
      }

      v6 = embeddingGenerationLogger(void)::log;
      if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v1;
        _os_log_impl(&dword_1C6584000, v6, OS_LOG_TYPE_INFO, "[QPNLU] Embedding loaded for testID:%@", &v10, 0xCu);
      }

      v7 = v5;
    }

    else
    {
      if (embeddingGenerationLogger(void)::token != -1)
      {
        languageSupportedForEmbedding_cold_8();
      }

      if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_ERROR))
      {
        copyEmbeddingDataForS3RTestID_cold_3();
      }
    }
  }

  else
  {
    if (embeddingGenerationLogger(void)::token != -1)
    {
      languageSupportedForEmbedding_cold_8();
    }

    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      copyEmbeddingDataForS3RTestID_cold_5();
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1C659F5F4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id copyEmbeddingDataForInputs(CFArrayRef theArray, const __CFArray *a2, CFDictionaryRef theDict, const __CFBoolean *a4, uint64_t a5, int a6, void *a7)
{
  v91 = *MEMORY[0x1E69E9840];
  valuePtr = -1;
  if (theDict && CFDictionaryContainsKey(theDict, @"queryID") && (v9 = CFDictionaryGetValue(theDict, @"queryID"), CFNumberGetValue(v9, kCFNumberCFIndexType, &valuePtr), valuePtr == -1))
  {
    if (embeddingGenerationLogger(void)::token != -1)
    {
      languageSupportedForEmbedding_cold_1();
    }

    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      copyEmbeddingDataForInputs_cold_2(&valuePtr);
    }
  }

  else if (theArray && a2)
  {
    Count = CFArrayGetCount(theArray);
    v11 = CFArrayGetCount(a2);
    v12 = v11;
    if (Count && v11 && Count == v11)
    {
      v74 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
      if (Count >= 1)
      {
        v13 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
          v15 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            if (embeddingGenerationLogger(void)::token != -1)
            {
              languageSupportedForEmbedding_cold_1();
            }

            v19 = embeddingGenerationLogger(void)::log;
            if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
            {
              *buf = 134218496;
              v86 = valuePtr;
              v87 = 2048;
              v88 = *&v13;
              v89 = 2048;
              v90 = Count;
              _os_log_impl(&dword_1C6584000, v19, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Skipping embedding generation for nil embedding input [%ld/%ld]", buf, 0x20u);
            }

            goto LABEL_32;
          }

          v16 = CFGetTypeID(ValueAtIndex);
          if (v16 == CFStringGetTypeID())
          {
            break;
          }

          v20 = CFGetTypeID(v15);
          if (v20 == CFAttributedStringGetTypeID())
          {
            if (hasAttributes(v15))
            {
              v18 = [objc_alloc(MEMORY[0x1E69D3DD8]) initWithAttributedString:v15];
              goto LABEL_29;
            }

            v17 = [v15 string];
            if (![v17 length])
            {
              if (embeddingGenerationLogger(void)::token != -1)
              {
                languageSupportedForEmbedding_cold_1();
              }

              v21 = embeddingGenerationLogger(void)::log;
              if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
              {
LABEL_26:
                *buf = 134218496;
                v86 = valuePtr;
                v87 = 2048;
                v88 = *&v13;
                v89 = 2048;
                v90 = Count;
                _os_log_impl(&dword_1C6584000, v21, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Skipping embedding generation for empty embedding input [%ld/%ld]", buf, 0x20u);
              }

LABEL_27:
              v18 = 0;
LABEL_28:

LABEL_29:
              if (v18)
              {
                [v74 addObject:v18];
              }

              goto LABEL_31;
            }

LABEL_14:
            v18 = [objc_alloc(MEMORY[0x1E69D3DD8]) initWithText:v17];
            goto LABEL_28;
          }

          v18 = 0;
LABEL_31:

LABEL_32:
          if (Count == ++v13)
          {
            goto LABEL_47;
          }
        }

        v17 = v15;
        if (![v17 length])
        {
          if (embeddingGenerationLogger(void)::token != -1)
          {
            languageSupportedForEmbedding_cold_1();
          }

          v21 = embeddingGenerationLogger(void)::log;
          if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
          {
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        goto LABEL_14;
      }

LABEL_47:
      if (![v74 count])
      {
        if (embeddingGenerationLogger(void)::token != -1)
        {
          languageSupportedForEmbedding_cold_1();
        }

        if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_ERROR))
        {
          copyEmbeddingDataForInputs_cold_19(&valuePtr);
        }

        v25 = 0;
        goto LABEL_138;
      }

      v80 = 0;
      if (theDict)
      {
        if (CFDictionaryContainsKey(theDict, @"extendedContext"))
        {
          Value = CFDictionaryGetValue(theDict, @"extendedContext");
          CFNumberGetValue(Value, kCFNumberCFIndexType, &v80);
        }

        v79 = 100;
        if ((a6 & 1) == 0)
        {
          if (CFDictionaryContainsKey(theDict, @"kMDQueryOptionEmbeddingGenerationTimeout"))
          {
            v24 = CFDictionaryGetValue(theDict, @"kMDQueryOptionEmbeddingGenerationTimeout");
            if (v24)
            {
              CFNumberGetValue(v24, kCFNumberCFIndexType, &v79);
            }
          }

LABEL_67:
          if (a4 && CFBooleanGetValue(a4))
          {
            v26 = [MEMORY[0x1E695E000] standardUserDefaults];
            v27 = [v26 valueForKey:@"UseCLIPSafetyModel"];

            if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v28 = [v27 BOOLValue];
              if (embeddingGenerationLogger(void)::token != -1)
              {
                languageSupportedForEmbedding_cold_1();
              }

              v29 = embeddingGenerationLogger(void)::log;
              if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
              {
                v30 = "FALSE";
                if (v28)
                {
                  v30 = "TRUE";
                }

                *buf = 136315138;
                v86 = v30;
                _os_log_impl(&dword_1C6584000, v29, OS_LOG_TYPE_INFO, "**Info** User Supplied value for Default UseCLIPSafetyModel : %s", buf, 0xCu);
              }
            }

            else
            {
              v28 = 1;
            }
          }

          else
          {
            v28 = 0;
          }

          v70 = dispatch_time(0, 0);
          v31 = [MEMORY[0x1E69D3DC8] sharedInstance];
          v78 = 0;
          v32 = [v31 generateEmbeddingForTextInputs:v74 extendedContextLength:v80 queryID:valuePtr clientBundleID:a5 timeout:v79 useCLIPSafety:v28 workCost:0 error:&v78];
          v73 = v78;

          if (v73)
          {
            *a7 = v73;
          }

          else
          {
            if ([v32 count] == Count)
            {
              BOOLeana = a2;
              theArrayb = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:Count];
              for (i = 0; i < [v32 count]; ++i)
              {
                v34 = [v32 objectAtIndexedSubscript:i];
                v35 = [v34 embeddingData];
                v36 = v35 == 0;

                if (v36)
                {
                  if (embeddingGenerationLogger(void)::token != -1)
                  {
                    languageSupportedForEmbedding_cold_1();
                  }

                  v55 = embeddingGenerationLogger(void)::log;
                  if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    v86 = valuePtr;
                    v87 = 2048;
                    v88 = *&i;
                  }
                }

                else
                {
                  v37 = [v34 elementType];
                  if (v37 == 2)
                  {
                    v38 = 0;
                  }

                  else
                  {
                    v38 = 3;
                  }

                  if (v37 == 1)
                  {
                    v39 = 1;
                  }

                  else
                  {
                    v39 = v38;
                  }

                  v40 = [v34 elementCount];
                  if (v40 == 768)
                  {
                    v41 = 2;
                  }

                  else
                  {
                    v41 = 3;
                  }

                  if (v40 == 512)
                  {
                    v41 = 1;
                  }

                  if (v40 == 256)
                  {
                    v42 = 0;
                  }

                  else
                  {
                    v42 = v41;
                  }

                  v43 = objc_alloc(MEMORY[0x1E6964EE0]);
                  v44 = [v34 version];
                  v45 = [v34 embeddingData];
                  v84 = v45;
                  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
                  v47 = [v43 initWithFormat:v39 dimension:v42 version:v44 vectors:v46];

                  v82[0] = @"vec_scale";
                  v48 = MEMORY[0x1E696AD98];
                  [v34 scale];
                  v49 = [v48 numberWithFloat:?];
                  v82[1] = @"vec_bias";
                  v83[0] = v49;
                  v50 = MEMORY[0x1E696AD98];
                  [v34 bias];
                  v51 = [v50 numberWithFloat:?];
                  v83[1] = v51;
                  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
                  [v47 setProperties:v52];

                  v53 = [v47 encodedData];
                  if (v53)
                  {
                    v54 = [(__CFBoolean *)BOOLeana objectAtIndexedSubscript:i];
                    [(__CFArray *)theArrayb setObject:v53 forKeyedSubscript:v54];
                  }

                  else
                  {
                    if (embeddingGenerationLogger(void)::token != -1)
                    {
                      languageSupportedForEmbedding_cold_1();
                    }

                    v56 = embeddingGenerationLogger(void)::log;
                    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134218240;
                      v86 = valuePtr;
                      v87 = 2048;
                      v88 = *&i;
                    }
                  }
                }
              }

              v77 = 0;
              v57 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:theArrayb requiringSecureCoding:1 error:&v77];
              v58 = v77;
              if (v58)
              {
                v59 = embeddingGenerationLogger();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  copyEmbeddingDataForInputs_cold_15(&valuePtr);
                }

                v25 = 0;
              }

              else
              {
                v60 = dispatch_time(0, 0);
                v61 = embeddingGenerationLogger();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                {
                  *buf = 134218240;
                  v86 = valuePtr;
                  v87 = 2048;
                  v88 = (v60 - v70) / 1000000.0;
                  _os_log_impl(&dword_1C6584000, v61, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Generated embedding data (time=%.6fms)", buf, 0x16u);
                }

                v25 = v57;
              }

              if (!v58)
              {
                goto LABEL_137;
              }

              goto LABEL_136;
            }

            if (!a7)
            {
              if ([v32 count] == Count)
              {
                if (embeddingGenerationLogger(void)::token != -1)
                {
                  languageSupportedForEmbedding_cold_1();
                }

                if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_ERROR))
                {
                  copyEmbeddingDataForInputs_cold_14(&valuePtr);
                }
              }

              else
              {
                if (embeddingGenerationLogger(void)::token != -1)
                {
                  languageSupportedForEmbedding_cold_1();
                }

                v62 = embeddingGenerationLogger(void)::log;
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  v65 = valuePtr;
                  v66 = [v32 count];
                  *buf = 134218496;
                  v86 = v65;
                  v87 = 2048;
                  v88 = *&v66;
                  v89 = 2048;
                  v90 = Count;
                  _os_log_error_impl(&dword_1C6584000, v62, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Embeddings count (%lu) does not match the inputs count (%lu)", buf, 0x20u);
                }
              }

              goto LABEL_136;
            }
          }

          if (embeddingGenerationLogger(void)::token != -1)
          {
            languageSupportedForEmbedding_cold_1();
          }

          if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_ERROR))
          {
            copyEmbeddingDataForInputs_cold_11(&valuePtr);
          }

LABEL_136:
          v25 = 0;
LABEL_137:

LABEL_138:
          goto LABEL_139;
        }
      }

      else
      {
        v79 = 100;
        if (!a6)
        {
          goto LABEL_67;
        }
      }

      v79 = 0;
      goto LABEL_67;
    }

    if (embeddingGenerationLogger(void)::token != -1)
    {
      languageSupportedForEmbedding_cold_1();
    }

    v22 = embeddingGenerationLogger(void)::log;
    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v86 = valuePtr;
      v87 = 2048;
      v88 = *&Count;
      v89 = 2048;
      v90 = v12;
      _os_log_error_impl(&dword_1C6584000, v22, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Received empty query embedding inputs (count=%ld) or keys (count=%ld); Not generating any query embeddings", buf, 0x20u);
    }
  }

  else
  {
    if (embeddingGenerationLogger(void)::token != -1)
    {
      languageSupportedForEmbedding_cold_1();
    }

    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      copyEmbeddingDataForInputs_cold_4(&valuePtr);
    }
  }

  v25 = 0;
LABEL_139:
  v63 = *MEMORY[0x1E69E9840];
  return v25;
}

void embeddingGeneratorPreheatAsync()
{
  v0 = dispatch_time(0, 0);
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v3[3] = 0;
  v1 = [MEMORY[0x1E69D3DC8] sharedInstance];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __embeddingGeneratorPreheatAsync_block_invoke;
  v2[3] = &unk_1E8266878;
  v2[4] = v3;
  v2[5] = v0;
  [v1 preheatWithCompletionHandler:v2];

  _Block_object_dispose(v3, 8);
}

void sub_1C65A0484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __embeddingGeneratorPreheatAsync_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = dispatch_time(0, 0);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a1 + 32;
  *(*(v5 + 8) + 24) = v4 - v6;
  if (v3)
  {
    if (embeddingGenerationLogger(void)::token != -1)
    {
      languageSupportedForEmbedding_cold_8();
    }

    v8 = embeddingGenerationLogger(void)::log;
    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      __embeddingGeneratorPreheatAsync_block_invoke_cold_2(v3, v7, v8);
    }
  }

  else
  {
    if (embeddingGenerationLogger(void)::token != -1)
    {
      languageSupportedForEmbedding_cold_8();
    }

    v9 = embeddingGenerationLogger(void)::log;
    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      v10 = *(*(*v7 + 8) + 24) / 1000000.0;
      v12 = 134217984;
      v13 = v10;
      _os_log_impl(&dword_1C6584000, v9, OS_LOG_TYPE_INFO, "[QPNLU] Embedding preheat succeeded (time=%.6fms)", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void embeddingGeneratorPreheatSync()
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = dispatch_time(0, 0);
  v1 = dispatch_group_create();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x2020000000;
  v13[2] = 0;
  dispatch_group_enter(v1);
  v2 = [MEMORY[0x1E69D3DC8] sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __embeddingGeneratorPreheatSync_block_invoke;
  v7[3] = &unk_1E82668A0;
  v9 = &v14;
  v10 = &v12;
  v11 = v0;
  v3 = v1;
  v8 = v3;
  [v2 preheatWithCompletionHandler:v7];

  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (v15[5])
  {
    if (embeddingGenerationLogger(void)::token != -1)
    {
      languageSupportedForEmbedding_cold_1();
    }

    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      embeddingGeneratorPreheatSync_cold_2(v13);
    }
  }

  else
  {
    if (embeddingGenerationLogger(void)::token != -1)
    {
      languageSupportedForEmbedding_cold_1();
    }

    v4 = embeddingGenerationLogger(void)::log;
    if (os_log_type_enabled(embeddingGenerationLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      v5 = *(v13[0] + 24) / 1000000.0;
      *buf = 134217984;
      v21 = v5;
      _os_log_impl(&dword_1C6584000, v4, OS_LOG_TYPE_INFO, "[QPNLU] Embedding preheat succeeded (time=time=%.6fms)", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v14, 8);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1C65A0830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
}

{
  std::__tree<std::string>::destroy(a1 + 40, *(a1 + 48));
}

void __embeddingGeneratorPreheatSync_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  *(*(*(a1 + 48) + 8) + 24) = dispatch_time(0, 0) - *(a1 + 56);
  dispatch_group_leave(*(a1 + 32));
}

void embeddingGeneratorCoolDown()
{
  v0 = [MEMORY[0x1E69D3DC8] sharedInstance];
  [v0 clear];

  v1 = [MEMORY[0x1E69D3DD0] sharedInstance];
  [v1 clear];
}

void embeddingGeneratorCancelWithQueryID(uint64_t a1)
{
  v2 = [MEMORY[0x1E69D3DC8] sharedInstance];
  [v2 cancelQueryID:a1];
}

uint64_t embeddingGenerationWarmedUp()
{
  v0 = [MEMORY[0x1E69D3DC8] sharedInstance];
  v1 = [v0 warmedUp];

  return v1;
}

void ___ZL25embeddingGenerationLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  v1 = os_log_create(v0, "QPEmbeddingGeneration");
  v2 = embeddingGenerationLogger(void)::log;
  embeddingGenerationLogger(void)::log = v1;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t *OUTLINED_FUNCTION_2@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void __entityResolutionPrefixCacheLogger_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  v1 = os_log_create(v0, "QPEntityResolutionPrefixCache");
  v2 = entityResolutionPrefixCacheLogger_log;
  entityResolutionPrefixCacheLogger_log = v1;
}

CFStringRef QP::copyActionComponentWithModifier(const __CFString *a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v8 = CFStringContainsString(a1, @"Extracted");
  if ((a3 - 5) > 3u)
  {
    v9 = @"_%@%@%@=%d";
  }

  else
  {
    v9 = off_1E8266930[(a3 - 5)];
  }

  if (v8)
  {
    v10 = @"[]";
  }

  else
  {
    v10 = &stru_1F45E9EA0;
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, v9, a1, a2, v10, a4);
}

void QP::enumerateQueryWithAction(__CFCalendar *a1, const __CFDate *a2, const __CFString *key, CFDictionaryRef theDict, int a5, unsigned int *a6, unsigned int *a7, uint64_t a8)
{
  if ((a5 - 5) > 3u)
  {
    v14 = @"=";
    if (theDict)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = off_1E8266950[(a5 - 5)];
    if (theDict)
    {
LABEL_3:
      v123 = CFDictionaryGetValue(theDict, key);
      goto LABEL_6;
    }
  }

  v123 = 0;
LABEL_6:
  if (CFStringContainsString(key, @"Extracted"))
  {
    v15 = @"[]";
  }

  else
  {
    v15 = &stru_1F45E9EA0;
  }

  v16 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v129 = Mutable;
  cf = 0;
  value = 0;
  if ((QP::DateComponents::isEmpty(a6) & 1) == 0)
  {
    if (QP::DateComponents::isEmpty(a7))
    {
      v121 = a5 & 0xFFFE;
      if (a5 == 5 || a5 == 8 || v121 == 6)
      {
        v18 = CFArrayCreateMutable(v16, 0, MEMORY[0x1E695E9C0]);
        v126 = v18;
        v19 = *(a6 + 9);
        v20 = a6[8];
        v21 = vmovn_s32(vcgezq_s32(v19));
        if ((vmaxv_u16(v21) & 1) == 0 && (v20 & 0x80000000) != 0)
        {
          if ((a6[3] & 0x80000000) != 0)
          {
            v100 = a6[4];
            v99 = a6[5];
            if ((v100 & 0x80000000) != 0)
            {
              if ((v99 & 0x80000000) == 0)
              {
                v110 = CFStringCreateWithFormat(v16, 0, @"_%@Year%@%@%d", key, v15, v14, v99);
                nlp::CFScopedPtr<__CFString const*>::reset(&value, v110);
                CFArrayAppendValue(Mutable, value);
              }

LABEL_236:
              if (v123)
              {
                CFArrayAppendValue(Mutable, v123);
              }

              v118 = CFStringCreateByCombiningStrings(v16, Mutable, @" || ");
              v125 = v118;
              if (CFArrayGetCount(Mutable) < 2)
              {
                v119 = CFStringCreateWithFormat(v16, 0, @"%@", v118);
                v120 = cf;
                if (!cf)
                {
                  goto LABEL_243;
                }
              }

              else
              {
                v119 = CFStringCreateWithFormat(v16, 0, @"(%@)", v118);
                v120 = cf;
                if (!cf)
                {
                  goto LABEL_243;
                }
              }

              CFRelease(v120);
LABEL_243:
              cf = v119;
              (*(a8 + 16))(a8, v119);
              if (v118)
              {
                CFRelease(v118);
              }

LABEL_245:
              if (v18)
              {
                CFRelease(v18);
              }

              goto LABEL_247;
            }

            if ((v99 & 0x80000000) == 0)
            {
              if (a5 == 5 || a5 == 8)
              {
                v102 = CFStringCreateWithFormat(v16, 0, @"_%@Year%@<%d", key, v15, v99);
              }

              else
              {
                v102 = CFStringCreateWithFormat(v16, 0, @"_%@Year%@>%d", key, v15, v99);
              }

              nlp::CFScopedPtr<__CFString const*>::reset(&value, v102);
              CFArrayAppendValue(Mutable, value);
              v100 = a6[4];
            }

            v103 = CFStringCreateWithFormat(v16, 0, @"_%@Month%@%@%d", key, v15, v14, v100);
            nlp::CFScopedPtr<__CFString const*>::reset(&value, v103);
            CFArrayAppendValue(v18, value);
            v104 = a6[5];
            if ((v104 & 0x80000000) == 0)
            {
              v105 = CFStringCreateWithFormat(v16, 0, @"_%@Year%@=%d", key, v15, v104);
              nlp::CFScopedPtr<__CFString const*>::reset(&value, v105);
              CFArrayAppendValue(v18, value);
            }

            v125 = CFStringCreateByCombiningStrings(v16, v18, @" && ");
            if (CFArrayGetCount(v18) > 1)
            {
              goto LABEL_233;
            }

            goto LABEL_234;
          }

          AbsoluteTime = QP::DateComponents::getAbsoluteTime(a6, a1, a2);
          RangeOfUnit = CFCalendarGetRangeOfUnit(a1, 0x10uLL, 8uLL, AbsoluteTime);
          v24 = a6[3];
          v26 = a5 == 5 && RangeOfUnit.location == v24;
          v27 = RangeOfUnit.length == v24 && a5 == 6;
          if (v27 || v26)
          {
            v109 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@Day%@,%ld,%ld)", key, v15, RangeOfUnit.location, RangeOfUnit.length);
            nlp::CFScopedPtr<__CFString const*>::reset(&value, v109);
            CFArrayAppendValue(Mutable, value);
            goto LABEL_236;
          }

          v28 = CFStringCreateWithFormat(v16, 0, @"_%@Day%@%@%d", key, v15, v14, v24);
          nlp::CFScopedPtr<__CFString const*>::reset(&value, v28);
          CFArrayAppendValue(v18, value);
          v29 = a6[5];
          if ((v29 & 0x80000000) == 0)
          {
            v30 = CFStringCreateWithFormat(v16, 0, @"_%@Year%@=%d", key, v15, v29);
            nlp::CFScopedPtr<__CFString const*>::reset(&value, v30);
            CFArrayAppendValue(v18, value);
            v31 = a6[4];
            if ((v31 & 0x80000000) == 0)
            {
              v32 = CFStringCreateWithFormat(v16, 0, @"_%@Month%@=%d", key, v15, v31);
              nlp::CFScopedPtr<__CFString const*>::reset(&value, v32);
              CFArrayAppendValue(v18, value);
            }

LABEL_232:
            v125 = CFStringCreateByCombiningStrings(v16, v18, @" && ");
            if (CFArrayGetCount(v18) > 1)
            {
LABEL_233:
              v117 = CFStringCreateWithFormat(v16, 0, @"(%@)", v125);
LABEL_235:
              nlp::CFScopedPtr<__CFString const*>::reset(&cf, v117);
              CFArrayAppendValue(Mutable, cf);
              nlp::CFScopedPtr<__CFString const*>::reset(&v125, 0);
              goto LABEL_236;
            }

LABEL_234:
            v117 = CFStringCreateWithFormat(v16, 0, @"%@", v125);
            goto LABEL_235;
          }

          v111 = a6[4];
          if ((v111 & 0x80000000) != 0)
          {
            goto LABEL_232;
          }

          v112 = CFStringCreateWithFormat(v16, 0, @"_%@Month%@=%d", key, v15, v111);
          nlp::CFScopedPtr<__CFString const*>::reset(&value, v112);
          CFArrayAppendValue(v18, value);
          v113 = QP::DateComponents::getAbsoluteTime(a6, a1, a2);
          v114 = CFCalendarGetRangeOfUnit(a1, 8uLL, 4uLL, v113);
          if ((a5 == 8 || a5 == 5) && (v115 = a6[4] - 1, v114.location <= v115))
          {
            if (v114.location != v115)
            {
              v116 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@Month%@,%ld,%d)", key, v15, v114.location, v115);
              goto LABEL_230;
            }
          }

          else
          {
            if (v121 != 6)
            {
              goto LABEL_231;
            }

            v115 = a6[4] + 1;
            if (v114.length < v115)
            {
              goto LABEL_231;
            }

            if (v114.length != v115)
            {
              v116 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@Month%@,%d,%ld)", key, v15, a6[4] + 1, v114.length);
LABEL_230:
              nlp::CFScopedPtr<__CFString const*>::reset(&value, v116);
LABEL_231:
              CFArrayAppendValue(Mutable, value);
              goto LABEL_232;
            }
          }

          v116 = CFStringCreateWithFormat(v16, 0, @"_%@Month%@=%d", key, v15, v115);
          goto LABEL_230;
        }

        if ((v20 & 0x80000000) != 0)
        {
          if (v21.i8[6])
          {
            value = CFStringCreateWithFormat(v16, 0, @"_%@Year%@%@%d", key, v15, v14, v19.u32[3]);
            CFArrayAppendValue(v18, value);
          }

          goto LABEL_245;
        }

        v78 = QP::DateComponents::getAbsoluteTime(a6, a1, a2);
        v79 = CFCalendarGetRangeOfUnit(a1, 0x200uLL, 0x2000uLL, v78);
        v80 = a6[8];
        v82 = a5 == 5 && v79.location == v80;
        v83 = v79.length == v80 && a5 == 6;
        if (v83 || v82)
        {
          value = CFStringCreateWithFormat(v16, 0, @"InRange(_%@%@Weekday,%ld,%ld)", key, v15, v79.location, v79.length);
          CFArrayAppendValue(Mutable, value);
        }

        else
        {
          value = CFStringCreateWithFormat(v16, 0, @"_%@Weekday%@%@%d", key, v15, v14, v80);
          CFArrayAppendValue(v18, value);
          v84 = a6[11];
          if ((v84 & 0x80000000) == 0)
          {
            v85 = CFStringCreateWithFormat(v16, 0, @"_%@WeekOfYear%@=%d", key, v15, v84);
            nlp::CFScopedPtr<__CFString const*>::reset(&value, v85);
            CFArrayAppendValue(v18, value);
          }

          v86 = a6[12];
          if ((v86 & 0x80000000) == 0)
          {
            v87 = CFStringCreateWithFormat(v16, 0, @"_%@Year%@=%d", key, v15, v86);
            nlp::CFScopedPtr<__CFString const*>::reset(&value, v87);
            CFArrayAppendValue(v18, value);
          }

          v88 = CFStringCreateByCombiningStrings(v16, v18, @" && ");
          v125 = v88;
          if (CFArrayGetCount(v18) <= 1)
          {
            v89 = CFStringCreateWithFormat(v16, 0, @"%@", v88);
          }

          else
          {
            v89 = CFStringCreateWithFormat(v16, 0, @"(%@)", v88);
          }

          nlp::CFScopedPtr<__CFString const*>::reset(&cf, v89);
          CFArrayAppendValue(Mutable, cf);
          v90 = a6[11];
          if ((v90 & 0x80000000) == 0)
          {
            if (a5 == 5 || a5 == 8)
            {
              v92 = @"_%@Year%@<%d";
              v93 = CFStringCreateWithFormat(v16, 0, @"_%@Year%@<%d", key, v15, v90);
            }

            else
            {
              v92 = @"_%@Year%@>%d";
              v93 = CFStringCreateWithFormat(v16, 0, @"_%@Year%@>%d", key, v15, v90);
            }

            nlp::CFScopedPtr<__CFString const*>::reset(&value, v93);
            CFArrayAppendValue(v18, value);
            if ((a6[12] & 0x80000000) == 0)
            {
              v94 = CFStringCreateWithFormat(v16, 0, v92, key, v15, a6[11]);
              nlp::CFScopedPtr<__CFString const*>::reset(&value, v94);
              CFArrayAppendValue(v18, value);
            }

            v124 = CFStringCreateByCombiningStrings(v16, v18, @" && ");
            if (CFArrayGetCount(v18) <= 1)
            {
              v95 = CFStringCreateWithFormat(v16, 0, @"%@", v124);
            }

            else
            {
              v95 = CFStringCreateWithFormat(v16, 0, @"(%@)", v124);
            }

            nlp::CFScopedPtr<__CFString const*>::reset(&cf, v95);
            CFArrayAppendValue(Mutable, cf);
            nlp::CFScopedPtr<__CFString const*>::reset(&v124, 0);
          }

          if ((a6[12] & 0x80000000) == 0)
          {
            if (a5 == 5 || a5 == 8)
            {
              v97 = CFStringCreateWithFormat(v16, 0, @"_%@Year%@<%d", key, v15, a6[11]);
            }

            else
            {
              v97 = CFStringCreateWithFormat(v16, 0, @"_%@Year%@>%d", key, v15, a6[11]);
            }

            nlp::CFScopedPtr<__CFString const*>::reset(&value, v97);
            CFArrayAppendValue(v18, value);
            v124 = 0;
            v124 = CFStringCreateByCombiningStrings(v16, v18, @" && ");
            if (CFArrayGetCount(v18) <= 1)
            {
              v98 = CFStringCreateWithFormat(v16, 0, @"%@", v124);
            }

            else
            {
              v98 = CFStringCreateWithFormat(v16, 0, @"(%@)", v124);
            }

            nlp::CFScopedPtr<__CFString const*>::reset(&cf, v98);
            CFArrayAppendValue(Mutable, cf);
            nlp::CFScopedPtr<__CFString const*>::reset(&v124, 0);
          }

          if (v88)
          {
            CFRelease(v88);
          }
        }

        if (v123)
        {
          CFArrayAppendValue(Mutable, v123);
        }

        v106 = CFStringCreateByCombiningStrings(v16, Mutable, @" && ");
        v125 = v106;
        if (CFArrayGetCount(Mutable) < 2)
        {
          v107 = CFStringCreateWithFormat(v16, 0, @"%@", v106);
          v108 = cf;
          if (!cf)
          {
            goto LABEL_214;
          }
        }

        else
        {
          v107 = CFStringCreateWithFormat(v16, 0, @"(%@)", v106);
          v108 = cf;
          if (!cf)
          {
            goto LABEL_214;
          }
        }

        CFRelease(v108);
LABEL_214:
        cf = v107;
        (*(a8 + 16))(a8, v107);
        if (v106)
        {
          CFRelease(v106);
        }

        goto LABEL_245;
      }
    }
  }

  v33 = *a6;
  v34 = *a7;
  if ((v33 & 0x80000000) != 0)
  {
    if ((v34 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    v35 = QP::copyActionComponentWithModifier(key, @"Second", a5, *a7);
  }

  else if ((v34 & 0x80000000) != 0)
  {
    v35 = QP::copyActionComponentWithModifier(key, @"Second", a5, v33);
  }

  else
  {
    v35 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@%@%@, %d, %d)", key, @"Second", v15, *a6, v34);
  }

  value = v35;
  CFArrayAppendValue(Mutable, v35);
LABEL_38:
  v36 = a6[1];
  v37 = a7[1];
  if ((v36 & 0x80000000) != 0)
  {
    if ((v37 & 0x80000000) != 0)
    {
      goto LABEL_48;
    }

    v38 = QP::copyActionComponentWithModifier(key, @"Minute", a5, a7[1]);
    v39 = value;
    if (value)
    {
      goto LABEL_46;
    }
  }

  else if ((v37 & 0x80000000) != 0)
  {
    v38 = QP::copyActionComponentWithModifier(key, @"Minute", a5, v36);
    v39 = value;
    if (value)
    {
LABEL_46:
      CFRelease(v39);
    }
  }

  else
  {
    v38 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@%@%@, %d, %d)", key, @"Minute", v15, a6[1], v37);
    v39 = value;
    if (value)
    {
      goto LABEL_46;
    }
  }

  value = v38;
  CFArrayAppendValue(Mutable, v38);
LABEL_48:
  v40 = a6[2];
  v41 = a7[2];
  if ((v40 & 0x80000000) != 0)
  {
    if ((v41 & 0x80000000) != 0)
    {
      goto LABEL_58;
    }

    v42 = QP::copyActionComponentWithModifier(key, @"Hour", a5, a7[2]);
    v43 = value;
    if (value)
    {
      goto LABEL_56;
    }
  }

  else if ((v41 & 0x80000000) != 0)
  {
    v42 = QP::copyActionComponentWithModifier(key, @"Hour", a5, v40);
    v43 = value;
    if (value)
    {
LABEL_56:
      CFRelease(v43);
    }
  }

  else
  {
    v42 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@%@%@, %d, %d)", key, @"Hour", v15, a6[2], v41);
    v43 = value;
    if (value)
    {
      goto LABEL_56;
    }
  }

  value = v42;
  CFArrayAppendValue(Mutable, v42);
LABEL_58:
  v44 = a6[3];
  v45 = a7[3];
  if ((v44 & 0x80000000) != 0)
  {
    if ((v45 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v46 = QP::copyActionComponentWithModifier(key, @"Day", a5, a7[3]);
    v47 = value;
    if (value)
    {
      goto LABEL_66;
    }
  }

  else if ((v45 & 0x80000000) != 0)
  {
    v46 = QP::copyActionComponentWithModifier(key, @"Day", a5, v44);
    v47 = value;
    if (value)
    {
LABEL_66:
      CFRelease(v47);
    }
  }

  else
  {
    v46 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@%@%@, %d, %d)", key, @"Day", v15, a6[3], v45);
    v47 = value;
    if (value)
    {
      goto LABEL_66;
    }
  }

  value = v46;
  CFArrayAppendValue(Mutable, v46);
LABEL_68:
  v48 = a6[4];
  v49 = a7[4];
  if ((v48 & 0x80000000) != 0)
  {
    if ((v49 & 0x80000000) != 0)
    {
      goto LABEL_78;
    }

    v50 = QP::copyActionComponentWithModifier(key, @"Month", a5, a7[4]);
    v51 = value;
    if (value)
    {
      goto LABEL_76;
    }
  }

  else if ((v49 & 0x80000000) != 0)
  {
    v50 = QP::copyActionComponentWithModifier(key, @"Month", a5, v48);
    v51 = value;
    if (value)
    {
LABEL_76:
      CFRelease(v51);
    }
  }

  else
  {
    v50 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@%@%@, %d, %d)", key, @"Month", v15, a6[4], v49);
    v51 = value;
    if (value)
    {
      goto LABEL_76;
    }
  }

  value = v50;
  CFArrayAppendValue(Mutable, v50);
LABEL_78:
  v52 = a6[5];
  v53 = a7[5];
  if ((v52 & 0x80000000) != 0)
  {
    if ((v53 & 0x80000000) != 0)
    {
      goto LABEL_88;
    }

    v54 = QP::copyActionComponentWithModifier(key, @"Year", a5, a7[5]);
    v55 = value;
    if (value)
    {
      goto LABEL_86;
    }
  }

  else if ((v53 & 0x80000000) != 0)
  {
    v54 = QP::copyActionComponentWithModifier(key, @"Year", a5, v52);
    v55 = value;
    if (value)
    {
LABEL_86:
      CFRelease(v55);
    }
  }

  else
  {
    v54 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@%@%@, %d, %d)", key, @"Year", v15, a6[5], v53);
    v55 = value;
    if (value)
    {
      goto LABEL_86;
    }
  }

  value = v54;
  CFArrayAppendValue(Mutable, v54);
LABEL_88:
  v56 = a6[8];
  v57 = a7[8];
  if ((v56 & 0x80000000) != 0)
  {
    if ((v57 & 0x80000000) != 0)
    {
      goto LABEL_98;
    }

    v58 = QP::copyActionComponentWithModifier(key, @"Weekday", a5, a7[8]);
    v59 = value;
    if (value)
    {
      goto LABEL_96;
    }
  }

  else if ((v57 & 0x80000000) != 0)
  {
    v58 = QP::copyActionComponentWithModifier(key, @"Weekday", a5, v56);
    v59 = value;
    if (value)
    {
LABEL_96:
      CFRelease(v59);
    }
  }

  else
  {
    v58 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@%@%@, %d, %d)", key, @"Weekday", v15, a6[8], v57);
    v59 = value;
    if (value)
    {
      goto LABEL_96;
    }
  }

  value = v58;
  CFArrayAppendValue(Mutable, v58);
LABEL_98:
  v60 = a6[10];
  v61 = a7[10];
  if ((v60 & 0x80000000) != 0)
  {
    if ((v61 & 0x80000000) != 0)
    {
      goto LABEL_108;
    }

    v62 = QP::copyActionComponentWithModifier(key, @"WeekOfMonth", a5, a7[10]);
    v63 = value;
    if (value)
    {
      goto LABEL_106;
    }
  }

  else if ((v61 & 0x80000000) != 0)
  {
    v62 = QP::copyActionComponentWithModifier(key, @"WeekOfMonth", a5, v60);
    v63 = value;
    if (value)
    {
LABEL_106:
      CFRelease(v63);
    }
  }

  else
  {
    v62 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@%@%@, %d, %d)", key, @"WeekOfMonth", v15, a6[10], v61);
    v63 = value;
    if (value)
    {
      goto LABEL_106;
    }
  }

  value = v62;
  CFArrayAppendValue(Mutable, v62);
LABEL_108:
  v64 = a6[11];
  v65 = a7[11];
  if ((v64 & 0x80000000) != 0)
  {
    if ((v65 & 0x80000000) != 0)
    {
      goto LABEL_118;
    }

    v66 = QP::copyActionComponentWithModifier(key, @"WeekOfYear", a5, a7[11]);
    v67 = value;
    if (value)
    {
      goto LABEL_116;
    }
  }

  else if ((v65 & 0x80000000) != 0)
  {
    v66 = QP::copyActionComponentWithModifier(key, @"WeekOfYear", a5, v64);
    v67 = value;
    if (value)
    {
LABEL_116:
      CFRelease(v67);
    }
  }

  else
  {
    v66 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@%@%@, %d, %d)", key, @"WeekOfYear", v15, a6[11], v65);
    v67 = value;
    if (value)
    {
      goto LABEL_116;
    }
  }

  value = v66;
  CFArrayAppendValue(Mutable, v66);
LABEL_118:
  v68 = a6[12];
  v69 = a7[12];
  if ((v68 & 0x80000000) != 0)
  {
    if ((v69 & 0x80000000) != 0)
    {
      goto LABEL_128;
    }

    v70 = QP::copyActionComponentWithModifier(key, @"Year", a5, a7[12]);
    v71 = value;
    if (value)
    {
      goto LABEL_126;
    }
  }

  else if ((v69 & 0x80000000) != 0)
  {
    v70 = QP::copyActionComponentWithModifier(key, @"Year", a5, v68);
    v71 = value;
    if (value)
    {
LABEL_126:
      CFRelease(v71);
    }
  }

  else
  {
    v70 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@%@%@, %d, %d)", key, @"Year", v15, a6[12], v69);
    v71 = value;
    if (value)
    {
      goto LABEL_126;
    }
  }

  value = v70;
  CFArrayAppendValue(Mutable, v70);
LABEL_128:
  v72 = a6[9];
  v73 = a7[9];
  if ((v72 & 0x80000000) == 0)
  {
    if ((v73 & 0x80000000) != 0)
    {
      v74 = QP::copyActionComponentWithModifier(key, @"WeekdayOrdinal", a5, v72);
      v75 = value;
      if (value)
      {
LABEL_136:
        CFRelease(v75);
      }
    }

    else
    {
      v74 = CFStringCreateWithFormat(v16, 0, @"InRange(_%@%@%@, %d, %d)", key, @"WeekdayOrdinal", v15, a6[9], v73);
      v75 = value;
      if (value)
      {
        goto LABEL_136;
      }
    }

LABEL_137:
    value = v74;
    CFArrayAppendValue(Mutable, v74);
    goto LABEL_138;
  }

  if ((v73 & 0x80000000) == 0)
  {
    v74 = QP::copyActionComponentWithModifier(key, @"WeekdayOrdinal", a5, a7[9]);
    v75 = value;
    if (value)
    {
      goto LABEL_136;
    }

    goto LABEL_137;
  }

LABEL_138:
  if (v123)
  {
    CFArrayAppendValue(Mutable, v123);
  }

  v76 = CFStringCreateByCombiningStrings(v16, Mutable, @" && ");
  v126 = v76;
  if (CFArrayGetCount(Mutable) < 2)
  {
    v77 = CFStringCreateWithFormat(v16, 0, @"%@", v76);
  }

  else
  {
    v77 = CFStringCreateWithFormat(v16, 0, @"(%@)", v76);
  }

  cf = v77;
  (*(a8 + 16))(a8, v77);
  if (v76)
  {
    CFRelease(v76);
  }

LABEL_247:
  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v129)
  {
    CFRelease(v129);
  }
}

void sub_1C65A2208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va3, a10);
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v14 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v16 = va_arg(va3, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(va1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va2, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va3, 0);
  nlp::CFScopedPtr<__CFArray *>::reset((v10 - 88), 0);
  _Unwind_Resume(a1);
}

void QP::Formatter::loadFormatterResource(QP::DateFormatter **this, const __CFURL *a2)
{
  if (formatterLogger(void)::token != -1)
  {
    QP::Formatter::loadFormatterResource();
  }

  v4 = os_signpost_id_generate(formatterLogger(void)::log);
  if (formatterLogger(void)::token != -1)
  {
    QP::Formatter::loadFormatterResource();
  }

  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = formatterLogger(void)::log;
    if (os_signpost_enabled(formatterLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Formatter::loadFormatterResource", &unk_1C664887A, buf, 2u);
    }
  }

  QP::DateFormatter::loadDateFormatterResource(this[5], a2);
  if (formatterLogger(void)::token != -1)
  {
    QP::Formatter::loadFormatterResource();
  }

  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = formatterLogger(void)::log;
    if (os_signpost_enabled(formatterLogger(void)::log))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v6, OS_SIGNPOST_INTERVAL_END, v4, "Formatter::loadFormatterResource", &unk_1C664887A, v7, 2u);
    }
  }
}

void QP::Formatter::clearResources(QP::Formatter *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    QP::DateFormatter::clearResources(v1);
  }
}

void QP::Formatter::update(QP::Formatter *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    QP::DateFormatter::update(v1);
  }
}

void QP::Formatter::clear(const void **this)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  nlp::CFScopedPtr<__CFDictionary *>::reset(this + 7, Mutable);
  v6 = CFDictionaryCreateMutable(v2, 0, v3, v4);
  nlp::CFScopedPtr<__CFDictionary *>::reset(this + 8, v6);
  v7 = CFAttributedStringCreateMutable(v2, 0);
  nlp::CFScopedPtr<__CFAttributedString *>::reset(this + 9, v7);
  v8 = this[7];
  if (v8)
  {
    v9 = this[9];
    if (v9)
    {
      CFDictionarySetValue(v8, kQPParseResultAttributedParseKey, v9);
    }
  }

  this[10] = 0;
}

void nlp::CFScopedPtr<__CFDictionary *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFAttributedString *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void QP::Formatter::setParseAttribute(QP::Formatter *this, const __CFString *a2, const void *a3, CFRange a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*(*(this + 1) + 22) & 1) != 0 || !a3 || !a2 || (v8 = *(this + 9)) == 0)
  {
LABEL_2:
    v4 = *MEMORY[0x1E69E9840];
    return;
  }

  length = a4.length;
  location = a4.location;
  v11 = CFAttributedStringGetLength(v8);
  if (location == -1 || length < 0 || location < 0 || v11 < location || length > v11 - location)
  {
    if (formatterLogger(void)::token != -1)
    {
      QP::Formatter::loadFormatterResource();
    }

    v15 = formatterLogger(void)::log;
    if (os_log_type_enabled(formatterLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218240;
      v17 = location;
      v18 = 2048;
      v19 = length;
      _os_log_impl(&dword_1C6584000, v15, OS_LOG_TYPE_DEFAULT, "invalid parse attribute range (%ld,%ld)", &v16, 0x16u);
    }

    goto LABEL_2;
  }

  v12 = *(this + 9);
  v13 = *MEMORY[0x1E69E9840];
  v14.location = location;
  v14.length = length;

  CFAttributedStringSetAttribute(v12, v14, a2, a3);
}

void QP::Formatter::removeParseAttribute(QP::Formatter *this, CFStringRef attrName, CFRange range)
{
  if (attrName)
  {
    v3 = *(this + 9);
    if (v3)
    {
      CFAttributedStringRemoveAttribute(v3, range, attrName);
    }
  }
}

CFTypeRef QP::Formatter::getParseAttribute(QP::Formatter *this, CFStringRef attrName, CFRange a3)
{
  v3 = 0;
  if (attrName)
  {
    v4 = *(this + 9);
    if (v4)
    {
      length = a3.length;
      location = a3.location;
      v10.location = 0;
      v10.length = 0;
      Attribute = CFAttributedStringGetAttribute(v4, a3.location, attrName, &v10);
      if (length == v10.length && location == v10.location)
      {
        return Attribute;
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

void QP::Formatter::setDefaultParse(uint64_t a1, const __CFString ***a2)
{
  QP::Formatter::clear(a1);
  v4 = &stru_1F45E9EA0;
  if (*a2 && **a2)
  {
    v4 = **a2;
  }

  v5 = *(a1 + 72);
  v11.length = CFAttributedStringGetLength(v5);
  v11.location = 0;
  CFAttributedStringReplaceString(v5, v11, v4);
  v6 = *a2;
  if (*a2)
  {
    v6 = v6[6];
  }

  valuePtr = v6;
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  if (v7)
  {
    v8 = v7;
    if (kQPParseResultTokenCountKey)
    {
      v9 = *(a1 + 56);
      if (v9)
      {
        CFDictionarySetValue(v9, kQPParseResultTokenCountKey, v8);
      }
    }

    CFRelease(v8);
  }
}

void QP::Formatter::setResultValue(QP::Formatter *this, const __CFString *a2, const void *a3)
{
  if (a2 && a3)
  {
    v3 = *(this + 7);
    if (v3)
    {
      CFDictionarySetValue(v3, a2, a3);
    }
  }
}

void QP::Formatter::updateParseWithAnyAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  if ((*(*a3 + 73) & 1) == 0)
  {
    if (QP::ParseAttribute::flag(v6) == 1 || QP::ParseAttribute::flag(*a3) == 2 || QP::ParseAttribute::flag(*a3) == 3 || QP::ParseAttribute::flag(*a3) == 4)
    {
      v9 = *(a3 + 8);
      v12 = *a3;
      v13 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*a1 + 64))(a1, a2, &v12);
      v8 = v13;
      if (v13)
      {
        goto LABEL_5;
      }

      return;
    }

    v6 = *a3;
  }

  v7 = *(a3 + 8);
  v10 = v6;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 72))(a1, a2, &v10);
  v8 = v11;
  if (v11)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1C65A2A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParseAttribute::flag(QP::ParseAttribute *this)
{
  v2 = *(this + 23);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 22);
  if (v4)
  {
    v5 = *(v4 + 88);
  }

  else
  {
    v5 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v5;
}

uint64_t QP::Formatter::setParse(uint64_t a1, uint64_t a2)
{
  QP::Formatter::clear(a1);
  v4 = &stru_1F45E9EA0;
  if (*a2 && **a2)
  {
    v4 = **a2;
  }

  v5 = *(a1 + 72);
  v19.length = CFAttributedStringGetLength(v5);
  v19.location = 0;
  CFAttributedStringReplaceString(v5, v19, v4);
  if (*(*a2 + 81))
  {
    return 1;
  }

  valuePtr = *(*a2 + 48);
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  v17 = v7;
  if (v7)
  {
    if (kQPParseResultTokenCountKey)
    {
      v8 = *(a1 + 56);
      if (v8)
      {
        CFDictionarySetValue(v8, kQPParseResultTokenCountKey, v7);
      }
    }
  }

  v9 = *(a2 + 8);
  v15 = *a2;
  v16 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*a1 + 16))(a1, &v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v6)
  {
    v10 = *a2;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1174405120;
    v13[2] = ___ZN2QP9Formatter8setParseENSt3__110shared_ptrINS_5ParseEEE_block_invoke;
    v13[3] = &__block_descriptor_tmp_16;
    v13[4] = a1;
    v13[5] = v10;
    v11 = *(a2 + 8);
    v14 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QP::Parse::enumerateParseAttributes(v10, v13);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v6;
}

void ___ZN2QP9Formatter8setParseENSt3__110shared_ptrINS_5ParseEEE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v5 = **(a1 + 40);
  v7 = *a2;
  v6 = a2[1];
  v8 = v7;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 56))(v4, v5, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1C65A2D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIN2QP5ParseEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIN2QP5ParseEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void QP::Formatter::setSuggestionValue(QP::Formatter *this, const __CFString *a2, const void *a3)
{
  if (a2 && a3)
  {
    v3 = *(this + 8);
    if (v3)
    {
      CFDictionarySetValue(v3, a2, a3);
    }
  }
}

void QP::Formatter::updateParseWithAttribute(uint64_t *a1, uint64_t a2, CFRange **a3)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3002000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  Mutable = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (QP::ParserGrammar::hasTranslations(a1[3], &(*a3)[3]))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3802000000;
    v19 = __Block_byref_object_copy__122;
    v6 = *a3;
    location = 0;
    v22 = 0;
    v20 = __Block_byref_object_dispose__123;
    length = v6[11].length;
    if (length)
    {
      v22 = std::__shared_weak_count::lock(length);
      if (v22)
      {
        location = v6[11].location;
      }
    }

    if (v17[5])
    {
      v8 = a1[3];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1174405120;
      v14[2] = ___ZN2QP9Formatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke;
      v14[3] = &unk_1F45E81F8;
      v14[4] = &v16;
      v14[5] = &v23;
      v14[6] = a1;
      v14[7] = a2;
      v9 = *a3;
      v10 = a3[1];
      v14[8] = *a3;
      v15 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QP::ParserGrammar::translations(v8, &v9[3], v14);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    _Block_object_dispose(&v16, 8);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  Count = CFArrayGetCount(v24[5]);
  if (Count)
  {
    CFStringFromString = QP::createCFStringFromString(&(*a3)[3]);
    v16 = CFStringFromString;
    if (Count == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v24[5], 0);
      QP::Formatter::setParseAttribute(a1, CFStringFromString, ValueAtIndex, (*a3)[1]);
    }

    else
    {
      QP::Formatter::setParseAttribute(a1, CFStringFromString, v24[5], (*a3)[1]);
    }

    if (CFStringFromString)
    {
      CFRelease(CFStringFromString);
    }
  }

  _Block_object_dispose(&v23, 8);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1C65A3020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Block_object_dispose((v13 - 96), 8);
  nlp::CFScopedPtr<__CFArray *>::reset((v12 + 40), 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

__n128 __Block_byref_object_copy__122(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__123(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN2QP9Formatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke(void *a1, const __CFString *a2)
{
  v4 = a1[6];
  v5 = QP::ParserGrammar::symbolID(*(v4 + 24), *(*(a1[4] + 8) + 40));
  if (CFStringContainsString(a2, @"%@u"))
  {
    if (QP::ParserGrammar::hasUTIs(*(v4 + 24), v5))
    {
      v6 = *(v4 + 24);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZN2QP9Formatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2;
      v15[3] = &unk_1E82668C8;
      v15[4] = a1[5];
      v15[5] = a2;
      QP::ParserGrammar::UTIs(v6, v5, v15);
    }
  }

  else if (CFStringContainsString(a2, @"%@e"))
  {
    if (QP::ParserGrammar::hasFileExtensions(*(v4 + 24), v5))
    {
      v7 = *(v4 + 24);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = ___ZN2QP9Formatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_3;
      v14[3] = &unk_1E82668F0;
      v14[4] = a1[5];
      v14[5] = a2;
      QP::ParserGrammar::fileExtensions(v7, v5, v14);
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695E480];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    v10 = a1[7];
    v11 = a1[8];
    v12 = std::__shared_weak_count::lock(*(v11 + 184));
    v13 = CFStringCreateWithSubstring(v8, v10, *(*(v11 + 176) + 72));
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    v16.length = CFStringGetLength(MutableCopy);
    v16.location = 0;
    CFStringFindAndReplace(MutableCopy, @"%@v", v13, v16, 0);
    CFArrayAppendValue(*(*(a1[5] + 8) + 40), MutableCopy);
    if (v13)
    {
      CFRelease(v13);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }
}

void sub_1C65A32D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP9Formatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 40));
  CFStringFromString = QP::createCFStringFromString(a2);
  v6.length = CFStringGetLength(MutableCopy);
  v6.location = 0;
  CFStringFindAndReplace(MutableCopy, @"%@u", CFStringFromString, v6, 0);
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 40), MutableCopy);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_1C65A33CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP9Formatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_3(uint64_t a1, uint64_t a2)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 40));
  CFStringFromString = QP::createCFStringFromString(a2);
  v6.length = CFStringGetLength(MutableCopy);
  v6.location = 0;
  CFStringFindAndReplace(MutableCopy, @"%@e", CFStringFromString, v6, 0);
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 40), MutableCopy);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_1C65A34B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_64c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_64c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void QP::Formatter::updateParseWithDateAttribute(QP::Formatter *a1, uint64_t a2, CFRange **a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->length, 1uLL, memory_order_relaxed);
  }

  v7 = 0;
  QP::Formatter::updateParseWithDateAttribute(a1, a2, v5, v6);
  std::__function::__value_func<void ()(__CFDictionary const*)>::~__value_func[abi:ne200100](v6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1C65A359C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(__CFDictionary const*)>::~__value_func[abi:ne200100](va);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void QP::Formatter::updateParseWithDateAttribute(QP::Formatter *a1, uint64_t a2, CFRange **a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v45 = Mutable;
  v9 = *a3;
  length = (*a3)[11].length;
  if (!length)
  {
    goto LABEL_63;
  }

  v11 = std::__shared_weak_count::lock(length);
  if (!v11)
  {
    goto LABEL_63;
  }

  v12 = v11;
  location = v9[11].location;
  if (location)
  {
    v15 = *(location + 120);
    v14 = *(location + 128);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v15)
    {
      goto LABEL_60;
    }

    if (BYTE2((*a3)[4].length) == 1)
    {
      LODWORD(valuePtr) = 5;
      v16 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
      v44 = v16;
      if (v16)
      {
        CFDictionarySetValue(Mutable, kQPParseAttributeValueDateTypeKey, v16);
      }

      QP::Formatter::setParseAttribute(a1, kQPParseAttributeDateExtensionKey, Mutable, (*a3)[1]);
      ++*(a1 + 10);
      if (v16)
      {
        CFRelease(v16);
      }

LABEL_60:
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      goto LABEL_62;
    }

    v17 = *(a1 + 5);
    v42 = v15;
    v43 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    value = QP::DateFormatter::copyDisplayForDate(v17, &v42, 0, 0);
    v44 = value;
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (value)
    {
      CFDictionarySetValue(Mutable, kQPParseAttributeValueDateDisplayKey, value);
    }

    v18 = *(a1 + 5);
    v39 = v15;
    v40 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    started = QP::DateFormatter::copyStartComponentsForDate(v18, &v39);
    valuePtr = started;
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    v19 = *(a1 + 5);
    v36 = v15;
    v37 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = QP::DateFormatter::copyEndComponentsForDate(v19, &v36);
    v38 = v29;
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (started)
    {
      if (!v29)
      {
        v20 = &kQPParseAttributeValueDateComponentsKey;
        v21 = started;
        goto LABEL_33;
      }

      CFDictionarySetValue(Mutable, kQPParseAttributeValueDateStartComponentsKey, started);
      v20 = &kQPParseAttributeValueDateEndComponentsKey;
    }

    else
    {
      if (!v29)
      {
LABEL_34:
        v22 = *(a1 + 5);
        v33 = v15;
        v34 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = QP::DateFormatter::copyFreqComponentsForDate(v22, &v33);
        v35 = v23;
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        if (v23)
        {
          CFDictionarySetValue(Mutable, kQPParseAttributeValueDateFrequencyComponentsKey, v23);
        }

        v32 = *(v15 + 12);
        v24 = CFNumberCreate(v7, kCFNumberIntType, &v32);
        v31 = v24;
        if (v24)
        {
          CFDictionarySetValue(Mutable, kQPParseAttributeValueDateTypeKey, v24);
        }

        v30 = *(v15 + 20);
        v25 = CFNumberCreate(v7, kCFNumberIntType, &v30);
        if (v25)
        {
          CFDictionarySetValue(Mutable, kQPParseAttributeValueDateTemporalModifierKey, v25);
        }

        if (*(a4 + 24))
        {
          std::function<void ()(__CFDictionary const*)>::operator()(a4, Mutable);
        }

        else
        {
          CFStringFromString = QP::createCFStringFromString(&(*a3)[3]);
          QP::Formatter::setParseAttribute(a1, CFStringFromString, Mutable, (*a3)[1]);
          ++*(a1 + 10);
          if (CFStringFromString)
          {
            CFRelease(CFStringFromString);
          }
        }

        if (v25)
        {
          CFRelease(v25);
        }

        if (v24)
        {
          CFRelease(v24);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        if (v29)
        {
          CFRelease(v29);
        }

        if (started)
        {
          CFRelease(started);
        }

        if (value)
        {
          CFRelease(value);
        }

        goto LABEL_60;
      }

      v20 = &kQPParseAttributeValueDateComponentsKey;
    }

    v21 = v29;
LABEL_33:
    CFDictionarySetValue(Mutable, *v20, v21);
    goto LABEL_34;
  }

LABEL_62:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_63:
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1C65A39B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va5, a4);
  va_start(va4, a4);
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  v13 = va_arg(va3, const void *);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  va_copy(va4, va3);
  v18 = va_arg(va4, const void *);
  v20 = va_arg(va4, void);
  v21 = va_arg(va4, void);
  va_copy(va5, va4);
  v22 = va_arg(va5, const void *);
  v24 = va_arg(va5, void);
  v25 = va_arg(va5, void);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va2, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(va3, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(va4, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(va5, 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v6 - 104), 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  nlp::CFScopedPtr<__CFDictionary *>::reset((v6 - 96), 0);
  _Unwind_Resume(a1);
}

void sub_1C65A3AE8()
{
  nlp::CFScopedPtr<__CFNumber const*>::reset((v1 - 104), 0);
  if (!v0)
  {
    JUMPOUT(0x1C65A3AC4);
  }

  JUMPOUT(0x1C65A3ABCLL);
}

uint64_t std::function<void ()(__CFDictionary const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void QP::Formatter::~Formatter(const void **this)
{
  QP::Formatter::~Formatter(this);

  JUMPOUT(0x1C695B850);
}

{
  *this = &unk_1F45E8238;
  nlp::CFScopedPtr<__CFAttributedString *>::reset(this + 9, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(this + 8, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(this + 7, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 6, 0);
  v2 = this[5];
  this[5] = 0;
  if (v2)
  {
    QP::DateFormatter::~DateFormatter(v2);
    MEMORY[0x1C695B850]();
  }

  v3 = this[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

os_log_t ___ZL15formatterLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "QPFormatter");
  formatterLogger(void)::log = result;
  return result;
}

void QP::DateFormatter::~DateFormatter(const void **this)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 7, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(this + 6, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(this + 5, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(this + 4, 0);
  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[1];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void nlp::CFScopedPtr<__CFArray *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t std::__function::__value_func<void ()(__CFDictionary const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void QP::GeoReference::load(QP::GeoReference *this, const __CFURL *a2)
{
  if (a2)
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], a2);
    v4 = SIGeoIndexCreateWithOptions();
    if (v4)
    {
      if (*this)
      {
        SIGeoIndexRelease();
        *this = 0;
      }

      *this = v4;
    }

    if (PathComponent)
    {
      CFRelease(PathComponent);
    }
  }
}

void sub_1C65A3E60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFURL const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

QP::GeoReference *QP::GeoReference::GeoReference(QP::GeoReference *this, const __CFURL *a2)
{
  *this = 0;
  QP::GeoReference::load(this, a2);
  return this;
}

void QP::GeoReference::~GeoReference(QP::GeoReference *this)
{
  if (*this)
  {
    SIGeoIndexRelease();
  }
}

void QP::GeoReference::lookup(uint64_t *a1, CFStringRef theString, const __CFLocale *a3, uint64_t a4)
{
  v68 = *MEMORY[0x1E69E9840];
  if (theString && *a1 && CFStringGetLength(theString))
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
    v54[8] = MutableCopy;
    v69.length = CFStringGetLength(MutableCopy);
    v69.location = 0;
    CFStringFindAndReplace(MutableCopy, @"-", @" ", v69, 0);
    v70.length = CFStringGetLength(MutableCopy);
    v70.location = 0;
    CFStringFindAndReplace(MutableCopy, @".", &stru_1F45E9EA0, v70, 0);
    CFStringLowercase(MutableCopy, a3);
    v61 = 0;
    v62 = &v61;
    v63 = 0x4802000000;
    v64 = __Block_byref_object_copy__4;
    v65 = __Block_byref_object_dispose__4;
    v66 = 0u;
    v67 = 0u;
    v9 = *a1;
    v54[2] = MEMORY[0x1E69E9820];
    v54[3] = 0x40000000;
    v54[4] = ___ZN2QP12GeoReference6lookupEPK10__CFStringPK10__CFLocaleU13block_pointerFvP11_SIGeoEntrydE_block_invoke;
    v54[5] = &unk_1E8266978;
    v54[6] = &v61;
    v54[7] = a1;
    SIGeoIndexEnumerateGeoIDForString();
    v54[0] = 0;
    v54[1] = 0;
    v53 = v54;
    v10 = v62 + 6;
    v11 = v62 + 5;
    if (v62[5] == v62[6])
    {
      v46 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v52 = 0.0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v13 = *v11;
        v14 = *(*v11 + 16);
        v15 = *(*v11 + 32);
        v16 = *(*v11 + 48);
        v52 = *(*v11 + 64);
        v50 = v15;
        v51 = v16;
        v48 = *v13;
        v49 = v14;
        v17 = *v11;
        v18 = *v10;
        v19 = *v10 - v17;
        if (v19 >= 73)
        {
          v20 = 0;
          v21 = 0x8E38E38E38E38E39 * (v19 >> 3);
          v22 = *(v17 + 48);
          v58 = *(v17 + 32);
          v59 = v22;
          v60 = *(v17 + 64);
          v23 = *(v17 + 16);
          v56 = *v17;
          v57 = v23;
          v24 = v17;
          do
          {
            v25 = v24;
            v24 += 72 * v20 + 72;
            v26 = 2 * v20;
            v20 = (2 * v20) | 1;
            v27 = v26 + 2;
            if (v27 < v21 && *(v24 + 64) < *(v24 + 136))
            {
              v24 += 72;
              v20 = v27;
            }

            *v25 = *v24;
            v28 = *(v24 + 16);
            v29 = *(v24 + 32);
            v30 = *(v24 + 48);
            *(v25 + 64) = *(v24 + 64);
            *(v25 + 32) = v29;
            *(v25 + 48) = v30;
            *(v25 + 16) = v28;
          }

          while (v20 <= ((v21 - 2) >> 1));
          v31 = v18 - 72;
          if (v24 == v31)
          {
            *v24 = v56;
            v37 = v57;
            v38 = v58;
            v39 = v59;
            *(v24 + 64) = v60;
            *(v24 + 32) = v38;
            *(v24 + 48) = v39;
            *(v24 + 16) = v37;
          }

          else
          {
            *v24 = *v31;
            v32 = *(v31 + 16);
            v33 = *(v31 + 32);
            v34 = *(v31 + 48);
            *(v24 + 64) = *(v31 + 64);
            *(v24 + 32) = v33;
            *(v24 + 48) = v34;
            *(v24 + 16) = v32;
            v35 = v59;
            *(v31 + 32) = v58;
            *(v31 + 48) = v35;
            *(v31 + 64) = v60;
            v36 = v57;
            *v31 = v56;
            *(v31 + 16) = v36;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,QP::GeoCompareScore &,std::__wrap_iter<QP::GeoLocation *>>(v17, v24 + 72, &v55, 0x8E38E38E38E38E39 * ((v24 + 72 - v17) >> 3));
          }

          v18 = *v10;
        }

        *v10 = v18 - 72;
        v40 = v54[0];
        if (!v54[0])
        {
          goto LABEL_24;
        }

        v41 = v54;
        do
        {
          v42 = *(v40 + 28);
          v43 = v42 >= DWORD2(v48);
          v44 = v42 < DWORD2(v48);
          if (v43)
          {
            v41 = v40;
          }

          v40 = *(v40 + 8 * v44);
        }

        while (v40);
        if (v41 == v54 || DWORD2(v48) < *(v41 + 7))
        {
LABEL_24:
          (*(a4 + 16))(a4, &v48, v52);
          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v53, &v48 + 2);
          ++v12;
        }

        v10 = v62 + 6;
        v11 = v62 + 5;
      }

      while (v62[5] != v62[6] && v12 < 5);
      v46 = v54[0];
    }

    std::__tree<unsigned int>::destroy(&v53, v46);
    _Block_object_dispose(&v61, 8);
    if (v66)
    {
      *(&v66 + 1) = v66;
      operator delete(v66);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  v47 = *MEMORY[0x1E69E9840];
}

void sub_1C65A4308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__4(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t ___ZN2QP12GeoReference6lookupEPK10__CFStringPK10__CFLocaleU13block_pointerFvP11_SIGeoEntrydE_block_invoke(uint64_t a1, double a2)
{
  v4 = **(a1 + 40);
  result = SIGeoIndexLookupEntry();
  if (result)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = v6[6];
    v8 = v6[7];
    if (v7 >= v8)
    {
      v10 = v6[5];
      v11 = 0x8E38E38E38E38E39 * ((v7 - v10) >> 3);
      v12 = v11 + 1;
      if (v11 + 1 > 0x38E38E38E38E38ELL)
      {
        std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0x8E38E38E38E38E39 * ((v8 - v10) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x1C71C71C71C71C7)
      {
        v14 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<QP::GeoLocation>>((v6 + 5), v14);
      }

      v15 = 72 * v11;
      *v15 = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0u;
      *(v15 + 48) = 0u;
      *(v15 + 64) = a2;
      v9 = 72 * v11 + 72;
      v16 = v6[5];
      v17 = v6[6] - v16;
      v18 = v15 - v17;
      memcpy((v15 - v17), v16, v17);
      v19 = v6[5];
      v6[5] = v18;
      v6[6] = v9;
      v6[7] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *v7 = 0u;
      *(v7 + 16) = 0u;
      *(v7 + 64) = a2;
      v9 = v7 + 72;
    }

    v6[6] = v9;
    return std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,QP::GeoCompareScore &,std::__wrap_iter<QP::GeoLocation *>>(v6[5], v9, &v20, 0x8E38E38E38E38E39 * ((v9 - v6[5]) >> 3));
  }

  return result;
}

void nlp::CFScopedPtr<__CFURL const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<QP::GeoLocation>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,QP::GeoCompareScore &,std::__wrap_iter<QP::GeoLocation *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 72 * v4;
    v6 = *(a2 - 8);
    if (*(v5 + 64) < v6)
    {
      v7 = a2 - 72;
      v13 = *(a2 - 72);
      v14 = *(a2 - 56);
      v8 = *(a2 - 40);
      v15 = v8;
      v16 = *(a2 - 24);
      do
      {
        v9 = v5;
        *v7 = *v5;
        v10 = *(v5 + 16);
        v11 = *(v5 + 32);
        v12 = *(v5 + 48);
        *(v7 + 64) = *(v5 + 64);
        *(v7 + 32) = v11;
        *(v7 + 48) = v12;
        *(v7 + 16) = v10;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 72 * v4;
        v7 = v9;
      }

      while (*(v5 + 64) < v6);
      *v9 = v13;
      *(v9 + 16) = v14;
      *(v9 + 32) = v15;
      *(v9 + 48) = v16;
      *(v9 + 64) = v6;
    }
  }

  return result;
}

void std::__tree<unsigned int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned int>::destroy(a1, *a2);
    std::__tree<unsigned int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t *std::__tree<unsigned int>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t QP::GraphStructureStack::Node::reduce(unsigned __int16 *a1, __int128 *a2)
{
  v4 = *(a1 + 1);
  if (v4 == -1)
  {
    v5 = *a2;
    if (**a2 == *a1)
    {
      *(a1 + 4) = *(v5 + 8);
      *(a1 + 3) = *(v5 + 24);
      *(a1 + 2) = *(v5 + 32);
      v7 = *(v5 + 48);
      v6 = *(v5 + 56);
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(a1 + 7);
      *(a1 + 6) = v7;
      *(a1 + 7) = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v9 = *a2;
      v43 = 0;
      v42 = 0uLL;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(&v42, *(v9 + 64), *(v9 + 72), (*(v9 + 72) - *(v9 + 64)) >> 4);
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__vdeallocate(a1 + 8);
      *(a1 + 4) = v42;
      *(a1 + 10) = v43;
      v43 = 0;
      v42 = 0uLL;
      v39 = &v42;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v39);
      a1[44] = *(*a2 + 88);
      v10 = 0;
      goto LABEL_8;
    }
  }

  v14 = *(a1 + 6);
  if (!v14)
  {
    return 0;
  }

  v15 = *(a1 + 7);
  if (!v15)
  {
    if (*(v14 + 8) == v4)
    {
      v18 = 0;
      goto LABEL_21;
    }

    return 0;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = *(v14 + 8);
  v17 = *(a1 + 1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (v16 != v17)
  {
    return 0;
  }

  v14 = *(a1 + 6);
  v18 = *(a1 + 7);
  if (v18)
  {
    v19 = 0;
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_22;
  }

LABEL_21:
  v19 = 1;
LABEL_22:
  if (*(v14 + 88) != 1)
  {
    v22 = 0;
    if (v19)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v21 = *(a1 + 6);
  v20 = *(a1 + 7);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    v22 = *(v21 + 8) + 1 == *(*a2 + 8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    if (v19)
    {
      goto LABEL_28;
    }

LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    goto LABEL_28;
  }

  v22 = *(v21 + 8) + 1 == *(*a2 + 8);
  if ((v19 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v22)
  {
    goto LABEL_40;
  }

  v23 = *(a1 + 6);
  v24 = *(a1 + 7);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v23 + 88))
  {
    v25 = 0;
    if (!v24)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v28 = *(a1 + 6);
  v27 = *(a1 + 7);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    v25 = *(v28 + 8) < *(*a2 + 8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    if (!v24)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v25 = *(v28 + 8) < *(*a2 + 8);
  if (v24)
  {
LABEL_38:
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

LABEL_39:
  if (!v25)
  {
    return 0;
  }

LABEL_40:
  v30 = *(a1 + 8);
  v29 = *(a1 + 9);
  if (v30 == v29)
  {
    return 0;
  }

  v31 = *a2;
  while (1)
  {
    v32 = *v30;
    if (**v30 == **a2)
    {
      break;
    }

    v30 += 2;
    if (v30 == v29)
    {
      return 0;
    }
  }

  v33 = *(v32 + 1);
  if (v33 == -1)
  {
    v37 = *(a2 + 1);
    if (v37)
    {
      atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
    }

    v38 = v30[1];
    *v30 = v31;
    v30[1] = v37;
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    v10 = *(*v30 + 1);
    goto LABEL_8;
  }

  if (v33 == *(v31 + 3))
  {
    v42 = 0uLL;
    v43 = 0;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(&v42, *(v32 + 8), *(v32 + 9), (*(v32 + 9) - *(v32 + 8)) >> 4);
    v34 = v42;
    v35 = *a2;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(&v39, *(v35 + 8), *(v35 + 9), (*(v35 + 9) - *(v35 + 8)) >> 4);
    v36 = v40 - v39;
    v44 = &v39;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v44);
    v39 = &v42;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v39);
    v10 = *(*v30 + 1);
    if (*(&v34 + 1) - v34 == v36)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = *(v32 + 1);
  }

  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a1 + 8, a2);
LABEL_8:
  if (a1[48] & 1) != 0 || (a1[45] & 1) != 0 || (*(a1 + 93) & 1) != 0 || (a1[46])
  {
    v11 = *a2;
    if (*(a1 + 94) == 1)
    {
      v12 = *(*a2 + 32);
      v13 = *(a1 + 4) - v12 + *(a1 + 5);
      *(a1 + 4) = v12;
      *(a1 + 5) = v13;
    }

    else
    {
      *(a1 + 5) = *(*a2 + 32) - *(a1 + 4) + *(*a2 + 40);
    }
  }

  else
  {
    v11 = *a2;
  }

  *(a1 + 3) = *(v11 + 1);
  *(a1 + 1) = v10;
  return 1;
}

void sub_1C65A4D90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
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

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

double QP::GraphStructureStack::GraphStructureStack(uint64_t a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = -1;
  *(a1 + 104) = -1;
  return result;
}

void QP::GraphStructureStack::addNodeIdToNode(QP::GraphStructureStack *a1@<X0>, CFRange **a2@<X1>, unsigned __int16 a3@<W2>, BOOL a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  QP::GraphStructureStack::nodeFromNodeId(a1, a3, *(&(*a2)->location + 1), a4, (*a2)->length, (*a2)[1].location, (*a2)[2]);
}

void QP::GraphStructureStack::shift(uint64_t *a1, unsigned __int16 **a2, char a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = **a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___ZN2QP19GraphStructureStack5shiftENSt3__110shared_ptrINS0_4NodeEEEbU13block_pointerFvS4_bPbE_block_invoke;
  v10[3] = &unk_1F45E82C0;
  v10[5] = a1;
  v10[6] = v7;
  v9 = a2[1];
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10[4] = a4;
  v12 = a3;
  QP::ParserGrammar::expansions(v6, v8, v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1C65A51B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP19GraphStructureStack5shiftENSt3__110shared_ptrINS0_4NodeEEEbU13block_pointerFvS4_bPbE_block_invoke(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = *(a1 + 48);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->length, 1uLL, memory_order_relaxed);
  }

  v5[0] = 0;
  v5[1] = 0;
  QP::GraphStructureStack::addNodeIdToNode(v2, v4, a2, 0, v5);
}

void sub_1C65A5380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_48c57_ZTSNSt3__110shared_ptrIN2QP19GraphStructureStack4NodeEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c57_ZTSNSt3__110shared_ptrIN2QP19GraphStructureStack4NodeEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void QP::GraphStructureStack::shiftReduce(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v7 = (a1 + 16);
  v10 = (v9 - v8) >> 4;
  if (v10 > 0xF)
  {
    return;
  }

  v11 = a2;
  v12 = *a2;
  if (**a2 == kQPSymbolIdRoot)
  {
    if (a3)
    {

      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](v7, a2);
    }

    return;
  }

  if (*(v12 + 93) == 1)
  {
    v77 = 0;
    v78 = 0;
    v79 = 0;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>,std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>>(&v77, 0, v8, v9, v10);
    if (*(a1 + 24) != *(a1 + 16))
    {
      v13 = v77;
      v14 = v78;
      if (v77 != v78)
      {
        do
        {
          v15 = v13[1];
          v97[0] = *v13;
          v97[1] = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
          }

          v16 = *(v11 + 1);
          v96[0] = *v11;
          v96[1] = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QP::GraphStructureStack::reduce(a1, v97, v96, a4);
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          v13 += 2;
        }

        while (v13 != v14);
      }
    }

    v92 = &v77;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v92);
    return;
  }

  if (*(v12 + 91) != 1)
  {
    v92 = 0;
    v93 = &v92;
    v94 = 0x2000000000;
    v95 = 0;
    v20 = (a1 + 40);
    v19 = *(a1 + 40);
    v21 = *(a1 + 104);
    v22 = *(a1 + 48);
    if (v22 != v19 && *(v12 + 8) == v21 + 1 && *(v12 + 88) == 1)
    {
      v58 = a3;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>,std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>>(&v89, 0, v19, v22, (v22 - v19) >> 4);
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v77 = 0;
      v78 = &v77;
      v79 = 0x4002000000;
      v80 = __Block_byref_object_copy__5;
      v81 = __Block_byref_object_dispose__5;
      memset(v82, 0, sizeof(v82));
      v23 = *v20;
      while (1)
      {
        v24 = *(&v23 + 1);
        v25 = v23;
        if (v23 != *(&v23 + 1))
        {
          do
          {
            if (*(*v25 + 8) == v21)
            {
              if (QP::ParserGrammar::hasExpansions(*a1, **v25))
              {
                v26 = *(v25 + 1);
                v76[0] = *v25;
                v76[1] = v26;
                if (v26)
                {
                  atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
                }

                v72[0] = MEMORY[0x1E69E9820];
                v72[1] = 1174405120;
                v72[2] = ___ZN2QP19GraphStructureStack11shiftReduceENSt3__110shared_ptrINS0_4NodeEEEbU13block_pointerFvS4_bPbE_block_invoke;
                v72[3] = &unk_1F45E8330;
                v72[7] = a1;
                memset(v73, 0, sizeof(v73));
                std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(v73, v83, v84, (v84 - v83) >> 4);
                v72[4] = a4;
                v72[5] = &v92;
                v27 = *(v11 + 1);
                v74 = *v11;
                v75 = v27;
                if (v27)
                {
                  atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v72[6] = &v77;
                QP::GraphStructureStack::shift(a1, v76, 1, v72);
                if (v26)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
                }

                if (v75)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v75);
                }

                v69 = v73;
                std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v69);
              }
            }

            else
            {
              std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](&v86, v25);
            }

            ++v25;
          }

          while (v25 != v24);
          v23 = *v20;
        }

        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(v20, v23, *(&v23 + 1));
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>,std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>>(v20, *(a1 + 48), v86, v87, (v87 - v86) >> 4);
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(&v86, v86, v87);
        v28 = *(a1 + 40);
        v29 = *(a1 + 48);
        if (v29 == v28)
        {
          break;
        }

        if (v78[6] == v78[5])
        {
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(v20, v28, v29);
LABEL_80:
          v21 = -1;
          goto LABEL_81;
        }

        v21 = *(*(v29 - 2) + 8);
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(&v83, v83, v84);
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>,std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>>(&v83, v84, v78[5], v78[6], (v78[6] - v78[5]) >> 4);
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase((v78 + 5), v78[5], v78[6]);
LABEL_81:
        v23 = *v20;
        v42 = *v20;
        if (*(&v42 + 1) == v42)
        {
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(v20, *(&v42 + 1), *(&v42 + 1));
          a3 = v58;
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>,std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>>(v20, *(a1 + 48), v89, v90, (v90 - v89) >> 4);
          _Block_object_dispose(&v77, 8);
          v69 = v82;
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v69);
          v77 = &v83;
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v77);
          v77 = &v86;
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v77);
          v77 = &v89;
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v77);
          v12 = *v11;
          v21 = *(a1 + 104);
          goto LABEL_83;
        }
      }

      v30 = v78[5];
      v60 = v78[6];
      if (v30 != v60)
      {
        do
        {
          v69 = 0;
          v70 = 0;
          v71 = 0;
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>,std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>>(&v69, 0, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 4);
          v31 = v69;
          v32 = v70;
          if (v69 == v70)
          {
            goto LABEL_132;
          }

          v33 = 0;
          do
          {
            while (1)
            {
              v34 = *(*v31 + 3);
              v35 = *v30;
              v36 = *(*v30 + 1);
              v37 = v34 == v36 || v34 + 1 == v36;
              if (!v37 && v34 != *(v35 + 3))
              {
                break;
              }

              v38 = v31[1];
              v68[0] = *v31;
              v68[1] = v38;
              if (v38)
              {
                atomic_fetch_add_explicit(v38 + 1, 1uLL, memory_order_relaxed);
                v35 = *v30;
              }

              v39 = v30[1];
              v67[0] = v35;
              v67[1] = v39;
              if (v39)
              {
                atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v40 = QP::GraphStructureStack::reduce(a1, v68, v67, a4);
              if (v39)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v39);
              }

              if (v38)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v38);
              }

              if ((v40 & 1) == 0)
              {
                break;
              }

              v33 = 1;
              *(v93 + 24) = 1;
              v31 += 2;
              if (v31 == v32)
              {
                goto LABEL_77;
              }
            }

            v31 += 2;
          }

          while (v31 != v32);
          if ((v33 & 1) == 0)
          {
LABEL_132:
            if (QP::ParserGrammar::hasExpansions(*a1, **v30))
            {
              v41 = v30[1];
              v66[0] = *v30;
              v66[1] = v41;
              if (v41)
              {
                atomic_fetch_add_explicit(v41 + 1, 1uLL, memory_order_relaxed);
              }

              QP::GraphStructureStack::shift(a1, v66, 1, a4);
              if (v41)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v41);
              }

              if ((v70 - v69) < *(a1 + 24) - *(a1 + 16))
              {
                *(v93 + 24) = 1;
              }
            }
          }

LABEL_77:
          v98 = &v69;
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v98);
          v30 += 2;
        }

        while (v30 != v60);
        v21 = -1;
        v20 = (a1 + 40);
        v11 = a2;
        goto LABEL_81;
      }

      goto LABEL_80;
    }

LABEL_83:
    if (*(v12 + 8) > v21 + 1)
    {
      v43 = *(a1 + 40);
      v44 = *(a1 + 48);
      if (v44 != v43 && *(v12 + 88) == 1)
      {
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(v20, v43, v44);
        *(a1 + 104) = -1;
      }
    }

    if (a3 && (v93[3] & 1) == 0)
    {
      v77 = 0;
      v78 = 0;
      v79 = 0;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>,std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>>(&v77, 0, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 4);
      v45 = *v11;
      if (*(a1 + 24) != *(a1 + 16) && *(v45 + 1))
      {
        v46 = v77;
        v47 = v78;
        if (v77 == v78)
        {
          goto LABEL_122;
        }

        v48 = 0;
        while (1)
        {
          while (1)
          {
            v49 = *(*v46 + 3);
            v50 = *a2;
            v51 = *(*a2 + 8);
            v52 = v49 + 1 == v51 || v49 == v51;
            if (v52 || v49 == *(v50 + 24))
            {
              break;
            }

LABEL_112:
            v46 += 2;
            if (v46 == v47)
            {
              if ((v48 & 1) == 0)
              {
                v45 = *a2;
LABEL_122:
                if (QP::ParserGrammar::hasExpansions(*a1, *v45))
                {
                  v57 = *(a2 + 1);
                  v62[0] = *a2;
                  v62[1] = v57;
                  if (v57)
                  {
                    atomic_fetch_add_explicit(v57 + 1, 1uLL, memory_order_relaxed);
                  }

                  QP::GraphStructureStack::shift(a1, v62, 1, a4);
                  goto LABEL_126;
                }
              }

              goto LABEL_128;
            }
          }

          v53 = v46[1];
          v65[0] = *v46;
          v65[1] = v53;
          if (v53)
          {
            atomic_fetch_add_explicit(v53 + 1, 1uLL, memory_order_relaxed);
            v50 = *a2;
          }

          v54 = *(a2 + 1);
          v64[0] = v50;
          v64[1] = v54;
          if (v54)
          {
            atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v55 = QP::GraphStructureStack::reduce(a1, v65, v64, a4);
          if (v54)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v54);
          }

          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          }

          if ((v55 & 1) == 0)
          {
            if (QP::ParserGrammar::hasExpansions(*a1, **a2))
            {
              v56 = *(a2 + 1);
              v63[0] = *a2;
              v63[1] = v56;
              if (v56)
              {
                atomic_fetch_add_explicit(v56 + 1, 1uLL, memory_order_relaxed);
              }

              QP::GraphStructureStack::shift(a1, v63, 0, a4);
              if (v56)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v56);
              }
            }

            goto LABEL_112;
          }

          v46 += 2;
          v48 = 1;
          if (v46 == v47)
          {
            goto LABEL_128;
          }
        }
      }

      if (QP::ParserGrammar::hasExpansions(*a1, *v45))
      {
        v57 = *(a2 + 1);
        v61[0] = *a2;
        v61[1] = v57;
        if (v57)
        {
          atomic_fetch_add_explicit(v57 + 1, 1uLL, memory_order_relaxed);
        }

        QP::GraphStructureStack::shift(a1, v61, 1, a4);
LABEL_126:
        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
        }
      }

LABEL_128:
      v89 = &v77;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v89);
    }

    _Block_object_dispose(&v92, 8);
    return;
  }

  if (*(v12 + 8) > *(a1 + 104) + 1)
  {
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    if (v18 != v17)
    {
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(a1 + 40, v17, v18);
      *(a1 + 104) = -1;
    }
  }

  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100]((a1 + 40), v11);
  *(a1 + 104) = *(*v11 + 8);
}

void sub_1C65A5CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  *(v51 - 200) = &a50;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100]((v51 - 200));
  _Block_object_dispose((v51 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t QP::GraphStructureStack::reduce(uint64_t a1, unsigned __int16 **a2, void *a3, uint64_t a4)
{
  v5 = *a2;
  if (!*a2 || *(v5 + 1) == -1 || (v5[44] & 1) != 0)
  {
    return 0;
  }

  v6 = 0;
  if (a4 && *a3)
  {
    v11 = a3[1];
    *&v34 = *a3;
    *(&v34 + 1) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = QP::GraphStructureStack::Node::reduce(v5, &v34);
    if (*(&v34 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
    }

    if (v12)
    {
      goto LABEL_38;
    }

    v13 = *a2;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(&v31, *(v13 + 8), *(v13 + 9), (*(v13 + 9) - *(v13 + 8)) >> 4);
    v14 = v31;
    v15 = v32;
    if (v31 == v32)
    {
      v35 = &v31;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v35);
    }

    else
    {
      v16 = 0;
      do
      {
        v17 = *v14;
        v18 = v14[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          v29 = v17;
          v30 = v18;
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v29 = *v14;
          v30 = 0;
        }

        v19 = a3[1];
        v28[0] = *a3;
        v28[1] = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = QP::GraphStructureStack::reduce(a1, &v29, v28, a4);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          v16 |= v20;
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        else
        {
          v16 |= v20;
        }

        v14 += 2;
      }

      while (v14 != v15);
      v35 = &v31;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v35);
      if (v16)
      {
LABEL_38:
        v24 = *a2;
        v25 = *a3;
        if (*(*a2 + 92) == 1)
        {
          *(v24 + 5) = v25[4] - *(v24 + 4) + v25[5];
        }

        *(v24 + 3) = v25[3];
        return 1;
      }
    }

    v21 = *(*a2 + 7);
    v27[0] = *(*a2 + 6);
    v27[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = a3[1];
    v26[0] = *a3;
    v26[1] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = QP::GraphStructureStack::reduce(a1, v27, v26, a4);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (!v23)
    {
      return 0;
    }

    goto LABEL_38;
  }

  return v6;
}

void sub_1C65A60EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__n128 __Block_byref_object_copy__5(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__5(uint64_t a1)
{
  v1 = (a1 + 40);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  _Block_object_dispose(*(a1 + 40), 135);
}

void ___ZN2QP19GraphStructureStack11shiftReduceENSt3__110shared_ptrINS0_4NodeEEEbU13block_pointerFvS4_bPbE_block_invoke(uint64_t a1, unsigned __int16 **a2)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a1 + 56);
  if (v4 == v5)
  {
    v17 = *(a1 + 96);
    v24[0] = *(a1 + 88);
    v24[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1174405120;
    v22[2] = ___ZN2QP19GraphStructureStack11shiftReduceENSt3__110shared_ptrINS0_4NodeEEEbU13block_pointerFvS4_bPbE_block_invoke_2;
    v22[3] = &unk_1F45E82F8;
    v19 = *a2;
    v18 = a2[1];
    v22[6] = v6;
    v22[7] = v19;
    v23 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = *(a1 + 48);
    v22[4] = *(a1 + 32);
    v22[5] = v20;
    QP::GraphStructureStack::shift(v6, v24, 1, v22);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  else
  {
    v21 = *(a1 + 72);
    do
    {
      v7 = a2[1];
      v33[0] = *a2;
      v33[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      v8 = v5[1];
      v32[0] = *v5;
      v32[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = QP::GraphStructureStack::reduce(v6, v33, v32, *(a1 + 32));
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v9)
      {
        v30 = 0;
        v31 = 0;
        v29 = 0;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>,std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>>(&v29, 0, *(v6 + 16), *(v6 + 24), (*(v6 + 24) - *(v6 + 16)) >> 4);
        v10 = v29;
        v11 = v30;
        if (v30 == v29)
        {
          v16 = a2[1];
          v25[0] = *a2;
          v25[1] = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
          }

          QP::GraphStructureStack::shift(v6, v25, 1, *(a1 + 32));
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        else
        {
          do
          {
            v12 = *(v10 + 8);
            v28[0] = *v10;
            v28[1] = v12;
            if (v12)
            {
              atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
            }

            v13 = a2[1];
            v27[0] = *a2;
            v27[1] = v13;
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v14 = QP::GraphStructureStack::reduce(v6, v28, v27, *(a1 + 32));
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            if (v12)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }

            if ((v14 & 1) == 0 && QP::ParserGrammar::hasExpansions(*v6, **v5))
            {
              v15 = a2[1];
              v26[0] = *a2;
              v26[1] = v15;
              if (v15)
              {
                atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
              }

              QP::GraphStructureStack::shift(v6, v26, 0, *(a1 + 32));
              if (v15)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v15);
              }
            }

            v10 += 16;
          }

          while (v10 != v11);
        }

        *(*(*(a1 + 40) + 8) + 24) = 1;
        v34 = &v29;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v34);
        v4 = v21;
      }

      v5 += 2;
    }

    while (v5 != v4);
  }
}

void sub_1C65A64E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP19GraphStructureStack11shiftReduceENSt3__110shared_ptrINS0_4NodeEEEbU13block_pointerFvS4_bPbE_block_invoke_2(uint64_t *a1, void *a2)
{
  v4 = a1 + 7;
  v3 = a1[7];
  v5 = a1[6];
  v6 = v4[1];
  v11[0] = v3;
  v11[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = QP::GraphStructureStack::reduce(v5, v11, v10, a1[4]);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v8)
  {
    v9 = (*(a1[5] + 8) + 40);

    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](v9, v4);
  }
}

void sub_1C65A6638(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_56c57_ZTSNSt3__110shared_ptrIN2QP19GraphStructureStack4NodeEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c57_ZTSNSt3__110shared_ptrIN2QP19GraphStructureStack4NodeEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_e8_64c89_ZTSNSt3__16vectorINS_10shared_ptrIN2QP19GraphStructureStack4NodeEEENS_9allocatorIS5_EEEE88c57_ZTSNSt3__110shared_ptrIN2QP19GraphStructureStack4NodeEEE(void *a1, uint64_t *a2)
{
  a1[8] = 0;
  a1[9] = 0;
  v3 = a1 + 8;
  a1[10] = 0;
  result = std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>((a1 + 8), a2[8], a2[9], (a2[9] - a2[8]) >> 4);
  v5 = a2[12];
  v3[3] = a2[11];
  v3[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_64c89_ZTSNSt3__16vectorINS_10shared_ptrIN2QP19GraphStructureStack4NodeEEENS_9allocatorIS5_EEEE88c57_ZTSNSt3__110shared_ptrIN2QP19GraphStructureStack4NodeEEE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (a1 + 64);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void *QP::GraphStructureStack::add(void *this, int a2, uint64_t a3, uint64_t a4, CFRange a5)
{
  if (a2 && *this)
  {
    if (this[11] + 1 < a3)
    {
      this[11] = a3;
    }

    operator new();
  }

  return this;
}

void sub_1C65A6938(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Block_object_dispose(va, 8);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

void ___ZN2QP19GraphStructureStack3addEtll7CFRangeb_block_invoke(uint64_t a1, void *a2, int a3)
{
  v4 = *(a1 + 40);
  v5 = a2[1];
  *&v6 = *a2;
  *(&v6 + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  QP::GraphStructureStack::shiftReduce(v4, &v6, a3, *(*(*(a1 + 32) + 8) + 40));
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }
}

void sub_1C65A69FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void QP::GraphStructureStack::close(QP::GraphStructureStack *this)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  v5 = (this + 16);
  v6 = 126 - 2 * __clz((v4 - v3) >> 4);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = QP::GraphStructureStack::state_greater_than_span;
  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,false>(v3, v4, &v17, v7, 1);
  v8 = *(this + 2);
  v9 = *(this + 3);
  if (v8 != v9)
  {
    v10 = 0;
    v11 = -1;
    do
    {
      if (v11 != -1 && (*(*v8 + 32) != v11 || *(*v8 + 40) != v10))
      {
        break;
      }

      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](&v14, v8);
      v13 = *v8++;
      v11 = *(v13 + 32);
      v10 = *(v13 + 40);
    }

    while (v8 != v9);
    v8 = *(this + 2);
    v9 = *(this + 3);
  }

  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(v5, v8, v9);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>,std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>>(v5, *(this + 3), v14, v15, (v15 - v14) >> 4);
  v18 = &v14;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void sub_1C65A6B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

BOOL QP::GraphStructureStack::state_greater_than_span(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    return 0;
  }

  v4 = *(v2 + 8);
  v5 = *(v3 + 8);
  v6 = *(v2 + 24);
  v7 = *(v3 + 24);
  if (v4 == v5)
  {
    v10 = __OFSUB__(v6, v7);
    v8 = v6 == v7;
    v9 = v6 - v7 < 0;
    v7 = *(v2 + 24);
    if (!v8)
    {
      return !(v9 ^ v10 | v8);
    }
  }

  v11 = v6 - v4;
  v12 = v7 - v5;
  v10 = __OFSUB__(v11, v12);
  v8 = v11 == v12;
  v9 = v11 - v12 < 0;
  if (v11 != v12)
  {
    return !(v9 ^ v10 | v8);
  }

  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = *(v3 + 32);
  v16 = *(v3 + 40);
  if (v13 != v15 || v14 != v16)
  {
    v10 = __OFSUB__(v14, v16);
    v8 = v14 == v16;
    v9 = v14 - v16 < 0;
    if (v14 == v16)
    {
      return v13 < v15;
    }

    return !(v9 ^ v10 | v8);
  }

  if (v4 != v5)
  {
    return 0;
  }

  v19 = *(v2 + 4);
  v20 = *(v3 + 4);
  v10 = 0;
  v8 = v19 == v20;
  v9 = v19 < v20;
  return !(v9 ^ v10 | v8);
}

void QP::GraphStructureStack::traverse(QP::ParserGrammar **a1, __int128 *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2;
  if (!*a2)
  {
    return;
  }

  if (v4[44])
  {
    return;
  }

  if (*(v4 + 1) == -1)
  {
    return;
  }

  v6 = *v4;
  if (v6 == kQPSymbolIdTerminal)
  {
    return;
  }

  v10 = QP::ParserGrammar::requiresComplement(*a1, v6);
  if (!v10)
  {
LABEL_11:
    v40 = v10;
    v15 = *a3;
    v14 = a3[1];
    v41 = a3;
    if (v14 != *a3)
    {
      v16 = 0.0;
      do
      {
        v16 = v16 + *(*v15 + 1);
        if (QP::ParserGrammar::hasAttribute(*a1, **v15, **a2))
        {
          v17 = *(*a1 + 5);
          v18 = v15;
          if (v17)
          {
            if (*(v17 + 31))
            {
              v18 = a2;
            }

            else
            {
              v18 = v15;
            }
          }

          v20 = *v18;
          v19 = *(v18 + 1);
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
            v17 = *(*a1 + 5);
          }

          v21 = a2;
          if (v17)
          {
            if (*(v17 + 31))
            {
              v21 = v15;
            }

            else
            {
              v21 = a2;
            }
          }

          v22 = *(v21 + 1);
          v42 = *v21;
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          v23 = v20[1];
          v24 = v20[4];
          v25 = v20[5];
          v50 = 0;
          v51 = 0;
          v49 = 0;
          v26 = *(*a2 + 16);
          std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(&v49, 1uLL);
        }

        v15 += 2;
      }

      while (v15 != v14);
    }

    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, a2);
    v28 = *(*a2 + 48);
    v27 = *(*a2 + 56);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *(v28 + 88);
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      if ((v29 & 1) == 0)
      {
        v30 = *(*a2 + 56);
        v47 = *(*a2 + 48);
        v48 = v30;
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_34;
      }
    }

    else if ((*(v28 + 88) & 1) == 0)
    {
      v47 = *(*a2 + 48);
      v48 = 0;
LABEL_34:
      memset(v46, 0, sizeof(v46));
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(v46, *v41, v41[1], (v41[1] - *v41) >> 4);
      QP::GraphStructureStack::traverse(a1, &v47, v46, a4);
      v49 = v46;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v49);
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }
    }

    v32 = *(*a2 + 48);
    v31 = *(*a2 + 56);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v32 + 88) & 1) != 0 || (*(*a2 + 92))
    {
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }
    }

    else
    {
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (!v40)
      {
        v33 = v41[1];
        v34 = *(v33 - 8);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        v41[1] = v33 - 16;
      }
    }

    v35 = *a2;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(&v49, *(v35 + 64), *(v35 + 72), (*(v35 + 72) - *(v35 + 64)) >> 4);
    v36 = v49;
    for (i = v50; v36 != i; v36 += 2)
    {
      v38 = *v36;
      v39 = v36[1];
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((v38[1] & 0x8000000000000000) == 0 && (v38[11] & 1) == 0)
      {
        v44 = v38;
        v45 = v39;
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        memset(v43, 0, sizeof(v43));
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(v43, *v41, v41[1], (v41[1] - *v41) >> 4);
        QP::GraphStructureStack::traverse(a1, &v44, v43, a4);
        v52[0] = v43;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v52);
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }
      }

      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }
    }

    v52[0] = &v49;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v52);
    return;
  }

  v11 = *a2;
  if (*(*a2 + 48))
  {
    v12 = *(v11 + 64);
    v13 = *(v11 + 72);
    while (v12 != v13)
    {
      if ((*(*v12 + 8) & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      v12 += 16;
    }
  }
}

void sub_1C65A7224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  *(v27 - 136) = v26;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100]((v27 - 136));
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(a1);
}

void QP::GraphStructureStack::enumerateBranchesAtStateIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a3)
    {
      v5 = *(a1 + 16);
      if ((*(a1 + 24) - v5) >> 4 > a2)
      {
        v6 = (v5 + 16 * a2);
        v7 = *v6;
        v8 = v6[1];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          v11 = 0;
          v12 = 0;
          v13 = 0;
          *(&v10 + 1) = v8;
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          *(&v10 + 1) = 0;
        }

        *&v10 = v7;
        memset(v9, 0, sizeof(v9));
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(v9, 0, 0, 0);
        QP::GraphStructureStack::traverse(a1, &v10, v9, a3);
        v14 = v9;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v14);
        if (*(&v10 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
        }

        v14 = &v11;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v14);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }
    }
  }
}

void sub_1C65A73FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  *(v17 - 40) = v16;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100]((v17 - 40));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  *(v17 - 40) = &a15;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100]((v17 - 40));
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

uint64_t QP::GraphStructureStack::clear(QP::GraphStructureStack *this)
{
  v1 = this;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(this + 64, *(this + 8), *(this + 9));
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(v1 + 16, *(v1 + 2), *(v1 + 3));
  v2 = *(v1 + 5);
  v3 = *(v1 + 6);
  v1 = (v1 + 40);
  result = std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(v1, v2, v3);
  *(v1 + 6) = -1;
  *(v1 + 7) = -1;
  *(v1 + 8) = -1;
  return result;
}

void std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>,std::__wrap_iter<std::shared_ptr<QP::GraphStructureStack::Node>*>>(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 4;
      if (v18 >= a5)
      {
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v19 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>,std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(a1, (a3 + v17), a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v19 = (v7 + v17);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *>(v31, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v31[0] = 0;
    v12 = a5 + ((v10 - v11) >> 4);
    if (v12 >> 60)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    v15 = v14 >> 3;
    if (v14 >> 3 <= v12)
    {
      v15 = v12;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v33 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(a1, v16);
    }

    v20 = 16 * (v13 >> 4);
    v32 = 0;
    v21 = (v20 + 16 * a5);
    v22 = v20;
    do
    {
      *v22 = *v7;
      v23 = v7[1];
      *(v22 + 1) = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v22 += 16;
      v7 += 2;
    }

    while (v22 != v21);
    memcpy(v21, v5, a1[1] - v5);
    v24 = *a1;
    v25 = &v21[a1[1] - v5];
    a1[1] = v5;
    v26 = v5 - v24;
    v27 = (v20 - (v5 - v24));
    memcpy(v27, v24, v26);
    v28 = *a1;
    *a1 = v27;
    a1[1] = v25;
    v29 = a1[2];
    a1[2] = v32;
    v31[2] = v28;
    v32 = v29;
    v31[0] = v28;
    v31[1] = v28;
    std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v31);
    return v20;
  }

  return v5;
}

void *std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *>(&v11, a2, v7, v6);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>,std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>,std::shared_ptr<QP::GraphStructureStack::Node>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>,std::shared_ptr<QP::GraphStructureStack::Node>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>,std::shared_ptr<QP::GraphStructureStack::Node>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>,std::shared_ptr<QP::GraphStructureStack::Node>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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

uint64_t std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C65A7B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(a1, a2);
  }

  std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,false>(uint64_t *a1, __int128 *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 1);
  v95 = a2 - 1;
  v97 = (a2 - 3);
  v98 = (a2 - 2);
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if ((*a3)(v8, v9))
        {
          v88 = *v9;
          *v9 = *(a2 - 2);
          *(a2 - 2) = v88;
          v89 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v89;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v78 = (*a3)(v9 + 2, v9);
      v79 = (*a3)(v8, v9 + 2);
      if (v78)
      {
        v81 = v9 + 1;
        v80 = *v9;
        if (v79)
        {
          *v9 = *(a2 - 2);
        }

        else
        {
          v93 = *(v9 + 1);
          v9[3] = v9[1];
          v81 = v9 + 3;
          v9[2] = v80;
          *v9 = v93;
          if (!(*a3)(v8, v9 + 2))
          {
            return;
          }

          v80 = v9[2];
          v9[2] = *(a2 - 2);
        }

        *(a2 - 2) = v80;
      }

      else
      {
        if (!v79)
        {
          return;
        }

        v90 = v9[2];
        v9[2] = *(a2 - 2);
        *(a2 - 2) = v90;
        v91 = v9[3];
        v95 = v9 + 3;
        v9[3] = *(a2 - 1);
        *(a2 - 1) = v91;
        if (!(*a3)(v9 + 2, v9))
        {
          return;
        }

        v92 = *v9;
        *v9 = v9[2];
        v9[2] = v92;
        v81 = v9 + 1;
      }

      v94 = *v81;
      *v81 = *v95;
      *v95 = v94;
      return;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(v9, v9 + 2, v9 + 4, v9 + 6, a3);
      if ((*a3)(v8, v9 + 6))
      {
        v82 = v9[6];
        v9[6] = *(a2 - 2);
        *(a2 - 2) = v82;
        v83 = v9[7];
        v9[7] = *(a2 - 1);
        *(a2 - 1) = v83;
        if ((*a3)(v9 + 6, v9 + 4))
        {
          v84 = *(v9 + 2);
          *(v9 + 2) = *(v9 + 3);
          *(v9 + 3) = v84;
          if ((*a3)(v9 + 4, v9 + 2))
          {
            v85 = *(v9 + 1);
            *(v9 + 1) = *(v9 + 2);
            *(v9 + 2) = v85;
            if ((*a3)(v9 + 2, v9))
            {
              v86 = *v9;
              *v9 = *(v9 + 1);
              *(v9 + 1) = v86;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    v15 = *a3;
    v100 = v11;
    if (v12 >= 0x81)
    {
      v16 = v15(&v9[2 * (v12 >> 1)], v9);
      v17 = (*a3)(v8, v14);
      v96 = v13;
      if (v16)
      {
        v19 = a1 + 1;
        v18 = *a1;
        if (v17)
        {
          *a1 = *v8;
          goto LABEL_27;
        }

        v32 = a1[1];
        *a1 = *v14;
        v14[1] = v32;
        v19 = v14 + 1;
        *v14 = v18;
        if ((*a3)(v8, v14))
        {
          v18 = *v14;
          *v14 = *v8;
LABEL_27:
          *v8 = v18;
          v26 = a2 - 1;
LABEL_28:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 2);
        *(a2 - 2) = v24;
        v26 = v14 + 1;
        v25 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v25;
        if ((*a3)(v14, a1))
        {
          v27 = *a1;
          *a1 = *v14;
          v19 = a1 + 1;
          *v14 = v27;
          goto LABEL_28;
        }
      }

      v34 = v14 - 2;
      v35 = (*a3)(v14 - 2, a1 + 2);
      v36 = (*a3)(v98, v14 - 2);
      if (v35)
      {
        v37 = a1[2];
        v38 = a1 + 3;
        if (v36)
        {
          a1[2] = *v98;
          *v98 = v37;
          v39 = a2 - 3;
          v40 = v96;
          goto LABEL_40;
        }

        v45 = *v38;
        *(a1 + 1) = *v34;
        *(v14 - 1) = v45;
        v38 = v14 - 1;
        *v34 = v37;
        v40 = v96;
        if ((*a3)(v98, v14 - 2))
        {
          v46 = *v34;
          *v34 = *v98;
          *v98 = v46;
          v39 = a2 - 3;
LABEL_40:
          v47 = *v38;
          *v38 = *v39;
          *v39 = v47;
        }
      }

      else
      {
        v40 = v96;
        if (v36)
        {
          v41 = *v34;
          *v34 = *(a2 - 4);
          *(a2 - 4) = v41;
          v39 = v14 - 1;
          v42 = *(v14 - 1);
          *(v14 - 1) = *(a2 - 3);
          *(a2 - 3) = v42;
          if ((*a3)(v14 - 2, a1 + 2))
          {
            v43 = a1[2];
            a1[2] = *v34;
            *v34 = v43;
            v38 = a1 + 3;
            goto LABEL_40;
          }
        }
      }

      v48 = v40 + 1;
      v49 = &a1[2 * v40 + 2];
      v50 = (*a3)(v49, a1 + 4);
      v51 = (*a3)(v97, v49);
      v52 = v8;
      if (v50)
      {
        v53 = a1[4];
        v54 = a1 + 5;
        if (v51)
        {
          v55 = a2 - 3;
          a1[4] = *v97;
          goto LABEL_49;
        }

        v60 = *v54;
        *(a1 + 2) = *v49;
        v49[1] = v60;
        v54 = v49 + 1;
        *v49 = v53;
        if ((*a3)(v97, v49))
        {
          v53 = *v49;
          v55 = a2 - 3;
          *v49 = *v97;
LABEL_49:
          *v55 = v53;
          v58 = a2 - 5;
LABEL_50:
          v61 = *v54;
          *v54 = *v58;
          *v58 = v61;
        }
      }

      else if (v51)
      {
        v56 = *v49;
        *v49 = *(a2 - 6);
        *(a2 - 6) = v56;
        v58 = v49 + 1;
        v57 = v49[1];
        v49[1] = *(a2 - 5);
        *(a2 - 5) = v57;
        if ((*a3)(v49, a1 + 4))
        {
          v59 = a1[4];
          a1[4] = *v49;
          *v49 = v59;
          v54 = a1 + 5;
          goto LABEL_50;
        }
      }

      v62 = (*a3)(v14, v14 - 2);
      v63 = (*a3)(v49, v14);
      if (v62)
      {
        v64 = *v34;
        v8 = v52;
        if (v63)
        {
          *v34 = *v49;
          *v49 = v64;
          v65 = v14 - 1;
          goto LABEL_59;
        }

        v68 = *v14;
        v14[1] = *(v14 - 1);
        *v14 = v64;
        *v34 = v68;
        if ((*a3)(v49, v14))
        {
          v69 = *v14;
          *v14 = *v49;
          *v49 = v69;
          v65 = v14 + 1;
LABEL_59:
          v70 = &a1[2 * v48];
          v71 = *v65;
          *v65 = v70[1];
          v70[1] = v71;
        }
      }

      else
      {
        v8 = v52;
        if (v63)
        {
          v66 = *v14;
          *v14 = *v49;
          *v49 = v66;
          if ((*a3)(v14, v14 - 2))
          {
            v67 = *v34;
            *v34 = *v14;
            v65 = v14 - 1;
            *v14 = v67;
            v48 = v96;
            goto LABEL_59;
          }
        }
      }

      v72 = *a1;
      *a1 = *v14;
      v23 = a1 + 1;
      *v14 = v72;
      v31 = v14 + 1;
LABEL_61:
      v73 = *v23;
      *v23 = *v31;
      *v31 = v73;
      goto LABEL_62;
    }

    v20 = v15(v9, &v9[2 * (v12 >> 1)]);
    v21 = (*a3)(v8, v9);
    if (v20)
    {
      v23 = v14 + 1;
      v22 = *v14;
      if (v21)
      {
        *v14 = *v8;
LABEL_37:
        *v8 = v22;
        v31 = a2 - 1;
        goto LABEL_61;
      }

      v44 = v14[1];
      *v14 = *v9;
      v9[1] = v44;
      v23 = v9 + 1;
      *v9 = v22;
      if ((*a3)(v8, v9))
      {
        v22 = *v9;
        *v9 = *v8;
        goto LABEL_37;
      }
    }

    else if (v21)
    {
      v28 = *v9;
      *v9 = *(a2 - 2);
      *(a2 - 2) = v28;
      v29 = v9[1];
      v9[1] = *(a2 - 1);
      *(a2 - 1) = v29;
      if ((*a3)(v9, v14))
      {
        v30 = *v14;
        *v14 = *v9;
        *v9 = v30;
        v23 = v14 + 1;
        v31 = v9 + 1;
        goto LABEL_61;
      }
    }

LABEL_62:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 2, a1) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::GraphStructureStack::Node> *,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node>&,std::shared_ptr<QP::GraphStructureStack::Node>&)>(a1, a2, a3);
      v75 = v100;
      goto LABEL_69;
    }

    v74 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::GraphStructureStack::Node> *,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node>&,std::shared_ptr<QP::GraphStructureStack::Node>&)>(a1, a2, a3);
    v75 = v100;
    if ((v76 & 1) == 0)
    {
      goto LABEL_67;
    }

    v77 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(a1, v74, a3);
    v9 = v74 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(v74 + 2, a2, a3))
    {
      a4 = -v100;
      a2 = v74;
      if (v77)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v100 + 1;
    if (!v77)
    {
LABEL_67:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,false>(a1, v74, a3, -v100, a5 & 1);
      v9 = v74 + 2;
LABEL_69:
      a5 = 0;
      a4 = -v75;
      goto LABEL_2;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(v9, v9 + 2, v9 + 4, v8, a3);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    v13 = a1 + 1;
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v16 = a3 + 1;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = a2 + 1;
    v18 = a1[1];
    a1[1] = a2[1];
    a2[1] = v18;
    if ((*a5)(a3, a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v16 = a2 + 1;
    v15 = a2[1];
    a2[1] = a3[1];
    a3[1] = v15;
    if ((*a5)(a2, a1))
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = a1 + 1;
      *a2 = v17;
LABEL_10:
      v19 = *v13;
      *v13 = *v16;
      *v16 = v19;
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = a3[1];
    a3[1] = a4[1];
    a4[1] = v22;
    result = (*a5)(a3, a2);
    if (result)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = a2[1];
      a2[1] = a3[1];
      a3[1] = v24;
      result = (*a5)(a2, a1);
      if (result)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = a1[1];
        a1[1] = a2[1];
        a2[1] = v26;
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 16);
    if (a1 + 16 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v5;
        if ((*a3)(v5, v9))
        {
          v18 = *v8;
          *v8 = 0;
          *(v8 + 8) = 0;
          v10 = v7;
          while (1)
          {
            v11 = a1 + v10;
            v12 = *(a1 + v10);
            *v11 = 0;
            *(v11 + 8) = 0;
            v13 = *(a1 + v10 + 24);
            *(v11 + 16) = v12;
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            if (!v10)
            {
              break;
            }

            v14 = (*a3)(&v18, a1 + v10 - 16);
            v10 -= 16;
            if ((v14 & 1) == 0)
            {
              v15 = a1 + v10 + 16;
              goto LABEL_12;
            }
          }

          v15 = a1;
LABEL_12:
          v16 = v18;
          v18 = 0uLL;
          v17 = *(v15 + 8);
          *v15 = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (*(&v18 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
          }
        }

        v5 = (v8 + 16);
        v7 += 16;
      }

      while (v8 + 16 != a2);
    }
  }
}

void sub_1C65A87B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 1;
    if (a1 + 1 != a2)
    {
      v7 = a1 - 1;
      do
      {
        v8 = v4;
        v4 = v5;
        if ((*a3)(v5, v8))
        {
          v15 = *v4;
          *v4 = 0;
          *(v4 + 1) = 0;
          v9 = v7;
          do
          {
            v10 = v9[1];
            *(v9 + 2) = 0;
            *(v9 + 3) = 0;
            v11 = *(v9 + 5);
            v9[2] = v10;
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }

            v12 = (*a3)(&v15, v9--);
          }

          while ((v12 & 1) != 0);
          v13 = v15;
          v15 = 0uLL;
          v14 = *(v9 + 5);
          v9[2] = v13;
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if (*(&v15 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
          }
        }

        v5 = v4 + 1;
        ++v7;
      }

      while (v4 + 1 != a2);
    }
  }
}

void sub_1C65A88B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::GraphStructureStack::Node> *,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node>&,std::shared_ptr<QP::GraphStructureStack::Node>&)>(__int128 *a1, void *a2, uint64_t (**a3)(__int128 *, void *))
{
  v4 = a2;
  v17 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  if ((*a3)(&v17, a2 - 2))
  {
    v6 = a1;
    do
    {
      v6 += 2;
    }

    while (((*a3)(&v17, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v17, v7);
      v7 = v6 + 2;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    v10 = v6[1];
    v6[1] = v4[1];
    v4[1] = v10;
    do
    {
      v6 += 2;
    }

    while (!(*a3)(&v17, v6));
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  v11 = (v6 - 2);
  if (v6 - 2 != a1)
  {
    v12 = *v11;
    *v11 = 0;
    *(v6 - 1) = 0;
    v13 = *(a1 + 1);
    *a1 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v14 = v17;
  v17 = 0uLL;
  v15 = *(v6 - 1);
  *(v6 - 1) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
  }

  return v6;
}

void sub_1C65A8A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::GraphStructureStack::Node> *,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node>&,std::shared_ptr<QP::GraphStructureStack::Node>&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v19 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  do
  {
    v7 = (*a3)(&a1[++v6], &v19);
  }

  while ((v7 & 1) != 0);
  v8 = &a1[v6];
  if (v6 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      --a2;
    }

    while (((*a3)(a2, &v19) & 1) == 0);
  }

  else
  {
    do
    {
      --a2;
    }

    while (!(*a3)(a2, &v19));
  }

  v9 = &a1[v6];
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      v12 = *(v9 + 1);
      *(v9 + 1) = *(v10 + 1);
      *(v10 + 1) = v12;
      do
      {
        ++v9;
      }

      while (((*a3)(v9, &v19) & 1) != 0);
      do
      {
        --v10;
      }

      while (!(*a3)(v10, &v19));
    }

    while (v9 < v10);
  }

  v13 = v9 - 1;
  if (v9 - 1 != a1)
  {
    v14 = *v13;
    *v13 = 0;
    *(v9 - 1) = 0;
    v15 = *(a1 + 1);
    *a1 = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  v16 = v19;
  v19 = 0uLL;
  v17 = *(v9 - 1);
  *(v9 - 1) = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }

  return v9 - 1;
}

void sub_1C65A8BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = (*a3)(a1 + 2, a1);
      v15 = (*a3)(a2 - 2, a1 + 2);
      if (v14)
      {
        v17 = a1 + 1;
        v16 = *a1;
        if (v15)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          v30 = *(a1 + 1);
          a1[3] = a1[1];
          v17 = a1 + 3;
          a1[2] = v16;
          *a1 = v30;
          if (!(*a3)(a2 - 2, a1 + 2))
          {
            return 1;
          }

          v16 = a1[2];
          a1[2] = *(a2 - 2);
        }

        *(a2 - 2) = v16;
        v25 = a2 - 1;
      }

      else
      {
        if (!v15)
        {
          return 1;
        }

        v23 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v23;
        v25 = a1 + 3;
        v24 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v24;
        if (!(*a3)(a1 + 2, a1))
        {
          return 1;
        }

        v26 = *a1;
        *a1 = a1[2];
        a1[2] = v26;
        v17 = a1 + 1;
      }

      v31 = *v17;
      *v17 = *v25;
      *v25 = v31;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        if ((*a3)(a2 - 2, a1 + 6))
        {
          v9 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*a3)(a1 + 6, a1 + 4))
          {
            v11 = *(a1 + 2);
            *(a1 + 2) = *(a1 + 3);
            *(a1 + 3) = v11;
            if ((*a3)(a1 + 4, a1 + 2))
            {
              v12 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v12;
              if ((*a3)(a1 + 2, a1))
              {
                v13 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v13;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 2, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      v8 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v18 = a1 + 4;
  v19 = (*a3)(a1 + 2, a1);
  v20 = (*a3)(a1 + 4, a1 + 2);
  if (v19)
  {
    v22 = a1 + 1;
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[4];
    }

    else
    {
      v32 = *(a1 + 1);
      a1[3] = a1[1];
      v22 = a1 + 3;
      a1[2] = v21;
      *a1 = v32;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_35;
      }

      v21 = a1[2];
      a1[2] = a1[4];
    }

    a1[4] = v21;
    v28 = a1 + 5;
    goto LABEL_34;
  }

  if (v20)
  {
    v27 = *(a1 + 1);
    *(a1 + 1) = *(a1 + 2);
    *(a1 + 2) = v27;
    if ((*a3)(a1 + 2, a1))
    {
      v28 = a1 + 3;
      v29 = *a1;
      *a1 = a1[2];
      a1[2] = v29;
      v22 = a1 + 1;
LABEL_34:
      v33 = *v22;
      *v22 = *v28;
      *v28 = v33;
    }
  }

LABEL_35:
  v34 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    if ((*a3)(v34, v18))
    {
      v46 = *v34;
      *v34 = 0;
      v34[1] = 0;
      v37 = v35;
      while (1)
      {
        v38 = a1 + v37;
        v39 = *(a1 + v37 + 32);
        *(v38 + 4) = 0;
        *(v38 + 5) = 0;
        v40 = *(a1 + v37 + 56);
        *(v38 + 3) = v39;
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if (v37 == -32)
        {
          break;
        }

        v41 = (*a3)(&v46, (a1 + v37 + 16));
        v37 -= 16;
        if ((v41 & 1) == 0)
        {
          v42 = a1 + v37 + 48;
          goto LABEL_45;
        }
      }

      v42 = a1;
LABEL_45:
      v43 = v46;
      v46 = 0uLL;
      v44 = *(v42 + 8);
      *v42 = v43;
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if (*(&v46 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v46 + 1));
      }

      if (++v36 == 8)
      {
        return v34 + 2 == a2;
      }
    }

    v18 = v34;
    v35 += 16;
    v34 += 2;
    if (v34 == a2)
    {
      return 1;
    }
  }
}

void sub_1C65A9010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,std::shared_ptr<QP::GraphStructureStack::Node>*>(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int (**a4)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          *(v12 + 1) = *(a1 + 8);
          *(a1 + 8) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(a1, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(uint64_t a1, unsigned int (**a2)(__int128 *, uint64_t), uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 4)
    {
      v10 = (a4 - a1) >> 3;
      v11 = v10 + 1;
      v12 = (a1 + 16 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(v12, (v12 + 1)))
      {
        ++v12;
        v11 = v13;
      }

      if (((*a2)(v12, v5) & 1) == 0)
      {
        v20 = *v5;
        *v5 = 0;
        *(v5 + 1) = 0;
        do
        {
          v14 = v12;
          v15 = *v12;
          *v12 = 0;
          *(v12 + 1) = 0;
          v16 = *(v5 + 1);
          *v5 = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = (a1 + 16 * v17);
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v17;
          }

          else if ((*a2)((a1 + 16 * v17), (v12 + 1)))
          {
            ++v12;
          }

          else
          {
            v11 = v17;
          }

          v5 = v14;
        }

        while (!(*a2)(v12, &v20));
        v18 = v20;
        v20 = 0uLL;
        v19 = *(v14 + 1);
        *v14 = v18;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (*(&v20 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
        }
      }
    }
  }
}

void sub_1C65A92B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 16))
    {
      v15 = *(v9 + 1);
      *v10 = v8;
      *(v10 + 1) = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = *(v9 + 1);
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 1);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_1C65A93C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(__int128 *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 2;
      if ((*a2)((v8 + 1), (v8 + 2)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    v13 = *v9;
    *v9 = 0;
    *(v9 + 1) = 0;
    v14 = *(a1 + 1);
    *a1 = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 16 * (v4 >> 1));
    v9 = (a2 - 16);
    if ((*a3)(v8, (a2 - 16)))
    {
      v15 = *v9;
      *v9 = 0;
      *(v9 + 1) = 0;
      do
      {
        v10 = v8;
        v11 = *v8;
        *v8 = 0;
        *(v8 + 1) = 0;
        v12 = *(v9 + 1);
        *v9 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 16 * v7);
        v9 = v10;
      }

      while (((*a3)(v8, &v15) & 1) != 0);
      v13 = v15;
      v15 = 0uLL;
      v14 = *(v10 + 1);
      *v10 = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        if (*(&v15 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
        }
      }
    }
  }
}

void sub_1C65A9570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__shared_ptr_emplace<QP::GraphStructureStack::Node>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E8370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

void QP::GraphStructureStack::Node::~Node(QP::GraphStructureStack::Node *this)
{
  v3 = (this + 64);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::default_delete<QP::Branch>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 40);
    if (v2)
    {
      *(a2 + 48) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1C695B850);
  }
}

void QP::HolidayReference::load(QP::HolidayReference *this, const __CFURL *a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    QP::getFileSystemRepresentationFromCFURL(a2, a2);
  }
}

void sub_1C65A9800(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

QP::HolidayReference *QP::HolidayReference::HolidayReference(QP::HolidayReference *this, const __CFURL *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  QP::HolidayReference::load(this, a2);
  return this;
}

void QP::HolidayReference::~HolidayReference(QP::HolidayReference *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    munmap(v2, *this);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }
}

BOOL QP::HolidayReference::containsLookupKey(QP::HolidayReference *this, CFStringRef theString)
{
  result = 0;
  v12[1] = *MEMORY[0x1E69E9840];
  if (theString && *(this + 2))
  {
    Length = CFStringGetLength(theString);
    v12[0] = Length;
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
    v8 = &v11[-v7];
    bzero(&v11[-v7], MaximumSizeForEncoding);
    v13.location = 0;
    v13.length = Length;
    CFStringGetBytes(theString, v13, 0x8000100u, 0x2Du, 0, v8, MaximumSizeForEncoding, v12);
    v8[v12[0]] = 0;
    memset(&v11[8], 0, 24);
    v9 = *(this + 2);
    result = _MDPlistContainerGetPlistObjectAtKeyPath() != 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef QP::HolidayReference::copyStringForLookupKey(QP::HolidayReference *this, CFStringRef theString)
{
  result = 0;
  v17[1] = *MEMORY[0x1E69E9840];
  if (theString && *(this + 2))
  {
    Length = CFStringGetLength(theString);
    v17[0] = Length;
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
    v8 = &v12 - v7;
    bzero(&v12 - v7, MaximumSizeForEncoding);
    v18.location = 0;
    v18.length = Length;
    CFStringGetBytes(theString, v18, 0x8000100u, 0x2Du, 0, v8, MaximumSizeForEncoding, v17);
    v8[v17[0]] = 0;
    v15 = 0uLL;
    v16 = 0;
    v9 = *(this + 2);
    if (_MDPlistContainerGetPlistObjectAtKeyPath())
    {
      v14 = 0;
      v12 = v15;
      v13 = v16;
      Value = _MDPlistStringGetValue();
      result = CFStringCreateWithBytes(*MEMORY[0x1E695E480], Value, v14, 0x8000100u, 0);
    }

    else
    {
      result = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL QP::HolidayReference::getIntegerForLookupKey(QP::HolidayReference *this, CFStringRef theString, uint64_t *a3)
{
  v3 = 0;
  v19[1] = *MEMORY[0x1E69E9840];
  if (theString)
  {
    if (*(this + 2))
    {
      Length = CFStringGetLength(theString);
      v19[0] = Length;
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
      v10 = &v15 - v9;
      bzero(&v15 - v9, MaximumSizeForEncoding);
      v20.location = 0;
      v20.length = Length;
      CFStringGetBytes(theString, v20, 0x8000100u, 0x2Du, 0, v10, MaximumSizeForEncoding, v19);
      v10[v19[0]] = 0;
      v17 = 0uLL;
      v18 = 0;
      v11 = *(this + 2);
      PlistObjectAtKeyPath = _MDPlistContainerGetPlistObjectAtKeyPath();
      v3 = PlistObjectAtKeyPath != 0;
      if (a3)
      {
        if (PlistObjectAtKeyPath)
        {
          v15 = v17;
          v16 = v18;
          *a3 = _MDPlistNumberGetIntValue();
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

void QP::HolidayReference::normalizeDateValues(QP::HolidayReference *this, __CFDictionary *a2, unsigned int a3, uint64_t a4)
{
  if (a2 && *(this + 2))
  {
    at = 0.0;
    v7 = *MEMORY[0x1E695E480];
    v8 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], @"gregorian");
    calendar = v8;
    v9 = CFDictionaryContainsKey(a2, @"Day");
    v10 = CFDictionaryContainsKey(a2, @"Weekday");
    v11 = CFDictionaryContainsKey(a2, @"WeekOfYear");
    v12 = CFDictionaryContainsKey(a2, @"WeekdayOrdinal");
    if (a4 && v9)
    {
      Value = CFDictionaryGetValue(a2, @"Day");
      v14 = CFDictionaryGetValue(a2, @"Month");
      valuePtr = 0;
      v37 = a3;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
      CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
      CFCalendarComposeAbsoluteTime(v8, &at, "dMy", HIDWORD(valuePtr), valuePtr, a3);
      CFCalendarAddComponents(v8, &at, 0, "d", a4);
      CFCalendarDecomposeAbsoluteTime(v8, at, "dMy", &valuePtr + 4, &valuePtr, &v37);
      v15 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr + 4);
      v36 = v15;
      v16 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
      v35 = v16;
      v17 = CFNumberCreate(v7, kCFNumberIntType, &v37);
      v34 = v17;
      CFDictionarySetValue(a2, @"Day", v15);
      CFDictionarySetValue(a2, @"Month", v16);
      CFDictionarySetValue(a2, @"Year", v17);
      if (v17)
      {
        CFRelease(v17);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (!v15)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v12)
      {
        v18 = CFDictionaryGetValue(a2, @"Weekday");
        v19 = CFDictionaryGetValue(a2, @"WeekdayOrdinal");
        v20 = CFDictionaryGetValue(a2, @"Month");
        valuePtr = 0;
        v37 = 0;
        v33 = 0;
        v31 = a3;
        v32 = 0;
        CFNumberGetValue(v18, kCFNumberIntType, &valuePtr + 4);
        CFNumberGetValue(v19, kCFNumberIntType, &v37);
        CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
        length = CFCalendarGetMaximumRangeOfUnit(v8, 0x200uLL).length;
        CFCalendarComposeAbsoluteTime(v8, &at, "My", valuePtr, v31);
        CFCalendarDecomposeAbsoluteTime(v8, at, "E", &v33);
        if (SHIDWORD(valuePtr) >= v33)
        {
          if (v33 < SHIDWORD(valuePtr))
          {
            CFCalendarAddComponents(v8, &at, 0, "d", (HIDWORD(valuePtr) - v33));
          }
        }

        else
        {
          CFCalendarAddComponents(v8, &at, 0, "d", length - v33 + SHIDWORD(valuePtr));
        }

        if (v37 >= 2)
        {
          CFCalendarAddComponents(v8, &at, 0, "F", (v37 - 1));
        }

        else if (v37 == -1)
        {
          do
          {
            CFCalendarDecomposeAbsoluteTime(v8, at, "M", &v32);
            v8 = calendar;
            if (v32 == valuePtr)
            {
              v27 = 1;
            }

            else
            {
              v27 = -1;
            }

            CFCalendarAddComponents(calendar, &at, 0, "w", v27);
          }

          while (v32 == valuePtr);
        }

        CFCalendarAddComponents(v8, &at, 0, "d", a4);
        v8 = calendar;
        CFCalendarDecomposeAbsoluteTime(calendar, at, "Ewy", &valuePtr + 4, &v33 + 4, &v31);
        v28 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr + 4);
        v36 = v28;
        v29 = CFNumberCreate(v7, kCFNumberIntType, &v33 + 4);
        v35 = v29;
        v30 = CFNumberCreate(v7, kCFNumberIntType, &v31);
        v34 = v30;
        CFDictionaryRemoveValue(a2, @"WeekdayOrdinal");
        CFDictionaryRemoveValue(a2, @"Month");
        CFDictionarySetValue(a2, @"Weekday", v28);
        CFDictionarySetValue(a2, @"WeekOfYear", v29);
        CFDictionarySetValue(a2, @"Year", v30);
        if (v30)
        {
          CFRelease(v30);
        }

        if (v29)
        {
          CFRelease(v29);
        }

        if (v28)
        {
          CFRelease(v28);
        }

        goto LABEL_40;
      }

      if (!v10 || !v11)
      {
        if (!(v10 | v9))
        {
          CFDictionaryRemoveAllValues(a2);
        }

        goto LABEL_40;
      }

      v22 = CFDictionaryGetValue(a2, @"Weekday");
      v23 = CFDictionaryGetValue(a2, @"WeekOfYear");
      v24 = CFDictionaryGetValue(a2, @"Year");
      valuePtr = 0;
      v37 = 0;
      CFNumberGetValue(v22, kCFNumberIntType, &valuePtr + 4);
      CFNumberGetValue(v23, kCFNumberIntType, &valuePtr);
      CFNumberGetValue(v24, kCFNumberIntType, &v37);
      CFCalendarComposeAbsoluteTime(v8, &at, "EwY", HIDWORD(valuePtr), valuePtr, v37);
      CFCalendarAddComponents(v8, &at, 0, "d", a4);
      CFCalendarDecomposeAbsoluteTime(v8, at, "EwY", &valuePtr + 4, &valuePtr, &v37);
      v15 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr + 4);
      v36 = v15;
      v25 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
      v35 = v25;
      v26 = CFNumberCreate(v7, kCFNumberIntType, &v37);
      v34 = v26;
      CFDictionarySetValue(a2, @"Weekday", v15);
      CFDictionarySetValue(a2, @"WeekOfYear", v25);
      CFDictionarySetValue(a2, @"Year", v26);
      if (v26)
      {
        CFRelease(v26);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (!v15)
      {
LABEL_40:
        if (v8)
        {
          CFRelease(v8);
        }

        return;
      }
    }

    CFRelease(v15);
    goto LABEL_40;
  }
}

void sub_1C65AA384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset(va2, 0);
  _Unwind_Resume(a1);
}

void QP::HolidayReference::updateDateValuesForLookupKey(QP::HolidayReference *this, __CFDictionary *a2, const __CFString *a3, unsigned int a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v43 = a4;
  if (!a3 || !*(this + 2))
  {
    goto LABEL_64;
  }

  v42 = 0;
  v7 = *MEMORY[0x1E695E480];
  v42 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@/Type", a3);
  if (QP::HolidayReference::containsLookupKey(this, v42))
  {
    v8 = QP::HolidayReference::copyStringForLookupKey(this, v42);
    v41[1] = v8;
    if (CFStringsAreEqual(v8, @"AbsoluteDate"))
    {
      *&valuePtr = 0;
      v33[0] = 0;
      v9 = CFStringCreateWithFormat(v7, 0, @"%@/Day", a3);
      if (v42)
      {
        CFRelease(v42);
      }

      v42 = v9;
      QP::HolidayReference::getIntegerForLookupKey(this, v9, &valuePtr);
      v10 = CFStringCreateWithFormat(v7, 0, @"%@/Month", a3);
      if (v42)
      {
        CFRelease(v42);
      }

      v42 = v10;
      QP::HolidayReference::getIntegerForLookupKey(this, v10, v33);
      if ((valuePtr & 0x8000000000000000) != 0 || v33[0] < 0)
      {
        goto LABEL_60;
      }

      v11 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
      v41[0] = v11;
      if (v11)
      {
        CFDictionarySetValue(a2, @"Day", v11);
      }

      v12 = CFNumberCreate(v7, kCFNumberIntType, v33);
      *v40 = v12;
      if (v12)
      {
        CFDictionarySetValue(a2, @"Month", v12);
      }

      v13 = CFNumberCreate(v7, kCFNumberIntType, &v43);
      v39 = v13;
      if (v13)
      {
        CFDictionarySetValue(a2, @"Year", v13);
        CFRelease(v13);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (!v11)
      {
        goto LABEL_60;
      }

      goto LABEL_20;
    }

    if (CFStringsAreEqual(v8, @"MonthRelativeWeekDay"))
    {
      *&valuePtr = 0;
      v33[0] = 0;
      v41[0] = 0;
      v14 = CFStringCreateWithFormat(v7, 0, @"%@/WeekDay", a3);
      if (v42)
      {
        CFRelease(v42);
      }

      v42 = v14;
      QP::HolidayReference::getIntegerForLookupKey(this, v14, &valuePtr);
      v15 = CFStringCreateWithFormat(v7, 0, @"%@/Month", a3);
      if (v42)
      {
        CFRelease(v42);
      }

      v42 = v15;
      QP::HolidayReference::getIntegerForLookupKey(this, v15, v33);
      v16 = CFStringCreateWithFormat(v7, 0, @"%@/WeekDayNumberInMonth", a3);
      if (v42)
      {
        CFRelease(v42);
      }

      v42 = v16;
      QP::HolidayReference::getIntegerForLookupKey(this, v16, v41);
      if ((valuePtr & 0x8000000000000000) != 0 || v33[0] < 0)
      {
        goto LABEL_60;
      }

      v11 = CFCalendarCreateWithIdentifier(v7, @"gregorian");
      *v40 = v11;
      if (MEMORY[0x1C695AA20]() == 1)
      {
        if (valuePtr == 7)
        {
          v17 = 1;
        }

        else
        {
          v17 = valuePtr + 1;
        }

        *&valuePtr = v17;
      }

      v24 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
      v39 = v24;
      if (v24)
      {
        CFDictionarySetValue(a2, @"Weekday", v24);
      }

      v25 = CFNumberCreate(v7, kCFNumberIntType, v33);
      v38 = v25;
      if (v25)
      {
        CFDictionarySetValue(a2, @"Month", v25);
      }

      v26 = CFNumberCreate(v7, kCFNumberIntType, v41);
      v37 = v26;
      if (v26)
      {
        CFDictionarySetValue(a2, @"WeekdayOrdinal", v26);
        CFRelease(v26);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (!v11)
      {
        goto LABEL_60;
      }

LABEL_20:
      CFRelease(v11);
      goto LABEL_60;
    }

    if (CFStringsAreEqual(v8, @"DateList"))
    {
      v18 = CFStringCreateWithFormat(v7, 0, @"%@/%d", a3, v43);
      if (v42)
      {
        CFRelease(v42);
      }

      v42 = v18;
      Length = CFStringGetLength(v18);
      v41[0] = Length;
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v21 = v31 - ((MEMORY[0x1EEE9AC00](MaximumSizeForEncoding) + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v21, MaximumSizeForEncoding);
      v45.location = 0;
      v45.length = Length;
      CFStringGetBytes(v42, v45, 0x8000100u, 0x2Du, 0, v21, MaximumSizeForEncoding, v41);
      v21[v41[0]] = 0;
      valuePtr = 0uLL;
      v36 = 0;
      v22 = *(this + 2);
      if (_MDPlistContainerGetPlistObjectAtKeyPath())
      {
        *v33 = valuePtr;
        v34 = v36;
        PlistObjectType = _MDPlistGetPlistObjectType();
        if (PlistObjectType == 241)
        {
          *v33 = valuePtr;
          v34 = v36;
          if (_MDPlistDictionaryGetCount())
          {
            *v33 = valuePtr;
            v34 = v36;
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 0x40000000;
            v31[2] = ___ZNK2QP16HolidayReference28updateDateValuesForLookupKeyEP14__CFDictionaryPK10__CFStringi_block_invoke;
            v31[3] = &__block_descriptor_tmp_3;
            v31[4] = a2;
            v32 = v43;
            _MDPlistDictionaryIterate();
          }
        }

        else if (PlistObjectType == 240)
        {
          CFDictionarySetValue(a2, @"List", *MEMORY[0x1E695E4D0]);
        }
      }

      goto LABEL_60;
    }

    if (CFStringsAreEqual(v8, @"SpecialDateRelativeDate"))
    {
      if (!CFStringHasPrefix(a3, @"/easter"))
      {
        v28 = CFStringCreateWithFormat(v7, 0, @"%@/SpecialDate", a3);
        nlp::CFScopedPtr<__CFString const*>::reset(&v42, v28);
        *&valuePtr = QP::HolidayReference::copyStringForLookupKey(this, v42);
        if (valuePtr)
        {
          v29 = CFStringCreateWithFormat(v7, 0, @"%@/RelativeDays", a3);
          nlp::CFScopedPtr<__CFString const*>::reset(&v42, v29);
          v33[0] = 0;
          QP::HolidayReference::getIntegerForLookupKey(this, v42, v33);
          v41[0] = CFNumberCreate(v7, kCFNumberIntType, v33);
          if (v41[0])
          {
            CFDictionarySetValue(a2, @"RootHoliday", valuePtr);
            CFDictionarySetValue(a2, @"DayOffset", v41[0]);
          }

          nlp::CFScopedPtr<__CFNumber const*>::reset(v41, 0);
        }

        else
        {
          CFDictionarySetValue(a2, @"SpecialDate", *MEMORY[0x1E695E4D0]);
        }

        nlp::CFScopedPtr<__CFString const*>::reset(&valuePtr, 0);
        goto LABEL_60;
      }

      v40[0] = 1;
      LODWORD(v39) = 1;
      if (CFStringHasSuffix(a3, @"JULIAN"))
      {
        QP::extractJulianEasterInYear(&v39, v40, v43);
LABEL_71:
        *&valuePtr = CFNumberCreate(v7, kCFNumberIntType, &v39);
        CFDictionarySetValue(a2, @"Day", valuePtr);
        v33[0] = CFNumberCreate(v7, kCFNumberIntType, v40);
        CFDictionarySetValue(a2, @"Month", v33[0]);
        v30 = CFNumberCreate(v7, kCFNumberIntType, &v43);
        v41[0] = v30;
        if (v30)
        {
          CFDictionarySetValue(a2, @"Year", v30);
        }

        nlp::CFScopedPtr<__CFNumber const*>::reset(v41, 0);
        nlp::CFScopedPtr<__CFNumber const*>::reset(v33, 0);
        nlp::CFScopedPtr<__CFNumber const*>::reset(&valuePtr, 0);
        goto LABEL_60;
      }

      if (CFStringHasSuffix(a3, @"GREGORIAN"))
      {
        QP::extractGregorianEasterInYear(&v39, v40, v43);
        goto LABEL_71;
      }

      CFDictionarySetValue(a2, @"SpecialDate", *MEMORY[0x1E695E4D0]);
    }

LABEL_60:
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (v42)
  {
    CFRelease(v42);
  }

LABEL_64:
  v27 = *MEMORY[0x1E69E9840];
}