const __CFDictionary *sub_1000E5B24()
{
  v3 = 0;
  result = sub_1000E4150();
  context[0] = &v3;
  if (result)
  {
    v1 = result;
    context[1] = 0;
    CFDictionaryApplyFunction(result, sub_1000E5B88, context);
    CFRelease(v1);
    return v3;
  }

  return result;
}

void sub_1000E5B88(const void *a1, uint64_t a2, uint64_t a3)
{
  CFBooleanGetTypeID();
  if (a3)
  {
    if (a1)
    {
      if (a2)
      {
        if (*a3)
        {
          ValueIfType = VSCFDictionaryGetValueIfType();
          if (ValueIfType)
          {
            if (CFEqual(ValueIfType, kCFBooleanTrue))
            {
              if (!*(a3 + 8) || (v8 = VSCFDictionaryGetValueIfType(), !*(a3 + 8)) || v8 && CFBooleanGetValue(v8))
              {
                v9 = *a3;

                sub_1000E5C58(a1, v7, v9);
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000E5C58(const void *a1, uint64_t a2, __CFSet **a3)
{
  if (a1)
  {
    if (a3)
    {
      v4 = sub_1000E4E50(a1);
      if (v4)
      {
        v5 = v4;
        Mutable = *a3;
        if (!*a3)
        {
          Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
          *a3 = Mutable;
        }

        CFSetAddValue(Mutable, v5);

        CFRelease(v5);
      }
    }
  }
}

void sub_1000E5CDC(const void *a1, uint64_t a2, __CFDictionary **a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        CFBooleanGetTypeID();
        ValueIfType = VSCFDictionaryGetValueIfType();
        if (ValueIfType)
        {
          if (CFEqual(ValueIfType, kCFBooleanTrue))
          {
            CFStringGetTypeID();
            if (VSCFDictionaryGetValueIfType())
            {
              v6 = sub_1000E4DB0();
              if (v6)
              {
                v7 = v6;
                String = VSRecognitionPluginInfoCreateString();
                if (String)
                {
                  v9 = String;
                  Mutable = *a3;
                  if (!*a3)
                  {
                    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    *a3 = Mutable;
                  }

                  CFDictionarySetValue(Mutable, a1, v9);
                  CFRelease(v9);
                }

                CFRelease(v7);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000E5DF0()
{
  pthread_mutex_lock(&stru_1001012E0);
  sub_1000E419C();
  v0 = qword_1001064D8;
  if (qword_1001064D8)
  {
    CFRetain(qword_1001064D8);
  }

  pthread_mutex_unlock(&stru_1001012E0);
  return v0;
}

void sub_1000E5E40()
{
  v0 = CFCopyHomeDirectoryURLForUser();
  if (v0)
  {
    v1 = v0;
    VSCreateURLAndDirectory();
    CFRelease(v1);
  }
}

uint64_t sub_1000E5EE0()
{
  result = _CFRuntimeRegisterClass();
  qword_1001064E8 = result;
  return result;
}

uint64_t sub_1000E5F4C(uint64_t a1, uint64_t a2)
{
  v2 = a1 == a2;
  v3 = *(a1 + 80);
  if (v3 && *(a2 + 80))
  {
    v5 = CFBundleCopyBundleURL(v3);
    v6 = CFBundleCopyBundleURL(*(a2 + 80));
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (CFEqual(v5, v6))
      {
        v2 = 1;
      }

      else
      {
        v2 = v2;
      }

LABEL_15:
      CFRelease(v5);
      if (!v7)
      {
        return v2;
      }

      goto LABEL_10;
    }

    if (v5)
    {
      goto LABEL_15;
    }

    if (v6)
    {
LABEL_10:
      CFRelease(v7);
    }
  }

  return v2;
}

uint64_t sub_1000E5FE4(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 80) = 0;
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 104) = 0;
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 112) = 0;
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 120) = 0;
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 128) = 0;
  }

  return pthread_mutex_destroy((a1 + 16));
}

uint64_t sub_1000E6080(const __CFAllocator *a1, CFURLRef url)
{
  if (!url)
  {
    return 0;
  }

  v4 = CFURLCopyPathExtension(url);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFStringCompare(v4, @"vsplugin", 0) || (v8 = CFBundleCreate(a1, url)) == 0)
  {
    v6 = 0;
  }

  else
  {
    v9 = v8;
    pthread_once(&stru_100101330, sub_1000E5EE0);
    Instance = _CFRuntimeCreateInstance();
    v6 = Instance;
    if (Instance)
    {
      *(Instance + 80) = v9;
      *(Instance + 88) = 0;
      *(Instance + 96) = 0u;
      *(Instance + 112) = 0u;
      *(Instance + 128) = 0;
      pthread_mutex_init((Instance + 16), 0);
    }

    else
    {
      CFRelease(v9);
    }
  }

  CFRelease(v5);
  return v6;
}

uint64_t sub_1000E616C(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    InfoDictionary = CFBundleGetInfoDictionary(*(a1 + 80));
    if (InfoDictionary)
    {
      Value = CFDictionaryGetValue(InfoDictionary, @"VSRecognitionModels");
      if (Value)
      {
        v5 = Value;
        v6 = CFGetTypeID(Value);
        if (v6 == CFArrayGetTypeID())
        {
          v7 = CFGetAllocator(a1);
          Mutable = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (Mutable)
          {
            v9 = Mutable;
            v10.length = CFArrayGetCount(v5);
            v10.location = 0;
            CFArrayApplyFunction(v5, v10, sub_1000E6230, v9);
            *(a1 + 96) = v9;
          }
        }
      }
    }
  }

  return *(a1 + 96);
}

void sub_1000E6230(const void *a1, __CFDictionary *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(a1, @"VSRecognitionModelIdentifier");
    if (Value)
    {
      v6 = Value;
      if (CFStringGetLength(Value) >= 1 && !CFDictionaryContainsKey(a2, v6))
      {

        CFDictionarySetValue(a2, v6, a1);
      }
    }
  }
}

void sub_1000E62D0(CFAllocatorRef allocator, void *value, const void *a3, __CFArray **a4, __CFDictionary **a5)
{
  Mutable = *a4;
  if (!*a4)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
    *a4 = Mutable;
  }

  if (!*a5)
  {
    *a5 = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Mutable = *a4;
  }

  CFArrayAppendValue(Mutable, value);
  v11 = *a5;

  CFDictionarySetValue(v11, a3, value);
}

const __CFDictionary *sub_1000E6380(const __CFAllocator *a1, CFArrayRef theArray, const __CFDictionary *a3, int a4, const __CFDictionary **a5, const __CFSet *a6)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  CFArrayGetTypeID();
  CFStringGetTypeID();
  CFDictionaryGetTypeID();
  if (a5)
  {
    v7 = *a5;
  }

  else
  {
    v7 = 0;
  }

  v32 = a5;
  theDict = v7;
  if (Count < 1)
  {
    cf = 0;
    goto LABEL_72;
  }

  cf = 0;
  v8 = 0;
  do
  {
    if (!VSCFArrayGetValueAtIndexIfType())
    {
      goto LABEL_67;
    }

    ValueIfType = VSCFDictionaryGetValueIfType();
    if (!ValueIfType)
    {
      goto LABEL_67;
    }

    v36 = v8;
    v10 = CFArrayGetCount(ValueIfType);
    if (v10 >= 1)
    {
      v11 = 0;
      Mutable = 0;
      v13 = 0;
      while (1)
      {
        ValueAtIndexIfType = VSCFArrayGetValueAtIndexIfType();
        if (!ValueAtIndexIfType)
        {
          v23 = 0;
          goto LABEL_43;
        }

        v15 = ValueAtIndexIfType;
        result = xmmword_1000F2CF0;
        Length = CFStringGetLength(ValueAtIndexIfType);
        v42.location = 0;
        v42.length = Length;
        if (CFStringFindWithOptions(v15, @"+", v42, 0xCuLL, &result))
        {
          break;
        }

        v43.location = 0;
        v43.length = Length;
        if (CFStringFindWithOptions(v15, @"*", v43, 0xCuLL, &result))
        {
          v17 = 2;
          goto LABEL_18;
        }

        CFRetain(v15);
        v17 = 0;
LABEL_19:
        Value = CFDictionaryGetValue(a3, v15);
        if (Value)
        {
          v20 = Value;
          if (!a4 || *(Value + 41))
          {
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
            }

            CFArrayAppendValue(Mutable, v20);
            if (!v11)
            {
              if (v17)
              {
                v11 = CFArrayCreateMutable(a1, 0, 0);
                if (v13)
                {
                  v21 = v13;
                  do
                  {
                    CFArrayAppendValue(v11, 0);
                    --v21;
                  }

                  while (v21);
                }
              }
            }

            if (v11)
            {
              CFArrayAppendValue(v11, v17);
            }

            v22 = 1;
            v23 = 1;
            goto LABEL_35;
          }
        }

        else if (a6)
        {
          v24 = CFSetContainsValue(a6, v15) == 0;
          v22 = 1;
          v23 = 1;
          goto LABEL_36;
        }

        v22 = 0;
        v23 = 0;
LABEL_35:
        v24 = 1;
LABEL_36:
        CFRelease(v15);
        if (++v13 >= v10 || !v22 || !v24)
        {
          goto LABEL_44;
        }
      }

      v17 = 1;
LABEL_18:
      v18 = CFGetAllocator(v15);
      v44.length = result.location;
      v44.location = 0;
      v15 = CFStringCreateWithSubstring(v18, v15, v44);
      goto LABEL_19;
    }

    Mutable = 0;
    v11 = 0;
    v23 = 1;
LABEL_43:
    v24 = 1;
LABEL_44:
    if (v10 == 0 && v24)
    {
      LODWORD(v25) = 0;
    }

    else
    {
      LODWORD(v25) = v23;
    }

    if (v24)
    {
      if (v25)
      {
        v25 = sub_1000E900C(a1, Mutable, v11);
        if (v25)
        {
          v26 = cf;
          if (!cf)
          {
            v26 = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
          }

          cf = v26;
          CFArrayAppendValue(v26, v25);
          v27 = VSCFDictionaryGetValueIfType();
          if (!v27)
          {
            goto LABEL_59;
          }

          v28 = v27;
          v29 = theDict;
          if (theDict)
          {
            v30 = CFDictionaryGetValue(theDict, v27);
            if (v30)
            {
LABEL_58:
              theDict = v29;
              CFArrayAppendValue(v30, v25);
LABEL_59:
              CFRelease(v25);
              LODWORD(v25) = 1;
              goto LABEL_60;
            }
          }

          else
          {
            v29 = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          }

          v30 = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
          CFDictionarySetValue(v29, v28, v30);
          CFRelease(v30);
          goto LABEL_58;
        }
      }
    }

LABEL_60:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    v8 = v36 + 1;
  }

  while (v36 + 1 < Count && v25);
  if ((v25 & 1) == 0)
  {
LABEL_67:
    if (cf)
    {
      CFRelease(cf);
    }

    v31 = theDict;
    if (theDict)
    {
      CFRelease(theDict);
      return 0;
    }

    return v31;
  }

LABEL_72:
  if (v32)
  {
    *v32 = theDict;
  }

  else if (theDict)
  {
    CFRelease(theDict);
  }

  return cf;
}

