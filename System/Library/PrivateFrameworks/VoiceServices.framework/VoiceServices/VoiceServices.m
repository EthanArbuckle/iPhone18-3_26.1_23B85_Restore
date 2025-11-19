void sub_2728547C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2728553CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272855718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _VSRecognitionRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __VSRecognitionTypeID = result;
  return result;
}

uint64_t _VSRecognitionDestroy(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 80);
  if (v2)
  {
    _VSServerConnectionInvalidate(v2);
    CFRelease(*(a1 + 80));
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 184);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 152);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    munmap(v8, 4uLL);
  }

  pthread_mutex_unlock((a1 + 16));

  return pthread_mutex_destroy((a1 + 16));
}

uint64_t _VSRecognitionCreate(const __CFAllocator *a1, const __CFString *a2, const void *a3, __int128 *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  pthread_once(&VSRecognitionGetTypeID___VSRecognitionRegisterOnce, _VSRecognitionRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 850045863;
    *(Instance + 24) = 0u;
    *(Instance + 40) = 0u;
    *(Instance + 56) = 0u;
    *(Instance + 72) = 0u;
    *(Instance + 96) = -1;
    *(Instance + 176) = 0;
    *(Instance + 88) = CFStringCreateCopy(a1, a2);
    *(v11 + 128) = 0;
    *(v11 + 136) = 0;
    *(v11 + 144) = 0;
    *(v11 + 160) = 0;
    *(v11 + 168) = 0;
    *(v11 + 152) = 0;
    *(v11 + 192) = a5;
    if (a4)
    {
      v12 = *a4;
      *(v11 + 120) = *(a4 + 2);
      *(v11 + 104) = v12;
      if (a3)
      {
LABEL_5:
        *(v11 + 184) = a3;
        CFRetain(a3);
        return v11;
      }
    }

    else
    {
      *(v11 + 104) = 0;
      *(v11 + 112) = 0;
      *(v11 + 120) = 0;
      if (a3)
      {
        goto LABEL_5;
      }
    }

    *(v11 + 184) = 0;
  }

  return v11;
}

uint64_t VSRecognitionSetPreferredEngine(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 96) == -1)
  {
    *(a1 + 128) = a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock((a1 + 16));
  return v4;
}

uint64_t VSRecognitionSetDebugDumpPath(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 96) == -1)
  {
    v5 = *(a1 + 136);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 136) = 0;
    }

    if (*MEMORY[0x277CBEEE8] == a2)
    {
      v6 = CFGetAllocator(a1);
      v7 = VSLogBundleCreate(v6);
      v4 = v7;
      if (!v7)
      {
        goto LABEL_11;
      }

      *(a1 + 136) = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);
      CFRelease(v4);
    }

    else if (a2)
    {
      CFRetain(a2);
      *(a1 + 136) = a2;
    }

    v4 = 1;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:
  pthread_mutex_unlock((a1 + 16));
  return v4;
}

uint64_t VSRecognitionCopyDebugDumpPath(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRetain(v2);
    v3 = *(a1 + 136);
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((a1 + 16));
  return v3;
}

uint64_t VSRecognitionSetEngineResetRequired(uint64_t a1, char a2)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 96) == -1)
  {
    *(a1 + 144) = a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock((a1 + 16));
  return v4;
}

uint64_t VSRecognitionSetAudioInputPath(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 96) == -1)
  {
    v5 = *(a1 + 152);
    if (v5)
    {
      CFRelease(v5);
    }

    *(a1 + 152) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock((a1 + 16));
  return v4;
}

uint64_t VSRecognitionSetBluetoothInputAllowed(uint64_t a1, char a2)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 96) == -1)
  {
    *(a1 + 145) = a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock((a1 + 16));
  return v4;
}

uint64_t _VSRecognitionPrepareAndBegin(char *cf, int a2, void *a3)
{
  v3 = a3;
  v56[1] = *MEMORY[0x277D85DE8];
  v48 = 1;
  if (a3)
  {
    *a3 = 0;
  }

  usedBufLen = 0;
  v6 = CFGetAllocator(cf);
  pthread_mutex_lock((cf + 16));
  v7 = *(cf + 24);
  if ((v7 - 1) <= 1)
  {
    if (v3)
    {
      *&userInfoKeys.msgh_bits = *MEMORY[0x277CBEE30];
      userInfoValues[0] = @"recognition is already active";
      v8 = v6;
      v9 = -4000;
LABEL_20:
      v14 = 0;
      *v3 = CFErrorCreateWithUserInfoKeysAndValues(v8, @"VSErrorDomain", v9, &userInfoKeys, userInfoValues, 1);
      goto LABEL_90;
    }

    goto LABEL_34;
  }

  v11 = a2 == 1 && v7 == 0;
  if (v7 != -1 && !v11)
  {
LABEL_18:
    if (v3)
    {
      v8 = CFGetAllocator(cf);
      *&userInfoKeys.msgh_bits = *MEMORY[0x277CBEE30];
      userInfoValues[0] = @"recognition reuse attempted";
      v9 = -4003;
      goto LABEL_20;
    }

LABEL_34:
    v14 = 0;
    goto LABEL_90;
  }

  v13 = *(cf + 10);
  if (v13)
  {
    if (v7 == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = _VSServerConnectionCreate(v6, _VSRecognitionNotificationCallBack, cf);
    *(cf + 10) = v13;
    if (!v13)
    {
      if (v3)
      {
        *&userInfoKeys.msgh_bits = *MEMORY[0x277CBEE30];
        userInfoValues[0] = @"couldn't establish connection";
        v8 = v6;
        v9 = -4004;
        goto LABEL_20;
      }

      goto LABEL_34;
    }
  }

  v15 = _VSServerConnectionCopyServerPort(v13);
  v16 = _VSServerConnectionCopyClientPort(*(cf + 10));
  v17 = v16;
  if (v15 && v16)
  {
    if (*(cf + 24) != -1)
    {
      Port = CFMachPortGetPort(v15);
      v54 = 0u;
      v52 = 1;
      v53 = CFMachPortGetPort(v17);
      DWORD1(v54) = 1245184;
      reply_port = mig_get_reply_port();
      userInfoKeys.msgh_local_port = reply_port;
      *&userInfoKeys.msgh_bits = 2147489043;
      userInfoKeys.msgh_remote_port = Port;
      *&userInfoKeys.msgh_voucher_port = 0xF54BF00000000;
      if (MEMORY[0x28223BE58])
      {
        voucher_mach_msg_set(&userInfoKeys);
        msgh_local_port = userInfoKeys.msgh_local_port;
      }

      else
      {
        msgh_local_port = reply_port;
      }

      v27 = mach_msg(&userInfoKeys, 3, 0x28u, 0x30u, msgh_local_port, 0, 0);
      if ((v27 - 268435458) <= 0xE && ((1 << (v27 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(userInfoKeys.msgh_local_port);
      }

      else if (v27)
      {
        mig_dealloc_reply_port(userInfoKeys.msgh_local_port);
      }

      else if (userInfoKeys.msgh_id != 1004835 || (userInfoKeys.msgh_bits & 0x80000000) != 0 || *&userInfoKeys.msgh_size != 40 || v54)
      {
        mach_msg_destroy(&userInfoKeys);
      }

      else
      {
        v48 = BYTE4(v54);
      }

      goto LABEL_82;
    }

    v23 = *(cf + 23);
    if (v23)
    {
      DictionaryRepresentation = VSRecognitionDisambiguationContextCreateDictionaryRepresentation(v6, v23);
      if (!DictionaryRepresentation)
      {
        if (v3)
        {
          *&userInfoKeys.msgh_bits = *MEMORY[0x277CBEE30];
          userInfoValues[0] = @"error converting disambiguation context to server";
          *v3 = CFErrorCreateWithUserInfoKeysAndValues(v6, @"VSErrorDomain", -4007, &userInfoKeys, userInfoValues, 1);
        }

        BinaryXMLData = 0;
        v48 = 0;
        LOBYTE(userInfoKeys.msgh_bits) = 0;
        LOBYTE(userInfoValues[0]) = 0;
        goto LABEL_65;
      }

      v25 = DictionaryRepresentation;
      BinaryXMLData = VSCFPropertyListCreateBinaryXMLData(v6, DictionaryRepresentation);
      CFRelease(v25);
    }

    else
    {
      BinaryXMLData = 0;
    }

    v28 = *(cf + 17);
    if (!v28 || !CFStringGetFileSystemRepresentation(v28, &userInfoKeys, 1024))
    {
      LOBYTE(userInfoKeys.msgh_bits) = 0;
    }

    v29 = *(cf + 19);
    if (v29)
    {
      if (!CFStringGetFileSystemRepresentation(v29, userInfoValues, 1024))
      {
        if (v3)
        {
          *buffer = *MEMORY[0x277CBEE30];
          v56[0] = @"error converting audio input path to server";
          *v3 = CFErrorCreateWithUserInfoKeysAndValues(v6, @"VSErrorDomain", -4007, buffer, v56, 1);
        }

        v48 = 0;
LABEL_65:
        v33 = 0;
        usedBufLen = 0;
        goto LABEL_77;
      }
    }

    else
    {
      LOBYTE(userInfoValues[0]) = 0;
    }

    v30 = *(cf + 11);
    if (v30)
    {
      Length = CFStringGetLength(v30);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      usedBufLen = MaximumSizeForEncoding;
      if (MaximumSizeForEncoding >= 257)
      {
        v33 = malloc_type_malloc(Length, 0xF28D4744uLL);
      }

      else
      {
        v33 = buffer;
      }

      v57.location = 0;
      v57.length = Length;
      if (!CFStringGetBytes(*(cf + 11), v57, 0x8000100u, 0, 0, v33, MaximumSizeForEncoding, &usedBufLen))
      {
        if (v3)
        {
          v41 = *MEMORY[0x277CBEE30];
          v55 = @"error converting model identifier";
          v56[0] = v41;
          *v3 = CFErrorCreateWithUserInfoKeysAndValues(v6, @"VSErrorDomain", -4007, v56, &v55, 1);
        }

        v48 = 0;
        goto LABEL_77;
      }
    }

    else
    {
      v33 = 0;
      usedBufLen = 0;
    }

    v46 = CFMachPortGetPort(v15);
    v34 = CFMachPortGetPort(v17);
    v35 = *(cf + 32);
    v36 = *(cf + 20);
    v37 = usedBufLen;
    v45 = BinaryXMLData;
    if (BinaryXMLData)
    {
      v44 = v34;
      BytePtr = CFDataGetBytePtr(BinaryXMLData);
      v39 = BinaryXMLData;
      BinaryXMLData = BytePtr;
      v40 = CFDataGetLength(v39);
      v34 = v44;
    }

    else
    {
      v40 = 0;
    }

    remote_VSRecognitionPrepareOrBegin(v46, v34, v35, &userInfoKeys, userInfoValues, v33, v37, BinaryXMLData, v36, v40, a2 == 0, *(cf + 72), HIBYTE(*(cf + 72)), &v48);
    BinaryXMLData = v45;
LABEL_77:
    if (BinaryXMLData)
    {
      CFRelease(BinaryXMLData);
    }

    if (v33 && v33 != buffer)
    {
      free(v33);
    }

LABEL_82:
    if (v48 == 1)
    {
      *(cf + 24) = a2 != 0;
      v3 = 1;
      goto LABEL_87;
    }

    if (!v3)
    {
      goto LABEL_87;
    }

    if (!*v3)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  CFRelease(*(cf + 10));
  *(cf + 10) = 0;
  if (v3)
  {
    *&userInfoKeys.msgh_bits = *MEMORY[0x277CBEE30];
    userInfoValues[0] = @"connection failure";
    v21 = CFErrorCreateWithUserInfoKeysAndValues(v6, @"VSErrorDomain", -4004, &userInfoKeys, userInfoValues, 1);
    *v3 = v21;
    if (!v21)
    {
LABEL_29:
      v22 = *MEMORY[0x277CBEE30];
      v55 = @"recognition request denied";
      v56[0] = v22;
      *v3 = CFErrorCreateWithUserInfoKeysAndValues(v6, @"VSErrorDomain", -4000, v56, &v55, 1);
    }
  }

LABEL_30:
  v3 = 0;
  v14 = 0;
  if (v15)
  {
LABEL_87:
    CFRelease(v15);
    v14 = v3;
  }

  if (v17)
  {
    CFRelease(v17);
  }

LABEL_90:
  pthread_mutex_unlock((cf + 16));
  v42 = *MEMORY[0x277D85DE8];
  return v14;
}

void _VSRecognitionNotificationCallBack(int a1, CFStringRef theString1, const __CFDictionary *Mutable, uint64_t a4)
{
  userInfoValues[1] = *MEMORY[0x277D85DE8];
  valuePtr = -4001;
  if (!a4)
  {
    goto LABEL_53;
  }

  if (CFStringCompare(theString1, @"note.recog.prepare", 0) == kCFCompareEqualTo)
  {
    pthread_mutex_lock((a4 + 16));
    v11 = *(a4 + 96);
    pthread_mutex_unlock((a4 + 16));
    if (v11 <= 1)
    {
      v12 = *(a4 + 104);
      if (v12)
      {
        goto LABEL_17;
      }
    }

LABEL_53:
    v34 = *MEMORY[0x277D85DE8];
    return;
  }

  if (CFStringCompare(theString1, @"note.recog.start", 0))
  {
    if (CFStringCompare(theString1, @"note.recog.results", 0))
    {
      if (CFStringCompare(theString1, @"note.recog.cancel", 0))
      {
        if (CFStringCompare(theString1, @"note.recog.error", 0) == kCFCompareEqualTo)
        {
          if (Mutable)
          {
            Value = CFDictionaryGetValue(Mutable, @"key.recog.errordesc");
            v29 = CFDictionaryGetValue(Mutable, @"key.recog.errorcode");
            if (v29)
            {
              CFNumberGetValue(v29, kCFNumberCFIndexType, &valuePtr);
            }
          }

          else
          {
            Value = 0;
          }

          v9 = CFGetAllocator(a4);
          v10 = valuePtr;
          *userInfoKeys = *MEMORY[0x277CBEE30];
          userInfoValues[0] = Value;
          v26 = Value != 0;
          goto LABEL_38;
        }

        if (CFStringCompare(theString1, @"note.server.died", 0))
        {
          goto LABEL_53;
        }

        pthread_mutex_lock((a4 + 16));
        v7 = *(a4 + 96);
        v8 = *(a4 + 80);
        if (v8)
        {
          CFRelease(v8);
          *(a4 + 80) = 0;
        }

        pthread_mutex_unlock((a4 + 16));
        if (v7 > 1)
        {
          goto LABEL_53;
        }

        v9 = CFGetAllocator(a4);
        *userInfoKeys = *MEMORY[0x277CBEE30];
        userInfoValues[0] = @"connection lost";
        v10 = -4004;
      }

      else
      {
        v9 = CFGetAllocator(a4);
        *userInfoKeys = *MEMORY[0x277CBEE30];
        userInfoValues[0] = @"recognition cancelled";
        v10 = -4002;
      }

      v26 = 1;
LABEL_38:
      v25 = CFErrorCreateWithUserInfoKeysAndValues(v9, @"VSErrorDomain", v10, userInfoKeys, userInfoValues, v26);
      Mutable = 0;
      v27 = -1;
LABEL_39:
      pthread_mutex_lock((a4 + 16));
      *(a4 + 96) = v27;
      v30 = *(a4 + 168);
      if (v30)
      {
        munmap(v30, 4uLL);
      }

      v31 = *(a4 + 176);
      if (Mutable)
      {
        if (v31)
        {
          CFRelease(v31);
        }

        *(a4 + 176) = Mutable;
      }

      else
      {
        Mutable = *(a4 + 176);
        if (!v31)
        {
          v32 = 1;
          goto LABEL_47;
        }
      }

      CFRetain(Mutable);
      v32 = 0;
LABEL_47:
      pthread_mutex_unlock((a4 + 16));
      v33 = *(a4 + 120);
      if (v33)
      {
        v33(a4, Mutable, v25, *(a4 + 192));
      }

      if ((v32 & 1) == 0)
      {
        CFRelease(Mutable);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      goto LABEL_53;
    }

    if (Mutable)
    {
      v16 = CFGetAllocator(a4);
      v17 = CFDictionaryGetValue(Mutable, @"key.recog.results");
      if (!v17 || (v18 = v17, Count = CFArrayGetCount(v17), Count < 1) || (v20 = Count, TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(v18)))
      {
        v25 = 0;
        Mutable = 0;
        goto LABEL_32;
      }

      Mutable = CFArrayCreateMutable(v16, 0, MEMORY[0x277CBF128]);
      v39.location = 0;
      v39.length = v20;
      CFArrayApplyFunction(v18, v39, _ConvertSingleRecognitionResultDictionaryRepresentation, Mutable);
      if (Mutable)
      {
        v22 = CFArrayGetCount(Mutable);
        v23 = v20 - v22;
        if (v20 != v22)
        {
          v24 = VSGetLogDefault();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *userInfoKeys = 134217984;
            *&userInfoKeys[4] = v23;
            _os_log_error_impl(&dword_272850000, v24, OS_LOG_TYPE_ERROR, "Failed to convert %ld recognition results\n", userInfoKeys, 0xCu);
          }
        }
      }
    }

    v25 = 0;
LABEL_32:
    v27 = 2;
    goto LABEL_39;
  }

  pthread_mutex_lock((a4 + 16));
  v13 = *(a4 + 96);
  pthread_mutex_unlock((a4 + 16));
  if (v13 != 1)
  {
    goto LABEL_53;
  }

  v12 = *(a4 + 112);
  if (!v12)
  {
    goto LABEL_53;
  }

LABEL_17:
  v14 = *(a4 + 192);
  v15 = *MEMORY[0x277D85DE8];

  v12(a4, v14);
}

void _ConvertSingleRecognitionResultDictionaryRepresentation(const __CFDictionary *a1, void *a2)
{
  if (a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      v5 = CFGetAllocator(a2);
      v6 = VSRecognitionResultCreateFromDictionaryRepresentation(v5, a1);
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(a2, v6);

        CFRelease(v7);
      }
    }
  }
}

BOOL VSRecognitionCancel(uint64_t a1, CFErrorRef *a2)
{
  userInfoValues[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  pthread_mutex_lock((a1 + 16));
  v4 = *(a1 + 80);
  if (!v4 || *(a1 + 96) > 1u)
  {
    v10 = 1;
    goto LABEL_21;
  }

  v5 = _VSServerConnectionCopyServerPort(v4);
  v6 = _VSServerConnectionCopyClientPort(*(a1 + 80));
  v7 = v6;
  if (v5 && v6)
  {
    Port = CFMachPortGetPort(v5);
    v18 = 0;
    *&msg[4] = 0u;
    v17 = CFMachPortGetPort(v7);
    v19 = 1245184;
    *msg = -2147483629;
    *&msg[8] = Port;
    *&msg[20] = 0x1000F54C2;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(msg);
    }

    v9 = mach_msg(msg, 1, 0x28u, 0, 0, 0, 0);
    v10 = v9 == 0;
    if (!a2 || !v9)
    {
      goto LABEL_17;
    }

    v11 = -4001;
  }

  else
  {
    if (!a2)
    {
      v10 = 0;
      goto LABEL_17;
    }

    v11 = -4004;
  }

  v12 = CFGetAllocator(a1);
  *msg = *MEMORY[0x277CBEE30];
  userInfoValues[0] = 0;
  v13 = CFErrorCreateWithUserInfoKeysAndValues(v12, @"VSErrorDomain", v11, msg, userInfoValues, 0);
  v10 = 0;
  *a2 = v13;
LABEL_17:
  *(a1 + 96) = -1;
  _VSServerConnectionInvalidate(*(a1 + 80));
  CFRelease(*(a1 + 80));
  *(a1 + 80) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }

LABEL_21:
  pthread_mutex_unlock((a1 + 16));
  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t VSRecognitionSetInputLevelUpdateInterval(uint64_t a1, double a2)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 96) == -1)
  {
    *(a1 + 160) = a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock((a1 + 16));
  return v4;
}

float VSRecognitionGetInputLevel(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = 0.0;
  if (*(a1 + 96) == 1)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = _VSServerConnectionCopyServerPort(v3);
      v5 = _VSServerConnectionCopyClientPort(*(a1 + 80));
      v6 = v5;
      if (v4 && v5)
      {
        Port = CFMachPortGetPort(v4);
        v13 = 1;
        v15 = 0u;
        v12.msgh_size = 0;
        v14 = CFMachPortGetPort(v6);
        DWORD1(v15) = 1245184;
        reply_port = mig_get_reply_port();
        v12.msgh_remote_port = Port;
        v12.msgh_local_port = reply_port;
        v12.msgh_bits = -2147478253;
        *&v12.msgh_voucher_port = 0xF54C000000000;
        if (MEMORY[0x28223BE58])
        {
          voucher_mach_msg_set(&v12);
          msgh_local_port = v12.msgh_local_port;
        }

        else
        {
          msgh_local_port = reply_port;
        }

        v11 = mach_msg(&v12, 3, 0x28u, 0x30u, msgh_local_port, 0, 0);
        if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(v12.msgh_local_port);
        }

        else if (v11)
        {
          mig_dealloc_reply_port(v12.msgh_local_port);
        }

        else if (v12.msgh_id != 1004836 || (v12.msgh_bits & 0x80000000) != 0 || v12.msgh_size != 40 || v12.msgh_remote_port || v15)
        {
          mach_msg_destroy(&v12);
        }

        else
        {
          v2 = *(&v15 + 1);
        }

LABEL_24:
        CFRelease(v4);
        if (!v6)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (v4)
      {
        goto LABEL_24;
      }

      if (v5)
      {
LABEL_9:
        CFRelease(v6);
      }
    }
  }

