@interface SiriTTSServiceAudioAnalytics
+ (void)reportAnalytics:(int64_t)analytics tailspin:(id)tailspin reason:(id)reason;
@end

@implementation SiriTTSServiceAudioAnalytics

+ (void)reportAnalytics:(int64_t)analytics tailspin:(id)tailspin reason:(id)reason
{
  v54[1] = *MEMORY[0x1E69E9840];
  tailspinCopy = tailspin;
  reasonCopy = reason;
  v36 = tailspinCopy;
  std::string::basic_string[abi:ne200100](__dst, [tailspinCopy cStringUsingEncoding:4], objc_msgSend(tailspinCopy, "lengthOfBytesUsingEncoding:", 4));
  v7 = reasonCopy;
  std::string::basic_string[abi:ne200100](v39, [reasonCopy cStringUsingEncoding:4], objc_msgSend(reasonCopy, "lengthOfBytesUsingEncoding:", 4));
  applesauce::CF::TypeRef::TypeRef(v49, "tailspin");
  if ((v42 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v9 = v42;
  }

  else
  {
    v9 = __dst[1];
  }

  if (!CFStringCreateWithBytes(0, v8, v9, 0x8000100u, 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2739480](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::TypeRef::TypeRef(&v51, "issue_type");
  applesauce::CF::TypeRef::TypeRef(&v52, "siritts");
  applesauce::CF::TypeRef::TypeRef(v53, "reason");
  if ((v40 & 0x80u) == 0)
  {
    v10 = v39;
  }

  else
  {
    v10 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v11 = v40;
  }

  else
  {
    v11 = v39[1];
  }

  v54[0] = CFStringCreateWithBytes(0, v10, v11, 0x8000100u, 0);
  if (!v54[0])
  {
    v33 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2739480](v33, "Could not construct");
    __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  std::vector<void const*>::reserve(&v46, 3uLL);
  __p = 0;
  v44 = 0;
  v45 = 0;
  std::vector<void const*>::reserve(&__p, 3uLL);
  v12 = 0;
  v13 = v47;
  v14 = v46;
  v37 = v45;
  v38 = v48;
  v15 = __p;
  v16 = v44;
  do
  {
    v17 = *&v49[v12];
    if (v13 >= v38)
    {
      v18 = v13 - v14;
      v19 = (v13 - v14) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        v47 = v13;
        v48 = v38;
        v45 = v37;
        v46 = v14;
        __p = v15;
        v44 = v16;
        std::vector<short>::__throw_length_error[abi:ne200100]();
      }

      if ((v38 - v14) >> 2 > v20)
      {
        v20 = (v38 - v14) >> 2;
      }

      if (v38 - v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(v21);
      }

      v38 = 0;
      *(8 * v19) = v17;
      v13 = (8 * v19 + 8);
      memcpy(0, v14, v18);
      if (v14)
      {
        operator delete(v14);
      }

      v14 = 0;
    }

    else
    {
      *v13 = v17;
      v13 += 8;
    }

    v22 = *&v49[v12 + 8];
    if (v16 >= v37)
    {
      v23 = v16 - v15;
      v24 = (v16 - v15) >> 3;
      v25 = v24 + 1;
      if ((v24 + 1) >> 61)
      {
        v47 = v13;
        v48 = v38;
        v45 = v37;
        v46 = v14;
        __p = v15;
        v44 = v16;
        std::vector<short>::__throw_length_error[abi:ne200100]();
      }

      if ((v37 - v15) >> 2 > v25)
      {
        v25 = (v37 - v15) >> 2;
      }

      if (v37 - v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(v26);
      }

      v37 = 0;
      *(8 * v24) = v22;
      v16 = (8 * v24 + 8);
      memcpy(0, v15, v23);
      if (v15)
      {
        operator delete(v15);
      }

      v15 = 0;
    }

    else
    {
      *v16 = v22;
      v16 += 8;
    }

    v12 += 16;
  }

  while (v12 != 48);
  v47 = v13;
  v48 = v38;
  v45 = v37;
  v46 = v14;
  __p = v15;
  v44 = v16;
  v27 = CFDictionaryCreate(0, v14, v15, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v27)
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2739480](v34, "Could not construct");
    __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v46)
  {
    operator delete(v46);
  }

  for (i = 0; i != -6; i -= 2)
  {
    v29 = v54[i];
    if (v29)
    {
      CFRelease(v29);
    }

    v30 = *&v53[i * 8];
    if (v30)
    {
      CFRelease(v30);
    }
  }

  CAReportingClientSendMessage();
  CFRelease(v27);
  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v42 < 0)
  {
    operator delete(__dst[0]);
  }

  v31 = *MEMORY[0x1E69E9840];
}

@end