CFDictionaryRef sub_1000E67C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(a1 + 16));
  pthread_mutex_lock((a2 + 16));
  v4 = sub_1000E68F4(a2, v2);
  pthread_mutex_unlock((a2 + 16));
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(NSString *)v4 cacheValidityIdentifier];
      v6 = v5;
      if (v5)
      {
        CFRetain(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    pthread_mutex_lock((a2 + 16));
    Mutable = *(a2 + 128);
    if (!Mutable)
    {
      v8 = CFGetAllocator(a2);
      Mutable = CFDictionaryCreateMutable(v8, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *(a2 + 128) = Mutable;
    }

    CFDictionarySetValue(Mutable, v2, v4);
    pthread_mutex_unlock((a2 + 16));
    CFRelease(v4);
  }

  else
  {
    v6 = CFDictionaryCreate(kCFAllocatorDefault, &off_1000FE618, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  CFRelease(v2);
  return v6;
}

NSString *sub_1000E68F4(uint64_t a1, void *key)
{
  v4 = *(a1 + 128);
  if (v4 && (Value = CFDictionaryGetValue(v4, key)) != 0)
  {
    v6 = Value;
    CFRetain(Value);
    CFDictionaryRemoveValue(*(a1 + 128), key);
  }

  else
  {
    v6 = sub_1000E69EC(a1, key, @"VSRecognitionModelDataProvider", &OBJC_PROTOCOL___VSRecognitionModelDataProvider);
    if (v6 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "data provider does not implement value method\n", v9, 2u);
      }

      return 0;
    }
  }

  return v6;
}

NSString *sub_1000E69EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1000E616C(a1);
  if (result)
  {
    CFDictionaryGetTypeID();
    result = VSCFDictionaryGetValueIfType();
    if (result)
    {
      CFStringGetTypeID();
      result = VSCFDictionaryGetValueIfType();
      if (result)
      {
        v7 = result;
        error = 0;
        if (!*(a1 + 88))
        {
          v8 = CFBundleLoadExecutableAndReturnError(*(a1 + 80), &error);
          v9 = error;
          if (!v8 && error)
          {
            v10 = VSGetLogDefault();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v18 = "_LoadPluginIfNecessary";
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: error loading plugin:\n", buf, 0xCu);
            }

            v11 = VSGetLogDefault();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v18 = error;
              _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v9 = error;
          }

          if (v9)
          {
            CFRelease(v9);
          }

          *(a1 + 88) = 1;
        }

        v12 = NSClassFromString(v7);
        if (v12)
        {
          v13 = v12;
          if (!a4 || [(objc_class *)v12 conformsToProtocol:a4])
          {
            return objc_alloc_init(v13);
          }

          v14 = VSGetLogDefault();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          *buf = 136315138;
          v18 = "_InstantiatePluginClassWithRecognitionModelKeyedName";
          v15 = "%s: plugin class does not conform to appropriate protocol\n";
        }

        else
        {
          v14 = VSGetLogDefault();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          *buf = 136315138;
          v18 = "_InstantiatePluginClassWithRecognitionModelKeyedName";
          v15 = "%s: plugin class not found\n";
        }

        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000E6C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(a1 + 16));
  pthread_mutex_lock((a3 + 16));
  v6 = sub_1000E68F4(a3, v3);
  pthread_mutex_unlock((a3 + 16));
  if (v6)
  {
    if (objc_opt_respondsToSelector())
    {
      a2 = [(NSString *)v6 isCacheValidityIdentifierValid:a2];
    }

    else
    {
      a2 = 0;
    }

    pthread_mutex_lock((a3 + 16));
    Mutable = *(a3 + 128);
    if (!Mutable)
    {
      v10 = CFGetAllocator(a3);
      Mutable = CFDictionaryCreateMutable(v10, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *(a3 + 128) = Mutable;
    }

    CFDictionarySetValue(Mutable, v3, v6);
    pthread_mutex_unlock((a3 + 16));
    CFRelease(v6);
  }

  else if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"isvalid");
    if (Value)
    {
      v8 = Value == kCFBooleanTrue;
    }

    else
    {
      v8 = 0;
    }

    a2 = v8;
  }

  CFRelease(v3);
  return a2;
}

uint64_t sub_1000E6D68(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  if (*(a2 + 48))
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    CFRetain(*(a1 + 16));
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    CFRetain(v7);
  }

  pthread_mutex_lock(&stru_100101290);
  if (qword_1001064B8)
  {
    v3 = sub_1000E9DA8(qword_1001064B8, v6, v7, a3);
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock(&stru_100101290);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v3;
}

void sub_1000E6E20(uint64_t a1, void *a2, const void *a3, const void *a4)
{
  v6 = a2;
  if (!a1)
  {
    v7 = 0;
    if (!a2)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    CFRetain(*(a1 + 16));
  }

  if (v6)
  {
LABEL_7:
    v6 = v6[2];
    if (v6)
    {
      CFRetain(v6);
    }
  }

LABEL_9:
  pthread_once(&stru_1001012D0, sub_1000E2208);
  v8 = pthread_getspecific(qword_1001064C0);
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  Value = CFDictionaryGetValue(v8, v7);
  if (!Value)
  {
    v13 = kCFAllocatorDefault;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v9, v7, Mutable);
    CFRelease(Mutable);
    goto LABEL_14;
  }

  Mutable = Value;
  v12 = CFDictionaryGetValue(Value, v6);
  if (!v12)
  {
    v13 = kCFAllocatorDefault;
LABEL_14:
    v12 = CFDictionaryCreateMutable(v13, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, v6, v12);
    CFRelease(v12);
  }

  CFDictionarySetValue(v12, a3, a4);