LABEL_10:
  pthread_mutex_unlock((a1 + 16));
  return v2;
}

float VSRecognitionGetInputLevelDB(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = 0.0;
  if (*(a1 + 96) == 1)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = _VSServerConnectionCopyServerPort(v3);
      v5 = _VSServerConnectionCopyClientPort(*(a1 + 80));
      v6 = v5;
      if (v4 && v5)
      {
        Port = CFMachPortGetPort(v4);
        v13 = 1;
        v15 = 0u;
        v12.msgh_size = 0;
        v14 = CFMachPortGetPort(v6);
        DWORD1(v15) = 1245184;
        reply_port = mig_get_reply_port();
        v12.msgh_remote_port = Port;
        v12.msgh_local_port = reply_port;
        v12.msgh_bits = -2147478253;
        *&v12.msgh_voucher_port = 0xF54C100000000;
        if (MEMORY[0x28223BE58])
        {
          voucher_mach_msg_set(&v12);
          msgh_local_port = v12.msgh_local_port;
        }

        else
        {
          msgh_local_port = reply_port;
        }

        v11 = mach_msg(&v12, 3, 0x28u, 0x30u, msgh_local_port, 0, 0);
        if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(v12.msgh_local_port);
        }

        else if (v11)
        {
          mig_dealloc_reply_port(v12.msgh_local_port);
        }

        else if (v12.msgh_id != 1004837 || (v12.msgh_bits & 0x80000000) != 0 || v12.msgh_size != 40 || v12.msgh_remote_port || v15)
        {
          mach_msg_destroy(&v12);
        }

        else
        {
          v2 = *(&v15 + 1);
        }

LABEL_24:
        CFRelease(v4);
        if (!v6)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (v4)
      {
        goto LABEL_24;
      }

      if (v5)
      {
LABEL_9:
        CFRelease(v6);
      }
    }
  }

LABEL_10:
  pthread_mutex_unlock((a1 + 16));
  return v2;
}

uint64_t VSRecognitionCopyResults(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 96) == 2 && (v2 = *(a1 + 176)) != 0)
  {
    CFRetain(v2);
    v3 = *(a1 + 176);
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((a1 + 16));
  return v3;
}

id VSGetLogDefault()
{
  if (VSGetLogDefault_onceToken != -1)
  {
    dispatch_once(&VSGetLogDefault_onceToken, &__block_literal_global_115);
  }

  v1 = VSGetLogDefault___profile_log_default;

  return v1;
}

void __VSGetLogDefault_block_invoke()
{
  v0 = os_log_create("com.apple.voiceserviceslogging", "default");
  v1 = VSGetLogDefault___profile_log_default;
  VSGetLogDefault___profile_log_default = v0;
}

id VSGetLogEvent()
{
  if (VSGetLogEvent_onceToken != -1)
  {
    dispatch_once(&VSGetLogEvent_onceToken, &__block_literal_global_4);
  }

  v1 = VSGetLogEvent___profile_log_event;

  return v1;
}

void __VSGetLogEvent_block_invoke()
{
  v0 = os_log_create("com.apple.voiceserviceslogging", "event");
  v1 = VSGetLogEvent___profile_log_event;
  VSGetLogEvent___profile_log_event = v0;
}

double VSAbsoluteTimeToSecond(unint64_t a1)
{
  if (VSAbsoluteTimeToSecond_onceToken != -1)
  {
    dispatch_once(&VSAbsoluteTimeToSecond_onceToken, &__block_literal_global_7);
  }

  return *&VSAbsoluteTimeToSecond_clockFactor * a1;
}

double __VSAbsoluteTimeToSecond_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  VSAbsoluteTimeToSecond_clockFactor = *&result;
  return result;
}

uint64_t _VSServerConnectionRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __VSServerConnectionTypeID = result;
  return result;
}

uint64_t _VSServerConnectionDestroy(uint64_t a1)
{
  _VSServerConnectionInvalidate(a1);

  return pthread_mutex_destroy((a1 + 16));
}

uint64_t _VSServerConnectionInvalidate(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
    CFRelease(*(a1 + 96));
    *(a1 + 96) = 0;
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    CFRunLoopSourceInvalidate(v3);
    CFRelease(*(a1 + 104));
    *(a1 + 104) = 0;
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 112) = 0;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    pthread_mutex_lock(&__ServerPortLock);
    if (__ServerInvalidationSet && __ServerPort == v5)
    {
      CFSetRemoveValue(__ServerInvalidationSet, a1);
    }

    pthread_mutex_unlock(&__ServerPortLock);
    CFRelease(*(a1 + 80));
    *(a1 + 80) = 0;
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    CFMachPortSetInvalidationCallBack(v6, 0);
    CFMachPortInvalidate(*(a1 + 88));
    Port = CFMachPortGetPort(*(a1 + 88));
    if (Port - 1 <= 0xFFFFFFFD)
    {
      v8 = Port;
      v9 = MEMORY[0x277D85F48];
      mach_port_mod_refs(*MEMORY[0x277D85F48], Port, 1u, -1);
      mach_port_deallocate(*v9, v8);
    }

    CFRelease(*(a1 + 88));
    *(a1 + 88) = 0;
  }

  return pthread_mutex_unlock((a1 + 16));
}

uint64_t _VSServerConnectionCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277D85F48];
  name = 0;
  v7 = *MEMORY[0x277D85F48];
  memset(&context, 0, sizeof(context));
  pthread_once(&_VSServerConnectionGetTypeID___VSServerConnectionRegisterOnce, _VSServerConnectionRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (!Instance)
  {
    return v9;
  }

  v24 = 0;
  v21.version = 0;
  memset(&v21.retain, 0, 56);
  v21.info = Instance;
  v21.perform = _VSServerConnectionProcessInvalidation;
  *(Instance + 16) = 850045863;
  *(Instance + 56) = 0u;
  *(Instance + 40) = 0u;
  *(Instance + 24) = 0u;
  *(Instance + 120) = a2;
  *(Instance + 72) = 0;
  *(Instance + 80) = 0;
  *(Instance + 88) = 0;
  *(Instance + 96) = 0;
  *(Instance + 104) = CFRunLoopSourceCreate(a1, 0, &v21);
  *(v9 + 128) = a3;
  Current = CFRunLoopGetCurrent();
  *(v9 + 112) = Current;
  CFRetain(Current);
  v11 = *(v9 + 104);
  if (v11)
  {
    CFRunLoopAddSource(*(v9 + 112), v11, *MEMORY[0x277CBF048]);
    CFRunLoopAddSource(*(v9 + 112), *(v9 + 104), @"com.apple.voiceservices");
  }

  ptype = 0x10000;
  v12 = *v6;
  pthread_mutex_lock(&__ServerPortLock);
  if (__ServerPort)
  {
    Port = CFMachPortGetPort(__ServerPort);
    if (Port - 1 > 0xFFFFFFFD || mach_port_type(v12, Port, &ptype) || (ptype & 0x100000) != 0)
    {
      v14 = __ServerPort;
      pthread_mutex_unlock(&__ServerPortLock);
      _VSServerConnectionServerPortInvalidated(v14);
      pthread_mutex_lock(&__ServerPortLock);
    }

    v15 = __ServerPort;
    if (__ServerPort)
    {
      v16 = 0;
      goto LABEL_14;
    }
  }

  *special_port = 0;
  memset(&v25, 0, sizeof(v25));
  task_get_special_port(v12, 4, &special_port[1]);
  if (!special_port[1] || bootstrap_look_up(special_port[1], "com.apple.voiced", special_port))
  {
    v16 = 0;
    v15 = __ServerPort;
    if (__ServerPort)
    {
      goto LABEL_14;
    }

LABEL_24:
    pthread_mutex_unlock(&__ServerPortLock);
LABEL_25:
    *(v9 + 80) = v15;
    *(v9 + 88) = 0;
    goto LABEL_26;
  }

  v15 = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], special_port[0], _VSServerConnectionPortEmptyCallback, &v25, 0);
  __ServerPort = v15;
  v16 = 1;
  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_14:
  CFRetain(v15);
  Mutable = __ServerInvalidationSet;
  if (!__ServerInvalidationSet)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
    __ServerInvalidationSet = Mutable;
  }

  CFSetAddValue(Mutable, v9);
  pthread_mutex_unlock(&__ServerPortLock);
  if (v16)
  {
    CFMachPortSetInvalidationCallBack(v15, _VSServerConnectionServerPortInvalidated);
  }

  if (mach_port_allocate(v7, 1u, &name) || mach_port_insert_right(v7, name, name, 0x14u))
  {
    goto LABEL_25;
  }

  context.info = v9;
  v18 = CFMachPortCreateWithPort(a1, name, _VSServerConnectionPortEmptyCallback, &context, 0);
  v24 = 16;
  MEMORY[0x2743CEBF0](v7, name, 1, &v24, 1);
  *(v9 + 80) = v15;
  *(v9 + 88) = v18;
  if (!v18)
  {
LABEL_26:
    CFRelease(v9);
    return 0;
  }

  CFMachPortGetPort(v18);
  v19 = CPCreateMIGServerSourceWithContext();
  *(v9 + 96) = v19;
  if (v19)
  {
    CFRunLoopAddSource(*(v9 + 112), v19, *MEMORY[0x277CBF048]);
    CFRunLoopAddSource(*(v9 + 112), *(v9 + 96), @"com.apple.voiceservices");
  }

  return v9;
}

void _VSServerConnectionServerPortInvalidated(uint64_t a1)
{
  pthread_mutex_lock(&__ServerPortLock);
  v2 = __ServerPort;
  if (__ServerPort == a1)
  {
    v3 = __ServerInvalidationSet;
    __ServerInvalidationSet = 0;
    __ServerPort = 0;
    pthread_mutex_unlock(&__ServerPortLock);
    if (a1)
    {
      CFMachPortSetInvalidationCallBack(v2, 0);
      CFMachPortInvalidate(v2);
      Port = CFMachPortGetPort(v2);
      if (Port - 1 <= 0xFFFFFFFD)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], Port);
      }

      CFRelease(v2);
    }

    if (v3)
    {
      CFSetApplyFunction(v3, _InvalidateSingleConnection, 0);

      CFRelease(v3);
    }
  }

  else
  {

    pthread_mutex_unlock(&__ServerPortLock);
  }
}

uint64_t _InvalidateSingleConnection(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pthread_mutex_lock((result + 16));
    v2 = *(v1 + 80);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 80) = 0;
    }

    v3 = *(v1 + 104);
    if (v3 && *(v1 + 112))
    {
      CFRunLoopSourceSignal(v3);
      CFRunLoopWakeUp(*(v1 + 112));
    }

    return pthread_mutex_unlock((v1 + 16));
  }

  return result;
}

uint64_t _VSServerConnectionCopyServerPort(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRetain(*(a1 + 80));
  }

  pthread_mutex_unlock((a1 + 16));
  return v2;
}

uint64_t _VSServerConnectionCopyClientPort(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRetain(*(a1 + 88));
  }

  pthread_mutex_unlock((a1 + 16));
  return v2;
}