LABEL_16:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t sub_1000E6FBC(CFTypeRef *a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = *a2;
    if (a4)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v7 = 0;
  if (!a4)
  {
    return 1;
  }

LABEL_3:
  pthread_mutex_lock((a4 + 16));
  v8 = a1[2];
  if (v8)
  {
    CFRetain(a1[2]);
    if (v7)
    {
      newValues = 0;
      v9 = *(a4 + 104);
      if (v9)
      {
        Value = CFDictionaryGetValue(v9, v8);
        if (Value)
        {
          v11 = Value;
          PhraseCount = VSRecognitionResultGetPhraseCount();
          VSRecognitionResultCopyClassIDsAndPhrases();
          if (PhraseCount >= 1)
          {
            MutableCopy = 0;
            for (i = 0; i != PhraseCount; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(0, i);
              if (ValueAtIndex)
              {
                v16 = CFDictionaryGetValue(v11, ValueAtIndex);
                if (v16)
                {
                  v17 = v16;
                  v18 = CFArrayGetValueAtIndex(0, i);
                  newValues = CFDictionaryGetValue(v17, v18);
                  if (newValues)
                  {
                    if (!MutableCopy)
                    {
                      v19 = CFGetAllocator(v7);
                      MutableCopy = CFArrayCreateMutableCopy(v19, 0, 0);
                    }

                    v33.location = i;
                    v33.length = 1;
                    CFArrayReplaceValues(MutableCopy, v33, &newValues, 1);
                  }
                }
              }
            }

            if (MutableCopy)
            {
              CFGetAllocator(v7);
              VSRecognitionResultGetModelIdentifier();
              v20 = VSRecognitionResultCreate();
              CFRelease(MutableCopy);
              if (v20)
              {
                goto LABEL_24;
              }
            }
          }
        }
      }

      goto LABEL_23;
    }
  }

  else if (v7)
  {
    newValues = 0;
LABEL_23:
    CFRetain(v7);
    v20 = v7;
LABEL_24:
    v22 = 0;
    goto LABEL_26;
  }

  v20 = 0;
  v22 = 1;
LABEL_26:
  if (v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = v7;
  }

  v24 = *(a4 + 120);
  if (v24 && (v25 = CFDictionaryGetValue(v24, a1)) != 0)
  {
    v26 = v25;
    CFRetain(v25);
  }

  else
  {
    v26 = sub_1000E69EC(a4, v8, @"VSRecognitionResultValidator", &OBJC_PROTOCOL___VSRecognitionResultValidator);
    if (v26)
    {
      Mutable = *(a4 + 120);
      if (!Mutable)
      {
        v28 = CFGetAllocator(a4);
        Mutable = CFDictionaryCreateMutable(v28, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        *(a4 + 120) = Mutable;
      }

      CFDictionarySetValue(Mutable, a1, v26);
    }
  }

  pthread_mutex_unlock((a4 + 16));
  if (v8)
  {
    CFRelease(v8);
  }

  if (!v26)
  {
    v21 = 1;
    goto LABEL_46;
  }

  if (a3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v29 = [(NSString *)v26 validRecognitionResultFromRecognitionResult:v23 knownDisambiguationValues:VSRecognitionDisambiguationContextGetKnownClassValues()];
  }

  else
  {
    v29 = [(NSString *)v26 validRecognitionResultFromRecognitionResult:v23, a3];
  }

  v23 = v29;
  v21 = v29 != 0;
  CFRelease(v26);
  if (v21)
  {
LABEL_46:
    if (v23 && v23 != v7)
    {
      if ((v22 & 1) == 0)
      {
        CFRelease(v7);
      }

      CFRetain(v23);
      if (a2)
      {
        *a2 = v23;
      }
    }
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v21;
}

__CFArray *sub_1000E72D4(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  result = 0;
  if (a3 && Count >= 1)
  {
    Mutable = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
      v12 = sub_1000E8C70(ValueAtIndex);
      if (v12)
      {
        v13 = v12;
        if (!Mutable)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (!v10)
        {
          v15 = *(a1 + 16);
          if (!v15)
          {
            goto LABEL_23;
          }

          CFRetain(*(a1 + 16));
          v21 = 0u;
          v22 = 0u;
          pthread_mutex_lock((a3 + 16));
          v16 = sub_1000E68F4(a3, v15);
          pthread_mutex_unlock((a3 + 16));
          if (!v16)
          {
            goto LABEL_22;
          }

          v17 = malloc_type_malloc(0x10uLL, 0x108004022EE8E53uLL);
          *v17 = v16;
          *(v17 + 8) = objc_opt_respondsToSelector() & 1;
          *(v17 + 9) = objc_opt_respondsToSelector() & 1;
          *&v21 = v17;
          *(&v21 + 1) = sub_1000E7720;
          *&v22 = sub_1000E7540;
          *(&v22 + 1) = sub_1000E74F8;
          v18 = CFGetAllocator(a3);
          v19 = sub_1000E78E4(v18, &v21);
          if (!v19)
          {
            sub_1000E74F8(v17);
LABEL_22:
            CFRelease(v15);
LABEL_23:
            v20 = 0;
            result = 0;
            v10 = Mutable;
            if (!Mutable)
            {
              return result;
            }

LABEL_19:
            CFRelease(v10);
            return v20;
          }

          v10 = v19;
          CFRelease(v15);
        }

        CFRetain(v10);
        v13 = v10;
        if (!Mutable)
        {
LABEL_7:
          v14 = CFGetAllocator(a3);
          Mutable = CFArrayCreateMutable(v14, 0, &kCFTypeArrayCallBacks);
        }
      }

      CFArrayAppendValue(Mutable, v13);
      CFRelease(v13);
      if (Count == ++v9)
      {
        v20 = Mutable;
        result = Mutable;
        if (!v10)
        {
          return result;
        }

        goto LABEL_19;
      }
    }
  }

  return result;
}

void sub_1000E74F8(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

BOOL sub_1000E7540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, CFTypeRef *a7, void *a8)
{
  cf = 0;
  v14 = *(a3 + 16);
  if (v14)
  {
    CFRetain(*(a3 + 16));
  }

  v15 = *(a2 + 16);
  if (v15)
  {
    CFRetain(v15);
  }

  if (a5)
  {
    v16 = *a5;
    v22 = 0;
    v17 = v14 != 0;
    v18 = v15 != 0;
    if (v14 && v15)
    {
      if (*(a5 + 8))
      {
        [v16 getValue:&cf weight:&v22 atIndex:a4 forClassWithIdentifier:v14 inModelWithIdentifier:v15];
      }

      else
      {
        cf = [v16 valueAtIndex:a4 forClassWithIdentifier:v14 inModelWithIdentifier:v15];
      }

      v20 = 0;
      if (a8 && *(a5 + 9))
      {
        v20 = [v16 phoneticValueAtIndex:a4 forClassWithIdentifier:v14 inModelWithIdentifier:v15];
      }

      v19 = cf;
      if (!cf)
      {
        goto LABEL_25;
      }

LABEL_24:
      CFRetain(v19);
LABEL_25:
      if (v20)
      {
        CFRetain(v20);
      }

      CFRelease(v14);
      goto LABEL_28;
    }
  }

  else
  {
    v22 = 0;
    v17 = v14 != 0;
    v18 = v15 != 0;
    if (v14 && v15)
    {
      v19 = [0 valueAtIndex:a4 forClassWithIdentifier:v14 inModelWithIdentifier:v15];
      v20 = 0;
      cf = v19;
      if (!v19)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  if (v17)
  {
    CFRelease(v14);
    v20 = 0;
    if (!v18)
    {
      goto LABEL_29;
    }

LABEL_28:
    CFRelease(v15);
    goto LABEL_29;
  }

  v20 = 0;
  if (v18)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (a6)
  {
    *a6 = v22;
  }

  if (a7)
  {
    *a7 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  if (a8)
  {
    *a8 = v20;
  }

  else if (v20)
  {
    CFRelease(v20);
  }

  return cf != 0;
}

id sub_1000E7720(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    CFRetain(*(a3 + 16));
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    CFRetain(v7);
  }

  if (a4)
  {
    v8 = *a4;
    if (!v6)
    {
LABEL_11:
      v9 = 0;
      v10 = 0;
      if (!v6)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = [v8 valueCountForClassWithIdentifier:v6 inModelWithIdentifier:v7];
LABEL_12:
  CFRelease(v6);
  v10 = v9;
LABEL_13:
  if (v7)
  {
    CFRelease(v7);
  }

  return v10;
}

void sub_1000E77C4()
{
  if (!qword_1001064F0)
  {
    *keys = *off_1000FE5E0;
    v3 = *off_1000FE5F0;
    v4 = *off_1000FE600;
    v5 = @"VSRecognitionClassTypeAlbumName";
    v0[0] = xmmword_1000F2D00;
    v0[1] = xmmword_1000F2D10;
    v0[2] = xmmword_1000F2D20;
    v1 = 6;
    qword_1001064F0 = CFDictionaryCreate(kCFAllocatorDefault, keys, v0, 7, &kCFTypeDictionaryKeyCallBacks, 0);
  }
}

uint64_t sub_1000E7894()
{
  result = _CFRuntimeRegisterClass();
  qword_1001064F8 = result;
  return result;
}

uint64_t sub_1000E78C8(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      return v3();
    }
  }

  return result;
}

uint64_t sub_1000E78E4(uint64_t a1, _OWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  pthread_once(&stru_100101410, sub_1000E7894);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    v4 = a2[1];
    *(result + 16) = *a2;
    *(result + 32) = v4;
  }

  return result;
}

uint64_t sub_1000E7958()
{
  qword_100106500 = _CFRuntimeRegisterClass();

  return pthread_mutex_init(&stru_100106508, 0);
}

void sub_1000E79A8(void *a1)
{
  v2 = a1[70];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[71];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[67];
  if (v5 && a1 + 3 != v5)
  {
    free(v5);
  }

  v6 = a1[73];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[72];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[80];
  if (v8)
  {
    v9 = a1[82];

    v8(v9);
  }
}

uint64_t sub_1000E7A44(const __CFAllocator *a1, const void *a2, uint64_t a3, char a4, CFArrayRef theArray, const __CFArray *a6, const __CFDictionary *Copy, const void *a8, __int128 *a9, uint64_t a10)
{
  v10 = 0;
  if (theArray && a6)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1 && (v20 = Count, (Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) != 0))
    {
      v22 = Mutable;
      v39.location = 0;
      v39.length = v20;
      CFArrayApplyFunction(theArray, v39, sub_1000E7D34, Mutable);
      if (CFDictionaryGetCount(v22) == v20 && (v23 = CFArrayCreateCopy(a1, a6)) != 0)
      {
        v24 = v23;
        if (Copy)
        {
          Copy = CFDictionaryCreateCopy(a1, Copy);
        }

        v25 = CFDictionaryGetCount(v22);
        v26 = CFArrayGetCount(v24);
        v10 = 0;
        if (v25 >= 1 && v26 >= 1)
        {
          pthread_once(&stru_100101420, sub_1000E7958);
          Instance = _CFRuntimeCreateInstance();
          v10 = Instance;
          if (Instance)
          {
            if (a2)
            {
              *(Instance + 16) = a2;
              CFRetain(a2);
              v28 = *(v10 + 16);
            }

            else
            {
              pthread_mutex_lock(&stru_100106508);
              v29 = qword_100106548++;
              pthread_mutex_unlock(&stru_100106508);
              v28 = CFStringCreateWithFormat(a1, 0, @"dflt%ld", v29);
              *(v10 + 16) = v28;
            }

            *(v10 + 536) = 0;
            if (v28)
            {
              Length = CFStringGetLength(v28);
              if (Length >= 1)
              {
                if (Length > 0x1FE)
                {
                  v32 = Length + 1;
                  v31 = malloc_type_malloc(Length + 1, 0xF73BC683uLL);
                }

                else
                {
                  v31 = (v10 + 24);
                  v32 = Length + 1;
                }

                *(v10 + 536) = v31;
                if (!CFStringGetCString(*(v10 + 16), v31, v32, 0x8000100u))
                {
                  if (*(v10 + 536) != v10 + 24)
                  {
                    free((v10 + 24));
                  }

                  *(v10 + 536) = 0;
                }
              }
            }

            *(v10 + 544) = a3;
            *(v10 + 552) = a4;
            *(v10 + 560) = v22;
            *(v10 + 568) = v24;
            *(v10 + 584) = Copy;
            if (a8)
            {
              v33 = CFRetain(a8);
            }

            else
            {
              v33 = 0;
            }

            *(v10 + 576) = v33;
            *(v10 + 648) = 0;
            *(v10 + 656) = a10;
            if (a9)
            {
              v34 = *a9;
              v35 = a9[1];
              v36 = a9[2];
              *(v10 + 640) = *(a9 + 6);
              *(v10 + 608) = v35;
              *(v10 + 624) = v36;
            }

            else
            {
              *(v10 + 640) = 0;
              v34 = 0uLL;
              *(v10 + 608) = 0u;
              *(v10 + 624) = 0u;
            }

            *(v10 + 592) = v34;
            CFRetain(*(v10 + 560));
            CFRetain(*(v10 + 568));
            v37 = *(v10 + 584);
            if (v37)
            {
              CFRetain(v37);
            }
          }
        }

        CFRelease(v24);
        if (Copy)
        {
          CFRelease(Copy);
        }
      }

      else
      {
        v10 = 0;
      }

      CFRelease(v22);
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

void sub_1000E7D34(CFTypeRef *a1, __CFDictionary *a2)
{
  v2 = a1[2];
  if (v2)
  {
    CFRetain(a1[2]);
    CFDictionarySetValue(a2, v2, a1);

    CFRelease(v2);
  }
}

CFMutableArrayRef sub_1000E7DA4(CFDictionaryRef *a1)
{
  v2 = a1[70];
  if (!v2 || !CFDictionaryGetCount(v2))
  {
    return 0;
  }

  v3 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v3, 0, &kCFTypeArrayCallBacks);
  CFDictionaryApplyFunction(a1[70], sub_1000E8AA0, Mutable);
  return Mutable;
}

const void *sub_1000E7E18(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v3;
}

void sub_1000E7E58(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

uint64_t sub_1000E7EB8(const void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  MutableArray = 0;
  if (a3 && a2 && *(a4 + 16))
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      CFRetain(*(a2 + 16));
      Value = CFDictionaryGetValue(*(a4 + 16), v7);
      if (Value)
      {
        v10 = CFDictionaryGetValue(Value, a3);
        MutableArray = v10;
        if (!v10)
        {
LABEL_12:
          CFRelease(v7);
          return MutableArray;
        }

        if (CFSetGetCount(v10) >= 1)
        {
          CFGetAllocator(a1);
          MutableArray = VSCFSetCreateMutableArray();
          goto LABEL_12;
        }
      }

      MutableArray = 0;
      goto LABEL_12;
    }

    return 0;
  }

  return MutableArray;
}

void sub_1000E7F84(const void *a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5)
{
  if (!a4)
  {
    return;
  }

  if (!a3)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  if (!a5)
  {
    return;
  }

  v7 = *(a2 + 16);
  if (!v7)
  {
    return;
  }

  CFRetain(*(a2 + 16));
  v10 = *(a5 + 16);
  if (!v10 || (Value = CFDictionaryGetValue(v10, v7)) == 0)
  {
    v14 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v14, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v15 = *(a5 + 16);
    if (!v15)
    {
      v16 = CFGetAllocator(a1);
      v15 = CFDictionaryCreateMutable(v16, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *(a5 + 16) = v15;
    }

    CFDictionarySetValue(v15, v7, Mutable);
    CFRelease(Mutable);
    goto LABEL_14;
  }

  Mutable = Value;
  v13 = CFDictionaryGetValue(Value, a4);
  if (!v13)
  {
LABEL_14:
    v17 = CFGetAllocator(a1);
    v13 = CFSetCreateMutable(v17, 0, &kCFTypeSetCallBacks);
    CFDictionarySetValue(Mutable, a4, v13);
    CFRelease(v13);
  }

  CFSetAddValue(v13, a3);

  CFRelease(v7);
}

uint64_t sub_1000E80D8(uint64_t a1, CFTypeRef *a2, uint64_t a3, void *a4)
{
  v50 = 0;
  if (!a2)
  {
    return 1;
  }

  v5 = 0;
  if (!a4)
  {
    return v5;
  }

  v7 = *a2;
  if (!*a2)
  {
    return v5;
  }

  if (!a4[1] || !*a4)
  {
    return 0;
  }

  allocator = CFGetAllocator(*a2);
  KnownClassValues = VSRecognitionDisambiguationContextGetKnownClassValues();
  SequenceTag = VSRecognitionDisambiguationContextGetSequenceTag();
  if (!SequenceTag)
  {
    return 1;
  }

  v10 = sub_1000E7E18(*(*a4 + 584), SequenceTag);
  v11 = v10;
  if (!v10 || (Count = CFArrayGetCount(v10), Count < 1) || (v13 = Count, VSRecognitionResultGetPhraseCount() < 1))
  {
    v36 = 0;
    v5 = 1;
    goto LABEL_53;
  }

  v38 = a2;
  v39 = a4;
  VSRecognitionResultCopyClassIDsAndPhrases();
  cf = 0;
  v41 = 0;
  v14 = 0;
  v15 = 0;
  v42 = v11;
  v43 = v13;
  v44 = v7;
  v47 = KnownClassValues;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
    v17 = CFArrayGetCount(ValueAtIndex[2]);
    if (v17 >= v15)
    {
      v18 = v17;
      v46 = v15;
      theArray = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
      Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
      if (v18 >= 1)
      {
        v19 = 0;
        for (i = 0; i < v18; ++i)
        {
          v21 = CFArrayGetValueAtIndex(ValueAtIndex[2], i);
          v22 = *(v21 + 2);
          if (!v22)
          {
            break;
          }

          CFRetain(*(v21 + 2));
          Value = CFDictionaryGetValue(KnownClassValues, v22);
          if (Value)
          {
            v24 = 0;
          }

          else
          {
            v24 = v19 == 0;
          }

          if (v24)
          {
            PhraseCount = VSRecognitionResultGetPhraseCount();
            if (v18 - i >= PhraseCount)
            {
              v27 = PhraseCount;
              if (PhraseCount >= 1)
              {
                v28 = 0;
                while (1)
                {
                  v29 = CFArrayGetValueAtIndex(ValueAtIndex[2], i + v28);
                  v30 = *(v29 + 2);
                  if (!v30)
                  {
                    break;
                  }

                  CFRetain(*(v29 + 2));
                  v31 = CFArrayGetValueAtIndex(0, v28);
                  v32 = CFStringCompare(v30, v31, 0);
                  CFRelease(v30);
                  if (++v28 >= v27 || v32)
                  {
                    if (v32 == kCFCompareEqualTo)
                    {
                      v11 = v42;
                      goto LABEL_30;
                    }

                    break;
                  }
                }

                CFRelease(v22);
                v11 = v42;
                v7 = v44;
                KnownClassValues = v47;
                break;
              }

LABEL_30:
              v51.location = 0;
              v51.length = v27;
              CFArrayAppendArray(theArray, 0, v51);
              v52.location = 0;
              v52.length = v27;
              CFArrayAppendArray(Mutable, 0, v52);
              i = i + v27 - 1;
              v19 = 1;
              v7 = v44;
            }

            else
            {
              v19 = 1;
            }

            KnownClassValues = v47;
          }

          else
          {
            v25 = Value;
            if (Value)
            {
              CFArrayAppendValue(theArray, v22);
              CFArrayAppendValue(Mutable, v25);
            }
          }

          CFRelease(v22);
        }
      }

      v15 = v46;
      if (CFArrayGetCount(theArray) == v18)
      {
        v13 = v43;
        if (CFArrayGetCount(Mutable) == v18)
        {
          if (cf)
          {
            CFRelease(cf);
          }

          v33 = v41;
          if (!v41)
          {
            v33 = *(*v39 + 16);
            if (v33)
            {
              CFRetain(*(*v39 + 16));
            }
          }

          v41 = v33;
          cf = VSRecognitionResultCreate();
          v50 = cf;
          v15 = v18;
        }
      }

      else
      {
        v13 = v43;
      }

      CFRelease(theArray);
      CFRelease(Mutable);
    }

    ++v14;
  }

  while (v14 != v13);
  if (!cf)
  {
    v5 = 1;
    v36 = v41;
    goto LABEL_53;
  }

  v34 = *(*v39 + 600);
  if (!v34)
  {
    v5 = 1;
    v35 = v38;
    v36 = v41;
    goto LABEL_60;
  }

  v5 = v34(*v39, &v50, v39[1], *(*v39 + 656));
  v35 = v38;
  v36 = v41;
  if (v5)
  {
LABEL_60:
    CFRelease(v7);
    *v35 = v50;
    goto LABEL_53;
  }

  CFRelease(v50);
LABEL_53:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return v5;
}

__CFArray *sub_1000E84EC(const void *a1, CFArrayRef theArray, uint64_t *a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  allocator = CFGetAllocator(a1);
  if (a3 && a3[1])
  {
    KnownClassValues = VSRecognitionDisambiguationContextGetKnownClassValues();
    AmbiguousClassValues = VSRecognitionDisambiguationContextGetAmbiguousClassValues();
  }

  else
  {
    KnownClassValues = 0;
    AmbiguousClassValues = 0;
  }

  if (Count < 1)
  {
    return 0;
  }

  v8 = 0;
  Mutable = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
    v13 = ValueAtIndex;
    v14 = ValueAtIndex[2];
    if (!v14)
    {
      newValues = 0;
      goto LABEL_25;
    }

    CFRetain(ValueAtIndex[2]);
    newValues = 0;
    if (!KnownClassValues)
    {
      if (!AmbiguousClassValues)
      {
        goto LABEL_24;
      }

LABEL_21:
      if (CFDictionaryGetValue(AmbiguousClassValues, v14))
      {
        goto LABEL_22;
      }

LABEL_24:
      CFRelease(v14);
LABEL_25:
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
      }

      CFArrayAppendValue(Mutable, v13);
      goto LABEL_28;
    }

    Value = CFDictionaryGetValue(KnownClassValues, v14);
    if (Value)
    {
      v16 = 1;
    }

    else
    {
      v16 = AmbiguousClassValues == 0;
    }

    if (!v16)
    {
      goto LABEL_21;
    }

    if (!Value)
    {
      goto LABEL_24;
    }

LABEL_22:
    if (v11)
    {
      newValues = v11;
      CFRelease(v14);
      goto LABEL_28;
    }

    *&v29 = a3[1];
    *(&v29 + 1) = sub_1000E8A10;
    v30 = sub_1000E8920;
    v31 = &_CFRelease;
    v11 = sub_1000E78E4(allocator, &v29);
    newValues = v11;
    CFRelease(v14);
    if (!v11)
    {
      goto LABEL_25;
    }

LABEL_28:
    if (!v8)
    {
      v8 = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
    }

    if (newValues)
    {
      v17 = newValues;
    }

    else
    {
      v17 = kCFNull;
    }

    CFArrayAppendValue(v8, v17);
    ++v10;
  }

  while (Count != v10);
  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    if (a3)
    {
      v18 = *a3;
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_1000E87DC(v18, Mutable);
    if (v19)
    {
      v20 = v19;
      v21 = CFArrayGetCount(v19);
      if (v21 >= 1)
      {
        v22 = v21;
        v23 = 0;
        v24 = 1;
        do
        {
          if (CFArrayGetValueAtIndex(v8, v24 - 1) == kCFNull)
          {
            newValues = CFArrayGetValueAtIndex(v20, v23);
            v33.location = v24 - 1;
            v33.length = 1;
            CFArrayReplaceValues(v8, v33, &newValues, 1);
            ++v23;
          }

          if (v24 >= Count)
          {
            break;
          }

          ++v24;
        }

        while (v23 < v22);
      }

      v25 = v8;
LABEL_53:
      CFRelease(v20);
    }

    else
    {
      v25 = 0;
      v20 = v8;
      if (v8)
      {
        goto LABEL_53;
      }
    }

    CFRelease(Mutable);
    return v25;
  }

  return v8;
}

const __CFArray *sub_1000E87DC(uint64_t a1, CFArrayRef theArray)
{
  v2 = theArray;
  context = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a1 && (v5 = *(a1 + 592)) != 0)
    {
      v2 = v5(a1, v2, *(a1 + 656));
      if (!v2)
      {
        return v2;
      }
    }

    else
    {
      v8.location = 0;
      v8.length = Count;
      CFArrayApplyFunction(v2, v8, sub_1000E8898, &context);
      v2 = context;
      if (!context)
      {
        return v2;
      }
    }

    if (CFArrayGetCount(v2) != Count)
    {
      CFRelease(v2);
      return 0;
    }
  }

  return v2;
}

void sub_1000E8898(uint64_t a1, __CFArray **a2)
{
  v3 = sub_1000E8C70(a1);
  v4 = v3;
  if (a2 && v3)
  {
    Mutable = *a2;
    if (*a2 || (v6 = CFGetAllocator(v4), Mutable = CFArrayCreateMutable(v6, 0, &kCFTypeArrayCallBacks), (*a2 = Mutable) != 0))
    {
      CFArrayAppendValue(Mutable, v4);
    }
  }

  else if (!v3)
  {
    return;
  }

  CFRelease(v4);
}

uint64_t sub_1000E8920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, CFTypeRef *a7, CFTypeRef *a8)
{
  v13 = *(a3 + 16);
  if (v13)
  {
    CFRetain(*(a3 + 16));
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (!a5 || !v13)
  {
    AmbiguousClassValueAtIndex = 0;
    if (!v13)
    {
      return AmbiguousClassValueAtIndex;
    }

    goto LABEL_24;
  }

  if (!a4)
  {
    KnownClassValue = VSRecognitionDisambiguationContextGetKnownClassValue();
    if (KnownClassValue)
    {
      AmbiguousClassValueAtIndex = KnownClassValue;
      if (a7)
      {
LABEL_19:
        if (*a7)
        {
          CFRetain(*a7);
        }
      }

LABEL_21:
      if (a8 && *a8)
      {
        CFRetain(*a8);
      }

      goto LABEL_24;
    }
  }

  AmbiguousClassValueAtIndex = VSRecognitionDisambiguationContextGetAmbiguousClassValueAtIndex();
  if (AmbiguousClassValueAtIndex)
  {
    if (a7)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

LABEL_24:
  CFRelease(v13);
  return AmbiguousClassValueAtIndex;
}

CFIndex sub_1000E8A10(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex Count)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  CFRetain(*(a3 + 16));
  if (Count)
  {
    KnownClassValues = VSRecognitionDisambiguationContextGetKnownClassValues();
    if (KnownClassValues && CFDictionaryGetValue(KnownClassValues, v4))
    {
      Count = 1;
    }

    else
    {
      AmbiguousClassValues = VSRecognitionDisambiguationContextGetAmbiguousClassValues();
      if (AmbiguousClassValues && (Value = CFDictionaryGetValue(AmbiguousClassValues, v4)) != 0)
      {
        Count = CFArrayGetCount(Value);
      }

      else
      {
        Count = 0;
      }
    }
  }

  CFRelease(v4);
  return Count;
}

void sub_1000E8AA0(int a1, _BYTE *a2, CFMutableArrayRef theArray)
{
  if (a2)
  {
    if (a2[41])
    {
      CFArrayAppendValue(theArray, a2);
    }
  }
}

CFDictionaryRef sub_1000E8AB8(void *cf)
{
  v2 = cf[79];
  if (!v2 || (result = v2(cf, cf[82])) == 0)
  {
    v4 = CFGetAllocator(cf);

    return CFDictionaryCreate(v4, 0, 0, 0, 0, 0);
  }

  return result;
}

uint64_t sub_1000E8B28()
{
  result = _CFRuntimeRegisterClass();
  qword_100106550 = result;
  return result;
}

void sub_1000E8B5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t sub_1000E8BAC(uint64_t a1, const void *a2, uint64_t a3, char a4, uint64_t a5, const void *a6, char a7)
{
  if (!a2)
  {
    return 0;
  }

  pthread_once(&stru_100101430, sub_1000E8B28);
  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a2;
    CFRetain(a2);
    *(v14 + 40) = a4;
    *(v14 + 24) = a3;
    *(v14 + 32) = a5;
    *(v14 + 41) = a7;
    *(v14 + 48) = a6;
    if (a6)
    {
      CFRetain(a6);
    }
  }

  return v14;
}