void client_VSPostNotification(const char *a1, const UInt8 *a2, unsigned int a3)
{
  v6 = CPGetContextForCalloutCurrentMIGServerSource();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (!v6[15])
  {
    return;
  }

  v8 = CFGetAllocator(v6);
  v9 = CFStringCreateWithCString(v8, a1, 0x8000100u);
  if (!v9)
  {
    return;
  }

  v10 = v9;
  if (!CFStringGetLength(v9))
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v11 = 0;
  if (a2 && a3)
  {
    v12 = CFDataCreateWithBytesNoCopy(v8, a2, a3, *MEMORY[0x277CBED00]);
    if (v12)
    {
      v13 = v12;
      v14 = VSCFPropertyListCreateFromBinaryXMLData(v8, v12);
      v11 = v14;
      if (v14)
      {
        v15 = CFGetTypeID(v14);
        if (v15 != CFDictionaryGetTypeID())
        {
          CFRelease(v11);
          v11 = 0;
        }
      }

      CFRelease(v13);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  (v7[15])(v7, v10, v11, v7[16]);
  CFRelease(v10);
  if (v11)
  {

    CFRelease(v11);
  }
}

const __CFURL *VSLogBundleCreate(const __CFAllocator *a1)
{
  valuePtr[128] = *MEMORY[0x277D85DE8];
  v26 = 0;
  pthread_once(&_VSLogBundleGetMainDirectoryURL___CreateMainDirectoryOnce, _VSLogBundleCreateMainLogDirectory);
  v2 = __MainDirectory;
  v3 = __DateFormatter;
  if (__MainDirectory)
  {
    v4 = __DateFormatter == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (Current = CFAbsoluteTimeGetCurrent(), (StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(a1, v3, Current)) == 0))
  {
    v9 = 0;
  }

  else
  {
    v7 = StringWithAbsoluteTime;
    v8 = CFURLCreateCopyAppendingPathComponent(a1, v2, StringWithAbsoluteTime, 1u);
    v9 = v8;
    if (v8)
    {
      if (VSDirectoryExistsAtURL(v8, 1, &v26) || VSCreateDirectory(v2) && VSDirectoryExistsAtURL(v9, 1, &v26))
      {
        pthread_once(&_VSLogBundleGetMainDirectoryURL___CreateMainDirectoryOnce, _VSLogBundleCreateMainLogDirectory);
        v10 = VSCopyContentsOfDirectoryAtURL(__MainDirectory, 0);
        v11 = v10;
        if (v10)
        {
          Count = CFArrayGetCount(v10);
        }

        else
        {
          Count = 0;
        }

        v13 = 25;
        valuePtr[0] = 25;
        v14 = CFPreferencesCopyAppValue(@"MaxLogCount", @"com.apple.voiceservices");
        if (v14)
        {
          v15 = v14;
          CFNumberGetValue(v14, kCFNumberCFIndexType, valuePtr);
          if (valuePtr[0] <= 24)
          {
            valuePtr[0] = 25;
          }

          CFRelease(v15);
          v13 = valuePtr[0];
        }

        if (Count > v13)
        {
          MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v11);
          if (MutableCopy)
          {
            v17 = MutableCopy;
            v29.location = 0;
            v29.length = Count;
            CFArraySortValues(MutableCopy, v29, _CompareURLsByModificationDate, 0);
            v30.length = Count - valuePtr[0];
            v30.location = 0;
            CFArrayApplyFunction(v17, v30, _DeleteLogURL, 0);
            CFRelease(v17);
          }
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (v26)
        {
          PathComponent = CFURLCopyLastPathComponent(v9);
          if (PathComponent)
          {
            v19 = PathComponent;
            if (CFStringGetFileSystemRepresentation(PathComponent, valuePtr, 1024))
            {
              pthread_once(&_VSLogBundleGetMainDirectoryURL___CreateMainDirectoryOnce, _VSLogBundleCreateMainLogDirectory);
              v20 = __MainDirectory;
              if (__MainDirectory)
              {
                v21 = CFGetAllocator(v9);
                v22 = CFURLCreateCopyAppendingPathComponent(v21, v20, @"Latest.vslog", 0);
                if (v22)
                {
                  v23 = v22;
                  if (CFURLGetFileSystemRepresentation(v22, 1u, buffer, 1024))
                  {
                    unlink(buffer);
                    symlink(valuePtr, buffer);
                  }

                  CFRelease(v23);
                }
              }
            }

            CFRelease(v19);
          }
        }
      }

      else
      {
        CFRelease(v9);
        v9 = 0;
      }
    }

    CFRelease(v7);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t _DeleteLogURL(uint64_t a1)
{
  VSCFURLDeleteDirectoryContents(a1);
  v2 = [MEMORY[0x277CCAA00] defaultManager];

  return [v2 removeItemAtURL:a1 error:0];
}

uint64_t _CompareURLsByModificationDate(void *a1, void *a2)
{
  v3 = VSCopyModificationDateForFileAtURL(a1);
  v4 = VSCopyModificationDateForFileAtURL(a2);
  v5 = v4;
  if (v3 && v4)
  {
    v6 = CFDateCompare(v3, v4, 0);
  }

  else if (!v3 || v4)
  {
    if (v4)
    {
      v7 = v3 == 0;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v6 = v8 << 63 >> 63;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 1;
  }

  CFRelease(v3);
LABEL_15:
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

void _VSLogBundleCreateMainLogDirectory()
{
  v0 = CFLocaleCopyCurrent();
  cf = 0;
  v6 = 0;
  v4 = 0;
  v1 = CFDateFormatterCreate(*MEMORY[0x277CBECE8], v0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  __DateFormatter = v1;
  if (v1)
  {
    CFDateFormatterSetFormat(v1, @"yyyy-MM-dd-HH-mm-ss'.vslog'");
  }

  if (v0)
  {
    CFRelease(v0);
  }

  v2 = CFCopyHomeDirectoryURLForUser();
  if (v2)
  {
    v3 = v2;
    if (VSCreateURLAndDirectory(v2, @"Library", &v6) && v6)
    {
      if (VSCreateURLAndDirectory(v6, @"Logs", &v4) && v4)
      {
        if (VSCreateURLAndDirectory(v4, @"CrashReporter", &cf) && cf)
        {
          VSCreateURLAndDirectory(cf, @"VoiceServicesRecognition", &__MainDirectory);
          CFRelease(cf);
        }

        if (v4)
        {
          CFRelease(v4);
        }
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    CFRelease(v3);
  }
}

CFURLRef VSLogBundleCreateFromPath(const __CFAllocator *a1, const __CFString *a2)
{
  v2 = CFURLCreateWithFileSystemPath(a1, a2, kCFURLPOSIXPathStyle, 1u);
  v3 = v2;
  if (v2 && !VSDirectoryExistsAtURL(v2, 1, 0))
  {
    CFRelease(v3);
    return 0;
  }

  return v3;
}

const __CFURL *VSLogBundleCopyPath(const __CFURL *result)
{
  if (result)
  {
    return CFURLCopyFileSystemPath(result, kCFURLPOSIXPathStyle);
  }

  return result;
}

CFTypeRef VSLogBundleCopyURL(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

const __CFURL *VSLogBundleCopyPathForFile(const __CFURL *a1, const __CFString *a2, int a3)
{
  result = VSLogBundleCopyURLForFile(a1, a2, a3);
  if (result)
  {
    v4 = result;
    v5 = CFURLCopyFileSystemPath(result, kCFURLPOSIXPathStyle);
    CFRelease(v4);
    return v5;
  }

  return result;
}

CFURLRef VSLogBundleCopyURLForFile(const __CFURL *cf, const __CFString *a2, int a3)
{
  v3 = cf;
  if (!cf)
  {
    return v3;
  }

  v6 = CFGetAllocator(cf);
  if (a3)
  {
    pthread_once(&VSLogBundleCopyURLForFile___CreateTimeFormatterOnce, _VSLogBundleCreateTimeFormatter);
    v7 = __TimeFormatter;
    if (__TimeFormatter)
    {
      Current = CFAbsoluteTimeGetCurrent();
      StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v6, v7, Current);
      if (StringWithAbsoluteTime)
      {
        v10 = StringWithAbsoluteTime;
        MutableCopy = CFStringCreateMutableCopy(v6, 0, StringWithAbsoluteTime);
        v12 = MutableCopy;
        if (MutableCopy)
        {
          CFStringAppend(MutableCopy, a2);
          a2 = v12;
        }

        CFRelease(v10);
        v3 = CFURLCreateCopyAppendingPathComponent(v6, v3, a2, 0);
        if (v12)
        {
          CFRelease(v12);
        }

        return v3;
      }
    }
  }

  return CFURLCreateCopyAppendingPathComponent(v6, v3, a2, 0);
}

void _VSLogBundleCreateTimeFormatter()
{
  v0 = CFLocaleCopyCurrent();
  v1 = CFDateFormatterCreate(*MEMORY[0x277CBECE8], v0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  __TimeFormatter = v1;
  if (v0)
  {
    CFRelease(v0);
    v1 = __TimeFormatter;
  }

  if (v1)
  {

    CFDateFormatterSetFormat(v1, @"HH-mm-ss-");
  }
}

uint64_t _VSRecognitionResultRegisterClass()
{
  __VSRecognitionResultTypeID = _CFRuntimeRegisterClass();

  return MEMORY[0x282110368]();
}

__CFString *VSRecognitionResultCopyDescriptionWithIndent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v7, 0);
  for (i = 0; i != v6; ++i)
  {
    if (i)
    {
      CFStringAppend(Mutable, @" + ");
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
    CFStringAppend(Mutable, ValueAtIndex);
  }

  CFStringAppend(Mutable, @"\n");
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = CFArrayGetCount(v11);
    if (v12)
    {
      v13 = v12;
      if (a2 >= 1)
      {
        do
        {
          CFStringAppend(Mutable, @" ");
          --a2;
        }

        while (a2);
      }

      if (v13 >= 1)
      {
        for (j = 0; j != v13; ++j)
        {
          if (j)
          {
            v15 = @" + ";
          }

          else
          {
            v15 = CFSTR("  (");
          }

          CFStringAppend(Mutable, v15);
          v16 = CFArrayGetValueAtIndex(*(a1 + 16), j);
          CFStringAppend(Mutable, v16);
        }

        CFStringAppendFormat(Mutable, 0, @" <%@>"), *(a1 + 32));
      }
    }
  }

  return Mutable;
}

void _VSRecognitionResultDestroy(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {

    CFRelease(v5);
  }
}

void *VSRecognitionResultCreateWithHandlerInfo(int a1, const void *a2, const void *a3, CFArrayRef theArray, const void *a5)
{
  v5 = 0;
  if (a3 && theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count == CFArrayGetCount(a3))
    {
      pthread_once(&VSRecognitionResultGetTypeID___VSRecognitionResultRegisterOnce, _VSRecognitionResultRegisterClass);
      Instance = _CFRuntimeCreateInstance();
      v5 = Instance;
      if (Instance)
      {
        *(Instance + 16) = a3;
        CFRetain(a3);
        v5[3] = theArray;
        CFRetain(theArray);
        v5[4] = a2;
        if (a2)
        {
          CFRetain(a2);
        }

        v5[5] = a5;
        if (a5)
        {
          CFRetain(a5);
        }

        v5[6] = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void *VSRecognitionResultCreateFromDictionaryRepresentation(int a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"classes");
  v5 = CFDictionaryGetValue(theDict, @"phrases");
  v6 = CFDictionaryGetValue(theDict, @"modelid");
  v7 = CFDictionaryGetValue(theDict, @"handler");
  if (!v5)
  {
    return 0;
  }

  if (!Value)
  {
    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  v8 = v7;
  v9 = CFGetTypeID(v5);
  if (v9 != CFArrayGetTypeID())
  {
    return 0;
  }

  v10 = CFGetTypeID(Value);
  if (v10 != CFArrayGetTypeID())
  {
    return 0;
  }

  v11 = CFGetTypeID(v6);
  if (v11 != CFStringGetTypeID())
  {
    return 0;
  }

  return VSRecognitionResultCreateWithHandlerInfo(a1, v6, Value, v5, v8);
}

const __CFArray *VSRecognitionResultGetPhraseCount(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *VSRecognitionResultGetPhraseAtIndex(uint64_t a1, CFIndex a2, const __CFArray **a3, const __CFArray **a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  result = *(a1 + 24);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result > a2)
    {
      if (a4)
      {
        result = CFArrayGetValueAtIndex(*(a1 + 24), a2);
        *a4 = result;
      }

      if (a3)
      {
        result = CFArrayGetValueAtIndex(*(a1 + 16), a2);
        *a3 = result;
      }
    }
  }

  return result;
}

void *VSRecognitionResultCopyClassIDsAndPhrases(void *result, void *a2, void *a3)
{
  v4 = result;
  if (a2)
  {
    v5 = result[2];
    *a2 = v5;
    result = CFRetain(v5);
  }

  if (a3)
  {
    v6 = v4[3];
    *a3 = v6;

    return CFRetain(v6);
  }

  return result;
}

__CFDictionary *VSRecognitionResultCreateDictionaryRepresentationWithResultHandlerInfo(void *a1, const void *a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = Mutable;
  v7 = a1[3];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"phrases", v7);
  }

  v8 = a1[2];
  if (v8)
  {
    CFDictionarySetValue(v6, @"classes", v8);
  }

  v9 = a1[4];
  if (v9)
  {
    CFDictionarySetValue(v6, @"modelid", v9);
  }

  if (a2)
  {
    CFDictionarySetValue(v6, @"handler", a2);
  }

  return v6;
}

BOOL VSPluginRegistryRebuild(char a1)
{
  v2 = _VSServerConnectionCreate(*MEMORY[0x277CBECE8], 0, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _VSServerConnectionCopyServerPort(v2);
  if (v4)
  {
    v5 = v4;
    Port = CFMachPortGetPort(v4);
    v10 = *MEMORY[0x277D85EF8];
    v11 = a1;
    v12 = 0;
    v13 = 0;
    *&msg.msgh_bits = 19;
    msg.msgh_voucher_port = 0;
    msg.msgh_id = 1004742;
    msg.msgh_remote_port = Port;
    msg.msgh_local_port = 0;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&msg);
    }

    v7 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0) == 0;
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  _VSServerConnectionInvalidate(v3);
  CFRelease(v3);
  return v7;
}

BOOL VSRecognitionConfigurationCacheUpdate(const __CFString *a1, const __CFString *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = _VSServerConnectionCreate(*MEMORY[0x277CBECE8], 0, 0);
  if (v4)
  {
    v5 = v4;
    v21 = 0;
    usedBufLen = 0;
    v6 = _VSServerConnectionCopyServerPort(v4);
    if (!v6)
    {
      v12 = 0;
LABEL_28:
      _VSServerConnectionInvalidate(v5);
      CFRelease(v5);
      goto LABEL_29;
    }

    v7 = v6;
    if (a1)
    {
      Length = CFStringGetLength(a1);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v10 = MaximumSizeForEncoding;
      usedBufLen = MaximumSizeForEncoding;
      if (MaximumSizeForEncoding >= 257)
      {
        v11 = malloc_type_malloc(MaximumSizeForEncoding, 0x2D394FD8uLL);
      }

      else
      {
        v11 = buffer;
      }

      v37.location = 0;
      v37.length = Length;
      v13 = CFStringGetBytes(a1, v37, 0x8000100u, 0, 0, v11, v10, &usedBufLen) == 0;
      if (a2)
      {
LABEL_12:
        v15 = CFStringGetLength(a2);
        v16 = CFStringGetMaximumSizeForEncoding(v15, 0x8000100u);
        v17 = v16;
        v21 = v16;
        if (v16 >= 257)
        {
          v14 = malloc_type_malloc(v16, 0xCB83053EuLL);
        }

        else
        {
          v14 = v34;
        }

        v38.location = 0;
        v38.length = v15;
        if (!CFStringGetBytes(a2, v38, 0x8000100u, 0, 0, v14, v17, &v21))
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v11 = 0;
      v13 = 0;
      usedBufLen = 0;
      if (a2)
      {
        goto LABEL_12;
      }
    }

    v14 = 0;
    v21 = 0;
LABEL_16:
    if (!v13)
    {
      Port = CFMachPortGetPort(v7);
      v24 = v11;
      v25 = 16777472;
      v26 = usedBufLen;
      v27 = v14;
      v28 = 16777472;
      v29 = v21;
      v30 = *MEMORY[0x277D85EF8];
      v31 = 0;
      v32 = usedBufLen;
      v33 = v21;
      *msg = 2147483667;
      *&msg[8] = Port;
      *&msg[12] = xmmword_272896B20;
      if (MEMORY[0x28223BE58])
      {
        voucher_mach_msg_set(msg);
      }

      v12 = mach_msg(msg, 1, 0x50u, 0, 0, 0, 0) == 0;
      goto LABEL_21;
    }

LABEL_17:
    v12 = 0;
LABEL_21:
    if (v11 && v11 != buffer)
    {
      free(v11);
    }

    if (v14 && v14 != v34)
    {
      free(v14);
    }

    CFRelease(v7);
    goto LABEL_28;
  }

  v12 = 0;
LABEL_29:
  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

const void *VSCopyUpdatableRecognitionModelDataProviderInfos()
{
  v23 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBECE8];
  v1 = _VSServerConnectionCreate(*MEMORY[0x277CBECE8], 0, 0);
  if (v1)
  {
    v2 = v1;
    v3 = _VSServerConnectionCopyServerPort(v1);
    if (!v3)
    {
      v8 = 0;
LABEL_29:
      _VSServerConnectionInvalidate(v2);
      CFRelease(v2);
      goto LABEL_30;
    }

    v4 = v3;
    Port = CFMachPortGetPort(v3);
    memset(&msg_16[4], 0, 44);
    msg_4 = 0;
    reply_port = mig_get_reply_port();
    msg_8 = Port;
    msg_12 = reply_port;
    msg = 5395;
    *msg_16 = 0xF54C400000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&msg);
      v7 = msg_12;
    }

    else
    {
      v7 = reply_port;
    }

    v9 = mach_msg(&msg, 3, 0x18u, 0x40u, v7, 0, 0);
    if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg_12);
    }

    else if (v9)
    {
      mig_dealloc_reply_port(msg_12);
    }

    else
    {
      if (*&msg_16[4] == 1004840 && msg < 0 && *&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && msg_16[23] == 1)
      {
        v10 = *&msg_16[24];
        if (*&msg_16[24] == *&msg_16[36])
        {
          v8 = 0;
          v11 = *&msg_16[12];
          if (*&msg_16[12])
          {
            v12 = CFDataCreateWithBytesNoCopy(v0, *&msg_16[12], *&msg_16[24], *MEMORY[0x277CBED00]);
            if (v12)
            {
              v13 = v12;
              v14 = VSCFPropertyListCreateFromBinaryXMLData(v0, v12);
              v8 = v14;
              if (v14)
              {
                v15 = CFGetTypeID(v14);
                if (v15 != CFDictionaryGetTypeID())
                {
                  CFRelease(v8);
                  v8 = 0;
                }
              }

              CFRelease(v13);
            }

            else
            {
              v8 = 0;
            }

            mig_deallocate(v11, v10);
          }

          goto LABEL_28;
        }
      }

      mach_msg_destroy(&msg);
    }

    v8 = 0;
LABEL_28:
    CFRelease(v4);
    goto LABEL_29;
  }

  v8 = 0;
LABEL_30:
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

CFStringRef VSRecognitionPluginInfoCreateString(const __CFURL *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@:%@", a2, v3);
  CFRelease(v4);
  return v5;
}

uint64_t VSRecognitionPluginStringCopyInfo(CFStringRef theString, CFURLRef *a2, CFStringRef *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (!theString)
  {
    return 0;
  }

  v6 = CFStringFind(theString, @":", 0);
  if (v6.location == -1)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  v8 = 0;
  if (v6.location >= 1)
  {
    v9 = Length - (v6.location + v6.length);
    if (Length > v6.location + v6.length)
    {
      v10 = MEMORY[0x277CBECE8];
      if (a3)
      {
        v15.location = 0;
        v15.length = v6.location;
        *a3 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], theString, v15);
      }

      if (a2 && (v11 = *v10, v16.location = v6.location + v6.length, v16.length = v9, (v12 = CFStringCreateWithSubstring(*v10, theString, v16)) != 0))
      {
        v13 = v12;
        v8 = 1;
        *a2 = CFURLCreateWithFileSystemPath(v11, v12, kCFURLPOSIXPathStyle, 1u);
        CFRelease(v13);
      }

      else
      {
        return 1;
      }
    }
  }

  return v8;
}

uint64_t _VSRecognitionDisambiguationContextRegisterClass()
{
  __VSRecognitionDisambiguationContextTypeID = _CFRuntimeRegisterClass();

  return MEMORY[0x282110368]();
}

__CFString *_VSRecognitionDisambiguationContextDescribe(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<VSRecognitionDisambiguationContext %p [%@]> ", a1, *(a1 + 16));
  CFStringAppendFormat(Mutable, 0, @" will disambiguate with sequence tag %@\n", *(a1 + 24));
  v4 = *(a1 + 40);
  context = Mutable;
  v7 = v4;
  CFStringAppend(Mutable, @" known class values:\n");
  CFDictionaryApplyFunction(*(a1 + 32), _AppendKnownValueToString, &context);
  v7 = *(a1 + 56);
  CFStringAppend(Mutable, @" \nconstrained ambiguous classes:\n");
  CFDictionaryApplyFunction(*(a1 + 48), _AppendAmbiguousClassToString, &context);
  return Mutable;
}

void _AppendAmbiguousClassToString(void *key, const __CFArray *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, key);
  }

  else
  {
    Value = 0;
  }

  Count = CFArrayGetCount(a2);
  CFStringAppendFormat(*a3, 0, @"  %@ =\n", key);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      if (Value && (v10 = CFArrayGetValueAtIndex(Value, i)) != 0 && (v11 = v10, CFStringGetLength(v10)))
      {
        v12 = *a3;
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        CFStringAppendFormat(v12, 0, @"     %@ (%@)\n", ValueAtIndex, v11);
      }

      else
      {
        v13 = *a3;
        v15 = CFArrayGetValueAtIndex(a2, i);
        CFStringAppendFormat(v13, 0, @"     %@\n", v15, v16);
      }
    }
  }
}

void _AppendKnownValueToString(void *key, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (v6 && (Value = CFDictionaryGetValue(v6, key)) != 0 && (v8 = Value, CFStringGetLength(Value)))
  {
    CFStringAppendFormat(*a3, 0, @"  %@ = %@ (%@)\n", key, a2, v8);
  }

  else
  {
    CFStringAppendFormat(*a3, 0, @"  %@ = %@\n", key, a2);
  }
}

void _VSRecognitionDisambiguationContextDestroy(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[7];
  if (v7)
  {

    CFRelease(v7);
  }
}

void *VSRecognitionDisambiguationContextCreate(int a1, const void *a2, const void *a3, CFDictionaryRef theDict, const void *a5, const void *a6, const void *a7)
{
  Instance = 0;
  if (a2)
  {
    if (a3)
    {
      if (theDict)
      {
        Count = CFDictionaryGetCount(theDict);
        Instance = 0;
        if (a6)
        {
          if (Count)
          {
            if (CFDictionaryGetCount(a6))
            {
              pthread_once(&VSRecognitionDisambiguationContextGetTypeID___VSRecognitionDisambiguationContextRegisterOnce, _VSRecognitionDisambiguationContextRegisterClass);
              Instance = _CFRuntimeCreateInstance();
              Instance[2] = a2;
              CFRetain(a2);
              Instance[3] = a3;
              CFRetain(a3);
              Instance[4] = theDict;
              CFRetain(theDict);
              Instance[5] = a5;
              if (a5)
              {
                CFRetain(a5);
              }

              Instance[6] = a6;
              CFRetain(a6);
              Instance[7] = a7;
              if (a7)
              {
                CFRetain(a7);
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
  }

  return Instance;
}

void *VSRecognitionDisambiguationContextCreateFromDictionaryRepresentation(int a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"modelid");
  v5 = CFDictionaryGetValue(theDict, @"seqtag");
  v6 = CFDictionaryGetValue(theDict, @"known");
  v7 = CFDictionaryGetValue(theDict, @"knownp");
  v8 = CFDictionaryGetValue(theDict, @"ambig");
  v9 = CFDictionaryGetValue(theDict, @"ambigp");
  TypeID = CFStringGetTypeID();
  v11 = CFDictionaryGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v12 = v11;
  if (CFGetTypeID(Value) != TypeID || CFGetTypeID(v5) != TypeID || CFGetTypeID(v6) != v12 || CFGetTypeID(v8) != v12 || v7 && CFGetTypeID(v7) != v12)
  {
    return 0;
  }

  if (!v9)
  {
    v13 = a1;
    v14 = Value;
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    v19 = 0;
    goto LABEL_16;
  }

  if (CFGetTypeID(v9) != v12)
  {
    return 0;
  }

  v13 = a1;
  v14 = Value;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
LABEL_16:

  return VSRecognitionDisambiguationContextCreate(v13, v14, v15, v16, v17, v18, v19);
}

CFDictionaryRef VSRecognitionDisambiguationContextCreateDictionaryRepresentation(const __CFAllocator *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *keys = xmmword_279E4EFA0;
  v16 = *&off_279E4EFB0;
  v17 = xmmword_279E4EFC0;
  v10 = *(a2 + 16);
  v3 = *(a2 + 40);
  v2 = *(a2 + 48);
  v11 = *(a2 + 32);
  v12 = v2;
  v13 = 0;
  v14 = 0;
  if (v3)
  {
    v4 = &v14;
    v5 = (&v17 + 8);
    *&v17 = @"knownp";
    v13 = v3;
    v6 = 5;
  }

  else
  {
    v5 = &v17;
    v4 = &v13;
    v6 = 4;
  }

  v7 = *(a2 + 56);
  if (v7)
  {
    *v5 = @"ambigp";
    ++v6;
    *v4 = v7;
  }

  result = CFDictionaryCreate(a1, keys, &v10, v6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VSRecognitionDisambiguationContextGetKnownClassValue(uint64_t a1, void *key, void *a3, const void **a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  result = *(a1 + 32);
  if (result)
  {
    result = CFDictionaryGetValue(result, key);
    if (result)
    {
      if (a3)
      {
        *a3 = result;
      }

      if (a4)
      {
        v9 = *(a1 + 40);
        if (v9)
        {
          *a4 = CFDictionaryGetValue(v9, key);
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t VSRecognitionDisambiguationContextGetAmbiguousClassValueAtIndex(uint64_t a1, void *key, CFIndex a3, const void **a4, const void **a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  result = *(a1 + 48);
  if (result)
  {
    result = CFDictionaryGetValue(result, key);
    if (result)
    {
      v11 = result;
      if (CFArrayGetCount(result) <= a3)
      {
        return 0;
      }

      else
      {
        if (a4)
        {
          *a4 = CFArrayGetValueAtIndex(v11, a3);
        }

        if (a5)
        {
          v12 = *(a1 + 56);
          if (v12)
          {
            Value = CFDictionaryGetValue(v12, key);
            if (Value)
            {
              *a5 = CFArrayGetValueAtIndex(Value, a3);
            }
          }
        }

        return 1;
      }
    }
  }

  return result;
}

CFTypeRef VSCFPropertyListCreateBinaryXMLData(CFAllocatorRef bufferAllocator, const void *a2)
{
  v3 = CFWriteStreamCreateWithAllocatedBuffers(bufferAllocator, bufferAllocator);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFWriteStreamOpen(v3))
  {
    if (CFPropertyListWrite(a2, v4, kCFPropertyListBinaryFormat_v1_0, 0, 0))
    {
      v5 = CFWriteStreamCopyProperty(v4, *MEMORY[0x277CBF068]);
    }

    else
    {
      v5 = 0;
    }

    CFWriteStreamClose(v4);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v4);
  return v5;
}

CFPropertyListRef VSCFPropertyListCreateFromBinaryXMLData(const __CFAllocator *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v6 = CFReadStreamCreateWithBytesNoCopy(a1, BytePtr, Length, *MEMORY[0x277CBED00]);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (CFReadStreamOpen(v6))
  {
    v8 = CFPropertyListCreateWithStream(a1, v7, 0, 0, 0, 0);
    CFReadStreamClose(v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}

void sub_272862EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void SiriTTS::TextToPhoneme::~TextToPhoneme(SiriTTS::TextToPhoneme *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279E4EC18, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

const void *VSKeywordIndexCreateWithURL(const __CFAllocator *a1, const __CFURL *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = CFReadStreamCreateWithFile(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFReadStreamOpen(v3))
  {
    v5 = CFPropertyListCreateWithStream(a1, v4, 0, 1uLL, 0, 0);
    v6 = v5;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      if (v7 != CFDictionaryGetTypeID())
      {
        CFRelease(v6);
        v6 = 0;
      }
    }

    CFReadStreamClose(v4);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v4);
  return v6;
}

CFURLRef VSKeywordIndexCopyDefaultURL(const __CFAllocator *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = _VSServerConnectionCreate(a1, 0, 0);
  if (v2)
  {
    v3 = v2;
    memset(v18, 0, 512);
    v4 = _VSServerConnectionCopyServerPort(v2);
    if (!v4)
    {
      v9 = 0;
LABEL_35:
      _VSServerConnectionInvalidate(v3);
      CFRelease(v3);
      goto LABEL_36;
    }

    v5 = v4;
    Port = CFMachPortGetPort(v4);
    memset(v24, 0, 476);
    *&msg_16[4] = 0u;
    msg_4 = 0;
    reply_port = mig_get_reply_port();
    msg_12 = reply_port;
    msg = 5395;
    msg_8 = Port;
    *msg_16 = 0xF54C500000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&msg);
      v8 = msg_12;
    }

    else
    {
      v8 = reply_port;
    }

    v10 = mach_msg(&msg, 3, 0x18u, 0x434u, v8, 0, 0);
    if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg_12);
      goto LABEL_33;
    }

    if (v10)
    {
      mig_dealloc_reply_port(msg_12);
      goto LABEL_33;
    }

    if (*&msg_16[4] == 71)
    {
      v13 = -308;
      goto LABEL_30;
    }

    if (*&msg_16[4] != 1004841)
    {
      v13 = -301;
      goto LABEL_30;
    }

    if ((msg & 0x80000000) == 0)
    {
      if ((msg_4 - 1069) <= 0xFFFFFBFE)
      {
        if (*&msg_16[16])
        {
          v11 = msg_8 == 0;
        }

        else
        {
          v11 = 0;
        }

        if (v11 && msg_4 == 36)
        {
          v13 = *&msg_16[16];
        }

        else
        {
          v13 = -300;
        }

        goto LABEL_30;
      }

      if (!msg_8)
      {
        v13 = *&msg_16[16];
        if (!*&msg_16[16])
        {
          v13 = -300;
          if (v24[1] <= 0x400u && (msg_4 - 44) >= v24[1] && msg_4 == ((LOWORD(v24[1]) + 3) & 0xFFC) + 44)
          {
            mig_strncpy(v18, &v24[2], 1024);
LABEL_31:
            v14 = CFStringCreateWithFileSystemRepresentation(a1, v18);
            if (v14)
            {
              v15 = v14;
              v9 = CFURLCreateWithFileSystemPath(a1, v14, kCFURLPOSIXPathStyle, 0);
              CFRelease(v15);
LABEL_34:
              CFRelease(v5);
              goto LABEL_35;
            }

LABEL_33:
            v9 = 0;
            goto LABEL_34;
          }
        }

LABEL_30:
        mach_msg_destroy(&msg);
        if (v13)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    v13 = -300;
    goto LABEL_30;
  }

  v9 = 0;
LABEL_36:
  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL VSKeywordIndexSaveToURL(const void *a1, const __CFURL *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = CFGetAllocator(a1);
    v6 = CFWriteStreamCreateWithFile(v5, a2);
    if (v6)
    {
      v7 = v6;
      if (CFWriteStreamOpen(v6))
      {
        v2 = CFPropertyListWrite(a1, v7, kCFPropertyListBinaryFormat_v1_0, 0, 0) != 0;
        CFWriteStreamClose(v7);
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void VSKeywordIndexSetKeywordsForClassIdentifier(const __CFDictionary *a1, int a2, void *key, const void *a4, const __CFArray *a5)
{
  Value = CFDictionaryGetValue(a1, key);
  v11 = Value;
  if (!a5)
  {
    v13 = 1;
    if (!Value)
    {
      return;
    }

    goto LABEL_10;
  }

  Count = CFArrayGetCount(a5);
  v13 = Count == 0;
  if (!v11 && Count)
  {
    v14 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = Mutable;
    v16 = MEMORY[0x277CBED28];
    if (!a2)
    {
      v16 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"top-level", *v16);
    CFDictionarySetValue(a1, key, v11);
    CFRelease(v11);
    v13 = 0;
  }

  if (v11)
  {
LABEL_10:
    TypeID = CFDictionaryGetTypeID();
    ValueIfType = VSCFDictionaryGetValueIfType(v11, @"class-kws", TypeID);
    if (ValueIfType == 0 && !v13)
    {
      v19 = CFGetAllocator(a1);
      ValueIfType = CFDictionaryCreateMutable(v19, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v11, @"class-kws", ValueIfType);
      CFRelease(ValueIfType);
    }

    if (ValueIfType)
    {
      if (v13)
      {

        CFDictionaryRemoveValue(ValueIfType, a4);
      }

      else
      {

        CFDictionarySetValue(ValueIfType, a4, a5);
      }
    }
  }
}

CFMutableArrayRef VSKeywordIndexCopyKeywordsForModelIdentifier(const __CFDictionary *a1, const void *a2)
{
  TypeID = CFDictionaryGetTypeID();
  ValueIfType = VSCFDictionaryGetValueIfType(a1, a2, TypeID);
  if (!ValueIfType)
  {
    return 0;
  }

  v6 = VSCFDictionaryGetValueIfType(ValueIfType, @"class-kws", TypeID);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = CFArrayGetTypeID();
  v9 = VSCFDictionaryGetValueIfType(v7, @"__model-kws", v8);
  if (v9 && (Mutable = v9, CFArrayGetCount(v9)))
  {
    CFRetain(Mutable);
  }

  else
  {
    v11 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x277CBF128]);
    CFDictionaryApplyFunction(v7, _FoldClassKeywordsIntoArray, Mutable);
  }

  return Mutable;
}

void _FoldClassKeywordsIntoArray(uint64_t a1, const void *a2, __CFArray *a3)
{
  TypeID = CFStringGetTypeID();
  if (a2)
  {
    v6 = TypeID;
    v7 = CFGetTypeID(a2);
    if (v7 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v9 = Count;
        for (i = 0; i != v9; ++i)
        {
          ValueAtIndexIfType = VSCFArrayGetValueAtIndexIfType(a2, i, v6);
          if (ValueAtIndexIfType)
          {
            CFArrayAppendValue(a3, ValueAtIndexIfType);
          }
        }
      }
    }
  }
}

CFMutableArrayRef VSKeywordIndexCopyKeywordsForTopLevelModels(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
  CFDictionaryApplyFunction(a1, _FoldTopLevelModelKeywordsIntoArray, Mutable);
  return Mutable;
}

void _FoldTopLevelModelKeywordsIntoArray(uint64_t a1, const __CFDictionary *a2, __CFArray *a3)
{
  TypeID = CFDictionaryGetTypeID();
  if (a2)
  {
    v6 = TypeID;
    if (CFGetTypeID(a2) == TypeID)
    {
      v7 = CFBooleanGetTypeID();
      ValueIfType = VSCFDictionaryGetValueIfType(a2, @"top-level", v7);
      if (ValueIfType)
      {
        if (CFEqual(ValueIfType, *MEMORY[0x277CBED28]))
        {
          v9 = VSCFDictionaryGetValueIfType(a2, @"class-kws", v6);
          if (v9)
          {
            v10 = v9;
            v11 = CFArrayGetTypeID();
            v12 = VSCFDictionaryGetValueIfType(v10, @"__model-kws", v11);
            if (v12 && (v13 = v12, CFArrayGetCount(v12)))
            {

              CFArrayAppendValue(a3, v13);
            }

            else
            {
              Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
              CFDictionaryApplyFunction(v10, _FoldClassKeywordsIntoArray, Mutable);
              if (CFArrayGetCount(Mutable))
              {
                CFArrayAppendValue(a3, Mutable);
              }

              CFRelease(Mutable);
            }
          }
        }
      }
    }
  }
}

CFMutableArrayRef VSCFSetCreateMutableArray(const __CFAllocator *a1, CFSetRef theSet, CFIndex a3, const CFArrayCallBacks *a4)
{
  if (!theSet || CFSetGetCount(theSet) < 1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(a1, a3, a4);
  CFSetApplyFunction(theSet, _AddSetElementsToArray, Mutable);
  return Mutable;
}

void _AddSetElementsToArray(void *value, CFMutableArrayRef theArray)
{
  if (theArray)
  {
    CFArrayAppendValue(theArray, value);
  }
}

void VSCFSetSendDifferences(const __CFSet *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  context[0] = a2;
  context[1] = a3;
  context[2] = a4;
  CFSetApplyFunction(a1, _SendDifferenceElements, context);
}

uint64_t _SendDifferenceElements(uint64_t value, uint64_t *a2)
{
  if (a2)
  {
    v3 = value;
    value = *a2;
    if (!*a2 || (value = CFSetContainsValue(value, v3), !value))
    {
      v4 = a2[1];
      if (v4)
      {
        v5 = a2[2];

        return v4(v3, v5);
      }
    }
  }

  return value;
}

const void *VSCFDictionaryGetValueIfType(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    if (CFGetTypeID(result) == a3)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *VSCFArrayGetValueAtIndexIfType(const __CFArray *a1, CFIndex a2, uint64_t a3)
{
  result = CFArrayGetValueAtIndex(a1, a2);
  if (result)
  {
    v5 = result;
    if (CFGetTypeID(result) == a3)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __assign_helper_atomic_property_(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *__copy_helper_atomic_property_(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void sub_272864478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
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

void sub_272864B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_2728655BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](v50 - 128);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_272865C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__split_buffer<std::string> *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a12);
  *(v12 + 8) = v13;
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v5 = __from_s + end - __to;
  if (v5 >= __from_e)
  {
    v7 = this->__end_;
  }

  else
  {
    v6 = __from_s + end - __to;
    v7 = this->__end_;
    do
    {
      v8 = *v6;
      v7->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&v7->__r_.__value_.__l.__data_ = v8;
      ++v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v6 += 24;
    }

    while (v6 < __from_e);
  }

  this->__end_ = v7;
  if (end != __to)
  {
    v9 = 0;
    v10 = (__to - end);
    do
    {
      v11 = &v9[end - 24];
      if (v9[end - 1] < 0)
      {
        operator delete(*v11);
      }

      v12 = &v5[(v9 - 24)];
      v13 = *v12;
      *&v9[end - 8] = *(v12 + 2);
      *v11 = v13;
      v9[v5 - 1] = 0;
      *v12 = 0;
      v9 -= 24;
    }

    while (v10 != v9);
  }
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t std::__function::__func<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage)>,int ()(TTSSynthesizer::CallbackMessage)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "U13block_pointerFiN14TTSSynthesizer15CallbackMessageEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage)>,int ()(TTSSynthesizer::CallbackMessage)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage)>,int ()(TTSSynthesizer::CallbackMessage)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2881D6040;
  result = MEMORY[0x2743CEF70](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(TTSSynthesizer::CallbackMessage)>,int ()(TTSSynthesizer::CallbackMessage)>::~__func(uint64_t a1)
{

  JUMPOUT(0x2743CE900);
}

void sub_272866CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

void sub_27286796C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VSPreferencesSetValueForKey(const __CFString *a1, const void *a2)
{
  CFPreferencesSetAppValue(a1, a2, @"com.apple.voiceservices");

  return CFPreferencesAppSynchronize(@"com.apple.voiceservices");
}

void VSPreferencesSetSpokenLanguageIdentifier(const __CFString *a1)
{
  v2 = VSPreferencesCopySpokenLanguageIdentifier();
  v3 = v2;
  if (v2 == a1)
  {
    goto LABEL_10;
  }

  if (!a1 || !v2 || CFStringCompare(v2, a1, 0))
  {
    CFPreferencesSetAppValue(@"lang-id", a1, @"com.apple.voiceservices");
    CFPreferencesAppSynchronize(@"com.apple.voiceservices");
    pthread_mutex_lock(&__VSPreferencesSpokenLanguageLock);
    if (__VSPreferencesSpokenLanguage)
    {
      CFRelease(__VSPreferencesSpokenLanguage);
    }

    __VSPreferencesSpokenLanguage = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    ++__VSPreferencesSpokenLanguageChangedCount;
    pthread_mutex_unlock(&__VSPreferencesSpokenLanguageLock);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.voiceservices.language", 0, 0, 1u);
LABEL_10:
    if (!v3)
    {
      return;
    }
  }

  CFRelease(v3);
}

void *VSPreferencesCopySpokenLanguageIdentifier()
{
  VSPreferencesInitialize();
  pthread_mutex_lock(&__VSPreferencesSpokenLanguageLock);
  SpokenLanguageIdentifier = _VSPreferencesGetSpokenLanguageIdentifier();
  v1 = SpokenLanguageIdentifier;
  if (SpokenLanguageIdentifier)
  {
    CFRetain(SpokenLanguageIdentifier);
  }

  pthread_mutex_unlock(&__VSPreferencesSpokenLanguageLock);
  return v1;
}

uint64_t VSPreferencesInitialize()
{
  pthread_mutex_lock(&__VSPreferencesSpokenLanguageLock);
  if ((VSPreferencesInitialize___ObservingChanges & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _VSPreferencesSpokenLanguageChangedHandler, @"com.apple.voiceservices.language", 0, CFNotificationSuspensionBehaviorDrop);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, 0, _VSPreferencesSpokenLanguageChangedHandler, *MEMORY[0x277CBEEB0], 0, CFNotificationSuspensionBehaviorDrop);
    VSPreferencesInitialize___ObservingChanges = 1;
  }

  return pthread_mutex_unlock(&__VSPreferencesSpokenLanguageLock);
}

void *_VSPreferencesGetSpokenLanguageIdentifier()
{
  result = __VSPreferencesSpokenLanguage;
  if (!__VSPreferencesSpokenLanguage)
  {
    result = CFPreferencesCopyAppValue(@"lang-id", @"com.apple.voiceservices");
    __VSPreferencesSpokenLanguage = result;
    if (!result)
    {
      result = _VSPreferencesCopyDefaultSpokenLanguageIdentifierForUserPreferences();
      __VSPreferencesSpokenLanguage = result;
      if (!result)
      {
        result = _VSPreferencesCopySystemLanguageIdentifier();
        __VSPreferencesSpokenLanguage = result;
      }
    }
  }

  return result;
}

const void *_VSPreferencesCopyDefaultSpokenLanguageIdentifierForUserPreferences()
{
  result = __VSPreferencesDefaultSpokenLanguage;
  if (!__VSPreferencesDefaultSpokenLanguage)
  {
    v1 = CFLocaleCopyCurrent();
    if (!v1)
    {
      goto LABEL_14;
    }

    v2 = v1;
    v3 = _VSCopyLanguageIdentifierForLocale(v1);
    __VSPreferencesDefaultSpokenLanguage = v3;
    if (!v3)
    {
      goto LABEL_11;
    }

    v4 = v3;
    v5 = __VSPreferencesValidSpokenLanguageIds;
    if (!__VSPreferencesValidSpokenLanguageIds)
    {
      v5 = _VSCopyAvailableLanguageIdentifiers();
      __VSPreferencesValidSpokenLanguageIds = v5;
      if (!v5)
      {
        goto LABEL_10;
      }

      v4 = __VSPreferencesDefaultSpokenLanguage;
    }

    if (CFSetContainsValue(v5, v4))
    {
      if (__VSPreferencesDefaultSpokenLanguage)
      {
LABEL_13:
        CFRelease(v2);
LABEL_14:
        result = __VSPreferencesDefaultSpokenLanguage;
        if (!__VSPreferencesDefaultSpokenLanguage)
        {
          return result;
        }

        goto LABEL_15;
      }

LABEL_11:
      pthread_once(&_VSFrameworkBundle_bundleInitOnce, _VSSetFrameworkBundle);
      v6 = CFBundleCopyResourceURL(__VSBundle, @"language_fallbacks.plist", 0, @"RecognitionResources/Express");
      if (v6)
      {
        v7 = v6;
        __VSPreferencesDefaultSpokenLanguage = _VSCopyFallbackLanguageIdentifierForLocale(v2, v6);
        CFRelease(v7);
      }

      goto LABEL_13;
    }

LABEL_10:
    CFRelease(__VSPreferencesDefaultSpokenLanguage);
    __VSPreferencesDefaultSpokenLanguage = 0;
    goto LABEL_11;
  }

LABEL_15:
  CFRetain(result);
  return __VSPreferencesDefaultSpokenLanguage;
}

CFStringRef _VSPreferencesCopySystemLanguageIdentifier()
{
  v0 = CFLocaleCopyPreferredLanguages();
  if (CFArrayGetCount(v0))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v0, 0);
    Copy = CFStringCreateCopy(0, ValueAtIndex);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(v0);
  return Copy;
}

void _VSPreferencesSpokenLanguageChangedHandler()
{
  pthread_mutex_lock(&__VSPreferencesSpokenLanguageLock);
  if (__VSPreferencesSpokenLanguageChangedCount < 1)
  {
    CFPreferencesAppSynchronize(@"com.apple.voiceservices");
    if (__VSPreferencesDefaultSpokenLanguage)
    {
      CFRelease(__VSPreferencesDefaultSpokenLanguage);
      __VSPreferencesDefaultSpokenLanguage = 0;
    }

    if (__VSPreferencesDefaultOutputLanguage)
    {
      CFRelease(__VSPreferencesDefaultOutputLanguage);
      __VSPreferencesDefaultOutputLanguage = 0;
    }

    v0 = __VSPreferencesSpokenLanguage;
    if (__VSPreferencesSpokenLanguage)
    {
      __VSPreferencesSpokenLanguage = 0;
      SpokenLanguageIdentifier = _VSPreferencesGetSpokenLanguageIdentifier();
      v2 = CFStringCompare(v0, SpokenLanguageIdentifier, 0);
      CFRelease(v0);
      pthread_mutex_unlock(&__VSPreferencesSpokenLanguageLock);
      if (v2 == kCFCompareEqualTo)
      {
        return;
      }
    }

    else
    {
      pthread_mutex_unlock(&__VSPreferencesSpokenLanguageLock);
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();

    CFNotificationCenterPostNotification(LocalCenter, @"com.apple.voiceservices.language", 0, 0, 1u);
  }

  else
  {
    --__VSPreferencesSpokenLanguageChangedCount;

    pthread_mutex_unlock(&__VSPreferencesSpokenLanguageLock);
  }
}

uint64_t VSPreferencesGetLogging()
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"VSLogLevel", @"com.apple.voiceservices.logging", 0);
  v1 = MEMORY[0x277CBED28];
  if (AppIntegerValue <= 0)
  {
    v1 = MEMORY[0x277CBED10];
  }

  return *v1;
}

uint64_t VSPreferencesSetLogging(uint64_t a1)
{
  if (*MEMORY[0x277CBED28] != a1 || a1 == 0)
  {
    return VSPreferencesSetLoggingLevel(-1);
  }

  else
  {
    return VSPreferencesSetLoggingLevel(6);
  }
}

uint64_t VSPreferencesSetLoggingLevel(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithLong:a1];
  v3 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(@"VSLogLevel", v2, @"com.apple.voiceservices.logging", @"mobile", *MEMORY[0x277CBF010]);
  CFPreferencesSetValue(@"VSOutputLevel", [MEMORY[0x277CCABB0] numberWithLong:a1], @"com.apple.voiceservices.logging", @"mobile", v3);
  CFPreferencesSynchronize(@"com.apple.voiceservices.logging", @"mobile", v3);

  return notify_post("com.apple.AppSupport.loggingDefaultsChanged");
}

const __CFString *VSPreferencesCopySpokenLanguageIdentifierArray()
{
  result = VSPreferencesCopySpokenLanguageIdentifier();
  if (result)
  {
    v1 = result;
    v2 = _VSCopyLanguageArrayForLanguageIdentifier(result);
    CFRelease(v1);
    return v2;
  }

  return result;
}

const void *VSPreferencesCopyDefaultSpokenLanguageIdentifierForUserPreferences()
{
  pthread_mutex_lock(&__VSPreferencesSpokenLanguageLock);
  v0 = _VSPreferencesCopyDefaultSpokenLanguageIdentifierForUserPreferences();
  pthread_mutex_unlock(&__VSPreferencesSpokenLanguageLock);
  return v0;
}

CFStringRef VSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences()
{
  VSPreferencesInitialize();
  pthread_mutex_lock(&__VSPreferencesSpokenLanguageLock);
  v0 = __VSPreferencesDefaultOutputLanguage;
  if (__VSPreferencesDefaultOutputLanguage)
  {
    goto LABEL_16;
  }

  v1 = CFLocaleCopyCurrent();
  if (v1)
  {
    v2 = v1;
    v3 = _VSCopyLanguageIdentifierForLocale(v1);
    __VSPreferencesDefaultOutputLanguage = v3;
    if (!v3)
    {
      goto LABEL_11;
    }

    v4 = v3;
    v5 = __VSPreferencesValidOutputLanguageIds;
    if (!__VSPreferencesValidOutputLanguageIds)
    {
      v5 = _VSCopyAvailableOutputLanguageIdentifiers();
      __VSPreferencesValidOutputLanguageIds = v5;
      if (!v5)
      {
        goto LABEL_10;
      }

      v4 = __VSPreferencesDefaultOutputLanguage;
    }

    if (CFSetContainsValue(v5, v4))
    {
      if (__VSPreferencesDefaultOutputLanguage)
      {
LABEL_13:
        CFRelease(v2);
        goto LABEL_14;
      }

LABEL_11:
      pthread_once(&_VSFrameworkBundle_bundleInitOnce, _VSSetFrameworkBundle);
      v6 = CFBundleCopyResourceURL(__VSBundle, @"language_fallbacks.plist", 0, @"TTSResources");
      if (v6)
      {
        v7 = v6;
        __VSPreferencesDefaultOutputLanguage = _VSCopyFallbackLanguageIdentifierForLocale(v2, v6);
        CFRelease(v7);
      }

      goto LABEL_13;
    }

LABEL_10:
    CFRelease(__VSPreferencesDefaultOutputLanguage);
    __VSPreferencesDefaultOutputLanguage = 0;
    goto LABEL_11;
  }

LABEL_14:
  v0 = __VSPreferencesDefaultOutputLanguage;
  if (!__VSPreferencesDefaultOutputLanguage)
  {
    v0 = _VSPreferencesCopySystemLanguageIdentifier();
    __VSPreferencesDefaultOutputLanguage = v0;
    if (!v0)
    {
      Copy = 0;
      goto LABEL_17;
    }
  }

LABEL_16:
  Copy = CFStringCreateCopy(0, v0);
LABEL_17:
  pthread_mutex_unlock(&__VSPreferencesSpokenLanguageLock);
  return Copy;
}

__CFSet *VSPreferencesCopyAvailableLanguageIdentifiers()
{
  pthread_mutex_lock(&__VSPreferencesSpokenLanguageLock);
  v0 = __VSPreferencesValidSpokenLanguageIds;
  if (__VSPreferencesValidSpokenLanguageIds || (v0 = _VSCopyAvailableLanguageIdentifiers(), (__VSPreferencesValidSpokenLanguageIds = v0) != 0))
  {
    CFRetain(v0);
  }

  pthread_mutex_unlock(&__VSPreferencesSpokenLanguageLock);
  return v0;
}

__CFSet *VSPreferencesCopyAvailableOutputLanguageIdentifiers()
{
  pthread_mutex_lock(&__VSPreferencesSpokenLanguageLock);
  v0 = __VSPreferencesValidOutputLanguageIds;
  if (__VSPreferencesValidOutputLanguageIds || (v0 = _VSCopyAvailableOutputLanguageIdentifiers(), (__VSPreferencesValidOutputLanguageIds = v0) != 0))
  {
    CFRetain(v0);
  }

  pthread_mutex_unlock(&__VSPreferencesSpokenLanguageLock);
  return v0;
}

CFStringRef _VSCopyLanguageCodeFromLanguageIdentifier(const __CFString *a1)
{
  location = CFStringFind(a1, @"-", 0).location;
  if (location == -1)
  {

    return CFRetain(a1);
  }

  else
  {
    v4.length = location;
    v3 = *MEMORY[0x277CBECE8];
    v4.location = 0;

    return CFStringCreateWithSubstring(v3, a1, v4);
  }
}

CFStringRef _VSCopyLocalizedString(const __CFString *a1, const __CFString *a2)
{
  pthread_once(&_VSFrameworkBundle_bundleInitOnce, _VSSetFrameworkBundle);
  v4 = __VSBundle;
  if (__VSBundle)
  {

    return CFBundleCopyLocalizedString(v4, a1, a1, a2);
  }

  else
  {

    return CFRetain(a1);
  }
}

CFBundleRef _VSSetFrameworkBundle()
{
  result = CFBundleGetBundleWithIdentifier(@"com.apple.voiceservices");
  __VSBundle = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

const void *_VSCopyFallbackLanguageIdentifierForLocale(const __CFLocale *a1, const __CFURL *a2)
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], a2);
  if (v4)
  {
    v5 = v4;
    if (CFReadStreamOpen(v4))
    {
      v6 = CFPropertyListCreateWithStream(v3, v5, 0, 0, 0, 0);
      if (v6)
      {
        v7 = v6;
        v8 = CFGetTypeID(v6);
        if (v8 == CFDictionaryGetTypeID())
        {
          v9 = _VSCopyLanguageIdentifierForLocale(a1);
          if (v9)
          {
            v10 = v9;
            Value = CFDictionaryGetValue(v7, v9);
            CFRelease(v10);
            if (Value)
            {
              goto LABEL_9;
            }
          }

          key = 0;
          _VSCopyLanguageCodes(&key, 0);
          v12 = key;
          if (key)
          {
            Value = CFDictionaryGetValue(v7, key);
            CFRelease(v12);
            if (!Value)
            {
LABEL_12:
              CFReadStreamClose(v5);
              CFRelease(v7);
LABEL_15:
              CFRelease(v5);
              return Value;
            }

LABEL_9:
            CFRetain(Value);
            goto LABEL_12;
          }
        }

        Value = 0;
        goto LABEL_12;
      }

      CFReadStreamClose(v5);
    }

    Value = 0;
    goto LABEL_15;
  }

  return 0;
}

CFStringRef _VSCopyLanguageIdentifierForLocale(const __CFLocale *a1)
{
  cf = 0;
  theString1 = 0;
  _VSCopyLanguageCodes(&cf, &theString1);
  if (theString1)
  {
    v2 = CFStringCompare(theString1, @"en-GB", 1uLL);
    if (!a1 || v2)
    {
      goto LABEL_14;
    }
  }

  else if (!a1)
  {
    goto LABEL_14;
  }

  if (!cf)
  {
    return theString1;
  }

  Value = CFLocaleGetValue(a1, *MEMORY[0x277CBEE98]);
  if (Value)
  {
    v4 = Value;
    if (theString1)
    {
      if (CFStringCompare(Value, @"AU", 1uLL) && CFStringCompare(v4, @"NZ", 1uLL))
      {
        goto LABEL_14;
      }

      if (theString1)
      {
        CFRelease(theString1);
      }
    }

    theString1 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@-%@", cf, v4);
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return theString1;
}

uint64_t _VSCopyLanguageCodes(void *a1, void *a2)
{
  pthread_mutex_lock(&__VSLanguageLock);
  if (!__VSLanguage)
  {
    pthread_once(&_VSCopyLanguageCodes___SetLanguageOnce, _VSRegisterLanguageChanges);
    v4 = CFLocaleCopyPreferredLanguages();
    if (v4)
    {
      v5 = v4;
      if (CFArrayGetCount(v4) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
        v7 = CFStringFind(ValueAtIndex, @"-", 0);
        if (v7.location != -1 && v7.location + v7.length == CFStringGetLength(ValueAtIndex) - 2)
        {
          __VSLanguageCode = ValueAtIndex;
          CFRetain(ValueAtIndex);
        }

        if (CFStringFind(ValueAtIndex, @"zh-Hans", 8uLL).location != -1)
        {
          __VSLanguageCode = @"zh-CN";
          CFRetain(@"zh-CN");
        }

        __VSLanguage = _VSCopyLanguageCodeFromLanguageIdentifier(ValueAtIndex);
      }

      CFRelease(v5);
    }
  }

  if (a1)
  {
    v8 = __VSLanguage;
    *a1 = __VSLanguage;
    if (v8)
    {
      CFRetain(v8);
    }
  }

  if (a2)
  {
    v9 = __VSLanguageCode;
    *a2 = __VSLanguageCode;
    if (v9)
    {
      CFRetain(v9);
    }
  }

  return pthread_mutex_unlock(&__VSLanguageLock);
}

void _VSRegisterLanguageChanges()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _VSDeviceLanguageChangedHandler, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDrop);
}

uint64_t _VSDeviceLanguageChangedHandler()
{
  pthread_mutex_lock(&__VSLanguageLock);
  if (__VSLanguage)
  {
    CFRelease(__VSLanguage);
    __VSLanguage = 0;
  }

  if (__VSLanguageCode)
  {
    CFRelease(__VSLanguageCode);
    __VSLanguageCode = 0;
  }

  v0 = pthread_mutex_unlock(&__VSLanguageLock);

  return _VSPreferencesSpokenLanguageChangedHandler(v0);
}

CFStringRef _VSCopyQualifiedLanguageIdentifierForLanguageCode(const void *a1, CFStringRef theString)
{
  if (theString)
  {
    v4 = CFStringFind(theString, @"-", 0);
    if (v4.location != -1)
    {
      Length = CFStringGetLength(theString);
      if (Length > v4.location + v4.length)
      {
        v6 = *MEMORY[0x277CBECE8];
        v14.location = v4.location + v4.length;
        v14.length = Length - (v4.location + v4.length);
        v7 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], theString, v14);
        if (v7)
        {
          v8 = v7;
          goto LABEL_9;
        }
      }
    }
  }

  v9 = CFLocaleCopyCurrent();
  if (!v9)
  {
LABEL_12:
    CFRetain(a1);
    return a1;
  }

  v10 = v9;
  Value = CFLocaleGetValue(v9, *MEMORY[0x277CBEE98]);
  if (!Value)
  {
    CFRelease(v10);
    goto LABEL_12;
  }

  v8 = Value;
  CFRetain(Value);
  CFRelease(v10);
  v6 = *MEMORY[0x277CBECE8];
LABEL_9:
  v12 = CFStringCreateWithFormat(v6, 0, @"%@-%@", a1, v8);
  CFRelease(v8);
  if (!v12)
  {
    goto LABEL_12;
  }

  return v12;
}

const void *_VSCopyFallbackLanguageIdentifierForLanguageIdentifier(const __CFString *a1, const __CFURL *a2)
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], a2);
  if (v4)
  {
    v5 = v4;
    if (CFReadStreamOpen(v4))
    {
      v6 = CFPropertyListCreateWithStream(v3, v5, 0, 0, 0, 0);
      if (v6)
      {
        v7 = v6;
        v8 = CFGetTypeID(v6);
        if (v8 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v7, a1);
          if (Value)
          {
            v10 = Value;
LABEL_7:
            CFRetain(v10);
LABEL_15:
            CFReadStreamClose(v5);
            CFRelease(v7);
            goto LABEL_16;
          }

          v11 = _VSCopyLanguageCodeFromLanguageIdentifier(a1);
          if (v11)
          {
            v12 = v11;
            v10 = CFDictionaryGetValue(v7, v11);
            CFRelease(v12);
            if (!v10)
            {
              goto LABEL_15;
            }

            goto LABEL_7;
          }
        }

        v10 = 0;
        goto LABEL_15;
      }

      CFReadStreamClose(v5);
    }

    v10 = 0;
LABEL_16:
    CFRelease(v5);
    return v10;
  }

  return 0;
}

const __CFString *_VSCopyLanguageArrayForLanguageIdentifier(const __CFString *a1)
{
  v1 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9[0] = 0;
  if (a1)
  {
    v2 = _VSCopyLanguageCodeFromLanguageIdentifier(a1);
    v7 = v1;
    if (CFStringCompare(v1, @"zh-HK", 0))
    {
      v3 = &v8;
      v4 = 1;
      if (v2)
      {
LABEL_4:
        *v3 = v2;
        v1 = CFArrayCreate(*MEMORY[0x277CBECE8], &v7, v4 + 1, MEMORY[0x277CBF128]);
        CFRelease(v2);
        goto LABEL_7;
      }
    }

    else
    {
      v3 = v9;
      v8 = @"zh-TW";
      v4 = 2;
      if (v2)
      {
        goto LABEL_4;
      }
    }

    v1 = CFArrayCreate(*MEMORY[0x277CBECE8], &v7, v4, MEMORY[0x277CBF128]);
  }

LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
  return v1;
}

__CFSet *_VSCopyAvailableLanguageIdentifiers()
{
  pthread_once(&_VSFrameworkBundle_bundleInitOnce, _VSSetFrameworkBundle);
  v0 = CFBundleCopyResourceURLsOfType(__VSBundle, @"bin", @"RecognitionResources/Express");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Count = CFArrayGetCount(v0);
  if (Count >= 1)
  {
    v3 = Count;
    Mutable = 0;
    v5 = 0;
    v6 = *MEMORY[0x277CBECE8];
    v7 = MEMORY[0x277CBF158];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, v5);
      PathComponent = CFURLCopyLastPathComponent(ValueAtIndex);
      if (PathComponent)
      {
        break;
      }

LABEL_10:
      if (v3 == ++v5)
      {
        goto LABEL_16;
      }
    }

    v10 = PathComponent;
    location = CFStringFind(PathComponent, @".", 0).location;
    if ((location - 1) >= 0xFFFFFFFFFFFFFFFELL)
    {
      CFRetain(v10);
      v12 = v10;
      if (Mutable)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v14.length = location;
      v14.location = 0;
      v12 = CFStringCreateWithSubstring(v6, v10, v14);
      if (!v12)
      {
LABEL_9:
        CFRelease(v10);
        goto LABEL_10;
      }

      if (Mutable)
      {
LABEL_8:
        CFSetAddValue(Mutable, v12);
        CFRelease(v12);
        goto LABEL_9;
      }
    }

    Mutable = CFSetCreateMutable(v6, 0, v7);
    goto LABEL_8;
  }

  Mutable = 0;
LABEL_16:
  CFRelease(v1);
  return Mutable;
}

__CFSet *_VSCopyAvailableOutputLanguageIdentifiers()
{
  pthread_once(&_VSFrameworkBundle_bundleInitOnce, _VSSetFrameworkBundle);
  v0 = CFBundleCopyResourceURLsOfType(__VSBundle, 0, @"TTSResources");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Count = CFArrayGetCount(v0);
  if (Count < 1)
  {
    Mutable = 0;
  }

  else
  {
    v3 = Count;
    Mutable = 0;
    v5 = 0;
    v6 = *MEMORY[0x277CBECE8];
    v7 = MEMORY[0x277CBF158];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, v5);
      PathComponent = CFURLCopyLastPathComponent(ValueAtIndex);
      if (PathComponent)
      {
        v10 = PathComponent;
        if (CFStringFind(PathComponent, @"-", 0).location != -1)
        {
          if (!Mutable)
          {
            Mutable = CFSetCreateMutable(v6, 0, v7);
          }

          CFSetAddValue(Mutable, v10);
        }

        CFRelease(v10);
      }

      ++v5;
    }

    while (v3 != v5);
  }

  CFRelease(v1);
  return Mutable;
}