uint64_t sub_1000E8C70(uint64_t a1)
{
  if (!*(a1 + 41) || !*(a1 + 48))
  {
    return 0;
  }

  pthread_once(&stru_100101440, sub_1000E8CD8);
  result = qword_100106558;
  if (qword_100106558)
  {
    CFRetain(qword_100106558);
    return qword_100106558;
  }

  return result;
}

void sub_1000E8CD8()
{
  if (!qword_100106558)
  {
    v0[0] = unk_1000FE740;
    v0[1] = *&off_1000FE750;
    qword_100106558 = sub_1000E78E4(kCFAllocatorDefault, v0);
  }
}

BOOL sub_1000E8D30(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if (*(a3 + 41) && (v12 = *(a3 + 48)) != 0 && CFArrayGetCount(v12) > a4)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 48), a4);
    v15 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }
  }

  else
  {
    v15 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a7)
  {
    *a7 = v15;
  }

  else if (v15)
  {
    CFRelease(v15);
  }

  return v15 != 0;
}

CFIndex sub_1000E8DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 41) && (v3 = *(a3 + 48)) != 0)
  {
    return CFArrayGetCount(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E8DFC()
{
  result = _CFRuntimeRegisterClass();
  qword_100106560 = result;
  return result;
}

__CFString *sub_1000E8E24(CFArrayRef *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  Count = CFArrayGetCount(a1[2]);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; v5 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[2], i);
      v8 = *(ValueAtIndex + 2);
      if (v8)
      {
        CFRetain(*(ValueAtIndex + 2));
      }

      if (i)
      {
        CFStringAppend(Mutable, @" ");
      }

      if (!v8)
      {
        continue;
      }

      CFStringAppendFormat(Mutable, 0, @"<%@>", v8);
      v9 = a1[3];
      if (v9)
      {
        v10 = CFArrayGetValueAtIndex(v9, i);
        if (v10 == 1)
        {
          v11 = @"+";
          goto LABEL_13;
        }

        if (v10 == 2)
        {
          v11 = @"*";
LABEL_13:
          CFStringAppend(Mutable, v11);
        }
      }

      CFRelease(v8);
    }
  }

  return Mutable;
}

uint64_t sub_1000E8F44(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (!v5 || !v6)
    {
      return v5 == v6;
    }

    result = CFEqual(v5, v6);
    if (!result)
    {
      return result;
    }

    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
    if (v5 && v6)
    {

      return CFEqual(v5, v6);
    }

    else
    {
      return v5 == v6;
    }
  }

  return result;
}

void sub_1000E8FC0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

uint64_t sub_1000E900C(const __CFAllocator *a1, const __CFArray *a2, CFArrayRef theArray)
{
  if (!a2)
  {
    return 0;
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count != CFArrayGetCount(a2))
    {
      return 0;
    }
  }

  pthread_once(&stru_100101450, sub_1000E8DFC);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CFArrayCreateCopy(a1, a2);
    if (theArray)
    {
      Copy = CFArrayCreateCopy(a1, theArray);
    }

    else
    {
      Copy = 0;
    }

    *(Instance + 24) = Copy;
  }

  return Instance;
}

uint64_t sub_1000E90D4(const __CFAllocator *a1, uint64_t a2, CFIndex a3, const __CFArray *a4)
{
  if (a3 == -1 || CFArrayGetCount(*(a2 + 16)) > a3)
  {
    pthread_once(&stru_100101450, sub_1000E8DFC);
    Instance = _CFRuntimeCreateInstance();
    if (a3 == -1)
    {
      *(Instance + 16) = CFArrayCreateCopy(a1, *(a2 + 16));
      v14 = *(a2 + 24);
      if (v14)
      {
        Copy = CFArrayCreateCopy(a1, v14);
      }

      else
      {
        Copy = 0;
      }

      goto LABEL_19;
    }

    MutableCopy = CFArrayCreateMutableCopy(a1, 0, *(a2 + 16));
    v10 = MutableCopy;
    v11 = *(a2 + 24);
    if (v11)
    {
      Copy = CFArrayCreateMutableCopy(a1, 0, v11);
      CFArrayRemoveValueAtIndex(v10, a3);
      if (Copy)
      {
        CFArrayRemoveValueAtIndex(Copy, a3);
        v13 = 0;
        if (!a4)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    else
    {
      CFArrayRemoveValueAtIndex(MutableCopy, a3);
      Copy = 0;
    }

    v13 = 1;
    if (!a4)
    {
LABEL_18:
      *(Instance + 16) = v10;
LABEL_19:
      *(Instance + 24) = Copy;
      return Instance;
    }

LABEL_13:
    Count = CFArrayGetCount(a4);
    if (Count >= 1)
    {
      v16 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a4, v16 - 2);
        CFArrayInsertValueAtIndex(v10, a3, ValueAtIndex);
        if ((v13 & 1) == 0)
        {
          CFArrayInsertValueAtIndex(Copy, a3, 0);
        }

        --v16;
      }

      while (v16 > 1);
    }

    goto LABEL_18;
  }

  return 0;
}

const void *sub_1000E926C(uint64_t a1, CFIndex idx, _DWORD *a3)
{
  if (a3)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      LODWORD(v6) = CFArrayGetValueAtIndex(v6, idx);
    }

    *a3 = v6;
  }

  v7 = *(a1 + 16);

  return CFArrayGetValueAtIndex(v7, idx);
}

uint64_t sub_1000E92CC(unsigned int a1)
{
  pthread_mutex_lock(&stru_100101460);
  Mutable = qword_100106568;
  if (qword_100106568 || (Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0), (qword_100106568 = Mutable) != 0))
  {
    CFDictionarySetValue(Mutable, a1, sub_1000D8638);
  }

  return pthread_mutex_unlock(&stru_100101460);
}

uint64_t sub_1000E9358(int a1, uint64_t a2)
{
  pthread_mutex_lock(&stru_100101460);
  if (!qword_100106568)
  {
    pthread_mutex_unlock(&stru_100101460);
    return 4294963295;
  }

  Value = CFDictionaryGetValue(qword_100106568, a1);
  pthread_mutex_unlock(&stru_100101460);
  if (!Value)
  {
    return 4294963295;
  }

  result = Value(a2);
  if (!result)
  {
    v6 = VSPreferencesCopySpokenLanguageIdentifier();
    result = 0;
    *(a2 + 32) = v6;
  }

  return result;
}

uint64_t sub_1000E93E0()
{
  result = _CFRuntimeRegisterClass();
  qword_100106570 = result;
  return result;
}

uint64_t sub_1000E941C(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 80))
  {
    CPRecordStoreDestroy();
  }

  return pthread_mutex_destroy((a1 + 16));
}

uint64_t sub_1000E9464(const __CFAllocator *a1, const __CFURL *a2)
{
  v2 = CFURLCreateCopyAppendingPathComponent(a1, a2, @"Manifest.sqlitedb", 0);
  if (v2)
  {
    v3 = v2;
    v4 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);
    if (!v4)
    {
      v9 = 0;
LABEL_12:
      CFRelease(v3);
      return v9;
    }

    v5 = v4;
    v6 = CPRecordStoreCreateWithPath();
    if (v6)
    {
      v7 = v6;
      CPRecordStoreSetSetupHandler();
      if (CPRecordStoreGetDatabase())
      {
        CPSqliteDatabaseSetVersion();
        pthread_once(&stru_1001014A0, sub_1000E93E0);
        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          v9 = Instance;
          pthread_mutex_init((Instance + 16), 0);
          *(v9 + 80) = v7;
LABEL_11:
          CFRelease(v5);
          goto LABEL_12;
        }
      }

      CPRecordStoreDestroy();
    }

    v9 = 0;
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_1000E9568()
{
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();

  return CPSqliteConnectionPerformSQL();
}

uint64_t sub_1000E95D4(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 80))
  {
    CPRecordStoreSave();
    CPRecordStoreInvalidateCaches();
  }

  return pthread_mutex_unlock((a1 + 16));
}

uint64_t sub_1000E9628(uint64_t a1, __CFDictionary **a2)
{
  v4 = sqlite3_column_text(*(a1 + 8), 0);
  if (!a2)
  {
    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = CFStringCreateWithCString(kCFAllocatorDefault, v4, 0x8000100u);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sqlite3_column_bytes(*(a1 + 8), 1);
  v8 = sqlite3_column_blob(*(a1 + 8), 1);
  if (!v7)
  {
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v8, v7, kCFAllocatorNull);
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = VSCFPropertyListCreateFromBinaryXMLData();
  if (!v11)
  {
LABEL_11:
    CFRelease(v10);
LABEL_12:
    v12 = CFDictionaryCreate(kCFAllocatorDefault, 0, 0, 0, 0, 0);
    goto LABEL_13;
  }

  v12 = v11;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v12))
  {
    CFRelease(v12);
    goto LABEL_11;
  }

  CFRelease(v10);
LABEL_13:
  Mutable = *a2;
  if (!*a2)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *a2 = Mutable;
  }

  CFDictionarySetValue(Mutable, v6, v12);
  CFRelease(v12);
  CFRelease(v6);
  return 0;
}

void sub_1000E9790()
{
  v0 = *CPRecordGetClass();
  PropertyDescriptor = CPRecordGetPropertyDescriptor();
  v2 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"UPDATE %s SET %s = ? WHERE ROWID = ?", v0, *PropertyDescriptor);
  v3 = CPSqliteConnectionStatementForSQL();
  if (v3)
  {
    v4 = v3;
    Property = CPRecordGetProperty();
    if (Property && (v6 = Property, Length = CFDataGetLength(Property), Length >= 1))
    {
      v8 = Length;
      BytePtr = CFDataGetBytePtr(v6);
      sqlite3_bind_blob(*(v4 + 8), 1, BytePtr, v8, 0);
    }

    else
    {
      sqlite3_bind_null(*(v4 + 8), 1);
    }

    v10 = *(v4 + 8);
    ID = CPRecordGetID();
    sqlite3_bind_int(v10, 2, ID);
    CPSqliteStatementPerform();
    CPSqliteStatementReset();
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_1000E98D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *CPRecordGetPropertyDescriptor();
    Class = CPRecordGetClass();
    v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SELECT %s FROM %s WHERE ROWID = ?", v3, *Class);
    v6 = CPSqliteConnectionStatementForSQL();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + 8);
      ID = CPRecordGetID();
      sqlite3_bind_int(v8, 1, ID);
      if (sqlite3_step(*(v7 + 8)) == 100)
      {
        v10 = sqlite3_column_bytes(*(v7 + 8), 0);
        v11 = sqlite3_column_blob(*(v7 + 8), 0);
        if (v10)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          CPRecordInitializeProperty();
        }

        else
        {
          v13 = CFDataCreate(kCFAllocatorDefault, v11, v10);
          CPRecordInitializeProperty();
          if (v13)
          {
            CFRelease(v13);
          }
        }
      }

      CPSqliteStatementReset();
    }

    if (v5)
    {

      CFRelease(v5);
    }
  }
}