CFURLRef _VSCopyDefaultLanguageIdentifierFallbackMapURL()
{
  pthread_once(&_VSFrameworkBundle_bundleInitOnce, _VSSetFrameworkBundle);
  v0 = __VSBundle;

  return CFBundleCopyResourceURL(v0, @"language_fallbacks.plist", 0, @"RecognitionResources/Express");
}

CFURLRef _VSCopyDefaultOutputLanguageIdentifierFallbackMapURL()
{
  pthread_once(&_VSFrameworkBundle_bundleInitOnce, _VSSetFrameworkBundle);
  v0 = __VSBundle;

  return CFBundleCopyResourceURL(v0, @"language_fallbacks.plist", 0, @"TTSResources");
}

CFURLRef _VSBundleCopyResourceURL(CFBundleRef bundle, void *a2, CFStringRef resourceName, CFStringRef resourceType, CFStringRef subDirName)
{
  values = a2;
  if (!a2)
  {
    return CFBundleCopyResourceURL(bundle, resourceName, resourceType, subDirName);
  }

  v9 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, 0);
  v10 = CFBundleCopyBundleLocalizations(bundle);
  if (!v10 || (v11 = v10, v12 = CFBundleCopyLocalizationsForPreferences(v10, v9), CFRelease(v11), !v12))
  {
    CFRelease(v9);
    return CFBundleCopyResourceURL(bundle, resourceName, resourceType, subDirName);
  }

  if (CFArrayGetCount(v12) < 1)
  {
    v14 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
    v14 = CFBundleCopyResourceURLForLocalization(bundle, resourceName, resourceType, subDirName, ValueAtIndex);
  }

  CFRelease(v12);
  CFRelease(v9);
  if (!v14)
  {
    return CFBundleCopyResourceURL(bundle, resourceName, resourceType, subDirName);
  }

  return v14;
}

__CFArray *VSAttributedStringCreateSerializedAttributes(const __CFAllocator *a1, CFAttributedStringRef aStr)
{
  if (!aStr)
  {
    return 0;
  }

  Length = CFAttributedStringGetLength(aStr);
  if (Length < 1)
  {
    return 0;
  }

  v5 = Length;
  Mutable = 0;
  v7 = 0;
  v17.location = 0;
  v17.length = 0;
  v8 = MEMORY[0x277CBF128];
  do
  {
    v18.length = v5 - v7;
    v18.location = v7;
    AttributesAndLongestEffectiveRange = CFAttributedStringGetAttributesAndLongestEffectiveRange(aStr, v7, v18, &v17);
    if (AttributesAndLongestEffectiveRange)
    {
      v10 = AttributesAndLongestEffectiveRange;
      v11 = CFDataCreate(a1, &v17, 16);
      if (v11)
      {
        v12 = v11;
        MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, v10);
        if (MutableCopy)
        {
          v14 = MutableCopy;
          CFDictionarySetValue(MutableCopy, @"range", v12);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(a1, 0, v8);
          }

          CFArrayAppendValue(Mutable, v14);
          CFRelease(v14);
        }

        CFRelease(v12);
      }

      v15 = v17.length;
    }

    else
    {
      v15 = 1;
    }

    v7 += v15;
  }

  while (v7 < v5);
  return Mutable;
}

__CFAttributedString *VSAttributedStringCreateFromSerializedAttributes(const __CFAllocator *a1, CFStringRef theString, const __CFArray *a3)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  v20.location = 0;
  v20.length = 0;
  if (Length < 1)
  {
    return 0;
  }

  v7 = Length;
  Mutable = CFAttributedStringCreateMutable(a1, Length);
  v21.location = 0;
  v21.length = 0;
  CFAttributedStringReplaceString(Mutable, v21, theString);
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    TypeID = CFDictionaryGetTypeID();
    if (Count >= 1)
    {
      v11 = TypeID;
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndexIfType = VSCFArrayGetValueAtIndexIfType(a3, i, v11);
        if (ValueAtIndexIfType)
        {
          v14 = ValueAtIndexIfType;
          Value = CFDictionaryGetValue(ValueAtIndexIfType, @"range");
          if (Value)
          {
            v16 = Value;
            if (CFDataGetLength(Value) == 16)
            {
              v22.location = 0;
              v22.length = 16;
              CFDataGetBytes(v16, v22, &v20);
              if ((v20.location & 0x8000000000000000) == 0 && v20.length + v20.location <= v7)
              {
                MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, v14);
                if (MutableCopy)
                {
                  v18 = MutableCopy;
                  CFDictionaryRemoveValue(MutableCopy, @"range");
                  CFAttributedStringSetAttributes(Mutable, v20, v18, 1u);
                  CFRelease(v18);
                }
              }
            }
          }
        }
      }
    }
  }

  return Mutable;
}

CFTypeRef VSCFAttributedStringGetAttributeAndLongestEffectiveRange(const __CFAttributedString *a1, CFIndex a2, const __CFString *a3, CFIndex a4, CFIndex a5, CFRange *effectiveRange)
{
  result = CFAttributedStringGetAttribute(a1, a2, a3, effectiveRange);
  if (effectiveRange)
  {
    if (result)
    {
      v13.location = a4;
      v13.length = a5;

      return CFAttributedStringGetAttributeAndLongestEffectiveRange(a1, a2, a3, v13, effectiveRange);
    }

    else
    {
      v23 = *effectiveRange;
      v14 = a4 + a5;
      for (i = v23.length + v23.location; i > v14; i = v16.length + v16.location)
      {
        result = CFAttributedStringGetAttribute(a1, i, a3, &v23);
        if (result)
        {
          goto LABEL_11;
        }

        v16 = v23;
        effectiveRange->length += v23.length;
      }

      result = 0;
LABEL_11:
      v23 = *effectiveRange;
      if (!result)
      {
        v17 = v23.location - 1;
        if (v23.location - 1 > a4)
        {
          while (1)
          {
            result = CFAttributedStringGetAttribute(a1, v17, a3, &v23);
            if (result)
            {
              break;
            }

            location = v23.location;
            v19 = effectiveRange->length + v23.length;
            effectiveRange->location = v23.location;
            effectiveRange->length = v19;
            v17 = location - 1;
            if (location - 1 <= a4)
            {
              result = 0;
              break;
            }
          }
        }
      }

      v21 = effectiveRange->location;
      length = effectiveRange->length;
      if (effectiveRange->location < a4)
      {
        length += effectiveRange->location - a4;
        effectiveRange->location = a4;
        effectiveRange->length = length;
        v21 = a4;
      }

      v22 = length + v21;
      if (v22 > v14)
      {
        effectiveRange->length = length + v14 - v22;
      }
    }
  }

  return result;
}

__CFString *VSCFAttributedStringCreateStringByBracketingAttributeWithString(const __CFAllocator *a1, CFAttributedStringRef aStr, const __CFString *a3, const __CFString *a4)
{
  Length = CFAttributedStringGetLength(aStr);
  String = CFAttributedStringGetString(aStr);
  if (Length >= 1)
  {
    v10 = String;
    Mutable = 0;
    v12 = 0;
    while (1)
    {
      effectiveRange = xmmword_272896B50;
      if (VSCFAttributedStringGetAttributeAndLongestEffectiveRange(aStr, v12, a3, v12, Length - v12, &effectiveRange))
      {
        v13 = effectiveRange.length < 1;
      }

      else
      {
        v13 = 1;
      }

      v14 = v13;
      if (Mutable)
      {
        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        Mutable = CFStringCreateMutable(a1, 0);
        if ((v14 & 1) == 0)
        {
LABEL_13:
          CFStringAppend(Mutable, a4);
          v16 = CFStringCreateWithSubstring(a1, v10, effectiveRange);
          CFStringAppend(Mutable, v16);
          CFRelease(v16);
          CFStringAppend(Mutable, a4);
          goto LABEL_14;
        }
      }

      v15 = CFStringCreateWithSubstring(a1, v10, effectiveRange);
      CFStringAppend(Mutable, v15);
      CFRelease(v15);
LABEL_14:
      v12 += effectiveRange.length;
      if (v12 >= Length)
      {
        return Mutable;
      }
    }
  }

  return 0;
}

void sub_27286A90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getTTSSpeechTransformTextWithLanguageSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!TextToSpeechLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __TextToSpeechLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279E4F030;
    v8 = 0;
    TextToSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = TextToSpeechLibraryCore_frameworkLibrary;
  if (!TextToSpeechLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *TextToSpeechLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"NSString+VSSpeechService.m" lineNumber:17 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "TTSSpeechTransformTextWithLanguage");
  *(*(a1[4] + 8) + 24) = result;
  getTTSSpeechTransformTextWithLanguageSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __TextToSpeechLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TextToSpeechLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

const __CFURL *VSVocalizerCopyPathForResources()
{
  result = _VSVocalizerCopyURLForFrameworkResources();
  if (result)
  {
    v1 = result;
    v2 = CFURLCopyFileSystemPath(result, kCFURLPOSIXPathStyle);
    CFRelease(v1);
    return v2;
  }

  return result;
}

const __CFURL *_VSVocalizerCopyURLForFrameworkResources()
{
  v0 = *MEMORY[0x277CBECE8];
  result = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], @"/System/Library/PrivateFrameworks/VoiceServices.framework/", kCFURLPOSIXPathStyle, 1u);
  if (result)
  {
    v2 = result;
    v3 = CFURLCreateCopyAppendingPathComponent(v0, result, @"TTSResources", 1u);
    CFRelease(v2);
    return v3;
  }

  return result;
}

CFStringRef VSVocalizerCopyPathForCommonResources()
{
  v0 = _VSVocalizerCopyURLForFrameworkResources();
  v1 = _VSVocalizerCopyURLForResourcesInDirectory(@"common", v0);
  if (!v1)
  {
    v3 = 0;
    if (!v0)
    {
      return v3;
    }

    goto LABEL_3;
  }

  v2 = v1;
  v3 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  CFRelease(v2);
  if (v0)
  {
LABEL_3:
    CFRelease(v0);
  }

  return v3;
}

const __CFURL *_VSVocalizerCopyURLForResourcesInDirectory(CFStringRef pathComponent, const __CFURL *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_6;
  }

  v2 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], a2, pathComponent, 1u);
  v3 = v2;
  if (v2)
  {
    memset(&v6, 0, sizeof(v6));
    if (!CFURLGetFileSystemRepresentation(v2, 1u, buffer, 1024) || stat(buffer, &v6))
    {
      CFRelease(v3);
LABEL_6:
      v3 = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

CFStringRef VSVocalizerCopyPathForBuiltInVoice(const __CFString *a1, void *a2)
{
  v4 = _VSVocalizerCopyURLForFrameworkResources();
  v5 = _VSVocalizerCopyURLForLocalizedResourcesFoundAtURL(a1, a2, v4);
  if (!v5)
  {
    v6 = _VSVocalizerCopyFallbackLanguageIdentifier(a1, a1);
    v5 = _VSVocalizerCopyURLForLocalizedResourcesFoundAtURL(v6, a2, v4);
    if (v6)
    {
      CFRelease(v6);
    }

    if (!v5)
    {
      v7 = 0;
      if (!v4)
      {
        return v7;
      }

      goto LABEL_6;
    }
  }

  v7 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
  CFRelease(v5);
  if (v4)
  {
LABEL_6:
    CFRelease(v4);
  }

  return v7;
}

const __CFURL *_VSVocalizerCopyURLForLocalizedResourcesFoundAtURL(CFStringRef pathComponent, void *a2, const __CFURL *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  v5 = 0;
  if (pathComponent)
  {
    if (a3)
    {
      v6 = _VSVocalizerCopyURLForResourcesInDirectory(pathComponent, a3);
      v5 = v6;
      if (a2)
      {
        if (v6)
        {
          *a2 = pathComponent;
          CFRetain(pathComponent);
        }
      }
    }
  }

  return v5;
}

const void *_VSVocalizerCopyFallbackLanguageIdentifier(const __CFString *a1, const __CFString *a2)
{
  v4 = _VSVocalizerCopyURLForFrameworkResources();
  v5 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], v4, @"language_fallbacks.plist", 0);
  if (!v5)
  {
    v8 = 0;
    if (!v4)
    {
      return v8;
    }

    goto LABEL_10;
  }

  v6 = v5;
  v7 = 0;
  if (CFStringFind(a1, @"-", 0).location == -1)
  {
    v7 = _VSCopyQualifiedLanguageIdentifierForLanguageCode(a1, a2);
  }

  if (a1 && !v7)
  {
    CFRetain(a1);
    v7 = a1;
  }

  v8 = _VSCopyFallbackLanguageIdentifierForLanguageIdentifier(v7, v6);
  CFRelease(v6);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v4)
  {
LABEL_10:
    CFRelease(v4);
  }

  return v8;
}

CFStringRef VSVocalizerCopyPathForLocalizedResources(const __CFString *a1, void *a2, const __CFString *a3, int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = _VSVocalizerCopyURLForFrameworkResources();
  v9 = VSVocalizerCopyURLForAssets();
  if (!a1)
  {
    goto LABEL_39;
  }

  if (!a4)
  {
    goto LABEL_60;
  }

  v10 = VSGetLogDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v31) = 0;
    _os_log_debug_impl(&dword_272850000, v10, OS_LOG_TYPE_DEBUG, "compact explicitly specified, look at framework asset first\n", &v31, 2u);
  }

  v11 = _VSVocalizerCopyURLForLocalizedResourcesFoundAtURL(a1, a2, v8);
  if (!v11)
  {
LABEL_60:
    if (VSVocalizerShouldUseAssetForLanguage(a1))
    {
      _VSVocalizerFinishInstallingAssetForLang(a1);
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        if (v9)
        {
          v28 = CFURLGetString(v9);
        }

        else
        {
          v28 = 0;
        }

        v31 = 138412290;
        v32 = v28;
        _os_log_debug_impl(&dword_272850000, v13, OS_LOG_TYPE_DEBUG, "Looking for the resources in %@\n", &v31, 0xCu);
      }

      v12 = _VSVocalizerCopyURLForLocalizedResourcesFoundAtURL(a1, a2, v9);
      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = 1;
    goto LABEL_14;
  }

  v12 = v11;
LABEL_10:
  if (_VSVocalizerIsValidAssetAtURLMigratingIfNeeded(v12))
  {
    goto LABEL_32;
  }

  v14 = 0;
LABEL_14:
  v15 = VSGetLogDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    if (v8)
    {
      v27 = CFURLGetString(v8);
    }

    else
    {
      v27 = 0;
    }

    v31 = 138412290;
    v32 = v27;
    _os_log_debug_impl(&dword_272850000, v15, OS_LOG_TYPE_DEBUG, "Looking for the resources in %@\n", &v31, 0xCu);
    if (v14)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v14 & 1) == 0)
  {
LABEL_16:
    CFRelease(v12);
  }

LABEL_17:
  v12 = _VSVocalizerCopyURLForLocalizedResourcesFoundAtURL(a1, a2, v8);
  if (v12)
  {
    goto LABEL_32;
  }

  v16 = _VSVocalizerCopyFallbackLanguageIdentifier(a1, a3);
  v17 = VSGetLogDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v31 = 138412290;
    v32 = v16;
    _os_log_debug_impl(&dword_272850000, v17, OS_LOG_TYPE_DEBUG, "Now looking for the fallback language: %@\n", &v31, 0xCu);
  }

  if (!VSVocalizerShouldUseAssetForLanguage(v16))
  {
    goto LABEL_24;
  }

  _VSVocalizerFinishInstallingAssetForLang(v16);
  v18 = VSGetLogDefault();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    if (v9)
    {
      v30 = CFURLGetString(v9);
    }

    else
    {
      v30 = 0;
    }

    v31 = 138412290;
    v32 = v30;
    _os_log_debug_impl(&dword_272850000, v18, OS_LOG_TYPE_DEBUG, "Looking for the resources in %@\n", &v31, 0xCu);
  }

  v19 = _VSVocalizerCopyURLForLocalizedResourcesFoundAtURL(v16, a2, v9);
  if (!v19 || (v12 = v19, !_VSVocalizerIsValidAssetAtURLMigratingIfNeeded(v19)))
  {
LABEL_24:
    v20 = VSGetLogDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      if (v8)
      {
        v29 = CFURLGetString(v8);
      }

      else
      {
        v29 = 0;
      }

      v31 = 138412290;
      v32 = v29;
      _os_log_debug_impl(&dword_272850000, v20, OS_LOG_TYPE_DEBUG, "Looking for the resources in %@\n", &v31, 0xCu);
    }

    v12 = _VSVocalizerCopyURLForLocalizedResourcesFoundAtURL(v16, a2, v8);
    if (!v12)
    {
      v21 = VSGetLogDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v31) = 0;
        _os_log_error_impl(&dword_272850000, v21, OS_LOG_TYPE_ERROR, "Can't find the resources anywhere!\n", &v31, 2u);
      }

      v12 = 0;
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v12)
  {
LABEL_32:
    v22 = VSGetLogDefault();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v26 = CFURLGetString(v12);
      v31 = 138412290;
      v32 = v26;
      _os_log_debug_impl(&dword_272850000, v22, OS_LOG_TYPE_DEBUG, "Found the resources here: %@\n", &v31, 0xCu);
    }

    v23 = CFURLCopyFileSystemPath(v12, kCFURLPOSIXPathStyle);
    CFRelease(v12);
    if (v8)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

LABEL_39:
  v23 = 0;
  if (v8)
  {
LABEL_35:
    CFRelease(v8);
  }

LABEL_36:
  if (v9)
  {
    CFRelease(v9);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

const __CFURL *VSVocalizerCopyURLForAssets()
{
  result = CFCopyHomeDirectoryURLForUser();
  if (result)
  {
    v1 = result;
    v2 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], result, @"Library/VoiceServices/Assets", 1u);
    CFRelease(v1);
    return v2;
  }

  return result;
}

uint64_t VSVocalizerShouldUseAssetForLanguage(_BOOL8 a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = _VSVocalizerCopyAssetLanguages();
    if (v2 && (v3 = v2, v8.length = CFArrayGetCount(v2), v8.location = 0, v4 = CFArrayContainsValue(v3, v8, v1), CFRelease(v3), v4))
    {
      return 1;
    }

    else
    {
      v5 = VSVocalizerCopyDefaultAssetLanguage();
      if (v5)
      {
        v6 = v5;
        v1 = CFStringCompare(v5, v1, 0) == kCFCompareEqualTo;
        CFRelease(v6);
      }

      else
      {
        return 0;
      }
    }
  }

  return v1;
}

void _VSVocalizerFinishInstallingAssetForLang(const __CFString *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = _VSVocalizerCopyTemporaryAssetURLForLang(a1);
    if (v2)
    {
      v3 = v2;
      memset(&v23, 0, sizeof(v23));
      if (!CFURLGetFileSystemRepresentation(v2, 1u, buffer, 1024))
      {
        goto LABEL_19;
      }

      if (stat(buffer, &v23))
      {
        goto LABEL_19;
      }

      v4 = _VSVocalizerCopyAssetURLForLang(a1);
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = v4;
      v6 = open(buffer, 32, *&v23.st_dev, *&v23.st_uid, *&v23.st_atimespec, *&v23.st_mtimespec, *&v23.st_ctimespec, *&v23.st_birthtimespec, *&v23.st_size, *&v23.st_blksize, *v23.st_qspare);
      if (v6 < 0)
      {
        v14 = VSGetLogDefault();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = *__error();
          LODWORD(v30[0].__pn_.__r_.__value_.__l.__data_) = 136315394;
          *(v30[0].__pn_.__r_.__value_.__r.__words + 4) = buffer;
          WORD2(v30[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&v30[0].__pn_.__r_.__value_.__r.__words[1] + 6) = v15;
          _os_log_debug_impl(&dword_272850000, v14, OS_LOG_TYPE_DEBUG, "Unable to lock temporary asset: %s; presumably peer was first - error: %d\n", v30, 0x12u);
        }

        goto LABEL_18;
      }

      v7 = v6;
      if (stat(buffer, &v23) < 0)
      {
        v16 = VSGetLogDefault();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_17;
        }

        v17 = *__error();
        LODWORD(v30[0].__pn_.__r_.__value_.__l.__data_) = 136315394;
        *(v30[0].__pn_.__r_.__value_.__r.__words + 4) = buffer;
        WORD2(v30[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&v30[0].__pn_.__r_.__value_.__r.__words[1] + 6) = v17;
        v18 = "Temporary asset: %s has moved; presumably peer was first - error: %d\n";
        v19 = v30;
        v20 = v16;
        v21 = 18;
      }

      else
      {
        _VSVocalizerDeleteAssetAtURL(v5);
        if (!CFURLGetFileSystemRepresentation(v5, 1u, v30, 1024))
        {
          goto LABEL_17;
        }

        rename(buffer, v30, v8);
        v10 = v9;
        v11 = VSGetLogDefault();
        v12 = v11;
        if (v10)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v13 = *__error();
            *buf = 136315650;
            v25 = buffer;
            v26 = 2080;
            v27 = v30;
            v28 = 1024;
            v29 = v13;
            _os_log_error_impl(&dword_272850000, v12, OS_LOG_TYPE_ERROR, "Couldn't move the temporary asset: %s to the real asset: %s - error: %d\n", buf, 0x1Cu);
          }

          goto LABEL_17;
        }

        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
LABEL_17:
          close(v7);
LABEL_18:
          CFRelease(v5);
LABEL_19:
          CFRelease(v3);
          goto LABEL_20;
        }

        *buf = 136315394;
        v25 = buffer;
        v26 = 2080;
        v27 = v30;
        v18 = "Moved the temporary asset: %s to the real asset: %s\n";
        v19 = buf;
        v20 = v12;
        v21 = 22;
      }

      _os_log_debug_impl(&dword_272850000, v20, OS_LOG_TYPE_DEBUG, v18, v19, v21);
      goto LABEL_17;
    }
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
}