void sub_1000E9A38(uint64_t a1, uint64_t a2, int a3, CFStringRef theString, const __CFString *a5, const __CFString *a6, const __CFString *a7)
{
  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v14 = MaximumSizeForEncoding;
  usedBufLen[0] = MaximumSizeForEncoding;
  if (MaximumSizeForEncoding < 256)
  {
    v15 = v34;
  }

  else
  {
    v15 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x446D11F8uLL);
  }

  v35.location = 0;
  v35.length = Length;
  CFStringGetBytes(theString, v35, 0x8000100u, 0, 0, v15, v14, usedBufLen);
  v15[usedBufLen[0]] = 0;
  sqlite3_bind_text(*(a1 + 8), 1, v15, -1, 0);
  v16 = CFStringGetLength(a5);
  v17 = CFStringGetMaximumSizeForEncoding(v16, 0x8000100u);
  v18 = v17;
  v32[0] = v17;
  if (v17 < 256)
  {
    v19 = usedBufLen;
  }

  else
  {
    v19 = malloc_type_malloc(v17 + 1, 0xD499CE6DuLL);
  }

  v36.location = 0;
  v36.length = v16;
  CFStringGetBytes(a5, v36, 0x8000100u, 0, 0, v19, v18, v32);
  v19[v32[0]] = 0;
  sqlite3_bind_text(*(a1 + 8), 2, v19, -1, 0);
  if (a6)
  {
    v20 = CFStringGetLength(a6);
    v21 = CFStringGetMaximumSizeForEncoding(v20, 0x8000100u);
    v22 = v21;
    v31[0] = v21;
    if (v21 < 256)
    {
      v23 = v32;
    }

    else
    {
      v23 = malloc_type_malloc(v21 + 1, 0x60FA4EBBuLL);
    }

    v37.location = 0;
    v37.length = v20;
    CFStringGetBytes(a6, v37, 0x8000100u, 0, 0, v23, v22, v31);
    v23[v31[0]] = 0;
    sqlite3_bind_text(*(a1 + 8), 3, v23, -1, 0);
    v24 = 4;
  }

  else
  {
    v23 = 0;
    v24 = 3;
  }

  v25 = CFStringGetLength(a7);
  v26 = CFStringGetMaximumSizeForEncoding(v25, 0x8000100u);
  v27 = v26;
  v30 = v26;
  if (v26 < 256)
  {
    v28 = v31;
  }

  else
  {
    v28 = malloc_type_malloc(v26 + 1, 0x6D8C6F7DuLL);
  }

  v38.location = 0;
  v38.length = v25;
  CFStringGetBytes(a7, v38, 0x8000100u, 0, 0, v28, v27, &v30);
  v28[v30] = 0;
  sqlite3_bind_text(*(a1 + 8), v24, v28, -1, 0);
  if (a2)
  {
    CPSqliteStatementSendResults();
  }

  else
  {
    CPSqliteStatementPerform();
  }

  CPSqliteStatementReset();
  if (v15 != v34)
  {
    free(v15);
  }

  if (v19 != usedBufLen)
  {
    free(v19);
  }

  if (a6 && v23 && v23 != v32)
  {
    free(v23);
  }

  if (v28 != v31)
  {
    free(v28);
  }
}

uint64_t sub_1000E9DA8(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  result = 0;
  v10 = 0;
  if (a2 && a3 && a4)
  {
    pthread_mutex_lock((a1 + 16));
    if (CPRecordStoreGetDatabase())
    {
      v9 = CPSqliteDatabaseStatementForWriting();
      if (v9)
      {
        sub_1000E9A38(v9, sub_1000E9E50, &v10, a2, a3, 0, a4);
      }
    }

    pthread_mutex_unlock((a1 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_1000E9E50(uint64_t a1, __CFArray **a2)
{
  v3 = sqlite3_column_text(*(a1 + 8), 0);
  if (v3)
  {
    v4 = CFStringCreateWithCString(kCFAllocatorDefault, v3, 0x8000100u);
    if (v4)
    {
      v5 = v4;
      if (a2)
      {
        Mutable = *a2;
        if (!*a2)
        {
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          *a2 = Mutable;
        }

        CFArrayAppendValue(Mutable, v5);
      }

      CFRelease(v5);
    }
  }

  return 0;
}

void sub_1000E9EE8(int a1)
{
  if (qword_100106578)
  {
    Count = CFArrayGetCount(qword_100106578);
    if (Count >= 1)
    {
      v3 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100106578, v3 - 2);
        if (*ValueAtIndex == a1)
        {
          v5 = ValueAtIndex;
          CFArrayRemoveValueAtIndex(qword_100106578, v3 - 2);
          sub_1000E9F84(kCFAllocatorDefault, v5);
        }

        --v3;
      }

      while (v3 > 1);
    }
  }
}

void sub_1000E9F84(CFAllocatorRef allocator, void *ptr)
{
  if (!ptr)
  {
    return;
  }

  if (*ptr == 1)
  {
    v9 = ptr[1];
    if (v9)
    {
      CFRelease(v9);
    }

    v8 = ptr[2];
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*ptr)
    {
      goto LABEL_14;
    }

    v4 = *(ptr + 2);
    if (v4 + 1 >= 2)
    {
      mach_port_deallocate(mach_task_self_, v4);
    }

    v5 = ptr[2];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = ptr[3];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = ptr[4];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = ptr[5];
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  CFRelease(v8);
LABEL_14:

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t sub_1000EA040(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  Typed = CFAllocatorAllocateTyped();
  v4 = Typed;
  if (Typed)
  {
    *Typed = *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    *(Typed + 64) = *(a2 + 64);
    *(Typed + 32) = v6;
    *(Typed + 48) = v7;
    *(Typed + 16) = v5;
    if (*a2 == 1)
    {
      if (*(a2 + 8))
      {
        CFRetain(*(Typed + 8));
      }

      if (*(a2 + 16))
      {
        v8 = 16;
        goto LABEL_18;
      }
    }

    else if (!*a2)
    {
      if (*(a2 + 16))
      {
        CFRetain(*(Typed + 16));
      }

      if (*(a2 + 24))
      {
        CFRetain(*(v4 + 24));
      }

      if (*(a2 + 32))
      {
        CFRetain(*(v4 + 32));
      }

      if (*(a2 + 40))
      {
        v8 = 40;
LABEL_18:
        CFRetain(*(v4 + v8));
      }
    }
  }

  return v4;
}

_DWORD *sub_1000EA128()
{
  result = qword_100106578;
  if (qword_100106578)
  {
    Count = CFArrayGetCount(qword_100106578);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v2 = Count;
      v3 = 1;
      do
      {
        result = CFArrayGetValueAtIndex(qword_100106578, v3 - 1);
        if (*result)
        {
          result = 0;
        }

        if (result)
        {
          v4 = 0;
        }

        else
        {
          v4 = v3 < v2;
        }

        ++v3;
      }

      while (v4);
    }
  }

  return result;
}

void sub_1000EA220(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 56) != v2)
  {
    *(v1 + 56) = v2;
    if (*(*(a1 + 32) + 40) == 2)
    {
      v4 = +[AVAudioSession sharedInstance];
      v5 = [v4 categoryOptions];
      if (((((v5 & 4) == 0) ^ *(*(a1 + 32) + 56)) & 1) == 0)
      {
        v6 = v5;
        v7 = [v4 category];
        v13 = 0;
        [v4 setCategory:v7 withOptions:v6 ^ 4 error:&v13];
        v8 = v13;

        v9 = VSGetLogDefault();
        v10 = v9;
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v11 = [v8 code];
            *buf = 134217984;
            v15 = v11;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#AudioSession error %ld setting bluetooth allowability\n", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          if (*(*(a1 + 32) + 56))
          {
            v12 = "en";
          }

          else
          {
            v12 = "dis";
          }

          *buf = 136315138;
          v15 = v12;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#AudioSession : Bluetooth %sabled\n", buf, 0xCu);
        }
      }
    }
  }
}

void *sub_1000EA514(uint64_t a1)
{
  v2 = [*(a1 + 32) _nextActivityForActive:*(a1 + 48) activity:*(a1 + 40) serverActivity:*(*(a1 + 32) + 32)];
  result = *(a1 + 32);
  if (v2 != result[6])
  {
    if (v2)
    {
      [result _setCategoryForActivity:v2];
      v4 = *(a1 + 32);
      if (v4[6])
      {
        goto LABEL_12;
      }

      [v4 _setupAudioSession];
      v5 = +[AVAudioSession sharedInstance];
      v12 = 0;
      [v5 setActive:1 error:&v12];
      v6 = v12;

      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v8 = "#AudioSession : Active --> TRUE\n";
LABEL_16:
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v8, buf, 2u);
      }
    }

    else
    {
      sub_1000EA71C();
      v9 = +[AVAudioSession sharedInstance];
      v13 = 0;
      [v9 setActive:0 error:&v13];
      v6 = v13;

      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v8 = "#AudioSession : Active --> FALSE\n";
        goto LABEL_16;
      }
    }

    if (v6)
    {
      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v6 code];
        *buf = 134218240;
        v15 = v11;
        v16 = 2048;
        v17 = v2;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#AudioSession error %ld activating or deactivating session for activity %ld\n", buf, 0x16u);
      }

      goto LABEL_13;
    }

    v4 = *(a1 + 32);
LABEL_12:
    v4[6] = v2;
LABEL_13:
    result = *(a1 + 32);
  }

  result[4] = v2;
  return result;
}

uint64_t sub_1000EA71C()
{
  pthread_mutex_lock(&stru_1001014B0);
  if (qword_100106590)
  {
    CFSetApplyFunction(qword_100106590, sub_1000EA778, 0);
  }

  return pthread_mutex_unlock(&stru_1001014B0);
}

void sub_1000EA778(OpaqueAudioQueue *a1)
{
  v1 = AudioQueueStop(a1, 1u);
  if (v1)
  {
    v2 = v1;
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [NSString vs_stringFrom4CC:v2];
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#AudioSession could not stop queue (%@)\n", &v5, 0xCu);
    }
  }
}

id sub_1000EB058(uint64_t a1)
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "#AudioSession mediaserverd died\n", v5, 2u);
  }

  v3 = *(a1 + 32);
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(*(a1 + 32) + 16) = 0;
  result = [*(a1 + 32) _setupAudioSession];
  ++*(*(a1 + 32) + 72);
  return result;
}

uint64_t sub_1000EB1B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "#AudioSession session interrupted\n", v4, 2u);
  }

  return sub_1000EA71C();
}

void sub_1000EB3D4(id a1)
{
  qword_100106580 = objc_alloc_init(VSAudioSession);

  _objc_release_x1();
}

id sub_1000EB410()
{
  v0 = +[VSAudioSession sharedInstance];
  v1 = [v0 _safeServerGeneration];

  return v1;
}

void sub_1000EB450(int a1, uint64_t a2)
{
  v4 = +[VSAudioSession sharedInstance];
  [v4 _safeSetActive:a1 != 0 withActivity:a2];
}

void sub_1000EB4B4(int a1)
{
  v2 = +[VSAudioSession sharedInstance];
  [v2 _safeSetBluetoothInputAllowed:a1 != 0];
}

float sub_1000EB510()
{
  v0 = +[AVAudioSession sharedInstance];
  [v0 outputLatency];
  v2 = v1;
  [v0 inputLatency];
  v4 = v3;
  [v0 IOBufferDuration];
  v6 = v5;
  v7 = VSPreferencesCopyValueForKey();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 doubleValue];
  }

  else
  {
    v8 = 0.05;
  }

  v9 = v2 + 0.0 + v4 + v6 * 2.0 + v8;

  return v9;
}

void sub_1000EB5D8()
{
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, _kCFSystemVersionBuildVersionKey);
    qword_100106598 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFRelease(v1);
  }
}