BOOL _VSVocalizerIsValidAssetAtURLMigratingIfNeeded(const __CFURL *a1)
{
  v83 = *MEMORY[0x277D85DE8];
  if (_VSVocalizerIsValidAssetAtURL(a1))
  {
    goto LABEL_89;
  }

  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buffer[0].__pn_.__r_.__value_.__l.__data_) = 138412290;
    *(buffer[0].__pn_.__r_.__value_.__r.__words + 4) = CFURLGetString(a1);
    _os_log_debug_impl(&dword_272850000, v2, OS_LOG_TYPE_DEBUG, "Trying to migrate asset because it's not valid: %@\n", buffer, 0xCu);
  }

  v3 = _VSVocalizerCopyURLForFrameworkResources();
  if (!v3)
  {
    goto LABEL_88;
  }

  v4 = v3;
  PathComponent = CFURLCopyLastPathComponent(a1);
  if (PathComponent)
  {
    v6 = PathComponent;
    if (!_VSVocalizerStringIsALanguageString(PathComponent))
    {
      goto LABEL_86;
    }

    v7 = *MEMORY[0x277CBECE8];
    url = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], v4, v6, 1u);
    if (!url)
    {
      goto LABEL_86;
    }

    v8 = CFURLCopyLastPathComponent(a1);
    if (v8)
    {
      v9 = v8;
      if (_VSVocalizerStringIsALanguageString(v8))
      {
        _VSVocalizerFinishInstallingAssetForLang(v9);
      }

      CFRelease(v9);
    }

    if (!_VSVocalizerEngineFormatVersionMatchesAssetFormatVersionAtURL(a1))
    {
      v43 = VSGetLogDefault();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v44 = CFURLGetString(a1);
        LODWORD(buffer[0].__pn_.__r_.__value_.__l.__data_) = 138412290;
        *(buffer[0].__pn_.__r_.__value_.__r.__words + 4) = v44;
        _os_log_debug_impl(&dword_272850000, v43, OS_LOG_TYPE_DEBUG, "Deleting the asset located here: %@ because the format versions don't match\n", buffer, 0xCu);
      }

      _VSVocalizerDeleteAssetAtURL(a1);
      goto LABEL_85;
    }

    v10 = VSCopyContentsOfDirectoryAtURL(url, 0);
    if (v10)
    {
      v11 = v10;
      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        v13 = Count;
        v14 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
          v16 = CFURLCopyLastPathComponent(ValueAtIndex);
          if (v16)
          {
            break;
          }

LABEL_31:
          if (v13 == ++v14)
          {
            goto LABEL_35;
          }
        }

        v17 = v16;
        if (CFStringCompare(v16, @"broker.hdr", 0) == kCFCompareEqualTo)
        {
LABEL_30:
          CFRelease(v17);
          goto LABEL_31;
        }

        v18 = CFURLCreateCopyAppendingPathComponent(v7, url, v17, 0);
        v19 = CFURLCreateCopyAppendingPathComponent(v7, a1, v17, 0);
        v20 = v19;
        if (v18 && v19)
        {
          if (CFURLGetFileSystemRepresentation(v19, 0, buffer, 1024) && CFURLGetFileSystemRepresentation(v18, 0, v81, 1024))
          {
            if (symlink(v81, buffer))
            {
              if (*__error() != 17)
              {
                log = VSGetLogDefault();
                if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                {
                  streama = *__error();
                  v21 = __error();
                  v22 = strerror(*v21);
                  *buf = 67109890;
                  v74 = streama;
                  v75 = 2080;
                  v76 = v22;
                  v77 = 2080;
                  v78 = v81;
                  v79 = 2080;
                  v80 = buffer;
                  _os_log_error_impl(&dword_272850000, log, OS_LOG_TYPE_ERROR, "***ERROR*** There was an error (%d - %s) when trying to symlink %s to %s\n", buf, 0x26u);
                }
              }
            }

            else
            {
              CFStringGetCString(v17, buf, 1024, 0x8000100u);
              loga = VSGetLogDefault();
              if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
              {
                *v69 = 136315394;
                v70 = buf;
                v71 = 2080;
                v72 = buffer;
                _os_log_debug_impl(&dword_272850000, loga, OS_LOG_TYPE_DEBUG, "Symlinked %s to %s\n", v69, 0x16u);
              }
            }
          }
        }

        else if (!v18)
        {
          goto LABEL_28;
        }

        CFRelease(v18);
LABEL_28:
        if (v20)
        {
          CFRelease(v20);
        }

        goto LABEL_30;
      }

LABEL_35:
      CFRelease(v11);
    }

    v23 = CFURLCreateCopyAppendingPathComponent(v7, a1, @"broker.hdr", 0);
    v24 = CFURLCreateCopyAppendingPathComponent(v7, a1, @"broker.hdr.tmp", 0);
    v25 = CFURLCreateCopyAppendingPathComponent(v7, url, @"broker.hdr", 0);
    v26 = CFURLCreateCopyAppendingPathComponent(v7, a1, @"broker.hdr.asset", 0);
    v27 = v26;
    if (!v23 || !v24 || !v26 || !v25)
    {
      if (!v23)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    v28 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v26];
    v29 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v25];
    v30 = v29;
    if (v28 && v29)
    {
      theData = CFDataCreateMutableCopy(v7, 0, v29);
      if (theData)
      {
        v66 = v30;
        BytePtr = CFDataGetBytePtr(v28);
        v32 = v28;
        if (BytePtr)
        {
          v33 = BytePtr;
          Length = CFDataGetLength(v32);
          CFDataAppendBytes(theData, v33, Length);
        }

        v35 = CFWriteStreamCreateWithFile(v7, v24);
        v28 = v32;
        v30 = v66;
        if (v35)
        {
          logb = v23;
          v36 = v35;
          if (CFWriteStreamOpen(v35))
          {
            v60 = v28;
            MutableBytePtr = CFDataGetMutableBytePtr(theData);
            v38 = CFDataGetLength(theData);
            stream = v36;
            v39 = CFWriteStreamWrite(v36, MutableBytePtr, v38);
            v40 = VSGetLogDefault();
            v41 = v40;
            if (v39 < 1)
            {
              v42 = logb;
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v59 = *__error();
                v54 = __error();
                v55 = strerror(*v54);
                LODWORD(buffer[0].__pn_.__r_.__value_.__l.__data_) = 67109378;
                HIDWORD(buffer[0].__pn_.__r_.__value_.__r.__words[0]) = v59;
                LOWORD(buffer[0].__pn_.__r_.__value_.__r.__words[1]) = 2080;
                *(&buffer[0].__pn_.__r_.__value_.__r.__words[1] + 2) = v55;
                _os_log_error_impl(&dword_272850000, v41, OS_LOG_TYPE_ERROR, "***ERROR*** couldn't append broker header files (%d - %s)\n", buffer, 0x12u);
              }
            }

            else
            {
              v42 = logb;
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(buffer[0].__pn_.__r_.__value_.__l.__data_) = 0;
                _os_log_debug_impl(&dword_272850000, v41, OS_LOG_TYPE_DEBUG, "Successfully appended broker header files\n", buffer, 2u);
              }
            }

            CFWriteStreamClose(stream);
            v28 = v60;
            if (CFURLGetFileSystemRepresentation(v24, 1u, buffer, 1024))
            {
              if (v39 < 1)
              {
                unlink(buffer);
              }

              else
              {
                if (CFURLGetFileSystemRepresentation(v42, 1u, v81, 1024))
                {
                  rename(buffer, v81, v45);
                  if (v46 < 0)
                  {
                    v47 = VSGetLogDefault();
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                    {
                      v56 = *__error();
                      v57 = __error();
                      v58 = strerror(*v57);
                      *buf = 67109378;
                      v74 = v56;
                      v75 = 2080;
                      v76 = v58;
                      _os_log_error_impl(&dword_272850000, v47, OS_LOG_TYPE_ERROR, "***ERROR*** couldn't move broker header file to final location (%d - %s)\n", buf, 0x12u);
                    }
                  }
                }

                v28 = v60;
              }
            }

            v30 = v66;
            v36 = stream;
          }

          CFRelease(v36);
          v23 = logb;
        }

        CFRelease(theData);
      }
    }

    else if (!v28)
    {
LABEL_71:
      if (v30)
      {
        CFRelease(v30);
      }

LABEL_73:
      CFRelease(v23);
LABEL_74:
      if (v24)
      {
        CFRelease(v24);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      v48 = CFURLCreateCopyAppendingPathComponent(v7, a1, @".migrated", 0);
      if (v48)
      {
        v49 = v48;
        if (CFURLGetFileSystemRepresentation(v48, 1u, buffer, 1024))
        {
          v50 = open(buffer, 512, 384);
          if (v50 != -1)
          {
            close(v50);
          }
        }

        CFRelease(v49);
      }

LABEL_85:
      CFRelease(url);
LABEL_86:
      CFRelease(v6);
      goto LABEL_87;
    }

    CFRelease(v28);
    goto LABEL_71;
  }

LABEL_87:
  CFRelease(v4);
LABEL_88:
  if (_VSVocalizerIsValidAssetAtURL(a1))
  {
LABEL_89:
    result = 1;
    goto LABEL_90;
  }

  v53 = VSGetLogDefault();
  result = os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    LOWORD(buffer[0].__pn_.__r_.__value_.__l.__data_) = 0;
    _os_log_debug_impl(&dword_272850000, v53, OS_LOG_TYPE_DEBUG, "After migrating asset, it's still not valid -- sorry\n", buffer, 2u);
    result = 0;
  }

LABEL_90:
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

CFURLRef _VSVocalizerIsValidAssetAtURL(CFURLRef url)
{
  v8 = *MEMORY[0x277D85DE8];
  result = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], url, @".migrated", 0);
  if (result)
  {
    v3 = result;
    memset(&v6, 0, sizeof(v6));
    if (CFURLGetFileSystemRepresentation(result, 1u, buffer, 1024))
    {
      v4 = stat(buffer, &v6);
      CFRelease(v3);
      if (!v4)
      {
        result = (_VSVocalizerEngineFormatVersionMatchesAssetFormatVersionAtURL(url) != 0);
        goto LABEL_7;
      }
    }

    else
    {
      CFRelease(v3);
    }

    result = 0;
  }

LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _VSVocalizerEngineFormatVersionMatchesAssetFormatVersionAtURL(const __CFURL *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  cf = 0;
  v1 = _VSVocalizerCopyVoiceAssetFormatVersionFoundAtURL(a1, &cf);
  if (v1 && cf)
  {
    v2 = _VSVocalizerCopyVoiceEngineFormatVersionsForLanguage(cf);
    v3 = v2;
    if (!v2 || (v17.length = CFArrayGetCount(v2), v17.location = 0, CFArrayGetFirstIndexOfValue(v3, v17, v1) == -1))
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v1;
        _os_log_debug_impl(&dword_272850000, v8, OS_LOG_TYPE_DEBUG, "---> asset's version is %@\n", buf, 0xCu);
      }

      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
        *buf = 138412290;
        v15 = ValueAtIndex;
        _os_log_debug_impl(&dword_272850000, v9, OS_LOG_TYPE_DEBUG, "---> engine's version is %@\n", buf, 0xCu);
      }

      v4 = 0;
      v6 = 0;
      if (!v3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 1;
    }

    CFRelease(v3);
    v6 = v4;
LABEL_16:
    CFRelease(v1);
    v7 = v6;
    goto LABEL_17;
  }

  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_272850000, v5, OS_LOG_TYPE_ERROR, "Couldn't get asset's version and/or language\n", buf, 2u);
  }

  v6 = 0;
  v7 = 0;
  if (v1)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t _VSVocalizerDeleteAssetAtURL(const __CFURL *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = CFURLGetString(a1);
    _os_log_debug_impl(&dword_272850000, v2, OS_LOG_TYPE_DEBUG, "Deleting asset at url: %@\n", &v7, 0xCu);
  }

  v3 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], a1, @"voice_format_version.plist", 0);
  if (v3)
  {
    v4 = v3;
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    CFRelease(v4);
  }

  VSCFURLDeleteDirectoryContents(a1);
  result = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

const __CFDictionary *_VSVocalizerCopyVoiceAssetFormatVersionFoundAtURL(const __CFURL *a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  v3 = _VSVocalizerCopyFormatVersionInfoFoundAtURL(a1);
  if (v3)
  {
    v4 = v3;
    if (CFDictionaryContainsKey(v3, @"FormatVersion"))
    {
      Value = CFDictionaryGetValue(v4, @"FormatVersion");
      v6 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      if (a2)
      {
        if (CFDictionaryContainsKey(v4, @"Language"))
        {
          v7 = CFDictionaryGetValue(v4, @"Language");
          *a2 = v7;
          if (v7)
          {
            CFRetain(v7);
          }
        }
      }

      goto LABEL_25;
    }

    if (CFDictionaryGetCount(v4) < 1)
    {
      v6 = 0;
    }

    else
    {
      MEMORY[0x28223BE20]();
      v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      if (v8 >= 0x200)
      {
        v10 = 512;
      }

      else
      {
        v10 = v8;
      }

      bzero(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      CFDictionaryGetKeysAndValues(v4, v9, 0);
      v11 = *v9;
      if (!*v9 || (v12 = CFGetTypeID(*v9), v12 != CFStringGetTypeID()))
      {
LABEL_22:
        v6 = 0;
        goto LABEL_25;
      }

      v13 = CFDictionaryGetValue(v4, v11);
      v6 = v13;
      if (v13)
      {
        v14 = CFGetTypeID(v13);
        if (v14 == CFDictionaryGetTypeID())
        {
          v15 = CFDictionaryGetValue(v6, @"NotForSiri");
          if (!v15 || !CFBooleanGetValue(v15))
          {
            v18 = CFDictionaryGetValue(v6, @"FormatVersion");
            v6 = v18;
            if (v18)
            {
              CFRetain(v18);
            }

            if (a2)
            {
              *a2 = v11;
              CFRetain(v11);
            }

            goto LABEL_25;
          }
        }

        goto LABEL_22;
      }
    }

LABEL_25:
    CFRelease(v4);
    goto LABEL_26;
  }

  v6 = 0;
LABEL_26:
  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

CFArrayRef _VSVocalizerCopyVoiceEngineFormatVersionsForLanguage(const void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  pthread_once(&_VSVocalizerCopyVoiceEngineFormatVersionsForLanguage___InitializeVoiceFormatVersionOnce, _VSVocalizerInitializeVoiceEngineFormatVersions);
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!__VoiceEngineFormatVersions)
  {
    v9 = VSGetLogDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      v6 = "VoiceEngineFormatVersions hasn't been initialized, voices may not be compatible\n";
      v7 = v9;
      v8 = 2;
      goto LABEL_12;
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(__VoiceEngineFormatVersions, a1);
  if (!Value || (v3 = CFDictionaryGetValue(Value, @"FormatVersion")) == 0 || (result = CFStringCreateArrayBySeparatingStrings(0, v3, @",")) == 0)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = a1;
      v6 = "Couldn't get the engine format version for language %{public}@\n";
      v7 = v5;
      v8 = 12;
LABEL_12:
      _os_log_error_impl(&dword_272850000, v7, OS_LOG_TYPE_ERROR, v6, &v11, v8);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void _VSVocalizerInitializeVoiceEngineFormatVersions()
{
  v0 = _VSVocalizerCopyURLForFrameworkResources();
  if (v0)
  {
    v1 = v0;
    __VoiceEngineFormatVersions = _VSVocalizerCopyFormatVersionInfoFoundAtURL(v0);
    if (!__VoiceEngineFormatVersions)
    {
      v2 = VSGetLogDefault();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *v3 = 0;
        _os_log_error_impl(&dword_272850000, v2, OS_LOG_TYPE_ERROR, "Couldn't initialize the engine voice format versions\n", v3, 2u);
      }

      __VoiceEngineFormatVersions = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    CFRelease(v1);
  }
}

const void *_VSVocalizerCopyFormatVersionInfoFoundAtURL(CFURLRef url)
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], url, @"voice_format_version.plist", 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFReadStreamCreateWithFile(v1, v2);
  if (v4)
  {
    v5 = v4;
    if (CFReadStreamOpen(v4))
    {
      v6 = CFPropertyListCreateWithStream(v1, v5, 0, 0, 0, 0);
      v7 = v6;
      if (v6)
      {
        v8 = CFGetTypeID(v6);
        if (v8 != CFDictionaryGetTypeID())
        {
          CFRelease(v7);
          v7 = 0;
        }
      }

      CFReadStreamClose(v5);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v3);
  return v7;
}

CFURLRef _VSVocalizerCopyTemporaryAssetURLForLang(uint64_t a1)
{
  v2 = VSVocalizerCopyURLForAssets();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@%@", a1, @".tmp");
  if (v5)
  {
    v6 = v5;
    v7 = CFURLCreateCopyAppendingPathComponent(v4, v3, v5, 1u);
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v3);
  return v7;
}

const __CFURL *_VSVocalizerCopyAssetURLForLang(const __CFString *a1)
{
  result = VSVocalizerCopyURLForAssets();
  if (result)
  {
    v3 = result;
    v4 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], result, a1, 1u);
    CFRelease(v3);
    return v4;
  }

  return result;
}

const __CFArray *_VSVocalizerCopyAssetLanguages()
{
  v29 = *MEMORY[0x277D85DE8];
  v0 = VSVocalizerCopyURLForAssets();
  if (!v0)
  {
    Mutable = 0;
    goto LABEL_39;
  }

  v1 = v0;
  cf = 0;
  v2 = VSCopyContentsOfDirectoryAtURL(v0, &cf);
  v3 = v2;
  if (cf)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (v4)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      Code = cf;
      if (cf)
      {
        Code = CFErrorGetCode(cf);
      }

      *buf = 134217984;
      v28 = Code;
      _os_log_debug_impl(&dword_272850000, v5, OS_LOG_TYPE_DEBUG, "Couldn't get the contents of the assets directory (error %ld)\n", buf, 0xCu);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    Mutable = 0;
    if (!v3)
    {
      goto LABEL_38;
    }

LABEL_37:
    CFRelease(v3);
    goto LABEL_38;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    goto LABEL_37;
  }

  v8 = Count;
  v25 = v1;
  for (i = 0; i != v8; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
    if (!ValueAtIndex)
    {
      continue;
    }

    v11 = ValueAtIndex;
    v12 = _VSVocalizerCopyLangFromTemporaryAssetURL(ValueAtIndex);
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = v12;
    v14 = _VSVocalizerCopyTemporaryAssetURLForLang(v12);
    if (!v14)
    {
      CFRelease(v13);
LABEL_27:
      PathComponent = CFURLCopyLastPathComponent(v11);
      goto LABEL_28;
    }

    v15 = v14;
    v16 = CFURLCopyAbsoluteURL(v11);
    v17 = CFURLCopyAbsoluteURL(v15);
    v18 = v17;
    if (v16 && v17)
    {
      v19 = CFEqual(v16, v17) == 0;
    }

    else
    {
      v19 = 1;
      if (!v16)
      {
        goto LABEL_24;
      }
    }

    CFRelease(v16);
LABEL_24:
    if (v18)
    {
      CFRelease(v18);
    }

    CFRelease(v15);
    CFRelease(v13);
    if (v19)
    {
      goto LABEL_27;
    }

    PathComponent = _VSVocalizerCopyLangFromTemporaryAssetURL(v11);
LABEL_28:
    v21 = PathComponent;
    if (PathComponent)
    {
      if (_VSVocalizerStringIsALanguageString(PathComponent))
      {
        v30.length = CFArrayGetCount(Mutable);
        v30.location = 0;
        if (!CFArrayContainsValue(Mutable, v30, v21))
        {
          CFArrayAppendValue(Mutable, v21);
        }
      }

      CFRelease(v21);
    }
  }

  v1 = v25;
  if (v3)
  {
    goto LABEL_37;
  }

LABEL_38:
  CFRelease(v1);
LABEL_39:
  v22 = *MEMORY[0x277D85DE8];
  return Mutable;
}