uint64_t sub_1000EB640(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  Count = CFArrayGetCount(*(a1 + 16));
  v31 = 0;
  theString1 = 0;
  v26 = Count;
  if (Count < 1)
  {
    v9 = 1;
    goto LABEL_42;
  }

  v8 = 0;
  LOBYTE(v9) = 1;
  while (v6 < a4 && v9)
  {
    v10 = sub_1000E926C(a1, v8, &v31);
    v11 = v10[41];
    v28 = v8;
    if (v10[41])
    {
      v12 = *(v10 + 2);
      if (v12)
      {
        CFRetain(*(v10 + 2));
      }

      v13 = 0;
    }

    else
    {
      v13 = *(v10 + 6);
      CFRetain(v13);
      if (v13)
      {
        v14 = CFArrayGetCount(v13);
        v12 = 0;
        goto LABEL_12;
      }

      v12 = 0;
    }

    v14 = 0;
LABEL_12:
    v15 = 0;
    while (v11)
    {
      VSRecognitionResultGetPhraseAtIndex();
      if (CFStringCompare(theString1, v12, 0))
      {
        goto LABEL_31;
      }

      ++v6;
LABEL_25:
      v21 = v31;
      v15 = 1;
      v22 = v6 >= a4 || v31 == 0;
      if (v22)
      {
        goto LABEL_32;
      }
    }

    if (v14 >= 1)
    {
      v16 = 0;
      for (i = 0; i != v14; ++i)
      {
        v29 = v6;
        ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
        v19 = sub_1000EB640(ValueAtIndex, a2, &v29, a4);
        v20 = v29 - v6;
        if (v29 - v6 <= v16)
        {
          v20 = v16;
        }

        if (v19)
        {
          v16 = v20;
        }
      }

      if (v16)
      {
        v6 += v16;
        goto LABEL_25;
      }
    }

LABEL_31:
    v21 = v31;
LABEL_32:
    v23 = v21 == 2;
    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v9 = (v15 | v23) & 1;
    v8 = v28 + 1;
    if (v28 + 1 == v26)
    {
LABEL_42:
      *a3 = v6;
      return v9;
    }
  }

  result = 0;
  v22 = v9 == 0;
  v9 = 0;
  if (v22)
  {
    goto LABEL_42;
  }

  return result;
}

void sub_1000EB844(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Receive notification %s", &v21, 0xCu);
    }

    v5 = [[VSDownloadService alloc] initWithType:2];
    if (qword_1001065A0)
    {
      [qword_1001065A0 timeIntervalSinceNow];
      v7 = v6 >= -300.0;
    }

    else
    {
      v7 = 0;
    }

    if (!strcmp("com.apple.MobileAsset.VoiceServicesVocalizerVoice.ma.cached-metadata-updated", v3) && !v7)
    {
      [v5 updateVoicesAndVoiceResources];
      v8 = +[NSDate date];
      v9 = qword_1001065A0;
      qword_1001065A0 = v8;
    }

    if (!strcmp("com.apple.MobileAsset.VoiceServices.GryphonVoice.ma.new-asset-installed", v3) || !strcmp("com.apple.MobileAsset.VoiceServicesVocalizerVoice.ma.new-asset-installed", v3))
    {
      v10 = +[VSMobileAssetsManager sharedManager];
      [v10 resetCache];

      notify_post([@"com.apple.voiceservices.notification.voice-update" UTF8String]);
    }

    if (!strcmp("com.apple.MobileAsset.VoiceServices.VoiceResources.ma.new-asset-installed", v3))
    {
      v12 = +[VSMobileAssetsManager sharedManager];
      [v12 resetResourcesCache];

      v13 = +[VSMobileAssetsManager sharedManager];
      [v13 resetCache];

      Current = CFAbsoluteTimeGetCurrent();
      v15 = VSPreferencesCopyValueForKey();
      [v15 doubleValue];
      v17 = v16;

      v11 = Current - v17;
      if (Current - v17 > 43200.0)
      {
        [NSNumber numberWithDouble:Current];
        VSPreferencesSetValueForKey();
        v18 = VSGetLogDefault();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v21) = 0;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "com.apple.MobileAsset.VoiceServices.VoiceResources.ma.new-asset-installed: checking for a voice update", &v21, 2u);
        }

        [v5 updateVoicesAndVoiceResources];
      }
    }

    if (!strcmp([@"com.apple.voiceservices.trigger.asset-force-update" UTF8String], v3))
    {
      v19 = VSGetLogDefault();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v21) = 0;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Perform force asset update", &v21, 2u);
      }

      v20 = [[VSDownloadService alloc] initWithType:3];
      [v20 updateVoicesAndVoiceResources];
      v5 = v20;
    }
  }
}

void sub_1000EBE78(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 16) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
  }
}

id sub_1000EBF74(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

id sub_1000EC084(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

id sub_1000EC628(uint64_t a1)
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) connectionIdentifier];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated, identifier: %{public}@", &v5, 0xCu);
  }

  if ([*(a1 + 32) isSpeaking])
  {
    [*(a1 + 32) invalidate];
  }

  return [*(a1 + 40) setConnectionCount:{objc_msgSend(*(a1 + 40), "connectionCount") - 1}];
}

void sub_1000EC87C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    v6 = VSGetLogEvent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "running com.apple.voiced.neural-compiling", buf, 2u);
    }

    v7 = +[VSMobileAssetsManager sharedManager];
    v8 = [v7 installedAssetsForType:4 voicename:0 language:0 gender:0 footprint:0];

    v9 = +[VSSpeechInternalSettings standardInstance];
    v10 = [v9 enableLocalVoices];

    if (v10)
    {
      v11 = +[VSMobileAssetsManager sharedManager];
      v12 = [v11 installedLocalVoices];
      v13 = [v8 arrayByAddingObjectsFromArray:v12];

      v8 = v13;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = *v30;
      *&v16 = 138412290;
      v28 = v16;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [v20 voicePath];
          if ([VSNeuralTTSUtils isANEModelCompiled:v21])
          {
            v22 = VSGetLogEvent();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v28;
              v34 = v21;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Neural voice is already compiled: '%@'", buf, 0xCu);
            }
          }

          else
          {
            if (xpc_activity_should_defer(v2))
            {
              v26 = VSGetLogDefault();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "com.apple.voiced.neural-compiling is requested to be deferred.", buf, 2u);
              }

              if (xpc_activity_set_state(v2, 3))
              {
                v27 = VSGetLogDefault();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Unable to set defer state for com.apple.voiced.neural-compiling", buf, 2u);
                }
              }

              goto LABEL_41;
            }

            v23 = VSGetLogEvent();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v28;
              v34 = v21;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Triggered compiling neural voice '%@'", buf, 0xCu);
            }

            [VSNeuralTTSUtils compileANEModel:v21];
            v24 = VSGetLogEvent();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v28;
              v34 = v21;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Neural voice finished compiling '%@'", buf, 0xCu);
            }

            v22 = +[VSPrewarmService sharedService];
            [v22 unloadCachedEngineWithVoice:v20];
          }
        }

        v17 = [v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    if (!xpc_activity_set_state(v2, 5))
    {
      v25 = VSGetLogDefault();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "xpc activity com.apple.voiced.neuralCompiling, failed to set state to done.", buf, 2u);
      }
    }

    goto LABEL_41;
  }

  v4 = state;
  if (state)
  {
    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v34 = v4;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unexpected xpc_activity state, got: %ld", buf, 0xCu);
    }

    goto LABEL_41;
  }

  v5 = xpc_activity_copy_criteria(v2);
  if (!v5)
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v14, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_4_HOURS);
    xpc_dictionary_set_string(v14, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v14, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, 1);
    if (+[VSUtilities isWatch])
    {
      xpc_dictionary_set_BOOL(v14, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    }

    xpc_activity_set_criteria(v2, v14);
LABEL_41:

    goto LABEL_42;
  }

LABEL_42:
}

void sub_1000ECDC4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  v4 = state;
  if (state == 2)
  {
    v6 = VSGetLogEvent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "running com.apple.voiced.weekly", &v11, 2u);
    }

    v7 = [[VSDownloadService alloc] initWithType:1];
    [v7 updateVoicesAndVoiceResources];

    if (!xpc_activity_set_state(v2, 5))
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v11) = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "xpc activity com.apple.voiced.weekly, failed to set state to done.", &v11, 2u);
      }
    }
  }

  else if (!state)
  {
    v5 = xpc_activity_copy_criteria(v2);
    if (v5)
    {
    }

    else
    {
      v10 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v10, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_7_DAYS);
      xpc_dictionary_set_string(v10, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
      xpc_activity_set_criteria(v2, v10);
    }

    goto LABEL_14;
  }

  v9 = VSGetLogDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = 134217984;
    v12 = v4;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unexpected xpc_activity state, got: %ld", &v11, 0xCu);
  }

LABEL_14:
}

void sub_1000ECFC0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  v4 = state;
  if (state == 2)
  {
    v6 = VSGetLogEvent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "running com.apple.voiced", &v14, 2u);
    }

    v7 = objc_alloc_init(VSSpeechXPCHandler);
    [v7 cleanUnusedAssets:&stru_1000FEB80];
    v8 = +[VSSpeechCache defaultCacheStore];
    [v8 cleanCache];

    v9 = +[VSDiagnosticService defaultService];
    [v9 removeOldFiles];

    v10 = [[VSDownloadService alloc] initWithType:0];
    [v10 updateVoicesAndVoiceResources];

    if (!xpc_activity_set_state(v2, 5))
    {
      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "xpc activity com.apple.voiced, failed to set state to done.", &v14, 2u);
      }
    }
  }

  else if (!state)
  {
    v5 = xpc_activity_copy_criteria(v2);
    if (v5)
    {
    }

    else
    {
      v13 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v13, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_DAY);
      xpc_dictionary_set_BOOL(v13, XPC_ACTIVITY_REPEATING, 1);
      xpc_dictionary_set_uint64(v13, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_DAY / 2);
      xpc_dictionary_set_string(v13, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
      xpc_dictionary_set_uint64(v13, XPC_ACTIVITY_RANDOM_INITIAL_DELAY, XPC_ACTIVITY_INTERVAL_4_HOURS);
      xpc_activity_set_criteria(v2, v13);
    }

    goto LABEL_15;
  }

  v12 = VSGetLogDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 134217984;
    v15 = v4;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unexpected xpc_activity state, got: %ld", &v14, 0xCu);
  }

LABEL_15:
}

void sub_1000ED26C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [(NSError *)v2 localizedDescription];
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error cleanUnusedAssets in scheduled background task: %@", &v5, 0xCu);
    }
  }
}

void sub_1000ED424(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    if (*(a1 + 32))
    {
      v3 = VSGetLogDefault();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "beginning plugin registry rebuild...", buf, 2u);
      }

      v4 = sub_1000E447C();
      v5 = sub_1000E44EC();
      pthread_mutex_lock(&stru_1001012E0);
      if (qword_1001064D0)
      {
        CFRelease(qword_1001064D0);
        qword_1001064D0 = 0;
      }

      if (qword_1001064D8)
      {
        CFRelease(qword_1001064D8);
        qword_1001064D8 = 0;
      }

      sub_1000E46BC(v4, v5);
      CFRelease(v4);
      if (v5)
      {
        CFRelease(v5);
      }

      pthread_mutex_unlock(&stru_1001012E0);
      v6 = VSGetLogDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "finished.\n", v8, 2u);
      }
    }

    else
    {
      v7 = sub_1000E4150();
      if (v7)
      {
        CFRelease(v7);
      }
    }

    *(a2 + 32) = 0;
  }
}