const __CFString *VSVocalizerCopyDefaultAssetLanguage()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = VSPreferencesCopySpokenLanguageIdentifier();
  v1 = _VSVocalizerCopyURLForFrameworkResources();
  v2 = v1;
  if (v0 && v1 && (v3 = _VSVocalizerCopyURLForResourcesInDirectory(v0, v1)) != 0)
  {
    v4 = v3;
    CFRelease(v2);
    CFRelease(v4);
    v5 = v0;
  }

  else
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v0;
      _os_log_debug_impl(&dword_272850000, v6, OS_LOG_TYPE_DEBUG, "No TTS resources for asset. Trying fallback language for %@", &v11, 0xCu);
    }

    v7 = _VSVocalizerCopyFallbackLanguageIdentifier(v0, 0);
    if (v7)
    {
      v5 = v7;
      if (v0)
      {
        CFRelease(v0);
      }

      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_debug_impl(&dword_272850000, v8, OS_LOG_TYPE_DEBUG, "Using asset fallback language %@", &v11, 0xCu);
      }
    }

    else
    {
      v5 = v0;
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

const __CFString *_VSVocalizerCopyLangFromTemporaryAssetURL(CFURLRef url)
{
  v1 = CFURLCreateCopyDeletingPathExtension(*MEMORY[0x277CBECE8], url);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  PathComponent = CFURLCopyLastPathComponent(v1);
  v4 = PathComponent;
  if (PathComponent && !_VSVocalizerStringIsALanguageString(PathComponent))
  {
    CFRelease(v4);
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

BOOL VSVocalizerAssetExistsForLanguage(const __CFString *a1)
{
  v2 = _VSVocalizerCopyAssetLanguages();
  v3 = v2;
  v4 = 0;
  if (!a1 || !v2)
  {
    goto LABEL_10;
  }

  Count = CFArrayGetCount(v2);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v7 - 1);
      if (ValueAtIndex)
      {
        v4 = CFStringCompare(a1, ValueAtIndex, 0) == kCFCompareEqualTo;
      }

      else
      {
        v4 = 0;
      }

      if (v7 >= v6)
      {
        break;
      }

      ++v7;
    }

    while (!v4);
LABEL_10:
    if (!v3)
    {
      return v4;
    }

    goto LABEL_13;
  }

  v4 = 0;
LABEL_13:
  CFRelease(v3);
  return v4;
}

void VSVocalizerDeleteAssetForLanguage(const __CFString *a1)
{
  if (a1)
  {
    if (!VSVocalizerShouldUseAssetForLanguage(a1) && _VSVocalizerStringIsALanguageString(a1))
    {
      _VSVocalizerFinishInstallingAssetForLang(a1);
      v2 = _VSVocalizerCopyAssetURLForLang(a1);
      if (v2)
      {
        v3 = v2;
        _VSVocalizerDeleteAssetAtURL(v2);

        CFRelease(v3);
      }
    }
  }
}

const __CFURL *VSVocalizerCopyPathForTones()
{
  result = _VSVocalizerCopyURLForTones();
  if (result)
  {
    v1 = result;
    v2 = CFURLCopyFileSystemPath(result, kCFURLPOSIXPathStyle);
    CFRelease(v1);
    return v2;
  }

  return result;
}

const __CFURL *_VSVocalizerCopyURLForTones()
{
  result = _VSVocalizerCopyURLForFrameworkResources();
  if (result)
  {
    v1 = result;
    v2 = _VSVocalizerCopyURLForResourcesInDirectory(@"Tones", result);
    CFRelease(v1);
    return v2;
  }

  return result;
}

const void *VSVocalizerCopyFileNameForToneName(const void *a1)
{
  pthread_once(&VSVocalizerCopyFileNameForToneName___InitializeTonePathsOnce, _VSVocalizerInitializeToneDictionary);
  if (!__ToneMapping)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(__ToneMapping, a1);
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v3;
}

void _VSVocalizerInitializeToneDictionary()
{
  v0 = _VSVocalizerCopyURLForTones();
  v1 = *MEMORY[0x277CBECE8];
  __ToneMapping = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v0)
  {
    v2 = VSCopyContentsOfDirectoryAtURL(v0, 0);
    if (v2)
    {
      v3 = v2;
      Count = CFArrayGetCount(v2);
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
          if (ValueAtIndex)
          {
            break;
          }

LABEL_15:
          if (v5 == ++v6)
          {
            goto LABEL_16;
          }
        }

        v8 = ValueAtIndex;
        PathComponent = CFURLCopyLastPathComponent(ValueAtIndex);
        v10 = CFURLCopyPathExtension(v8);
        if (v10 && PathComponent)
        {
          if (CFStringFind(PathComponent, v10, 0xCuLL).location != -1)
          {
            Length = CFStringGetLength(PathComponent);
            v15.length = Length + ~CFStringGetLength(v10);
            v15.location = 0;
            v12 = CFStringCreateWithSubstring(v1, PathComponent, v15);
            if (v12)
            {
              v13 = v12;
              CFDictionarySetValue(__ToneMapping, v12, PathComponent);
              CFRelease(v13);
            }
          }
        }

        else if (!PathComponent)
        {
          goto LABEL_13;
        }

        CFRelease(PathComponent);
LABEL_13:
        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_15;
      }

LABEL_16:
      CFRelease(v3);
    }

    CFRelease(v0);
  }
}

CFDictionaryRef VSVocalizerCopyVoiceEngineFormatVersions()
{
  pthread_once(&_VSVocalizerCopyVoiceEngineFormatVersionsForLanguage___InitializeVoiceFormatVersionOnce, _VSVocalizerInitializeVoiceEngineFormatVersions);
  v0 = __VoiceEngineFormatVersions;
  if (__VoiceEngineFormatVersions)
  {
    v1 = *MEMORY[0x277CBECE8];

    return CFDictionaryCreateCopy(v1, v0);
  }

  else
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_272850000, v3, OS_LOG_TYPE_ERROR, "VoiceEngineFormatVersions hasn't been initialized, voices may not be compatible\n", v4, 2u);
    }

    return 0;
  }
}

const void *VSVocalizerCopyVoiceEngineFormatVersionForLanguage(const void *a1)
{
  v1 = _VSVocalizerCopyVoiceEngineFormatVersionsForLanguage(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
  CFRetain(ValueAtIndex);
  CFRelease(v2);
  return ValueAtIndex;
}

uint64_t VSCreateDirectory(const __CFURL *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  memset(&v3, 0, sizeof(v3));
  result = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1023);
  if (result)
  {
    buffer[1023] = 0;
    mkdir(buffer, 0x1C0u);
    result = stat(buffer, &v3) == 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VSCreateURLAndDirectory(CFURLRef url, CFStringRef pathComponent, const __CFURL **a3)
{
  if (!url)
  {
    return 0;
  }

  v4 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], url, pathComponent, 1u);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = VSCreateDirectory(v4);
  v7 = v6;
  if (a3 && v6)
  {
    *a3 = v5;
    return 1;
  }

  else
  {
    CFRelease(v5);
  }

  return v7;
}

uint64_t VSDirectoryExistsAtURL(uint64_t result, int a2, _BYTE *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  if (result)
  {
    memset(&v7, 0, sizeof(v7));
    result = CFURLGetFileSystemRepresentation(result, 1u, buffer, 1024);
    if (result)
    {
      if (stat(buffer, &v7))
      {
        if (a2 == 1)
        {
          v5 = mkdir(buffer, 0x1C0u);
          result = v5 == 0;
          if (a3 && !v5)
          {
            result = 1;
            *a3 = 1;
          }
        }

        else
        {
          result = 0;
        }
      }

      else
      {
        result = 1;
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL VSCreateTemporaryDirectory(const void *a1, CFStringRef theString, CFURLRef *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(theString);
  v7 = v18 - ((MEMORY[0x28223BE20]() + 1040) & 0xFFFFFFFFFFFFFFF0);
  v8 = CFGetAllocator(a1);
  v9 = v8;
  if (a3)
  {
    *a3 = 0;
  }

  v10 = CFURLCreateCopyAppendingPathComponent(v8, a1, theString, 1u);
  if (v10)
  {
    v11 = v10;
    if (CFURLGetFileSystemRepresentation(v10, 1u, v7, Length + 1025))
    {
      v12 = mkdtemp(v7);
      v13 = v12 != 0;
      if (a3 && v12)
      {
        v14 = CFStringCreateWithFileSystemRepresentation(v9, v12);
        if (v14)
        {
          v15 = v14;
          v13 = 1;
          *a3 = CFURLCreateWithFileSystemPath(v9, v14, kCFURLPOSIXPathStyle, 1u);
          CFRelease(v15);
        }

        else
        {
          v13 = 1;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v11);
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

void VSCFURLDeleteDirectoryContents(uint64_t a1)
{
  v1 = VSCopyContentsOfDirectoryAtURL(a1, 0);
  if (v1)
  {
    v2 = v1;
    v4.length = CFArrayGetCount(v1);
    v4.location = 0;
    CFArrayApplyFunction(v2, v4, _DeleteURL, 0);

    CFRelease(v2);
  }
}

id VSCopyContentsOfDirectoryAtURL(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_autoreleasePoolPush();
  v19 = 0;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v19];
  if (a2)
  {
    *a2 = v19;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [objc_msgSend(*(*(&v15 + 1) + 8 * v11) "path")];
        [v4 addObject:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", v12)}];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

void _DeleteURL(const __CFURL *a1)
{
  if (CFURLHasDirectoryPath(a1))
  {
    PathComponent = CFURLCopyLastPathComponent(a1);
    if (PathComponent)
    {
      v3 = PathComponent;
      if (CFStringCompare(PathComponent, @".", 0) == kCFCompareEqualTo || CFStringCompare(v3, @"..", 0) == kCFCompareEqualTo)
      {
        VSCFURLDeleteDirectoryContents(a1);
        [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      }

      CFRelease(v3);
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];

    [v4 removeItemAtURL:a1 error:0];
  }
}

uint64_t VSCreateDataFromContentsOfURL(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEA90]);

  return [v2 initWithContentsOfURL:a1];
}

id VSCopyModificationDateForFileAtURL(void *a1)
{
  v1 = [objc_msgSend(a1 "filePathURL")];
  v2 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v3 = [v2 objectForKey:*MEMORY[0x277CCA150]];

  return v3;
}

void sub_272870BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272871350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t AudioConverterFillComplexBuffer_BlockInvoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x2743CEF70](a5);
  v9 = v8[2](v8, a2, a3, a4);

  return v9;
}

__CFString *VSLoggingStringForUtterance(void *a1, int a2)
{
  v3 = a1;
  if (![v3 length] || objc_msgSend(v3, "isEqualToString:", @" "))
  {
    v4 = v3;
LABEL_4:
    v5 = v4;
    goto LABEL_5;
  }

  if (a2)
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"\x1B" withString:@"\\e"];
    goto LABEL_4;
  }

  v5 = @"<private>";
LABEL_5:

  return v5;
}

unint64_t _AddAmbiguousKeywords(uint64_t a1, void *a2, void *a3)
{
  result = [a2 count];
  if (result >= 2)
  {

    return [a3 addObjectsFromArray:a2];
  }

  return result;
}

uint64_t _RecognitionCompletedCallBack(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    return [a4 _handleRecognitionCompleted:result withResults:a2 error:a3];
  }

  return result;
}

uint64_t _RecognitionStartedCallBack(uint64_t result, void *a2)
{
  if (a2)
  {
    return [a2 _handleRecognitionStarted:result];
  }

  return result;
}

uint64_t _RecognitionPreparedCallBack(uint64_t result, void *a2)
{
  if (a2)
  {
    return [a2 _handleRecognitionPrepared:result];
  }

  return result;
}

void _AddDataProviderToArrayFromInfo(uint64_t a1, CFStringRef theString, id *a3)
{
  v10 = 0;
  aClassName = 0;
  if (theString && a1 && a3 && VSRecognitionPluginStringCopyInfo(theString, &v10, &aClassName))
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithPath:{-[__CFURL path](v10, "path")}];
    if (v5)
    {
      [v5 load];
      v6 = NSClassFromString(aClassName);
      if (v6)
      {
        v7 = v6;
        if ([(objc_class *)v6 conformsToProtocol:&unk_2881EE598])
        {
          if ([(objc_class *)v7 instancesRespondToSelector:sel_beginReportingChanges]&& [(objc_class *)v7 instancesRespondToSelector:sel_stopReportingChanges])
          {
            v8 = objc_alloc_init(v7);
            v9 = *a3;
            if (!*a3)
            {
              v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
              *a3 = v9;
            }

            [v9 setObject:v8 forKey:{a1, v10}];
          }
        }
      }
    }
  }
}

id VSRecognitionModelDataProviderChanged(uint64_t a1, uint64_t a2)
{
  result = +[VSCacheUpdateListener sharedListenerIfExists];
  if (result)
  {

    return [result performUpdateForModelIdentifier:a1 classIdentifier:a2];
  }

  return result;
}

CFStringRef VSCreate4CCString(unsigned int a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = bswap32(a1);
  v9 = v2;
  if ((v2 & 0x80) != 0)
  {
    if (!__maskrune(v2, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * v2 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v3 = v2 >> 8;
  if ((v2 & 0x8000) != 0)
  {
    if (!__maskrune(v3, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * v3 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v4 = v2 << 8 >> 24;
  if ((v2 & 0x800000) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_13:
    v5 = v2 >> 24;
    if (v2 < 0)
    {
      if (!__maskrune(v5, 0x40000uLL))
      {
        goto LABEL_17;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    v10 = 39;
    __str = 39;
    goto LABEL_20;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x40000) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (a1 + 199999 > 0x61A7E)
  {
    snprintf(&__str, 0x10uLL, "0x%x");
  }

  else
  {
    snprintf(&__str, 0x10uLL, "%d");
  }

LABEL_20:
  result = CFStringCreateWithCString(0, &__str, 0x600u);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VSRecognitionModelCopyResourceURLForLanguage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFString *a5)
{
  result = _VSRecognitionModelCopyResourceURLForLanguageString(a1, a2, a3, a4, a5);
  if (!result)
  {
    result = _VSCopyLanguageCodeFromLanguageIdentifier(a5);
    if (result)
    {
      v11 = result;
      v12 = _VSRecognitionModelCopyResourceURLForLanguageString(a1, a2, a3, a4, result);
      CFRelease(v11);
      return v12;
    }
  }

  return result;
}

uint64_t _VSRecognitionModelCopyResourceURLForLanguageString(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%@", a2, a5];
  v9 = [a1 pathForResource:v8 ofType:a3 inDirectory:a4];
  if ([v9 length])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

const __CFString *VSRecognitionModelCopyLanguageResourceURL(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = VSPreferencesCopySpokenLanguageIdentifier();
  if (result)
  {
    v9 = result;
    v10 = VSRecognitionModelCopyResourceURLForLanguage(a1, a2, a3, a4, result);
    CFRelease(v9);
    return v10;
  }

  return result;
}

uint64_t VSRecognitionModelCopyResourceURL(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = VSPreferencesCopySpokenLanguageIdentifierArray();
  if (v6)
  {
    v7 = v6;
    v8 = CFBundleCopyLocalizationsForPreferences([a1 localizations], v6);
    if (v8)
    {
      v9 = v8;
      if ([(__CFArray *)v8 count])
      {
        v10 = [a1 pathForResource:a2 ofType:a3 inDirectory:0 forLocalization:{-[__CFArray objectAtIndex:](v9, "objectAtIndex:", 0)}];
        if (v10)
        {
          v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v10];
        }
      }

      else
      {
        v10 = 0;
      }

      CFRelease(v7);
      if (v10)
      {
        return v10;
      }
    }

    else
    {
      CFRelease(v7);
    }
  }

  v11 = [a1 pathForResource:a2 ofType:a3 inDirectory:0];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277CBEBC0]);

  return [v13 initFileURLWithPath:v12];
}

void sub_27287933C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27287C034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_27287C26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFAudioPowerUpdaterClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __AssistantServicesLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_279E4F728;
    v9 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"VSSpeechSynthesizer.m" lineNumber:47 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("AFAudioPowerUpdater");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAFAudioPowerUpdaterClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"VSSpeechSynthesizer.m" lineNumber:48 description:{@"Unable to find class %s", "AFAudioPowerUpdater"}];

LABEL_10:
    __break(1u);
  }

  getAFAudioPowerUpdaterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __Block_byref_object_copy__2748(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_272881330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void soft_BYSetupAssistantNeedsToRun()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  v7 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  if (!getBYSetupAssistantNeedsToRunSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke;
    v3[3] = &unk_279E4F748;
    v3[4] = &v4;
    __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL soft_BYSetupAssistantNeedsToRun(void)"];
    [v1 handleFailureInFunction:v2 file:@"VSPreferencesInterface.m" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_2728860F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SetupAssistantLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279E4F768;
    v8 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = SetupAssistantLibraryCore_frameworkLibrary;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SetupAssistantLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"VSPreferencesInterface.m" lineNumber:23 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(a1[4] + 8) + 24) = result;
  getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272886F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728880B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272888274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272888618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2728887D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272888A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3142(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_272888C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272888F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27288A2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27288EDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27288F218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272890058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void remote_VSRecognitionPrepareOrBegin(mach_port_t a1, int a2, int a3, char *src, const char *a5, uint64_t a6, int a7, uint64_t a8, double a9, int a10, char a11, char a12, char a13, _BYTE *a14)
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = 0;
  memset(v41, 0, 432);
  v33 = 0x13000000000000;
  memset(&reply_port, 0, sizeof(reply_port));
  v31 = 3;
  v32 = a2;
  v34 = a6;
  v35 = 16777472;
  v36 = a7;
  v37 = a8;
  v38 = 16777472;
  v39 = a10;
  v40 = *MEMORY[0x277D85EF8];
  LODWORD(v41[0]) = a3;
  if (MEMORY[0x28223BE50])
  {
    v18 = mig_strncpy_zerofill(v41 + 12, src, 1024);
  }

  else
  {
    v18 = mig_strncpy(v41 + 12, src, 1024);
  }

  DWORD1(v41[0]) = 0;
  DWORD2(v41[0]) = v18;
  v19 = (v18 + 3) & 0xFFFFFFFC;
  v20 = &reply_port + v19 - 1024;
  v21 = &v41[1] + v19 + 4;
  if (MEMORY[0x28223BE50])
  {
    v22 = mig_strncpy_zerofill(v21, a5, 1024);
  }

  else
  {
    v22 = mig_strncpy(v21, a5, 1024);
  }

  v23 = v19 + 128;
  *(v20 + 280) = v22;
  *(v20 + 279) = 0;
  v24 = (v22 + 3) & 0xFFFFFFFC;
  v25 = &v20[v24];
  *&v20[v24 + 1124] = a9;
  *(v25 + 283) = a7;
  *(v25 + 284) = a10;
  v25[1140] = a11;
  v25[1143] = 0;
  *&v20[v24 + 1141] = 0;
  v25[1144] = a12;
  v25[1147] = 0;
  *&v20[v24 + 1145] = 0;
  v25[1148] = a13;
  v25[1151] = 0;
  *&v20[v24 + 1149] = 0;
  v26 = mig_get_reply_port();
  reply_port.msgh_remote_port = a1;
  reply_port.msgh_local_port = v26;
  reply_port.msgh_bits = -2147478253;
  *&reply_port.msgh_voucher_port = 0xF54BE00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&reply_port);
    msgh_local_port = reply_port.msgh_local_port;
  }

  else
  {
    msgh_local_port = v26;
  }

  v28 = mach_msg(&reply_port, 3, v23 + v24, 0x30u, msgh_local_port, 0, 0);
  if ((v28 - 268435458) <= 0xE && ((1 << (v28 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
  }

  else if (v28)
  {
    mig_dealloc_reply_port(reply_port.msgh_local_port);
  }

  else if (reply_port.msgh_id != 1004834 || (reply_port.msgh_bits & 0x80000000) != 0 || reply_port.msgh_size != 40 || reply_port.msgh_remote_port || v33)
  {
    mach_msg_destroy(&reply_port);
  }

  else
  {
    *a14 = BYTE4(v33);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void _XPostNotification(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 4);
  if (v5 - 1089 < 0xFFFFFBFF)
  {
    goto LABEL_3;
  }

  if (*(a1 + 39) != 1)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 56);
  if (v6 > 0x400)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return;
  }

  v3 = -304;
  if (v5 - 64 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 64)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 40);
  if (v8 != *(a1 + v7 + 60))
  {
LABEL_16:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x43C)
  {
    v9 = 1084;
  }

  else
  {
    v9 = v5;
  }

  if (!memchr((a1 + 60), 0, v9 - 60))
  {
    goto LABEL_2;
  }

  client_VSPostNotification((a1 + 60), *(a1 + 28), v8);
  *(a2 + 32) = 0;
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
}

void (*VoiceServicesClient_server_routine(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == 1004734)
  {
    return _XPostNotification;
  }

  else
  {
    return 0;
  }
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
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