void sub_1000ED58C(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v3 = -304;
    goto LABEL_6;
  }

  *(a2 + 44) = 0;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *cf = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (sub_1000E9358(0, &v10))
  {
    v3 = 5;
LABEL_6:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return;
  }

  v4 = sub_1000E1F18(*(&v11 + 1), cf[0], cf[1]);
  if (v4)
  {
    v5 = v4;
    v6 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v4, @"KeywordIndex.plist", 0);
    CFRelease(v5);
    v7 = 5;
    if (v6)
    {
      if (CFURLGetFileSystemRepresentation(v6, 1u, (a2 + 44), 1024))
      {
        v7 = 0;
      }

      else
      {
        v7 = 5;
      }

      CFRelease(v6);
    }
  }

  else
  {
    v7 = 5;
  }

  if (*(&v13 + 1))
  {
    (*(&v13 + 1))(&v10);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  *(a2 + 32) = v7;
  v8 = NDR_record;
  *(a2 + 24) = NDR_record;
  if (!v7)
  {
    v9 = strlen((a2 + 44));
    if ((v9 + 1) >> 32)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = v8;
    }

    else
    {
      *(a2 + 36) = 0;
      *(a2 + 40) = v9 + 1;
      *(a2 + 4) = ((v9 + 4) & 0xFFFFFFFC) + 44;
    }
  }
}

void sub_1000ED708(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    *(a2 + 36) = 16777473;
    context = 0;
    v3 = sub_1000E4150();
    if (v3)
    {
      v4 = v3;
      CFDictionaryApplyFunction(v3, sub_1000E5CDC, &context);
      CFRelease(v4);
      v5 = context;
      if (context)
      {
        BinaryXMLData = VSCFPropertyListCreateBinaryXMLData();
        if (BinaryXMLData)
        {
          v7 = BinaryXMLData;
          Length = CFDataGetLength(BinaryXMLData);
          *(a2 + 52) = Length;
          if (vm_allocate(mach_task_self_, (a2 + 28), Length, 1))
          {
            *(a2 + 52) = 0;
          }

          else
          {
            v9 = *(a2 + 28);
            BytePtr = CFDataGetBytePtr(v7);
            memcpy(v9, BytePtr, *(a2 + 52));
          }

          CFRelease(v7);
        }

        else
        {
          *(a2 + 52) = 0;
        }

        CFRelease(v5);
      }
    }

    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
  }
}

void sub_1000ED860(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 80)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1)
    {
      v4 = *(a1 + 40);
      if (v4 == *(a1 + 72))
      {
        v5 = *(a1 + 56);
        if (v5 == *(a1 + 76))
        {
          sub_1000E1554(*(a1 + 68), *(a1 + 28), v4, *(a1 + 44), v5);
          *(a2 + 32) = 0;
          mig_deallocate(*(a1 + 44), *(a1 + 56));
          *(a1 + 44) = 0;
          *(a1 + 56) = 0;
          mig_deallocate(*(a1 + 28), *(a1 + 40));
          *(a1 + 28) = 0;
          *(a1 + 40) = 0;
          return;
        }
      }
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

uint64_t sub_1000ED93C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 40)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v4 = -300;
    goto LABEL_9;
  }

  v3 = *(result + 28);
  result = sub_1000E11E0(v3);
  if (v3 - 1 <= 0xFFFFFFFD)
  {
    result = mach_port_deallocate(mach_task_self_, v3);
  }

  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1000ED9E0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 40)
  {
    v11 = -304;
LABEL_24:
    *(a2 + 32) = v11;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v11 = -300;
    goto LABEL_24;
  }

  v3 = *(result + 28);
  *(a2 + 36) = 0;
  pthread_mutex_lock(&stru_100101210);
  if (qword_100106468 && !*qword_100106468 && *(qword_100106468 + 8) == v3 && qword_100106480 != 0)
  {
    ioDataSize = 16;
    Property = AudioQueueGetProperty(qword_100106480, 0x61716D64u, outData, &ioDataSize);
    v6 = 0.0;
    if (!Property)
    {
      LODWORD(v7) = ioDataSize >> 3;
      v7 = ioDataSize >> 3 >= 2 ? 2 : v7;
      if (ioDataSize >= 8)
      {
        v8 = outData;
        v9 = v7;
        do
        {
          v10 = *v8;
          v8 += 2;
          v6 = v6 + v10;
          --v9;
        }

        while (v9);
        v6 = v6 / v7;
      }
    }

    *(a2 + 36) = v6;
  }

  result = pthread_mutex_unlock(&stru_100101210);
  if (v3 - 1 <= 0xFFFFFFFD)
  {
    result = mach_port_deallocate(mach_task_self_, v3);
  }

  *(a2 + 32) = 0;
  *(a2 + 24) = NDR_record;
  *(a2 + 4) = 40;
  return result;
}

uint64_t sub_1000EDB74(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 40)
  {
    v11 = -304;
LABEL_24:
    *(a2 + 32) = v11;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v11 = -300;
    goto LABEL_24;
  }

  v3 = *(result + 28);
  *(a2 + 36) = 0;
  pthread_mutex_lock(&stru_100101210);
  if (qword_100106468 && !*qword_100106468 && *(qword_100106468 + 8) == v3 && qword_100106480 != 0)
  {
    ioDataSize = 16;
    Property = AudioQueueGetProperty(qword_100106480, 0x61716D76u, outData, &ioDataSize);
    v6 = 0.0;
    if (!Property)
    {
      LODWORD(v7) = ioDataSize >> 3;
      v7 = ioDataSize >> 3 >= 2 ? 2 : v7;
      if (ioDataSize >= 8)
      {
        v8 = outData;
        v9 = v7;
        do
        {
          v10 = *v8;
          v8 += 2;
          v6 = v6 + v10;
          --v9;
        }

        while (v9);
        v6 = v6 / v7;
      }
    }

    *(a2 + 36) = v6;
  }

  result = pthread_mutex_unlock(&stru_100101210);
  if (v3 - 1 <= 0xFFFFFFFD)
  {
    result = mach_port_deallocate(mach_task_self_, v3);
  }

  *(a2 + 32) = 0;
  *(a2 + 24) = NDR_record;
  *(a2 + 4) = 40;
  return result;
}

uint64_t sub_1000EDD08(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 40)
  {
    v5 = -304;
LABEL_16:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v5 = -300;
    goto LABEL_16;
  }

  v3 = *(result + 28);
  pthread_mutex_lock(&stru_100101210);
  if (qword_100106468 && !*qword_100106468 && *(qword_100106468 + 64) == 1 && *(qword_100106468 + 8) == v3)
  {
    *(qword_100106468 + 64) = 0;
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "server_VSRecognitionBegin";
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s: releasing active client to begin\n", &v8, 0xCu);
    }

    if (qword_100106470)
    {
      CFRunLoopSourceSignal(qword_100106470);
    }

    if (qword_100106478)
    {
      CFRunLoopWakeUp(qword_100106478);
    }
  }

  else
  {
    v6 = sub_1000EA128();
    if (!v6 || v6[2] != v3 || *(v6 + 64) != 1)
    {
      v7 = 0;
      goto LABEL_24;
    }

    *(v6 + 64) = 0;
  }

  v7 = 1;
LABEL_24:
  result = pthread_mutex_unlock(&stru_100101210);
  *(a2 + 36) = v7;
  if (v3 - 1 <= 0xFFFFFFFD)
  {
    result = mach_port_deallocate(mach_task_self_, v3);
  }

  *(a2 + 32) = 0;
  *(a2 + 24) = NDR_record;
  *(a2 + 4) = 40;
  return result;
}

void sub_1000EDEEC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 3)
  {
    goto LABEL_26;
  }

  v5 = *(a1 + 4);
  if ((v5 - 2177) < 0xFFFFF7FF)
  {
    goto LABEL_26;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 51) != 1 || *(a1 + 67) != 1)
  {
    goto LABEL_25;
  }

  v6 = *(a1 + 88);
  if (v6 > 0x400)
  {
LABEL_2:
    v3 = -304;
LABEL_26:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return;
  }

  v3 = -304;
  if (v5 - 128 < v6)
  {
    goto LABEL_26;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 < v7 + 128)
  {
    goto LABEL_26;
  }

  v8 = a1 + v7;
  v9 = *(v8 + 96);
  if (v9 > 0x400)
  {
    goto LABEL_26;
  }

  v10 = v5 - v7;
  if (v10 - 128 < v9)
  {
    goto LABEL_26;
  }

  v11 = (v9 + 3) & 0xFFFFFFFC;
  if (v10 != v11 + 128)
  {
    goto LABEL_26;
  }

  v12 = v8 - 1024;
  v13 = v8 - 1024 + v11;
  v14 = *(a1 + 52);
  if (v14 != *(v13 + 1132) || (v15 = v13 - 1024, v16 = *(a1 + 68), v16 != *(v13 + 1136)))
  {
LABEL_25:
    v3 = -300;
    goto LABEL_26;
  }

  v17 = 1116;
  if (v5 < 0x45C)
  {
    v17 = *(a1 + 4);
  }

  if (!memchr((a1 + 92), 0, v17 - 92))
  {
    goto LABEL_2;
  }

  v18 = (a1 + v5 - (v12 + 1124)) >= 1024 ? 1024 : a1 + v5 - (v12 + 1124);
  if (!memchr((v12 + 1124), 0, v18))
  {
    goto LABEL_2;
  }

  HIBYTE(v20) = *(v15 + 2168);
  LOBYTE(v20) = *(v15 + 2164);
  sub_1000DE730(*(a1 + 28), *(a1 + 80), (a1 + 92), (v12 + 1124), *(a1 + 40), v14, *(a1 + 56), v16, *(v15 + 2148), v20, *(v15 + 2172), (a2 + 36));
  *(a2 + 32) = 0;
  mig_deallocate(*(a1 + 56), *(a1 + 68));
  *(a1 + 56) = 0;
  *(a1 + 68) = 0;
  mig_deallocate(*(a1 + 40), *(a1 + 52));
  *(a1 + 40) = 0;
  *(a1 + 52) = 0;
  v19 = *(a2 + 32);
  *(a2 + 24) = NDR_record;
  if (!v19)
  {
    *(a2 + 4) = 40;
  }
}

uint64_t sub_1000EE114(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 1004743) >= 0xFFFFFFF7)
  {
    return *(&off_1000FEC08 + 5 * (v1 - 1004734) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EE154(unsigned int a1, const char *a2, uint64_t a3, int a4)
{
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
  *&v14[4] = 0u;
  memset(&v9, 0, sizeof(v9));
  v10 = 1;
  v11 = a3;
  v12 = 16777472;
  v13 = a4;
  *v14 = NDR_record;
  if (&_mig_strncpy_zerofill)
  {
    v6 = mig_strncpy_zerofill(&v14[16], a2, 1024);
  }

  else
  {
    v6 = mig_strncpy(&v14[16], a2, 1024);
  }

  *&v14[8] = 0;
  *&v14[12] = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  *&v14[v7 + 16] = a4;
  v9.msgh_bits = -2147483629;
  *&v9.msgh_remote_port = a1;
  *&v9.msgh_voucher_port = 0xF54BE00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v9);
  }

  return mach_msg(&v9, 1, v7 + 64, 0, 0, 0, 0);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}