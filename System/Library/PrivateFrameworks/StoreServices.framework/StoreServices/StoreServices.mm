void sub_1D48BC9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SSDownloadKindsContainsBookToShimKind(void *a1)
{
  if ([a1 containsObject:@"ebook"])
  {
    return 1;
  }

  return [a1 containsObject:@"book"];
}

xpc_object_t SSXPCCreateXPCObjectFromCFObject(__CFString *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFNullGetTypeID())
  {

    return xpc_null_create();
  }

  if (v2 == CFBooleanGetTypeID())
  {
    v4 = CFBooleanGetValue(a1) != 0;

    return xpc_BOOL_create(v4);
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(__CFString *)a1 xpcData];

    return xpc_retain(v5);
  }

  if (v2 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);

    return xpc_data_create(BytePtr, Length);
  }

  if (v2 != CFDateGetTypeID())
  {
    if (v2 == CFUUIDGetTypeID())
    {
      uuid = CFUUIDGetUUIDBytes(a1);
      return xpc_uuid_create(&uuid.byte0);
    }

    else
    {
      if (v2 == CFStringGetTypeID())
      {
        v11 = CFStringGetLength(a1);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v11 + 1, 0x8000100u);
        if (MaximumSizeForEncoding != -1)
        {
          v13 = MaximumSizeForEncoding;
          v14 = malloc_type_malloc(MaximumSizeForEncoding, 0xDFEC6CCCuLL);
          if (v14)
          {
            v15 = v14;
            if (CFStringGetCString(a1, v14, v13, 0x8000100u))
            {
              v9 = xpc_string_create(v15);
            }

            else
            {
              v9 = 0;
            }

            free(v15);
            return v9;
          }
        }

        return 0;
      }

      if (v2 != CFNumberGetTypeID())
      {
        if (v2 == CFArrayGetTypeID())
        {
          v9 = xpc_array_create(0, 0);
          if (v9)
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v16 = [(__CFString *)a1 countByEnumeratingWithState:&v41 objects:v47 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v42;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v42 != v18)
                  {
                    objc_enumerationMutation(a1);
                  }

                  v20 = SSXPCCreateXPCObjectFromCFObject(*(*(&v41 + 1) + 8 * i));
                  if (v20)
                  {
                    v21 = v20;
                    xpc_array_append_value(v9, v20);
                    xpc_release(v21);
                  }
                }

                v17 = [(__CFString *)a1 countByEnumeratingWithState:&v41 objects:v47 count:16];
              }

              while (v17);
            }
          }

          return v9;
        }

        if (v2 == CFURLGetTypeID())
        {
          v22 = CFURLCopyAbsoluteURL(a1);
          v23 = CFURLGetString(v22);
          if (v23)
          {
            v9 = SSXPCCreateXPCObjectFromCFObject(v23);
          }

          else
          {
            v9 = 0;
          }

          CFRelease(v22);
          return v9;
        }

        if (v2 == CFDictionaryGetTypeID())
        {
          v9 = xpc_dictionary_create(0, 0, 0);
          if (v9)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v24 = [(__CFString *)a1 countByEnumeratingWithState:&v37 objects:v46 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v38;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v38 != v26)
                  {
                    objc_enumerationMutation(a1);
                  }

                  v28 = *(*(&v37 + 1) + 8 * j);
                  v29 = CFStringGetLength(v28);
                  v30 = CFStringGetMaximumSizeForEncoding(v29 + 1, 0x8000100u);
                  if (v30 != -1)
                  {
                    v31 = v30;
                    v32 = malloc_type_malloc(v30, 0x9B60134EuLL);
                    if (v32)
                    {
                      v33 = v32;
                      if (CFStringGetCString(v28, v32, v31, 0x8000100u))
                      {
                        Value = CFDictionaryGetValue(a1, v28);
                        v35 = SSXPCCreateXPCObjectFromCFObject(Value);
                        if (v35)
                        {
                          v36 = v35;
                          xpc_dictionary_set_value(v9, v33, v35);
                          xpc_release(v36);
                        }
                      }

                      free(v33);
                    }
                  }
                }

                v25 = [(__CFString *)a1 countByEnumeratingWithState:&v37 objects:v46 count:16];
              }

              while (v25);
            }
          }

          return v9;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          return 0;
        }

        return [(__CFString *)a1 copyXPCEncoding];
      }

      if (CFNumberIsFloatType(a1))
      {
        *&uuid.byte0 = 0;
        if (!CFNumberGetValue(a1, kCFNumberDoubleType, &uuid))
        {
          return 0;
        }

        return xpc_double_create(*&uuid.byte0);
      }

      else
      {
        *&uuid.byte0 = 0;
        if (!CFNumberGetValue(a1, kCFNumberSInt64Type, &uuid))
        {
          return 0;
        }

        return xpc_int64_create(*&uuid.byte0);
      }
    }
  }

  v8 = MEMORY[0x1DA6DE860](a1) + *MEMORY[0x1E695E468];
  if (fabs(v8) > 9223372040.0)
  {
    return 0;
  }

  return xpc_date_create((v8 * 1000000000.0));
}

void SSXPCDictionarySetCFObject(void *a1, const char *a2, __CFString *a3)
{
  v5 = SSXPCCreateXPCObjectFromCFObject(a3);
  if (v5)
  {
    v6 = v5;
    xpc_dictionary_set_value(a1, a2, v5);

    xpc_release(v6);
  }
}

void sub_1D48BDC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D48BE2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL SSFileIsLocalReadable(void *a1)
{
  [a1 fileSystemRepresentation];
  getpid();
  return sandbox_check() == 0;
}

void sub_1D48BE5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D48BEA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D48BEB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D48BEE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D48BF2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D48BF444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SSVStoreFrontIdentifierForAccount(void *a1)
{
  v1 = [a1 storeFrontIdentifier];
  if (![v1 length])
  {
    v2 = +[SSDevice currentDevice];
    v3 = [v2 storeFrontIdentifier];

    v1 = v3;
  }

  return v1;
}

id SSVDefaultUserAgent()
{
  v0 = MEMORY[0x1E698CBB8];
  v1 = [MEMORY[0x1E698CAC8] currentProcess];
  v2 = [v0 userAgentForProcessInfo:v1];

  return v2;
}

BOOL SSXPCConnectionHasEntitlement(uint64_t a1, const __CFString *a2)
{
  v2 = SSXPCConnectionCopyValueForEntitlement(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  TypeID = CFBooleanGetTypeID();
  v5 = TypeID == CFGetTypeID(v3) && CFBooleanGetValue(v3) != 0;
  CFRelease(v3);
  return v5;
}

CFTypeRef SSXPCConnectionCopyValueForEntitlement(uint64_t a1, const __CFString *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  xpc_connection_get_audit_token();
  memset(&token, 0, sizeof(token));
  v3 = SecTaskCreateWithAuditToken(0, &token);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  error = 0;
  v5 = SecTaskCopyValueForEntitlement(v3, a2, &error);
  if (error)
  {
    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    if (os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 2;
    }

    if (v9)
    {
      token.val[0] = 138412290;
      *&token.val[1] = error;
      LODWORD(v20) = 12;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &token, v20}];
        free(v11);
        SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v12);
      }
    }

    CFRelease(error);
  }

  CFRelease(v4);
  return v5;
}

uint64_t SSVBookAssetDaemonFramework()
{
  if (SSVBookAssetDaemonFramework_sOnce != -1)
  {
    SSVBookAssetDaemonFramework_cold_1();
  }

  return SSVBookAssetDaemonFramework_sHandle;
}

void *__SSVBookAssetDaemonFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/BookLibrary.framework/BookLibrary", 1);
  SSVBookAssetDaemonFramework_sHandle = result;
  return result;
}

uint64_t SSXPCConnectionCopyExecutablePath()
{
  MEMORY[0x1EEE9AC00]();
  v3 = *MEMORY[0x1E69E9840];
  xpc_connection_get_audit_token();
  v0 = proc_pidpath(0, buffer, 0x1000u);
  if (v0 < 1)
  {
    return 0;
  }

  else
  {
    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v0 encoding:{4, 0, 0, 0, 0}];
  }
}

id SSVWeakLinkedClassForString(NSString *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = NSClassFromString(a1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

xpc_object_t SSXPCCreateMessageDictionary(int64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "0", a1);
  return v2;
}

CFArrayRef SSXPCCreateCFObjectFromXPCObject(const __CFDictionary *a1)
{
  v1 = a1;
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return v1;
  }

  v2 = MEMORY[0x1DA6E0380](a1);
  if (v2 == MEMORY[0x1E69E9E58])
  {
    value = xpc_BOOL_get_value(v1);
    v4 = MEMORY[0x1E695E4D0];
    if (!value)
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_15;
  }

  if (v2 == MEMORY[0x1E69E9E70])
  {
    v7 = [SSXPCData alloc];

    return [(SSXPCData *)v7 initWithXPCData:v1];
  }

  if (v2 == MEMORY[0x1E69E9E78])
  {
    v8 = xpc_date_get_value(v1) / 1000000000.0 - *MEMORY[0x1E695E468];
    v9 = *MEMORY[0x1E695E4A8];

    return CFDateCreate(v9, v8);
  }

  if (v2 == MEMORY[0x1E69E9E88])
  {
    *&valuePtr[0] = xpc_double_get_value(v1);
    return CFNumberCreate(*MEMORY[0x1E695E4A8], kCFNumberDoubleType, valuePtr);
  }

  if (v2 == MEMORY[0x1E69E9EB0])
  {
    *&valuePtr[0] = xpc_int64_get_value(v1);
    return CFNumberCreate(*MEMORY[0x1E695E4A8], kCFNumberSInt64Type, valuePtr);
  }

  if (v2 == MEMORY[0x1E69E9ED0])
  {
    v4 = MEMORY[0x1E695E738];
LABEL_15:
    v5 = *v4;

    return CFRetain(v5);
  }

  if (v2 == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(v1);
    v12 = *MEMORY[0x1E695E4A8];

    return CFStringCreateWithCString(v12, string_ptr, 0x8000100u);
  }

  else if (v2 == MEMORY[0x1E69E9F20])
  {
    v13 = *xpc_uuid_get_bytes(v1);
    v14 = *MEMORY[0x1E695E4A8];

    return CFUUIDCreateFromUUIDBytes(v14, v13);
  }

  else
  {
    if (v2 != MEMORY[0x1E69E9E50])
    {
      if (v2 != MEMORY[0x1E69E9E80])
      {
        return 0;
      }

      count = xpc_dictionary_get_count(v1);
      v16 = count;
      v17 = 16 * count;
      memset(valuePtr, 0, 512);
      if (2 * count > 0x100)
      {
        v18 = malloc_type_malloc(16 * count, 0xC0040B8AA526DuLL);
        bzero(v18, v17);
        if (!v18)
        {
          return 0;
        }
      }

      else
      {
        v18 = valuePtr;
        __memset_chk();
      }

      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __SSXPCCreateCFObjectFromXPCObject_block_invoke_2;
      applier[3] = &unk_1E84B0530;
      applier[4] = &v23;
      applier[5] = v18;
      applier[6] = v16;
      xpc_dictionary_apply(v1, applier);
      v19 = v24[3];
      v20 = v18 + 8 * v16;
      if (v16 == v19)
      {
        v1 = CFDictionaryCreate(*MEMORY[0x1E695E4A8], v18, v18 + v16, v16, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v19 = v24[3];
      }

      else
      {
        v1 = 0;
      }

      if (v19 >= 1)
      {
        v21 = 0;
        do
        {
          CFRelease(*(v18 + v21));
          CFRelease(*&v20[8 * v21++]);
        }

        while (v21 < v24[3]);
      }

      if (v18 != valuePtr)
      {
        free(v18);
      }

      _Block_object_dispose(&v23, 8);
      return v1;
    }

    return _SSNewCFArrayFromXPCArray(v1);
  }
}

void sub_1D48C0D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFArrayRef SSXPCDictionaryCopyCFObjectWithClass(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  v3 = SSXPCCreateCFObjectFromXPCObject(value);
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    CFRelease(v3);
    return 0;
  }

  return v3;
}

CFArrayRef _SSNewCFArrayFromXPCArray(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  count = xpc_array_get_count(a1);
  v3 = count;
  v4 = 8 * count;
  memset(v15, 0, 512);
  if (count > 0x100)
  {
    v5 = malloc_type_malloc(8 * count, 0xC0040B8AA526DuLL);
    bzero(v5, v4);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = v15;
    __memset_chk();
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = ___SSNewCFArrayFromXPCArray_block_invoke;
  applier[3] = &unk_1E84B0580;
  applier[5] = &v11;
  applier[6] = v5;
  applier[4] = &__block_literal_global_16;
  xpc_array_apply(a1, applier);
  v6 = v12[3];
  if (v3 == v6)
  {
    v7 = CFArrayCreate(*MEMORY[0x1E695E4A8], v5, v3, MEMORY[0x1E695E9C0]);
    v6 = v12[3];
  }

  else
  {
    v7 = 0;
  }

  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      CFRelease(*(v5 + v8++));
    }

    while (v8 < v12[3]);
  }

  if (v5 != v15)
  {
    free(v5);
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_1D48C16E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFArrayRef SSXPCDictionaryCopyCFObject(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);

  return SSXPCCreateCFObjectFromXPCObject(value);
}

uint64_t SSSQLiteBindFoundationValueToStatement(sqlite3_stmt *a1, int a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = a3;
LABEL_3:
    v7 = [v6 UTF8String];

    return sqlite3_bind_text(a1, a2, v7, -1, 0);
  }

  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    return sqlite3_bind_null(a1, a2);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 timeIntervalSinceReferenceDate];
LABEL_13:

    return sqlite3_bind_double(a1, a2, v9);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [a3 bytes];
    v11 = [a3 length];

    return sqlite3_bind_blob(a1, a2, v10, v11, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [a3 absoluteString];
      goto LABEL_3;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      SSSQLiteBindFoundationValueToStatement_cold_1();
    }

    v12 = [a3 objCType];
    v13 = *v12;
    if ((v13 == 102 || v13 == 100) && !v12[1])
    {
      [a3 doubleValue];
      goto LABEL_13;
    }

    v14 = [a3 longLongValue];

    return sqlite3_bind_int64(a1, a2, v14);
  }
}

id SSCodingCreateNSSecureCodingObjectForXPCObject(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  if (MEMORY[0x1DA6E0380]() != MEMORY[0x1E69E9E70])
  {
    return 0;
  }

  length = xpc_data_get_length(a1);
  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  if (!length)
  {
    return 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:bytes_ptr length:length freeWhenDone:0];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v24 = 0;
  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:a2 fromData:v8 error:&v24];
  if (v24)
  {
    v10 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    if (os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 2;
    }

    if (v13)
    {
      v25 = 136446466;
      v26 = "id<NSSecureCoding> SSCodingCreateNSSecureCodingObjectForXPCObject(xpc_object_t, Class<NSSecureCoding>)";
      v27 = 2114;
      v28 = v24;
      LODWORD(v23) = 22;
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        v16 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v25, v23}];
        free(v15);
        SSFileLog(v10, @"%@", v17, v18, v19, v20, v21, v22, v16);
      }
    }
  }

  return v4;
}

void sub_1D48C2ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D48C2F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D48C3C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D48C3DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL SSVUserDefaultsIsReadable(void *a1)
{
  v1 = __PathForUserDefaultsDomain(a1);

  return SSFileIsLocalReadable(v1);
}

uint64_t __PathForUserDefaultsDomain(void *a1)
{
  v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Preferences", objc_msgSend(a1, "stringByAppendingPathExtension:", @"plist", 0}];
  v2 = [MEMORY[0x1E696AEC0] pathWithComponents:v1];

  return v2;
}

uint64_t __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA6DFBB0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA6DFBB0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__67(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__79(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__81(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__82(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__85(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__86(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__87(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1D48C5030(mach_port_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  v16 = 1;
  v17 = a2;
  v18 = 16777472;
  v19 = a3;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = a3;
  reply_port = mig_get_reply_port();
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = reply_port;
  v15.msgh_bits = -2147478253;
  *&v15.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&v15, 3, 0x38u, 0x40u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v15.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(v15.msgh_local_port);
    return v11;
  }

  if (v15.msgh_id == 71)
  {
    v13 = 4294966988;
  }

  else if (v15.msgh_id == 1300)
  {
    if ((v15.msgh_bits & 0x80000000) != 0)
    {
      v13 = 4294966996;
      if (v16 == 1 && v15.msgh_size == 56 && !v15.msgh_remote_port && HIBYTE(v18) == 1)
      {
        v14 = v19;
        if (v19 == v21)
        {
          *a4 = v17;
          *a5 = v14;
          return 0;
        }
      }
    }

    else if (v15.msgh_size == 36)
    {
      v13 = 4294966996;
      if (HIDWORD(v17))
      {
        if (v15.msgh_remote_port)
        {
          v13 = 4294966996;
        }

        else
        {
          v13 = HIDWORD(v17);
        }
      }
    }

    else
    {
      v13 = 4294966996;
    }
  }

  else
  {
    v13 = 4294966995;
  }

  mach_msg_destroy(&v15);
  return v13;
}

uint64_t sub_1D48C5220(uint64_t a1, uint64_t a2)
{
  v2 = qword_1E84B4150[(byte_1D4B39C10[byte_1D4B398F0[(-3 * (dword_1EC7E1DD8 ^ 0x8A ^ dword_1EC7E1DC8))] ^ 7] ^ (-3 * (dword_1EC7E1DD8 ^ 0x8A ^ dword_1EC7E1DC8))) + 11];
  v3 = *(v2 - 4);
  v4 = qword_1E84B4150[(byte_1D4B39E64[(byte_1D4B39B1C[(-3 * (v3 ^ dword_1EC7E1DC8 ^ 0x8A)) - 12] ^ 0xEA) - 4] ^ (-3 * (v3 ^ dword_1EC7E1DC8 ^ 0x8A))) - 188];
  v5 = v3 - &v12 + *v4;
  v6 = 1543604477 * (v5 - 0x45EA3381FA58338ALL);
  v7 = 1543604477 * (v5 ^ 0x45EA3381FA58338ALL);
  *(v2 - 4) = v6;
  *v4 = v7;
  LOBYTE(v7) = -3 * (*(v2 - 4) ^ 0x8A ^ v7);
  v8 = qword_1E84B4150[((-3 * ((dword_1EC7E1DC8 + dword_1EC7E1DD8) ^ 0x8A)) ^ byte_1D4B39E60[byte_1D4B39B10[(-3 * ((dword_1EC7E1DC8 + dword_1EC7E1DD8) ^ 0x8A))] ^ 0xB0]) - 90] - 12;
  v9 = (*(v8 + 8 * ((v7 ^ byte_1D4B39C10[byte_1D4B398F0[v7] ^ 7]) + 2978)))(a2);
  v10 = *(v8 + 8 * ((byte_1D4B391E8[(byte_1D4B39D60[(-3 * ((*v4 + *(v2 - 4)) ^ 0x8A))] ^ 0xE2) - 8] ^ (-3 * ((*v4 + *(v2 - 4)) ^ 0x8A))) + 2833));

  return v10(v9);
}

uint64_t sub_1D48C54AC()
{
  v0 = qword_1E84B4150[((-3 * ((dword_1EC7E1DC8 - dword_1EC7E1DE0) ^ 0x8A)) ^ byte_1D4B391E0[byte_1D4B39D60[(-3 * ((dword_1EC7E1DC8 - dword_1EC7E1DE0) ^ 0x8A))] ^ 0x78]) - 199];
  v1 = *(v0 - 4);
  v2 = qword_1E84B4150[(byte_1D4B396F0[byte_1D4B393E0[(-3 * (v1 ^ dword_1EC7E1DC8 ^ 0x8A))] ^ 6] ^ (-3 * (v1 ^ dword_1EC7E1DC8 ^ 0x8A))) - 62];
  v3 = 1543604477 * ((*v2 + v1) ^ &v12 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v3;
  *v2 = v3;
  v4 = *(v0 - 4);
  v5 = qword_1E84B4150[((-3 * (dword_1EC7E1DE0 ^ 0x8A ^ dword_1EC7E1DC8)) ^ byte_1D4B391E0[byte_1D4B39D60[(-3 * (dword_1EC7E1DE0 ^ 0x8A ^ dword_1EC7E1DC8))] ^ 0x80]) - 241] - 12;
  (*(v5 + 8 * ((byte_1D4B391E0[byte_1D4B39D60[(-3 * ((v3 - v4) ^ 0x8A))] ^ 0xEC] ^ (-3 * ((v3 - v4) ^ 0x8A))) + 2786)))(*qword_1E84B4150[(byte_1D4B395F0[byte_1D4B392E0[(-3 * (v4 ^ 0x8A ^ v3))] ^ 0x90] ^ (-3 * (v4 ^ 0x8A ^ v3))) - 90]);
  v6 = -3 * (*(v0 - 4) ^ 0x8A ^ *v2);
  (*(v5 + 8 * ((byte_1D4B397F8[(byte_1D4B394E8[v6 - 8] ^ 0xF0) - 8] ^ v6) + 2937)))(*qword_1E84B4150[(v6 ^ byte_1D4B396F0[byte_1D4B393E0[v6] ^ 0x3F]) - 118]);
  v7 = *(v0 - 4);
  v8 = *v2;
  v9 = *qword_1E84B4150[((-3 * (v7 ^ 0x8A ^ v8)) ^ byte_1D4B391E0[byte_1D4B39D60[(-3 * (v7 ^ 0x8A ^ v8))] ^ 0xA9]) - 98];
  v10 = *(v5 + 8 * (((-3 * ((v8 + v7) ^ 0x8A)) ^ byte_1D4B395F0[byte_1D4B392E0[(-3 * ((v8 + v7) ^ 0x8A))] ^ 0xC3]) + 2895));

  return v10(v9);
}

uint64_t sub_1D48C578C(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v52 = *MEMORY[0x1E69E9840];
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = *MEMORY[0x1E69E99E0];
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = v35;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_1D48C59EC(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = *MEMORY[0x1E69E99E0];
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_1D48C5B80(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = *MEMORY[0x1E69E99E0];
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_1D48C5D74(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t VLxCLgDpiF(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E21B0 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * (dword_1EC7E21B0 ^ 0x82 ^ qword_1EC7E2160))] ^ 0xB]) + 73);
  v2 = -35 * ((qword_1EC7E2160 + *v1) ^ 0x82);
  v3 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + v2 - 4) ^ 0xCDu)) ^ v2) - 156);
  v4 = &v7[*v3 ^ *v1];
  *v1 = (1228258013 * v4) ^ 0xC891BCBEBCEAD82;
  *v3 = 1228258013 * (v4 ^ 0xC891BCBEBCEAD82);
  v5 = 675097751 * ((v8 - 2022169286 - 2 * (v8 & 0x8778253A)) ^ 0xC43800AC);
  v8[0] = v5 ^ 0x51D;
  v8[1] = a1 - ((2 * a1) & 0xB17391FE) + 1488570623 + v5;
  LOBYTE(v3) = -35 * ((*v3 + *v1) ^ 0x82);
  (*(*(&off_1F5033D40 + ((-35 * (dword_1EC7E21B0 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * (dword_1EC7E21B0 ^ 0x82 ^ qword_1EC7E2160))] ^ 0xC7]) - 232) + (*(off_1F50343C8 + (*(off_1F50340C8 + v3 - 8) ^ 0x9Eu) - 8) ^ v3) + 3621))(v8);
  return (v8[2] - 671454635);
}

uint64_t Hz73b(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2170) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 - dword_1EC7E2170) ^ 0x82))] ^ 0xC4]) + 112);
  v2 = -35 * ((qword_1EC7E2160 - *v1) ^ 0x82);
  v3 = *(&off_1F5033D40 + (*(off_1F50342D8 + (*(off_1F5033F18 + v2 - 12) ^ 0x30u) - 12) ^ v2) - 25);
  v4 = *v1 ^ &v6 ^ *v3;
  *v1 = 1228258013 * v4 + 0x5804E9A2B9663D3ALL;
  *v3 = 1228258013 * (v4 ^ 0xC891BCBEBCEAD82);
  v8 = a1;
  v7[0] = 1504884919 * ((-271268910 - (v7 | 0xEFD4C3D2) + (v7 | 0x102B3C2D)) ^ 0xEBE88B36) + 2552;
  LOBYTE(v3) = -35 * ((*v3 + *v1) ^ 0x82);
  (*(*(&off_1F5033D40 + ((-35 * (dword_1EC7E2170 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46C70[byte_1D4B43C80[(-35 * (dword_1EC7E2170 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x6C]) - 173) + (*(off_1F5034198 + (*(off_1F5034218 + v3) ^ 0xB5u) - 8) ^ v3) + 3741))(v7);
  return (v7[1] - 671454635);
}

uint64_t sub_1D48C648C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F5033D40 + (*(off_1F50342D8 + (*(off_1F5033F18 + (-35 * ((qword_1EC7E2160 - dword_1EC7E2168) ^ 0x82)) - 12) ^ 0x30u) - 12) ^ (-35 * ((qword_1EC7E2160 - dword_1EC7E2168) ^ 0x82))) - 34);
  v2 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - *v1) ^ 0x82)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * ((qword_1EC7E2160 - *v1) ^ 0x82))] ^ 0x8E]) - 97);
  v3 = &v5[*v1 + *v2];
  *v1 = 1228258013 * v3 - 0xC891BCBEBCEAD82;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v7 = 786 - 210068311 * ((2 * (&v6 & 0x275361A0) - &v6 + 1487707740) ^ 0xFC3048B);
  v6 = a1;
  LOBYTE(v2) = -35 * (*v1 ^ 0x82 ^ *v2);
  return (*(*(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2168) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 - dword_1EC7E2168) ^ 0x82))] ^ 0xB]) - 81) + (*(off_1F5034330 + (*(off_1F5034390 + v2 - 4) ^ 0xF5u)) ^ v2) + 3619))(&v6);
}

uint64_t sub_1D48C668C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2080) ^ 0x82)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * ((qword_1EC7E2160 - dword_1EC7E2080) ^ 0x82))] ^ 0x8C]) - 113);
  v2 = *(v1 - 4);
  v3 = off_1F5034390 - 4;
  v4 = off_1F5034330;
  v5 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + (-35 * ((qword_1EC7E2160 + v2) ^ 0x82)) - 4) ^ 0xC4u)) ^ (-35 * ((qword_1EC7E2160 + v2) ^ 0x82))) - 5);
  v6 = &v8[*v5 - v2];
  *(v1 - 4) = 1228258013 * v6 + 0x5804E9A2B9663D3ALL;
  *v5 = 1228258013 * (v6 ^ 0xC891BCBEBCEAD82);
  v10 = a1;
  v9 = 1564307779 * (((&v9 | 0xC35CDD75) + (~&v9 | 0x3CA3228A)) ^ 0x54511167) + 171;
  LOBYTE(v5) = -35 * ((*v5 + *(v1 - 4)) ^ 0x82);
  return (*(*(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2080) ^ 0x82)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * ((qword_1EC7E2160 - dword_1EC7E2080) ^ 0x82))] ^ 0xF4]) - 22) + (v5 ^ v4[v3[v5] ^ 0xC7]) + 3548))(&v9);
}

uint64_t XtCqEf5X(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2140) ^ 0x82)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * ((qword_1EC7E2160 + dword_1EC7E2140) ^ 0x82))] ^ 0xB]) + 68);
  v5 = -35 * (*v4 ^ qword_1EC7E2160 ^ 0x82);
  v6 = *(&off_1F5033D40 + (*(off_1F5034348 + (*(off_1F5033F78 + v5 - 4) ^ 0xBu) - 12) ^ v5) - 110);
  v7 = &v9[*v4 + *v6];
  *v4 = 1228258013 * v7 + 0x5804E9A2B9663D3ALL;
  *v6 = 1228258013 * (v7 ^ 0xC891BCBEBCEAD82);
  v13 = a4;
  v11 = (1361651671 * ((v10 - 309418394 - 2 * (v10 & 0xED8EA666)) ^ 0xA6E56A18)) ^ 0x891;
  v10[1] = a2;
  v10[2] = a1;
  v10[0] = a3;
  LODWORD(v6) = 1228258013 * ((*v6 + *v4) ^ 0xEBCEAD82);
  (*(*(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2140) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 - dword_1EC7E2140) ^ 0x82))] ^ 0xC4]) - 35) + (*(off_1F5034330 + (*(off_1F5034390 + v6 - 4) ^ 0xBu)) ^ v6) + 3662))(v10);
  return (v12 - 671454635);
}

uint64_t sub_1D48C6BF0(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2148) ^ 0x82)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * ((qword_1EC7E2160 - dword_1EC7E2148) ^ 0x82))] ^ 0xF4]) + 158);
  v2 = -35 * ((qword_1EC7E2160 + *v1) ^ 0x82);
  v3 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + v2 - 4) ^ 0xF5u)) ^ v2) - 71);
  v4 = (*v3 + *v1) ^ &v6;
  *v1 = (1228258013 * v4) ^ 0xC891BCBEBCEAD82;
  *v3 = 1228258013 * (v4 ^ 0xC891BCBEBCEAD82);
  v7 = a1;
  v8 = 1092 - 1785193651 * ((&v7 & 0x7AB1488 | ~(&v7 | 0x7AB1488)) ^ 0xE754F5B);
  LOBYTE(v3) = -35 * (*v1 ^ 0x82 ^ *v3);
  (*(*(&off_1F5033D40 + ((-35 * (dword_1EC7E2148 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * (dword_1EC7E2148 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x8C]) - 114) + (*(off_1F50340B8 + (*(off_1F5033FC0 + v3 - 8) ^ 0x60u) - 4) ^ v3) + 3726))(&v7);
  return v9;
}

void sub_1D48C6F50(_DWORD *a1)
{
  v1 = *a1 ^ (1564307779 * ((((2 * a1) | 0x3ABEDB08) - a1 - 492793220) ^ 0x8A52A197));
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1D48C70C0@<X0>(void *a1@<X0>, int a2@<W3>, int a3@<W8>)
{
  v9 = *(*(v3 + 8) + 4 * v8);
  *(*a1 + (v4 + a3)) = (v9 ^ v7) + (((a2 ^ 0x47) - 53) ^ 0x40) - ((2 * (v9 ^ v7)) & 4);
  return (*(v5 + 8 * (a2 ^ 0xD47 ^ (1801 * (v4 - 1 == v6)))))();
}

uint64_t sub_1D48C712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v63 = STACK[0x3A8];
  STACK[0x230] = *(v62 + 8 * (a62 - 1472));
  STACK[0x488] = v63;
  LODWORD(STACK[0x494]) = 1920750827;
  STACK[0x350] = a48;
  return (*(v62 + 8 * ((((*(v63 + 68) & (((a62 ^ 0x30E) + 846) ^ 0xA31u)) - 44 < 0xFFFFFFC0) * (a62 ^ 0xA66)) ^ a62 ^ 0x30E)))();
}

void sub_1D48C71AC(uint64_t a1)
{
  v1 = 1037613739 * (a1 ^ 0xD1022D7F);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1D48C7224@<X0>(uint64_t a1@<X8>)
{
  v7 = (v1 + 1811109220) & 0x940CA7CF;
  *(v6 - 112) = v7 + 932 - ((((2 * (v6 - 112)) | 0x3F431690) - (v6 - 112) + 1616803000) ^ 0x8AC475B) * v3;
  *(v6 - 104) = a1;
  (*(v4 + 8 * (v7 + 2808)))(v6 - 112);
  v8 = *(v6 - 96);
  *(v6 - 104) = v2;
  *(v6 - 112) = v7 + 932 - ((v6 - 205607331 - 2 * ((v6 - 112) & 0xF3BEAECD)) ^ 0x64B362DE) * v3;
  (*(v4 + 8 * (v7 ^ 0xD08)))(v6 - 112);
  v9 = (-1292542870 * (*(v6 - 96) + v8) + *(v6 - 96) * v8 + 1816157156) * v5;
  v11[1] = (v9 ^ 0x6BF9FDAF) + (v7 ^ 0xF7BE3037) + ((2 * v9) & 0xD7F3FB5E);
  *(v6 - 104) = v2;
  *(v6 - 96) = v11;
  *(v6 - 112) = v7 - 435584651 * ((((v6 - 112) | 0x54EE6E68) - (v6 - 112) + ((v6 - 112) & 0xAB119190)) ^ 0x39DC743E) + 992;
  return (*(v4 + 8 * (v7 + 2627)))(v6 - 112);
}

uint64_t sub_1D48C7598(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = *(v6 + a5 + 16);
  v9 = (a2 + a5);
  *(v9 - 1) = *(v6 + a5);
  *v9 = v8;
  return (*(v7 + 8 * (((v5 == a5) * a4) ^ a3)))();
}

uint64_t sub_1D48C75C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = v3 + 32;
  v10 = (v6 ^ v9) + v2;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v4 == v9) * v7) ^ (v5 + 2606))))();
}

void sub_1D48C75D0(_DWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1 - 1504884919 * (((a1 | 0xE4FD304B) - a1 + (a1 & 0x1B02CFB4)) ^ 0x1F3E8750);
  v3[1] = (1037613739 * ((((v3 ^ 0x14431228) & 0x7F4B3278) + (v3 ^ 0x6B9C2DD4) - ((v3 ^ 0x6B9C2DD4) & 0x7F4B3278)) ^ 0xC5D532D3)) ^ (v1 - 2030747224);
  v2 = *(&off_1F5033D40 + (v1 - 2541));
  (*(v2 + 8 * (v1 + 1094)))(v3);
  __asm { BRAA            X8, X17 }
}

void LLb3qVEd()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2138 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * (dword_1EC7E2138 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x8C]) + 34);
  v1 = *(v0 - 4);
  v2 = off_1F5034390 - 4;
  v3 = off_1F5034330;
  v4 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + (-35 * (v1 ^ qword_1EC7E2160 ^ 0x82)) - 4) ^ 0xC7u)) ^ (-35 * (v1 ^ qword_1EC7E2160 ^ 0x82))) - 202);
  v5 = &v7[*v4 - v1];
  *(v0 - 4) = 1228258013 * (v5 - 0xC891BCBEBCEAD82);
  *v4 = 1228258013 * (v5 ^ 0xC891BCBEBCEAD82);
  v8[1] = (1037613739 * ((((v8 | 0x1ABCBB7C) ^ 0xFFFFFFFE) - (~v8 | 0xE5434483)) ^ 0x344169FC)) ^ 0x86F54BA0;
  LOBYTE(v4) = -35 * ((*v4 + *(v0 - 4)) ^ 0x82);
  v6 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2138) ^ 0x82)) ^ byte_1D4B46C70[byte_1D4B43C80[(-35 * ((qword_1EC7E2160 + dword_1EC7E2138) ^ 0x82))] ^ 0x6C]) - 173);
  (*(v6 + 8 * ((v4 ^ v3[v2[v4] ^ 0xB]) + 3554)))(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48C7A04@<X0>(int a1@<W8>)
{
  *(v4 - 192) = v1 + ((v4 - 2062889335 - 2 * ((v4 - 192) & 0x850ACF49)) ^ 0x9B28421C) * v3 + a1;
  result = (*(v5 + 8 * (a1 + 2266)))(v4 - 192);
  *(v2 + 24) = 671412233;
  return result;
}

uint64_t sub_1D48C7B34()
{
  v4 = (v3 - 1507743400) & 0x59DE57FF;
  v8 = v3 - (&v8 ^ 0xE6A8AC10) * v1 + 1807;
  v9 = v6;
  (*(v0 + 8 * (v3 ^ 0xFC5)))(&v8);
  v9 = v7;
  v8 = v4 - (&v8 ^ 0xE6A8AC10) * v1 + 1463;
  (*(v0 + 8 * (v4 ^ 0xC9Du)))(&v8);
  return (v2 - 671454635);
}

uint64_t sub_1D48C7C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v64 = (((v62 ^ 0x1D8DFE8F) - 495845007) ^ ((v62 ^ 0x70BE4581) - 1891517825) ^ ((v62 ^ 0x1ED5EB25) - 517335845)) + (((LODWORD(STACK[0x47C]) ^ 0x7E4512B9) - 2118455993) ^ ((LODWORD(STACK[0x47C]) ^ 0x2D06FC90) - 755432592) ^ (281 * (a62 ^ 0x5CD) + (LODWORD(STACK[0x47C]) ^ 0x20A5BE02) - 547733837)) - 406020010;
  *(a33 + 52) = ((v64 % 0x2710) ^ 0xF68F6DFA) + 1878441888 + ((2 * (v64 % 0x2710)) & 0x5BF4);
  v65 = STACK[0x484];
  STACK[0x2F0] -= 1616;
  LODWORD(STACK[0x38C]) = v65;
  return (*(v63 + 8 * ((2833 * (v65 == 671454635)) ^ (a62 - 643))))();
}

uint64_t sub_1D48C7D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t a15, int a16, uint64_t a17, int a18, int a19)
{
  v24 = *(v19 + 48);
  v25 = *(v19 + 16);
  v26 = 675097751 * ((2 * (&a12 & 0x1FFBB648) - &a12 + 1610893746) ^ 0x23446C24);
  a14 = (a10 ^ (((v23 - 2932) | 0x291) - 437273252)) - v26 + ((2 * a10) & 0xCBDF7FEE) + 1587145216;
  a12 = v25;
  a13 = a11;
  a15 = a11;
  a17 = v24;
  a18 = v22 - v26 - 819138871;
  a19 = v23 - v26 - 1776826223;
  v27 = (*(v21 + 8 * (v23 ^ 0x5BE)))(&a12);
  return (*(v21 + 8 * ((172 * (a16 == v20)) ^ v23)))(v27);
}

uint64_t sub_1D48C7EA8@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W5>, uint64_t a6@<X6>, unsigned int a7@<W8>)
{
  v12 = a1 < v9;
  *(a2 + a7) = *(a6 + v7) - ((2 * *(a6 + v7)) & 4) - 126;
  v13 = v7 + 1;
  if (v12 == v13 > v10)
  {
    v12 = v13 + v9 < a1;
  }

  return (*(v11 + 8 * (((a5 & ~((v8 + a4) ^ v12)) * a3) ^ v8)))();
}

uint64_t sub_1D48C7F18(uint64_t a1)
{
  v1 = (1785193651 * ((659054361 - (a1 | 0x27485F19) + (a1 | 0xD8B7A0E6)) ^ 0x2E9604CA)) ^ *a1;
  v2 = v1 ^ 0xEB1;
  v3 = *(*(a1 + 8) + 4) + (v1 ^ 0x9C47C2EF);
  if (v3 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = -v3;
  }

  return (*(*(&off_1F5033D40 + (v2 ^ 0x20C)) + (((((v2 - 84) ^ (v4 > 0)) & 1) * ((v2 ^ 0xEB1) - 3227)) ^ v2)))();
}

uint64_t sub_1D48C7FE4@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  *&v6 = 0x8282828282828282;
  *(&v6 + 1) = 0x8282828282828282;
  *(&STACK[0x27C] + a2) = v6;
  *(&STACK[0x27C] + a2 + 16) = v6;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFFFFFFFFFE0) != 32) * ((61 * (v3 ^ (a1 - 5))) ^ 0xE68)) ^ (v5 + v3 + 295))))();
}

uint64_t sub_1D48C8074(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = 45;
  }

  else
  {
    v2 = 44;
  }

  *(a1 + 88) = v2;
  return 0;
}

uint64_t sub_1D48C80AC(int a1)
{
  v6 = (v3 + 2086170383) & 0x83A78FB6;
  v7 = (((&v10 | 0x949D3F76) - &v10 + (&v10 & 0x6B62C088)) ^ 0xC3F2A5A1) * v5;
  v11 = (((2 * a1) & 0xD76B2F7E) + ((v6 + 1807061689) ^ a1) - 1135608340) ^ v7;
  v12 = v3 - v7 - 664;
  v10 = &v9;
  (*(v2 + 8 * (v3 ^ 0x8DD)))(&v10);
  v10 = *v4;
  v11 = v6 - (&v10 ^ 0x576F9AD7) * v5 - 500;
  result = (*(v2 + 8 * (v6 ^ 0xB95)))(&v10);
  *(v1 + 4) = v9;
  return result;
}

void sub_1D48C8158(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (143681137 * ((-751875376 - (a1 ^ 0x54F4C255 | 0xD32F4AD0) + (a1 ^ 0x54F4C255 | 0x2CD0B52F)) ^ 0x9E8CDB6A));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48C8234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, int a16, int a17)
{
  v22 = 1785193651 * ((~v19 & 0x5467907A3173814BLL | v19 & 0xAB986F85CE8C7EB4) ^ 0xBFF2D42C7522567);
  a17 = v21 - v22 + 2293;
  a14 = a11;
  a15 = v22 ^ (v17 - ((2 * v17) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL);
  v23 = (*(v18 + 8 * (v21 ^ 0xB4D)))(&a14);
  return (*(v18 + 8 * ((123 * (a16 == v20 + 1461730488)) ^ v21)))(v23);
}

uint64_t sub_1D48C8300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a2 + v3 - 1 - 31);
  v7 = a1 + v3 - 1;
  *(v7 - 15) = *(a2 + v3 - 1 - 15);
  *(v7 - 31) = v6;
  return (*(v5 + 8 * ((93 * ((v4 ^ 0x5E7F5293u) - 3541 == (v3 & 0xFFFFFFE0))) ^ (v2 + v4 + 742))))();
}

uint64_t sub_1D48C8368@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v10 = v5 + 32;
  v11 = (v8 ^ v10) + v4;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a2)), a3);
  *(v14 - 31) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a2)), a3);
  return (*(v9 + 8 * (((v6 != v10) | (2 * (v6 != v10))) ^ v7)))();
}

uint64_t sub_1D48C83B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, unsigned int a19, unsigned int a20, uint64_t a21)
{
  v28 = 1564307779 * (((&a17 | 0xC53B4DB7) - &a17 + (&a17 & 0x3AC4B248)) ^ 0x523681A4);
  a18 = a13;
  a20 = v25 - ((2 * v25) & 0xFBF408DA) + 2113537133 - v28;
  a17 = (v27 - 134) ^ v28;
  (*(v26 + 8 * (v27 ^ 0xA39)))(&a17);
  v29 = 1564307779 * (((&a17 | 0xC21C8FCD) + (~&a17 | 0x3DE37032)) ^ 0x551143DF);
  a20 = v24 - ((2 * v24) & 0xFBF408DA) + 2113537133 - v29;
  a17 = (v27 - 134) ^ v29;
  a18 = a13;
  (*(v26 + 8 * (v27 ^ 0xA39)))(&a17);
  v30 = 742307843 * (((&a17 | 0x69216CAF) + (~&a17 | 0x96DE9350)) ^ 0x7703E1FB);
  a21 = a13;
  a18 = v22;
  a19 = (((2 * v23) & 0xFA3AA5FC) - 1828782720 + (v23 ^ 0x7D1D57A9 ^ (v27 + 157))) ^ v30;
  a17 = (v27 - 41) ^ v30;
  (*(v26 + 8 * (v27 + 2485)))(&a17);
  v31 = 742307843 * ((&a17 & 0xBDDD32AE | ~(&a17 | 0xBDDD32AE)) ^ 0x5C004004);
  a17 = (v27 - 41) ^ v31;
  a19 = v31 ^ ((v21 ^ 0x719E7D7E) - 1635921152 + ((2 * v21) & 0xE33CFAFC));
  a18 = a12;
  a21 = a13;
  (*(v26 + 8 * (v27 ^ 0xAD5)))(&a17);
  v32 = *a11;
  v33 = (2 * *a11) & 0xFBF408DA;
  v34 = 1564307779 * ((2 * (&a17 & 0x15254110) - &a17 - 354763028) ^ 0x7DD772FF);
  a17 = (v27 - 134) ^ v34;
  a18 = a13;
  a20 = v32 - v34 + 2113537133 - v33;
  v35 = (*(v26 + 8 * (v27 ^ 0xA39)))(&a17);
  return (*(v26 + 8 * ((4055 * (a19 == 671454635)) ^ v27)))(v35);
}

void sub_1D48C878C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = 1037613739 * (((a1 | 0xC10FF5F2) - (a1 & 0xC10FF5F2)) ^ 0x100DD88D);
  v2 = *(a1 + 12) ^ v1;
  v3 = (*(a1 + 16) - v1);
  v4 = *(&off_1F5033D40 + v2 - 1887);
  (*(v4 + 8 * (v2 ^ 0x9F0)))(*(&off_1F5033D40 + v2 - 1861) - 8, sub_1D48F0934);
  v6 = *(*(&off_1F5033D40 + (v2 ^ 0x731)) - 4);
  v5 = v2 + 1564307779 * ((&v5 & 0x382CE317 | ~(&v5 | 0x382CE317)) ^ 0x50DED0FB) - 1727;
  (*(v4 + 8 * (v2 + 1893)))(&v5);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48C8984@<X0>(int a1@<W8>)
{
  v8 = *(v6 + 8 * (a1 - 1877));
  v9 = *v8;
  v10 = *(v6 + 8 * (a1 ^ 0x7D6u));
  v11 = *(v10 - 4);
  v20[0] = *v11 ^ 0x34;
  v20[1] = v11[1] ^ 0x34;
  v20[2] = v11[2] ^ 0x34;
  v20[3] = v11[3] ^ 0x34;
  v20[4] = v11[4] ^ 0x34;
  v20[5] = v11[5] ^ 0x34;
  v20[6] = v11[6] ^ 0x34;
  v20[7] = v11[7] ^ 0x34;
  v20[8] = v11[8] ^ 0x34;
  v20[9] = v11[9] ^ 0x34;
  v20[10] = v11[10] ^ 0x34;
  v20[11] = v11[11] ^ 0x34;
  v20[12] = v11[12] ^ 0x34;
  v20[13] = v11[13] ^ 0x34;
  v20[14] = v11[14] ^ 0x34;
  v20[15] = v11[15] ^ 0x34;
  v20[16] = v11[16] ^ 0x34;
  v20[17] = v11[17] ^ 0x34;
  v20[18] = v11[18] ^ 0x34;
  v20[19] = v11[19] ^ 0x34;
  v12 = *(v10 - 4);
  v20[20] = v12[20] ^ 0x34;
  v20[21] = v12[21] ^ 0x34;
  v20[22] = v12[22] ^ 0x34;
  v20[23] = v12[23] ^ 0x34;
  v20[24] = v12[24] ^ 0x34;
  v20[25] = v12[25] ^ 0x34;
  v20[26] = v12[26] ^ 0x34;
  v20[27] = v12[27] ^ 0x34;
  v20[28] = v12[28] ^ 0x34;
  v20[29] = v12[29] ^ 0x34;
  result = (*(v4 + 8 * (a1 + 1805)))(v9, v20, v2);
  if (result == 1102)
  {
    v15 = *v8;
    v16 = **(v6 + 8 * (v5 - 1853));
    v21[0] = *v16 ^ 0xD8;
    v21[1] = v16[1] ^ 0xD8;
    v21[2] = v16[2] ^ 0xD8;
    v21[3] = v16[3] ^ 0xD8;
    v21[4] = v16[4] ^ 0xD8;
    v21[5] = v16[5] ^ 0xD8;
    v21[6] = v16[6] ^ 0xD8;
    v21[7] = (v5 - 40) ^ 0x9A ^ v16[7];
    v21[8] = v16[8] ^ 0xD8;
    v21[9] = v16[9] ^ 0xD8;
    v21[10] = v16[10] ^ 0xD8;
    v21[11] = v16[11] ^ 0xD8;
    v21[12] = v16[12] ^ 0xD8;
    v21[13] = v16[13] ^ 0xD8;
    v21[14] = v16[14] ^ 0xD8;
    v21[15] = v16[15] ^ 0xD8;
    v21[16] = v16[16] ^ 0xD8;
    v21[17] = v16[17] ^ 0xD8;
    v21[18] = v16[18] ^ 0xD8;
    v21[19] = v16[19] ^ 0xD8;
    v17 = *(v4 + 8 * ((28 * ((*(v4 + 8 * (v5 + 1805)))(v15, v21, v2) == 0)) ^ (v5 + 472)));
    __asm { BRAA            X8, X17 }
  }

  if (result)
  {
    v19 = 671412451;
  }

  else
  {
    v14 = (v5 + 1753323141) & 0x977E6B52;
    *(v7 + 348) |= v14 ^ 0x948;
    *(v7 + 48) = 1171254160;
    result = (*(v4 + 8 * (v5 + 1925)))(*v2, v7 + 336, v7 + 340, v7 + 344, v3);
    v18 = *v1;
    **(v1 + 24) = *v2;
    *v18 = *v3 - (((2 * (v14 ^ 0xAF7)) ^ 0x6EC46266) & (2 * *v3)) - 1218301306;
    v19 = 671454635;
  }

  *(v1 + 8) = v19;
  return result;
}

uint64_t sub_1D48C8D28()
{
  v4 = v0 ^ (v2 + 2225);
  v10 = v8;
  v9 = v3 - 143681137 * ((&v9 + 242422767 - 2 * (&v9 & 0xE7313EF)) ^ 0xE8DBBFFF) + v4;
  (*(v1 + 8 * (v4 ^ v2)))(&v9);
  v10 = v7;
  v9 = v3 - 143681137 * ((((&v9 | 0x9D4BFF1E) ^ 0xFFFFFFFE) - (~&v9 | 0x62B400E1)) ^ 0x841CACF1) + v4;
  (*(v1 + 8 * (v4 ^ v2)))(&v9);
  return (v6 ^ 0xEAA5FDFF) + 1029674924 + ((v6 << (v3 + (v0 ^ (v2 - 79)) + 77)) & 0xD54BFBFE) - 671454635;
}

uint64_t sub_1D48C8D6C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = a1 + 911;
  STACK[0x418] = 0;
  v58 = 50899313 * (((v55 - 192) & 0x62B54F6C | ~((v55 - 192) | 0x62B54F6C)) ^ 0xB7819AE9);
  *(v55 - 184) = v58 - 543127210;
  *(v55 - 168) = v58 + v57 - 413;
  *(v55 - 192) = &STACK[0x458];
  *(v55 - 160) = 0;
  *(v55 - 176) = &STACK[0x418];
  v59 = (*(v56 + 8 * (v57 + 1314)))(v55 - 192);
  return (*(a55 + 8 * ((57 * (((v57 - 2) ^ (*(v55 - 152) == 671454635)) & 1)) ^ v57)))(v59);
}

uint64_t sub_1D48C8E38@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char *a23, char *a24)
{
  v30 = (v24 - 403422959) & 0x180BBFEF;
  v31 = ((2 * (((v29 - 144) ^ 0x42E4B7C9) & 0xD178EF0) - ((v29 - 144) ^ 0x42E4B7C9) - 219647729) ^ 0x610EEBB9) * v26;
  *(v29 - 128) = (v24 + 1220) ^ v31;
  *(v29 - 124) = v25 + v31 + (v30 ^ 0x37D316D0);
  *(v29 - 120) = &a17;
  *(v29 - 136) = a1;
  (*(v27 + 8 * (v24 + 2058)))(v29 - 144);
  a23 = &a21;
  a24 = &a19;
  *(v29 - 128) = v30 - 587 + 50899313 * ((2 * ((v29 - 144) & 0x5BAFFB50) - (v29 - 144) - 1538259793) ^ 0x8E9B2ED5);
  *(v29 - 144) = a12;
  *(v29 - 136) = &a23;
  (*(v27 + 8 * (v30 ^ 0x924)))(v29 - 144);
  *(v29 - 144) = (v30 - 271) ^ (143681137 * (((((v29 - 144) | 0xB18D153E) ^ 0xFFFFFFFE) - (~(v29 - 144) | 0x4E72EAC1)) ^ 0xA8DA46D1));
  *(v29 - 136) = a12;
  *(v29 - 128) = &a23;
  *(v29 - 120) = &a15;
  *(v29 - 112) = &a17;
  (*(v27 + 8 * (v30 + 1791)))(v29 - 144);
  *(v29 - 136) = a24;
  *(v29 - 128) = &a15;
  *(v29 - 144) = (v30 + 1356) ^ (1564307779 * ((1599651445 - ((v29 - 144) | 0x5F58BE75) + ((v29 - 144) | 0xA0A7418A)) ^ 0x37AA8D99));
  *(v29 - 120) = &a15;
  *(v29 - 112) = &a23;
  *(v29 - 104) = a12;
  (*(v27 + 8 * (v30 ^ 0x933)))(v29 - 144);
  *(v29 - 144) = a5;
  *(v29 - 136) = v30 + 1605 + 435584651 * (((v29 - 144) & 0xBAA7B56A | ~((v29 - 144) | 0xBAA7B56A)) ^ 0x286A50C3);
  *(v29 - 128) = &a23;
  *(v29 - 120) = &a15;
  *(v29 - 112) = a12;
  *(v29 - 104) = &a15;
  (*(v27 + 8 * (v30 + 1872)))(v29 - 144);
  *(v29 - 128) = v30 - 587 + 50899313 * ((v29 - 144) ^ 0x2ACB2A7A);
  *(v29 - 144) = v28;
  *(v29 - 136) = &a23;
  (*(v27 + 8 * (v30 + 1828)))(v29 - 144);
  *(v29 - 144) = (v30 - 271) ^ (143681137 * ((v29 - 144) ^ 0xE6A8AC10));
  *(v29 - 120) = &a13;
  *(v29 - 112) = &a17;
  *(v29 - 136) = v28;
  *(v29 - 128) = &a23;
  (*(v27 + 8 * (v30 ^ 0x901)))(v29 - 144);
  v32 = a24;
  v33 = 1564307779 * ((v29 - 144) ^ 0x970DCC13);
  *(v29 - 144) = (v30 + 1356) ^ v33;
  *(v29 - 112) = &a23;
  *(v29 - 104) = v28;
  *(v29 - 136) = v32;
  *(v29 - 128) = &a13;
  *(v29 - 120) = &a13;
  (*(v27 + 8 * (v30 + 1837)))(v29 - 144);
  *(v29 - 136) = v30 + 1605 + 435584651 * ((((v29 - 144) | 0x47B68FB5) + (~(v29 - 144) | 0xB849704A)) ^ 0x2A8495E2);
  *(v29 - 128) = &a23;
  *(v29 - 120) = &a13;
  *(v29 - 112) = v28;
  *(v29 - 104) = &a13;
  *(v29 - 144) = a6;
  (*(v27 + 8 * (v30 ^ 0x950)))(v29 - 144);
  *(v29 - 144) = &a13;
  *(v29 - 128) = &a15;
  *(v29 - 136) = (v30 + 1339) ^ (1504884919 * ((2 * ((v29 - 144) & 0x901A9E0) - (v29 - 144) - 151103974) ^ 0xD3DE101));
  (*(v27 + 8 * (v30 ^ 0x94E)))(v29 - 144);
  *(v29 - 136) = &a13;
  *(v29 - 144) = v30 - v33 - 24;
  v34 = (*(v27 + 8 * (v30 ^ 0x94C)))(v29 - 144);
  return (*(v27 + 8 * (((*(v29 - 128) > 0x4D0AA395u) * ((v30 - 275) ^ (v30 - 270))) ^ v30)))(v34);
}

void sub_1D48C9294(_DWORD *a1)
{
  v1 = *a1 + 1504884919 * ((-2 - ((a1 | 0x8BB6A1E7) + (~a1 | 0x74495E18))) ^ 0x8F8AE903);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48C93EC@<X0>(int a1@<W8>)
{
  if ((a1 + 1884712538) <= 0x18 && ((1 << (a1 + 90)) & 0x1094001) != 0)
  {
    return (*(v1 + 8 * ((((*(v3 + 48 * v2 + 40) & 1) == 0) * ((v4 - 1982673035) ^ 0xD1E)) ^ (v4 - 1982675272))))();
  }

  else
  {
    return (*(v1 + 8 * ((((*(v3 + 48 * v2 + 40) & 8) == 0) * (((v4 - 1982676380) | 0x908) ^ 0x93C)) ^ (v4 - 1982674379))))(4294925278);
  }
}

uint64_t sub_1D48C9470(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6)
{
  v11 = v7 + 2;
  v12 = v9 + 2;
  v13 = vaddq_s8(vaddq_s8(*v11, a6), vmvnq_s8(vandq_s8(vaddq_s8(*v11, *v11), a5)));
  v12[-1] = vaddq_s8(vaddq_s8(v11[-1], a6), vmvnq_s8(vandq_s8(vaddq_s8(v11[-1], v11[-1]), a5)));
  *v12 = v13;
  return (*(v10 + 8 * (((v8 == 32) * (((v6 + 1120) | 0x800) - 3213)) ^ (v6 + 2808))))();
}

uint64_t sub_1D48C9480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, int a19)
{
  v25 = &a19 + 6 * (v23 + a9 + v20 + 260884591);
  v25[2] = v22;
  v25[3] = a2;
  *(v25 + 2) = a14;
  v25[6] = a16;
  a19 = v20 + 1;
  return (*(v21 + 8 * ((623 * (a5 + v19 + a9 - 31 - 193 < v24)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1D48C9550(int a1, int8x16_t *a2, char a3, uint64_t a4, unint64_t a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v18 = (a3 - 16) & 0xF;
  v19 = v16;
  v20.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v20.i64[1] = a11;
  v21 = vrev64q_s8(vmulq_s8(v20, a12));
  *a2 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v14 + v18 - 15), *a2), *(v15 + v18 - 15)), *(v13 + v18 + ((a1 + 2956) ^ a5) - 15)), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * (((a4 == 16) * v12) ^ a1)))();
}

uint64_t sub_1D48C9590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _BYTE *a13, int a14, char a15, __int16 a16, char a17, int a18, int a19, char a20, char *a21, _BYTE *a22, char *a23, char *a24, unsigned int a25)
{
  a25 = v25 - 1037613739 * ((&a21 - 1722475028 - 2 * (&a21 & 0x99551DEC)) ^ 0x48573093) + 68670632;
  a24 = &a17;
  a21 = &a15;
  a22 = a13;
  (*(v26 + 8 * (v25 + 2444)))(&a21);
  a21 = a13;
  a23 = &a20;
  LODWORD(a24) = (v25 + 747) ^ (843532609 * (((&a21 | 0xDA61AC5) - (&a21 & 0xDA61AC5)) ^ 0x51EB4E40));
  (*(v26 + 8 * (v25 ^ 0xB94)))(&a21);
  a22 = a13;
  LODWORD(a21) = (v25 + 494) ^ (1504884919 * ((((2 * &a21) | 0x6144C7A4) - &a21 - 815948754) ^ 0xCB61D4C9));
  v28 = (*(v26 + 8 * (v25 + 2420)))(&a21);
  return (*(v26 + 8 * ((2340 * (HIDWORD(a21) == ((v27 + ((v25 - 1283) | 0x60) + 52) ^ v25 ^ 0x6EF))) ^ v25)))(v28);
}

uint64_t sub_1D48C9704(unint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x318] = a1;
  LODWORD(STACK[0x294]) = v4;
  v5 = STACK[0x448];
  v6 = (v3 + 722114908) & 0xD4F56D3D;
  STACK[0x3E0] = v6 - 2014;
  *(v5 + v6 - 2014) = (&STACK[0x3E0] ^ 0xBA) * (&STACK[0x3E0] + 17);
  return (*(a3 + 8 * ((219 * (STACK[0x3E0] == 0)) ^ (v3 + 1727))))();
}

uint64_t sub_1D48C9794(uint64_t a1)
{
  v5 = v4 - 574;
  v6 = *(v3 + 340);
  v7 = *(a1 + 4) + v1 + (v5 ^ 0x15D976DC);
  if (v6 > (v5 ^ 0xAFB4CEEF) != v7 < 0x504B3224)
  {
    v8 = v6 > (v5 ^ 0xAFB4CEEF);
  }

  else
  {
    v8 = v6 + 1347105316 > v7;
  }

  return (*(v2 + 8 * ((120 * v8) ^ v5)))();
}

uint64_t sub_1D48C9810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, uint64_t a25, int a26, uint64_t a27)
{
  v32 = ((2 * ((&a23 ^ 0xB7A3270E) & 0x403265AA) - (&a23 ^ 0xB7A3270E) - 1077044651) ^ 0x164C300E) * v28;
  a27 = a21;
  a25 = a15;
  a23 = v29 ^ v32;
  a26 = v32 ^ ((a14 ^ 0x1B3EF0FE) - 186818688 + ((2 * a14) & 0x367DE1FC));
  v33 = (*(v31 + 8 * (v27 | 0x86E)))(&a23);
  return (*(v31 + 8 * ((3387 * (a24 == v30 + (v27 ^ 0x1CC) - 1997)) ^ v27)))(v33);
}

uint64_t sub_1D48C98E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v68 = STACK[0x2B8];
  v69 = ((2 * LODWORD(STACK[0x314])) & 0xB9BBBD26) - 344235008 + ((37 * (v65 ^ 0x1CB) + 1558043826) ^ LODWORD(STACK[0x314]));
  v70 = 843532609 * ((1964390167 - ((v66 - 192) | 0x75163717) + ((v66 - 192) | 0x8AE9C8E8)) ^ 0xD6A49C6D);
  *(v66 - 192) = v63;
  *(v66 - 180) = v65 - v70 - 542396980;
  *(v66 - 176) = (v62 ^ 0x7F37B7BB) - v70 + v64 - 268441121;
  *(v66 - 184) = v69 ^ v70;
  *(v66 - 144) = v68;
  *(v66 - 152) = a35;
  *(v66 - 168) = a36;
  v71 = (*(v67 + 8 * (v65 + 3312)))(v66 - 192);
  v72 = *(v66 - 160);
  LODWORD(STACK[0x2FC]) = v72;
  return (*(a62 + 8 * ((39 * (v72 != 671454635)) ^ v65)))(v71);
}

uint64_t sub_1D48C9A80@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7) ^ 0x82;
  return (*(v6 + 8 * (((v7 == 0) * (35 * (v5 ^ (a2 + 2278)) - 2126)) ^ (v3 + v5 + 628))))();
}

uint64_t sub_1D48C9DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, void *a27, int *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v40 = 4 * (v39 + v35 + v37);
  v41 = ((*(*a27 + (*a28 & 0xFFFFFFFFC6B3432CLL)) ^ (a33 + v40)) & 0x7FFFFFFF) * (v33 - 2039583037);
  v42 = v41 ^ HIWORD(v41);
  v43 = 4 * ((-2039581373 * v42) >> 24);
  *(a32 + v40) = *(a33 + v40) ^ (*(a32 + v40) - ((2 * *(a32 + v40)) & 0x869D6E46) - 1018251485) ^ ((((v33 - 1661 - v35) & ((v33 - 1661) ^ (-2 - v36)) | v35 & ~(v33 - 1661)) >> 31) | 0xF3D3FADE) ^ *(*(&off_1F5033D40 + v33 - 1435) + v43 - 8) ^ *(*(&off_1F5033D40 + a25) + v43 - 12) ^ *(*(&off_1F5033D40 + v33 - 1565) + v43 - 4) ^ (1967325184 * v42) ^ (-2039581373 * v42) ^ (1867044709 * ((-2039581373 * v42) >> 24)) ^ 0x309D4DFD;
  return (*(v38 + 8 * ((463 * (((v33 + 1907816707) & 0x8E4906FC ^ 0xFFFFF97F) + v34 != ((v33 + 242677867) & 0xF1890794) - 1664)) ^ (v33 - 1430))))();
}

uint64_t sub_1D48C9F80(uint64_t (*a1)(uint64_t, char *), unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31)
{
  v38 = (v32 - 1766);
  v39 = (a2 + v33);
  *v39 = v34;
  v39[1] = v35;
  *(a2 + (v38 ^ 0x36) + v33) = v31;
  v39[3] = a3;
  v40 = 1785193651 * ((2 * ((v37 - 168) & 0x71A3BC50) - (v37 - 168) - 1906555989) ^ 0x787DE787);
  STACK[0x308] = a2;
  *(v37 - 160) = v40 + v38 + 2539;
  *(v37 - 156) = 118099106 - v40;
  v41 = (*(v36 + 8 * (v38 + 3701)))(v37 - 168);
  return a1(v41, &a31);
}

uint64_t sub_1D48CA088@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>, int8x16_t a3@<Q3>, int8x16_t a4@<Q4>)
{
  v10 = v5 + 32;
  v11 = ((v7 - 585) ^ v10) + v4;
  v12 = *(a1 + v11 - 15);
  v13 = *(a1 + v11 - 31);
  v14 = a2 + v11;
  *(v14 - 15) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a3)), a4);
  *(v14 - 31) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a3)), a4);
  return (*(v9 + 8 * ((1588 * (v8 == v10)) ^ v6)))();
}

uint64_t sub_1D48CA090(unint64_t a1)
{
  v11 = *(v1 + 8);
  v12 = (*(v11 + 4 * v3) ^ v5) + HIDWORD(a1);
  *(v11 + 4 * v3) = v8 + v2 + v12 - (v10 & (2 * v12)) - 1543;
  return (*(v9 + 8 * (((v3 + 1 == v6) * v7) ^ v4)))();
}

uint64_t sub_1D48CA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = &a17;
  *(v20 - 112) = a16;
  *(v20 - 104) = (v19 + 251) ^ (((v20 - 128) ^ 0x4B6BCC7E) * v18);
  v21 = (*(v17 + 8 * (v19 + 3475)))(v20 - 128);
  return (*(v17 + 8 * ((461 * ((((v19 ^ 0x65) - 104) ^ (*(v20 - 128) > 0x29ADEB87u)) & 1)) ^ v19)))(v21);
}

uint64_t sub_1D48CA1C0@<X0>(int a1@<W8>, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, char a26)
{
  *(v29 - 208) = 0xCE6BACA4572F6656;
  *(v29 - 200) = 0xC1A27FA322B19ABDLL;
  v30 = ((a1 - 573364703) & 0x222CD66A) - 1092;
  if ((v26 & 0x20) != 0)
  {
    v31 = 8;
  }

  else
  {
    v31 = 6;
  }

  if (((v30 ^ 0x44) & v26) != 0)
  {
    v32 = v31;
  }

  else
  {
    v32 = v27;
  }

  v33 = *(a10 + 20) - a3;
  v34 = **(a10 + 8);
  v35 = 1037613739 * ((2 * ((v29 - 168) & 0x786DAD50) - (v29 - 168) + 127029933) ^ 0xD6907FD2);
  *(v29 - 152) = v29 - 224;
  *(v29 - 144) = v34;
  *(v29 - 168) = &a24;
  *(v29 - 120) = v29 - 208;
  *(v29 - 112) = &a26;
  *(v29 - 128) = (v33 * ((1839 * (v30 ^ 6)) ^ 0x7A3B7681) - 1366200699) ^ v35;
  *(v29 - 136) = v35 + v30 + 663;
  *(v29 - 132) = (v32 ^ 0xEFDDFEFF) + ((3 * (v30 ^ 0x4CE)) ^ 0x77B7F3A5) + 2 * v32 + v35;
  v36 = (*(v28 + 8 * (v30 ^ 0xEC2)))(v29 - 168);
  return (*(v28 + 8 * ((769 * (*(v29 - 160) == 671454635)) ^ v30)))(v36);
}

uint64_t sub_1D48CA1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(const char *, uint64_t, void, uint64_t, __n128, __n128, __n128, __n128), int a18, unsigned int a19, unsigned int a20, unsigned int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v36 = (v35 - 220);
  v37.n128_u64[0] = 0x8282828282828282;
  v37.n128_u64[1] = 0x8282828282828282;
  v38 = vdupq_n_s32(0x73E6502Fu);
  a23 = v34 - 16;
  v39 = vdupq_n_s32(0x73E6502Bu);
  v40.n128_u64[0] = 0x404040404040404;
  v40.n128_u64[1] = 0x404040404040404;
  v41 = (a8 + 812573506) & 0x4A447FF9;
  v42 = (v41 + 770166278) & 0xD2182FAD;
  a21 = v41 ^ 0x707;
  a22 = v41;
  a20 = v41 ^ 0x762;
  a19 = v41 ^ 0x7D7;
  a17 = *(v31 + 8 * v27);
  v43 = (&a27 + v30);
  a24 = v30 + 320;
  v44 = *(v35 - 148);
  v45 = *(v35 - 144);
  v47 = *(v35 - 140);
  v46 = *(v35 - 136);
  v48 = (*(v35 - 124) - 2 * (*(v35 - 124) & 7) + 11);
  if (v48 == 9)
  {
    v128 = vld4q_s8(v36);
    v91 = veorq_s8(v128.val[0], v37);
    v92 = vmovl_high_u8(v91);
    v93 = vmovl_u8(*v91.i8);
    v94 = veorq_s8(v128.val[1], v37);
    _Q21 = vmovl_high_u8(v94);
    _Q20 = vmovl_u8(*v94.i8);
    v97 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v98 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v99 = veorq_s8(v128.val[2], v37);
    v100 = vmovl_u8(*v99.i8);
    v101 = vmovl_high_u8(v99);
    v128.val[0] = veorq_s8(v128.val[3], v37);
    v128.val[1] = vmovl_u8(*v128.val[0].i8);
    v128.val[2] = vmovl_u16(*v128.val[1].i8);
    v128.val[1] = vmovl_high_u16(v128.val[1]);
    v128.val[0] = vmovl_high_u8(v128.val[0]);
    v128.val[3] = vmovl_u16(*v128.val[0].i8);
    v128.val[0] = vmovl_high_u16(v128.val[0]);
    v102 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v101, 8uLL)), vshlq_n_s32(vmovl_high_u16(v92), 0x18uLL)), v128.val[0]);
    v103 = vorrq_s8(vorrq_s8(vorrq_s8(v98, vshll_n_u16(*v101.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v92.i8), 0x18uLL)), v128.val[3]);
    v104 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v100, 8uLL)), vshlq_n_s32(vmovl_high_u16(v93), 0x18uLL)), v128.val[1]);
    v105 = vorrq_s8(vorrq_s8(vorrq_s8(v97, vshll_n_u16(*v100.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v93.i8), 0x18uLL)), v128.val[2]);
    v128.val[0] = veorq_s8(vandq_s8(v102, v38), (*v128.val & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v128.val[3] = veorq_s8(vandq_s8(v103, v38), (*&v128.val[3] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v128.val[1] = veorq_s8(vandq_s8(v104, v38), (*&v128.val[1] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v128.val[2] = veorq_s8(vandq_s8(v105, v38), (*&v128.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    *v43 = vaddq_s32(vsubq_s32(v105, vaddq_s32(v128.val[2], v128.val[2])), v39);
    v43[1] = vaddq_s32(vsubq_s32(v104, vaddq_s32(v128.val[1], v128.val[1])), v39);
    v43[2] = vaddq_s32(vsubq_s32(v103, vaddq_s32(v128.val[3], v128.val[3])), v39);
    v43[3] = vaddq_s32(vsubq_s32(v102, vaddq_s32(v128.val[0], v128.val[0])), v39);
    v106 = &v43[516455202].i32[v32 + 1];
    *v106 = v28 ^ __ROR4__(*(v106 - 8) ^ *(v106 - 3) ^ *(v106 - 14) ^ *(v106 - 16), 31);
    return (*(v31 + 8 * (((v34 != 2065820746) | (2 * (v34 != 2065820746))) ^ a8 ^ (a8 + 99))))(a23, 98, a3, v42, v45);
  }

  else if (v48 == 10)
  {
    v127 = vld4q_s8(v36);
    v49 = veorq_s8(v127.val[0], v37);
    v50 = vmovl_u8(*v49.i8);
    v51 = vmovl_u16(*v50.i8);
    v52 = vmovl_high_u8(v49);
    v53 = vmovl_u16(*v52.i8);
    v54 = veorq_s8(v127.val[1], v37);
    v55 = vmovl_high_u8(v54);
    v56 = vmovl_u8(*v54.i8);
    v57 = vorrq_s8(vshll_high_n_u16(v55, 8uLL), vmovl_high_u16(v52));
    v58 = vorrq_s8(vshll_n_u16(*v55.i8, 8uLL), v53);
    v59 = vorrq_s8(vshll_high_n_u16(v56, 8uLL), vmovl_high_u16(v50));
    v60 = vorrq_s8(vshll_n_u16(*v56.i8, 8uLL), v51);
    v61 = veorq_s8(v127.val[2], v37);
    _Q21 = vmovl_u8(*v61.i8);
    _Q20 = vmovl_high_u8(v61);
    __asm
    {
      SHLL2           V22.4S, V20.8H, #0x10
      SHLL2           V23.4S, V21.8H, #0x10
    }

    v127.val[0] = veorq_s8(v127.val[3], v37);
    v127.val[1] = vmovl_high_u8(v127.val[0]);
    v127.val[0] = vmovl_u8(*v127.val[0].i8);
    v127.val[2] = vorrq_s8(vorrq_s8(v57, _Q22), vshlq_n_s32(vmovl_high_u16(v127.val[1]), 0x18uLL));
    v127.val[1] = vorrq_s8(vorrq_s8(v58, vshll_n_s16(*_Q20.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v127.val[1].i8), 0x18uLL));
    v127.val[3] = vorrq_s8(vorrq_s8(v59, _Q23), vshlq_n_s32(vmovl_high_u16(v127.val[0]), 0x18uLL));
    v127.val[0] = vorrq_s8(vorrq_s8(v60, vshll_n_s16(*_Q21.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v127.val[0].i8), 0x18uLL));
    v70 = vdupq_n_s32(0xE7CCA056);
    *v43 = vaddq_s32(vsubq_s32(v127.val[0], vandq_s8(vaddq_s32(v127.val[0], v127.val[0]), v70)), v39);
    v43[1] = vaddq_s32(vsubq_s32(v127.val[3], vandq_s8(vaddq_s32(v127.val[3], v127.val[3]), v70)), v39);
    v43[2] = vaddq_s32(vsubq_s32(v127.val[1], vandq_s8(vaddq_s32(v127.val[1], v127.val[1]), v70)), v39);
    v43[3] = vaddq_s32(vsubq_s32(v127.val[2], vandq_s8(vaddq_s32(v127.val[2], v127.val[2]), v70)), v39);
    v71 = *(&off_1F5033D40 + a21) - 4;
    v72 = *(&off_1F5033D40 + a20) - 8;
    v73 = *(&off_1F5033D40 + a19);
    v74 = (v45 & 0x9D63905E ^ 0x99439056 ^ (v45 ^ 0xB9D3B776) & (v46 ^ 0xDB4FD8D7) | v47 & 0x8BCCD825 ^ 0x20C4801 ^ (v42 ^ v45 ^ 0xCDE09521) & (v47 ^ v33)) + (v44 ^ v33) + *&v72[4 * a23 + 4 * v32] + (v43->i32[(v71[a23 + v32] - 15)] ^ v28);
    v75 = *(v73 + a23 + v32);
    v76 = (v75 + 80) & 0x6E ^ 0x58 ^ ((v75 + 80) ^ 0x6E) & (2 * ((v75 + 80) & 0x6E));
    v77 = ((2 * ((v75 + 80) ^ 0x36)) ^ 0xB0) & ((v75 + 80) ^ 0x36) ^ (2 * ((v75 + 80) ^ 0x36)) & 0x58;
    v78 = ((4 * v76) ^ 0x52) & (v77 ^ 0x10);
    v79 = ((4 * v77) ^ 0x72) & (v77 ^ 0x10);
    v77 &= 0x32u;
    v80 = v79 ^ v77;
    v81 = v74 ^ v29 ^ ((v74 ^ 0x288A728C) - 1861661358) ^ ((v74 ^ 0x380CB5E4) - 2121299398) ^ ((v74 ^ 0xA905C8A5) + 277280633) ^ ((v74 ^ 0xFFFFCFEF) + 1182593075);
    v82 = (((v45 ^ 0x5A20E43C) - 1512105020) ^ ((v45 ^ 0x5C7F32F9) - 1551839993) ^ ((v45 ^ 0x40739E4C) - 1081318988)) + 1847524872 + ((v81 << (((v75 + 80) ^ (2 * (v77 ^ v76 ^ v78 ^ v80 & 0x32 ^ (v80 ^ 0x48) & 0xB2)) ^ 0x79) & 0x12 ^ 2) << (((v75 + 80) ^ (2 * (v77 ^ v76 ^ v78 ^ v80 & 0x32 ^ (v80 ^ 0x48) & 0xB2)) ^ 0x79) & 0xD ^ 5)) | (v81 >> (98 - v75)));
    v83 = (2 * (v82 & 0xD80D4A81)) & (v82 ^ 0x9FBC21D5) ^ v82 & 0xD80D4A81 ^ ((2 * (v82 & 0xD80D4A81)) & 0xF001F0 | 0x7000200);
    v84 = (2 * (v82 ^ 0x9FBC21D5)) & 0x47B16B54 ^ 0x40912954 ^ ((2 * (v82 ^ 0x9FBC21D5)) ^ 0x8F62D6A8) & (v82 ^ 0x9FBC21D5);
    v85 = (4 * v83) & 0x47B16B54 ^ v83 ^ ((4 * v83) ^ 0x1C000800) & v84;
    v86 = (4 * v84) & 0x47B16B54 ^ 0x41304204 ^ ((4 * v84) ^ 0x1EC5AD50) & v84;
    v87 = (16 * v85) & 0x47B16B50 ^ v85 ^ ((16 * v85) ^ 0x3000A000) & v86;
    v88 = (16 * v86) & 0x47B16B50 ^ 0x4A14A14 ^ ((16 * v86) ^ 0x7B16B540) & v86;
    v89 = v87 ^ (v87 << 8) & 0x47B16B00 ^ ((v87 << 8) ^ 0x2A0000) & v88 ^ 0x44914154;
    return (*(v31 + 8 * ((4014 * (a23 + 1 == v34)) ^ a22)))(1202809684, 98, v72, v42, 1043431474, v82 ^ (2 * ((v89 << 16) & 0x47B10000 ^ v89 ^ ((v89 << 16) ^ 0x6B540000) & ((v88 << 8) & 0x47B10000 ^ 0x46900000 ^ ((v88 << 8) ^ 0x316B0000) & v88))) ^ 0x9763D4A0, v71, v73, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v107 = (((v44 ^ 0x6687BF77) - 1720172407) ^ ((v44 ^ 0x4933E488) - 1228137608) ^ ((v44 ^ 0x69981376) - 1771574134)) + (((v44 ^ 0xD50A98B2) + 720725838) ^ ((v44 ^ 0xF63E97FF) + 163670017) ^ ((v44 ^ 0x651847C4) - 1696090052)) - 1711302204;
    v108 = (((v45 ^ 0xC41B1B4D) + 1004856499) ^ ((v45 ^ 0xC4BEFEC8) + 994115896) ^ ((v45 ^ 0x4689AD0C) - 1183427852)) + (((v45 ^ 0x1FF45E4C) - 536108620) ^ ((v45 ^ 0x87BAD64C) + 2017798580) ^ ((v45 ^ 0xDE62C089) + 563953527)) - 476785969;
    v109 = (v108 ^ 0x28BBC6B) & (2 * (v108 & 0xA8C3BE43)) ^ v108 & 0xA8C3BE43;
    v110 = ((2 * (v108 ^ 0x1289E4ED)) ^ 0x7494B55C) & (v108 ^ 0x1289E4ED) ^ (2 * (v108 ^ 0x1289E4ED)) & 0xBA4A5AAE;
    v111 = v110 ^ 0x8A4A4AA2;
    v112 = (v110 ^ 0x2000100C) & (4 * v109) ^ v109;
    v113 = ((4 * v111) ^ 0xE9296AB8) & v111 ^ (4 * v111) & 0xBA4A5AAC;
    v114 = (v113 ^ 0xA8084AA0) & (16 * v112) ^ v112;
    v115 = ((16 * (v113 ^ 0x12421006)) ^ 0xA4A5AAE0) & (v113 ^ 0x12421006) ^ (16 * (v113 ^ 0x12421006)) & 0xBA4A5AA0;
    v116 = v114 ^ 0xBA4A5AAE ^ (v115 ^ 0xA0000A00) & (v114 << 8);
    *(v35 - 148) = v107 ^ ((v107 ^ 0x22BD4DDA) - 790250856) ^ ((v107 ^ 0x768B16A3) - 2066488849) ^ ((v107 ^ 0xE62EAC20) + 343300974) ^ ((v107 ^ 0xBFBFFFEB) + 1306986663) ^ 0x4B8B403B;
    *(v35 - 144) = v108 ^ (2 * ((v116 << 16) & 0x3A4A0000 ^ v116 ^ ((v116 << 16) ^ 0x5AAE0000) & (((v115 ^ 0x1A4A500E) << 8) & 0x3A4A0000 ^ (((v115 ^ 0x1A4A500E) << 8) ^ 0x4A5A0000) & (v115 ^ 0x1A4A500E) ^ 0x30000000))) ^ 0xAE6F4396;
    v117 = (((v47 ^ 0x40AAF296) - 1084945046) ^ ((v47 ^ 0x744AB0A9) - 1951051945) ^ ((v47 ^ 0x72CC0AB6) - 1925974710)) + (((*(v35 - 140) ^ 0xEE5EEC5C) + 295768996) ^ ((*(v35 - 140) ^ 0x2932BA76) - 691190390) ^ ((*(v35 - 140) ^ 0x81401EA3) + 2126504285)) - 719039240;
    v118 = (v117 ^ 0xB7243E19) & (2 * (v117 & 0xB7343C1A)) ^ v117 & 0xB7343C1A;
    v119 = ((2 * (v117 ^ 0x910C4E09)) ^ 0x4C70E426) & (v117 ^ 0x910C4E09) ^ (2 * (v117 ^ 0x910C4E09)) & 0x26387212;
    v120 = v119 ^ 0x22081211;
    v121 = (v119 ^ 0x4306000) & (4 * v118) ^ v118;
    v122 = ((4 * v120) ^ 0x98E1C84C) & v120 ^ (4 * v120) & 0x26387210;
    v123 = (v122 ^ 0x204000) & (16 * v121) ^ v121;
    v124 = ((16 * (v122 ^ 0x26183213)) ^ 0x63872130) & (v122 ^ 0x26183213) ^ (16 * (v122 ^ 0x26183213)) & 0x26387210;
    v125 = v123 ^ 0x26387213 ^ (v124 ^ 0x22002000) & (v123 << 8);
    v126 = (((v46 ^ 0x2DE5DAA4) - 770038436) ^ ((v46 ^ 0x3D06D76) - 63991158) ^ ((v46 ^ 0x6819FF5B) - 1746534235)) + (((*(v35 - 136) ^ 0xB22F028E) + 1305542002) ^ ((*(v35 - 136) ^ 0x499BDE0E) - 1234951694) ^ ((*(v35 - 136) ^ 0xBD989409) + 1114074103)) + 69813275;
    *(v35 - 140) = v117 ^ (2 * ((v125 << 16) & 0x26380000 ^ v125 ^ ((v125 << 16) ^ 0x72130000) & (((v124 ^ 0x4385203) << 8) & 0x26380000 ^ 0x6080000 ^ (((v124 ^ 0x4385203) << 8) ^ 0x38720000) & (v124 ^ 0x4385203)))) ^ 0xF94890B5;
    *(v35 - 136) = v126 ^ ((v126 ^ 0x24E9B31F) - 1396244502) ^ ((v126 ^ 0x39401A9C) - 1318103445) ^ ((v126 ^ 0xD086E575) + 1487513988) ^ ((v126 ^ 0xBAFFFFFF) + 852538122) ^ 0x31FCFB80;
    a24 -= 320;
    return a17(v36, 98, 0, v42, v37, v38, v39, v40);
  }
}

uint64_t sub_1D48CA2BC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v7 = a4 + 1068;
  v8 = 7 * ((a4 + 1068) ^ 0xD27);
  v9 = v5 - a2;
  if (v4 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  return (*(v6 + 8 * ((79 * (v10 + 1 < (v8 ^ 0x799u))) ^ v7)))();
}

uint64_t sub_1D48CA30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, uint64_t a63)
{
  v68 = (*(v67 + 8 * (v63 + 1569)))(LODWORD(STACK[0x21C]), a2, STACK[0x320]);
  if (v68)
  {
    if (v68 == 268435459)
    {
      LODWORD(STACK[0x38C]) = 671412451;
      return (*(a63 + 8 * ((((a62 ^ 0x5C0) + 702 + 163 * (a62 ^ 0x5C0) - 2940) * (STACK[0x2B0] == 0)) ^ (a62 + 1676))))();
    }

    else
    {
      v78 = 210068311 * ((v66 - 192) ^ 0x576F9AD7);
      *(v66 - 192) = &STACK[0x38C];
      *(v66 - 184) = ((v68 ^ 0x7845BFAF) - 1346382340 + ((2 * v68) & 0xF08B7F5E)) ^ v78;
      *(v66 - 180) = a62 - v78 - 550;
      v79 = (*(a63 + 8 * (a62 ^ 0xB53)))(v66 - 192);
      return (*(a63 + 8 * ((((a62 ^ 0x5C0) + 702 + 163 * (a62 ^ 0x5C0) - 2940) * (STACK[0x2B0] == 0)) ^ (a62 + 1676))))(v79);
    }
  }

  else
  {
    v80 = STACK[0x400];
    STACK[0x450] = &STACK[0x4B0] + v64;
    LODWORD(STACK[0x310]) = 556152022;
    STACK[0x2F0] = v65 + (a62 - 557) - 1121;
    STACK[0x318] = 0;
    LODWORD(STACK[0x294]) = 1499319901;
    *(v66 - 188) = a62 + 143681137 * ((v66 + 1821461607 - 2 * ((v66 - 192) & 0x6C914D27)) ^ 0x8A39E137) + 1986156790;
    (*(a63 + 8 * (a62 + 2338)))(v66 - 192);
    v70 = (*(a63 + 8 * (a62 + 2241)))(336);
    return (*(a63 + 8 * ((14 * (v70 == 0)) ^ (a62 + 1721))))(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v80, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
  }
}

uint64_t sub_1D48CA370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (v18 + 1340) ^ (843532609 * ((((2 * &a15) | 0xF547AA24) - &a15 + 89926382) ^ 0xA6EE8197));
  a17 = &a12;
  a15 = a13;
  (*(v19 + 8 * (v18 ^ 0xC45)))(&a15);
  LODWORD(a15) = (v18 + 1087) ^ (1504884919 * ((&a15 & 0x1489636C | ~(&a15 | 0x1489636C)) ^ 0x10B52B88));
  a16 = a13;
  v21 = (*(v19 + 8 * (v18 + 3013)))(&a15);
  return (*(v19 + 8 * (((HIDWORD(a15) == v20) * ((v18 + 255611963) & 0xF0C3AB76 ^ 0x37A)) ^ v18)))(v21);
}

uint64_t sub_1D48CA4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, unsigned int a20, uint64_t a21)
{
  v28 = 742307843 * (((&a17 | 0xF6239517) - (&a17 & 0xF6239517)) ^ 0xE8011842);
  a21 = a12;
  a20 = (((2 * v23) & 0x2BF8E2FC) + (v23 ^ 0x95FC7382 ^ v27 ^ 0x7B4) + 2048909056) ^ v28;
  a17 = v24 ^ v28;
  a19 = v22;
  v29 = (*(v26 + 8 * v25))(&a17);
  return (*(v26 + 8 * ((3546 * (a18 == v21)) ^ v27)))(v29);
}

uint64_t sub_1D48CA594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, int a20, unsigned int a21, char *a22)
{
  v26 = 675097751 * ((678052162 - (&a17 | 0x286A4142) + (&a17 | 0xD795BEBD)) ^ 0x94D59B2B);
  a17 = a12;
  a22 = &a15;
  a18 = (v25 + 1421511161) ^ v26;
  a19 = v26 ^ 0xBF084631;
  a21 = v26 ^ 0xA33F4F7E;
  v27 = (*(v24 + 8 * (v25 ^ 0xB13u)))(&a17);
  return (*(v24 + 8 * (((a20 == (v23 ^ (v22 + 428))) * (((v25 - 1311) | 0x800) - 2071)) ^ v25)))(v27);
}

void sub_1D48CAAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20, int a21, unsigned int a22, int a23)
{
  v27 = (((&a19 | 0xD0D516FB) + (~&a19 | 0x2F2AE904)) ^ 0x47D8DAE9) * v26;
  a23 = -v27 - 1274312049;
  a19 = v27 + 2 * (a13 >> ((v23 + 52) ^ 0x1E)) + ((a13 >> ((v23 + 52) ^ 0x1E)) ^ 0xF6EFDFFF) + 2111126836;
  a20 = v27 + 2 * BYTE1(a13) + (BYTE1(a13) ^ 0x5FDFF5FF) - 1162625272;
  a21 = v23 + 1048 - v27 - 1403;
  a22 = ((a13 >> 15) & 0xA6) - v27 + (BYTE2(a13) ^ 0xFBCFFF53) + 2088105968;
  (*(v24 + 8 * (v23 + 3343)))(&a19);
  *v25 = 20;
  (*(v24 + 8 * ((v23 + 820) ^ 0xBBF)))(a10);
  JUMPOUT(0x1D48CABF0);
}

void PhUojZmspd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    v11 = a11 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48CADFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, _DWORD *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v43 = 4 * (v38 - v42 + v39);
  v44 = -2039581373 * ((*(*a32 + (*a33 & 0xABDD9160 ^ v42 & 0xFFFFFFFC)) ^ (a36 + v43)) & (v40 + 2147483024));
  v45 = v44 ^ HIWORD(v44);
  v46 = 4 * ((-2039581373 * v45) >> 24);
  *(a37 + v43) ^= *(a36 + v43) ^ *(*(&off_1F5033D40 + v40 - 456) + v46) ^ *(*(&off_1F5033D40 + (v37 ^ (v37 + 64))) + v46 - 12) ^ *(*(&off_1F5033D40 + (v37 ^ (v37 - 17))) + v46 - 12) ^ (1967325184 * v45) ^ (-2039581373 * v45) ^ (-1562718837 * ((-2039581373 * v45) >> 24));
  return (*(a2 + 8 * ((v40 - 358) | (2 * (v41 - 1 == ((v40 + 111214009) | 0x89140100) + 1883963096)))))();
}

uint64_t sub_1D48CAF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (1037613739 * (((&a12 | 0xF355F4DF) + (~&a12 | 0xCAA0B20)) ^ 0x2257D9A1)) ^ 0x86F54BA0;
  v14 = (*(v13 + 29168))(&a12);
  return (*(v13 + 8 * ((63 * (a12 != 671454635)) ^ 0x29Eu)))(v14);
}

uint64_t sub_1D48CB02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31)
{
  v35 = a31;
  *(v34 - 144) = (v32 + 1626) ^ (1564307779 * ((v34 - 392004889 - 2 * ((v34 - 144) & 0xE8A27B77)) ^ 0x7FAFB764));
  *(v34 - 136) = v35;
  *(v34 - 128) = &a20;
  *(v34 - 112) = &a30;
  *(v34 - 104) = v33;
  *(v34 - 120) = &a20;
  (*(v31 + 8 * (v32 ^ 0x8C5)))(v34 - 144);
  *(v34 - 112) = &a30;
  *(v34 - 104) = v33;
  *(v34 - 144) = (v32 + 1626) ^ (1564307779 * ((2 * ((v34 - 144) & 0x3B127A8) - (v34 - 144) - 61941679) ^ 0x6B431442));
  *(v34 - 128) = &a20;
  *(v34 - 120) = a14;
  *(v34 - 136) = &a20;
  (*(v31 + 8 * (v32 + 2107)))(v34 - 144);
  *(v34 - 136) = (v32 - 1197044071) ^ (1504884919 * (((((v34 - 144) | 0x8239960A) ^ 0xFFFFFFFE) - (~(v34 - 144) | 0x7DC669F5)) ^ 0x8605DEEE));
  *(v34 - 144) = a19;
  *(v34 - 128) = &a20;
  (*(v31 + 8 * (v32 + 2102)))(v34 - 144);
  *(v34 - 144) = &a20;
  *(v34 - 136) = v32 - 1037613739 * ((v34 - 144) ^ 0xD1022D7F) + 1133;
  *(v34 - 128) = &a22;
  (*(v31 + 8 * (v32 ^ 0x8DE)))(v34 - 144);
  *(v34 - 136) = &a22;
  *(v34 - 128) = &a20;
  *(v34 - 144) = v32 - 435584651 * ((((v34 - 144) | 0xA70516E9) - ((v34 - 144) & 0xA70516E9)) ^ 0xCA370CBF) + 306;
  v36 = (*(v31 + 8 * (v32 + 1941)))(v34 - 144);
  return (*(v31 + 8 * (((((v32 - 1245) | 0x5A) ^ 0x1FC) * (a18 != 0)) ^ (v32 + 1014))))(v36);
}

uint64_t sub_1D48CB06C@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  v13 = (*(a1 + 4 * v2) ^ a2) + (v4 ^ HIDWORD(v6));
  v14 = ((v12 + 721580277) & 0xD4FD8618) - 335 + v13 - ((2 * v13) & 0x2F6666214) + v8;
  *(a1 + 4 * v5) = v14 ^ v9;
  *(a1 + 4 * v2) = HIDWORD(v14) ^ v10;
  return (*(v7 + 8 * (v12 ^ ((v3 + 1 == v2) * v11))))();
}

uint64_t sub_1D48CB138(unsigned int a1)
{
  v4 = v2 < 0x4ED0F730;
  if (v4 == (v1 + 1) > 0xFFFFFFFFB12F08CFLL)
  {
    v4 = (((a1 - 774) | 0x82) ^ 0x4ED0F3ABuLL) + v1 < v2;
  }

  return (*(v3 + 8 * (v4 | a1)))();
}

uint64_t sub_1D48CB19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v20.i64[0] = 0x404040404040404;
  v20.i64[1] = 0x404040404040404;
  v21.i64[0] = 0x8282828282828282;
  v21.i64[1] = 0x8282828282828282;
  v22 = vaddq_s8(vsubq_s8(v18[1], vandq_s8(vaddq_s8(v18[1], v18[1]), v20)), v21);
  *(v15 + v19 - 220) = vaddq_s8(vsubq_s8(*v18, vandq_s8(vaddq_s8(*v18, *v18), v20)), v21);
  *(v15 + v19 - 220 + 16) = v22;
  return (*(v17 + 8 * ((((a15 & 0x60) == 32) * (((v16 + 1347) | 4) ^ 0x742)) ^ (v16 + 334))))();
}

uint64_t sub_1D48CB740@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  *a5 = a9;
  if (a3)
  {
    v13 = a12 == ((a1 + 683186083) & 0xD7476A3B ^ 0x73E65800);
  }

  else
  {
    v13 = 1;
  }

  v15 = v13 || a4 == 0;
  return (*(v12 + 8 * ((v15 * ((a1 - 1348) ^ 0x12D)) ^ a1)))();
}

uint64_t sub_1D48CB820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v48 = *(v19 + 8 * (v17 + 15));
  v50 = STACK[0x268];
  v51 = STACK[0x26C];
  v52 = (LOBYTE(STACK[0x278]) - 2 * (STACK[0x278] & 0x1F) - 93);
  if (v52 == 161)
  {
    v54 = LODWORD(STACK[0x270]);
    v55 = &STACK[0x218] + v20 + 1496004113;
    v56 = (((v55[1] ^ v21) << (((v25 + 6) | 0x1D) ^ 0x4D)) + ((*v55 ^ v21) << 24)) | ((v55[2] ^ v21) << 8);
    LODWORD(v55) = (v56 | v55[3] ^ v21) + v18 - 2 * ((v56 | v55[3] ^ v21) & (v18 + 4) ^ (v55[3] ^ v21) & 4);
    v57 = (v23 & 0xDF8E8C58 ^ 0x37F3F3B2) & (16 * (v23 & 0xC ^ 7)) ^ v23 & 0xC ^ 7;
    v58 = ((16 * (v23 & 0xDF8E8C58 ^ 0xFFEFAF52)) ^ 0x81C5CEA0) & (v23 & 0xDF8E8C58 ^ 0xFFEFAF52) ^ (16 * (v23 & 0xDF8E8C58 ^ 0xFFEFAF52)) & (v23 - 8);
    v59 = v57 ^ (v23 + 2) ^ (v58 ^ 0x80044C4A) & (v57 << 8);
    v60 = (v59 << 16) ^ 0x5CEA0000;
    v61 = (v59 << 16) & 0x481C0000;
    v24[(((2 * (v61 ^ v59 ^ v60 & (((v58 ^ 0x4818104A) << 8) & 0x481C0000 ^ (((v58 ^ 0x4818104A) << 8) ^ 0x1C5C0000) & (v58 ^ 0x4818104A) ^ 0x40000000))) ^ 0x592B3611) >> 2) ^ 0x29BF1C0E] = v55;
    v62 = *(v19 + 8 * ((1181 * ((v20 + 1496004117) < 0x40)) ^ (v25 + 347)));
    return v62(1496004117, v54, v22 + 16, v62, v61, v60, 1209794560, 202, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else if (v52 == 162)
  {
    v53 = *(&STACK[0x218] + v20 + 1496004113) ^ v21 | ((*(&STACK[0x218] + ((v25 + 2415) ^ (v20 - 2454)) + 1496004113) ^ v21) << 8) | ((*(&STACK[0x218] + v20 + 1496004115) ^ v21) << 16) | ((*(&STACK[0x218] + v20 + 1496004116) ^ v21) << 24);
    *v24 = v53 + v18 - ((2 * v53) & 0xE7CCA056);
    return (*(v19 + 8 * (((2 * ((v20 + 1496004117) > 0x3F)) | (16 * ((v20 + 1496004117) > 0x3F))) ^ (v25 + 2421))))(565519578, 270532608, 4294901760, 1496004113, a5, a6, a7, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v49 = STACK[0x260];
    v26 = (((v49 ^ 0x410058A4) - 1090541732) ^ ((v49 ^ 0xCA6DAADE) + 898782498) ^ ((v49 ^ 0xCD41BAF3) + 851330317)) + (((v49 ^ 0x71EC9DE3) - 1911332323) ^ ((v49 ^ 0x96C143EA) + 1765719062) ^ ((v49 ^ 0xA1019680) + 1593731456)) - 745845695;
    v27 = (v26 ^ 0xB4E974D8) & (2 * (v26 & 0xB8CD44D1)) ^ v26 & 0xB8CD44D1;
    v28 = ((2 * (v26 ^ 0xF4E174FA)) ^ 0x98586056) & (v26 ^ 0xF4E174FA) ^ (2 * (v26 ^ 0xF4E174FA)) & 0x4C2C302A;
    v29 = v28 ^ 0x44241029;
    v30 = (v28 ^ 0x82000) & (4 * v27) ^ v27;
    v31 = ((4 * v29) ^ 0x30B0C0AC) & v29 ^ (4 * v29) & 0x4C2C3028;
    v32 = (v31 ^ 0x200020) & (16 * v30) ^ v30;
    v33 = ((16 * (v31 ^ 0x4C0C3003)) ^ 0xC2C302B0) & (v31 ^ 0x4C0C3003) ^ (16 * (v31 ^ 0x4C0C3003)) & 0x4C2C3020;
    v34 = v32 ^ 0x4C2C302B ^ (v33 ^ 0x40000000) & (v32 << 8);
    v35 = v26 ^ (2 * ((v34 << 16) & 0x4C2C0000 ^ v34 ^ ((v34 << 16) ^ 0x302B0000) & (((v33 ^ 0xC2C300B) << 8) & 0x4C2C0000 ^ 0x400C0000 ^ (((v33 ^ 0xC2C300B) << 8) ^ 0x2C300000) & (v33 ^ 0xC2C300B))));
    v36 = (((LODWORD(STACK[0x264]) ^ 0x2410E086) - 605085830) ^ ((LODWORD(STACK[0x264]) ^ 0x88E9CA3A) + 1997944262) ^ ((LODWORD(STACK[0x264]) ^ 0xEAD56235) + 355114443)) + (((LODWORD(STACK[0x264]) ^ 0x411078A2) - 1091598498) ^ ((LODWORD(STACK[0x264]) ^ 0x58A1E166) - 1487004006) ^ ((LODWORD(STACK[0x264]) ^ 0x5F9DD14D) - 1604178253)) - 113097229;
    v37 = (v36 ^ 0xC297621F) & (2 * (v36 & 0x93164B1F)) ^ v36 & 0x93164B1F;
    v38 = ((2 * (v36 ^ 0xC297641D)) ^ 0xA3025E04) & (v36 ^ 0xC297641D) ^ (2 * (v36 ^ 0xC297641D)) & 0x51812F02;
    v39 = v38 ^ 0x50812102;
    v40 = (v38 ^ 0xC00) & (4 * v37) ^ v37;
    v41 = ((4 * v39) ^ 0x4604BC08) & v39 ^ (4 * v39) & 0x51812F00;
    v42 = (v41 ^ 0x40002C00) & (16 * v40) ^ v40;
    v43 = ((16 * (v41 ^ 0x11810302)) ^ 0x1812F020) & (v41 ^ 0x11810302) ^ (16 * (v41 ^ 0x11810302)) & 0x51812F00;
    v44 = v42 ^ 0x51812F02 ^ (v43 ^ 0x10002000) & (v42 << 8);
    LODWORD(STACK[0x260]) = v35 ^ 0x66E96C0E;
    LODWORD(STACK[0x264]) = v36 ^ (2 * ((v44 << 16) & 0x51810000 ^ v44 ^ ((v44 << 16) ^ 0x2F020000) & (((v43 ^ 0x41810F02) << 8) & 0x51810000 ^ 0x50800000 ^ (((v43 ^ 0x41810F02) << 8) ^ 0x12F0000) & (v43 ^ 0x41810F02)))) ^ 0x74385D92;
    v45 = (((v50 ^ 0x225BAE9C) - 576433820) ^ ((v50 ^ 0x86CCD724) + 2033395932) ^ ((v50 ^ 0xE2BB3131) + 491048655)) + (((LODWORD(STACK[0x268]) ^ 0xD0EA51A4) + 789950044) ^ ((LODWORD(STACK[0x268]) ^ 0xD69FAFF0) + 694177808) ^ ((LODWORD(STACK[0x268]) ^ 0x4059B6DD) - 1079621341)) - 705686600;
    v46 = (((v51 ^ 0x3D82C03C) - 1031979068) ^ ((v51 ^ 0x59AF7869) - 1504671849) ^ ((v51 ^ 0x2201F0DC) - 570552540)) + (((LODWORD(STACK[0x26C]) ^ 0x5CC60971) - 1556482417) ^ ((LODWORD(STACK[0x26C]) ^ 0xEC7362F9) + 327982343) ^ ((LODWORD(STACK[0x26C]) ^ 0xF6992301) + 157736191)) - 57377783;
    LODWORD(STACK[0x268]) = v45 ^ ((v45 ^ 0x65B43A75) - 740538579) ^ ((v45 ^ 0x50A5723) - 1285412229) ^ ((v45 ^ 0xD6D6910F) + 1623125079) ^ ((v45 ^ 0xFFFF7EFF) + 1234633639) ^ 0xFBBCA2F;
    LODWORD(STACK[0x26C]) = v46 ^ ((v46 ^ 0x511E27AC) - 556125531) ^ ((v46 ^ 0xE909A7B0) + 1724756665) ^ ((v46 ^ 0xB7D19D05) + 940935182) ^ ((v46 ^ 0x7FFDF7EE) - 264641817) ^ 0x3617A27E;
    return v48(1367408640, 1367420672, 3264700959, a4, a5, a6, a7, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }
}

uint64_t sub_1D48CB82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * (((&a14 | 0x366A8C3D) + (~&a14 | 0xC99573C2)) ^ 0x1CA1A646)) ^ 0x72E;
  a15 = &a11;
  v19 = (*(v16 + 29464))(&a14);
  return (*(v16 + 8 * ((43 * (a16 == v17)) ^ v18)))(v19);
}

uint64_t sub_1D48CB8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v64 = *(v62 + 56);
  *(v62 + 56) = v64 + ((a62 - 1158746609) & 0x6D15FDA7) - 671412612;
  return (*(v63 + 8 * ((977 * ((v64 - 1171254165) < 0xFFFFFFFA)) ^ (a62 - 1436))))();
}

uint64_t sub_1D48CB96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  STACK[0x2F0] -= 1616;
  LODWORD(STACK[0x38C]) = 671412450;
  return (*(v62 + 8 * ((((a62 ^ 0x5C0) + 702 + 163 * (a62 ^ 0x5C0) - 2940) * (STACK[0x2B0] == 0)) ^ (a62 + 1676))))();
}

uint64_t sub_1D48CBA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v11 = (v7 + 1444588544) & 0xA9E5576F;
  v12 = (v11 - 1867) | 0x140;
  *a7 = a1;
  *a6 = v15 ^ (v8 + 1849) ^ v11;
  v17 = v12 - ((&v17 & 0xFA1763E8 | ~(&v17 | 0xFA1763E8)) ^ 0xE3403007) * v10 + 1904;
  v18 = v16;
  (*(v9 + 8 * (v12 ^ 0xF24)))(&v17);
  v18 = v14;
  v17 = v12 + 465 - ((((2 * &v17) | 0x369EC102) - &v17 - 458186881) ^ 0xFDE7CC91) * v10 + 1439;
  (*(v9 + 8 * (v12 + 3356)))(&v17);
  return 0;
}

uint64_t sub_1D48CBB7C(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 96) + 1424) = ((v3 - 1103) ^ v2) + *(a2 + 4);
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_1D48CBBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5) ^ 0x82;
  return (*(v4 + 8 * ((v5 == (v3 ^ 0x388)) | (2 * (v5 == (v3 ^ 0x388))) | v3)))();
}

uint64_t sub_1D48CBC4C(double a1, double a2, double a3, double a4, double a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v64 = vld1q_dup_f32(v63);
  v65.i64[0] = 0x8000000080000000;
  v65.i64[1] = 0x8000000080000000;
  v66.i64[0] = 0x100000001;
  v66.i64[1] = 0x100000001;
  a6.i64[0] = *(v63 + 4);
  a6.i32[2] = *(v63 + 12);
  v67 = vextq_s8(v64, a6, 0xCuLL);
  v68 = a6;
  v68.i32[3] = *(v63 + 16);
  v69 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v68, vnegq_f32(v66)), vandq_s8(v67, v65)), 1uLL), *(v63 + 1588));
  v67.i32[0] = *(&a63 + (*(v63 + 4) & 1));
  v67.i32[1] = *(&a63 + (*(v63 + 8) & 1));
  v67.i32[2] = *(&a63 + (*(v63 + 12) & 1));
  v67.i32[3] = *(&a63 + (v68.i8[12] & 1));
  *v63 = veorq_s8(vaddq_s32(vsubq_s32(v69, vandq_s8(vaddq_s32(v69, v69), vdupq_n_s32(0x445DE054u))), vdupq_n_s32(0x222EF02Au)), v67);
  return (*(a10 + 24784))();
}

uint64_t sub_1D48CBC60@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, char a10)
{
  v12 = a1 - 715;
  a9 = a1 - 843532609 * ((((2 * &a9) | 0xAD128412) - &a9 + 695647735) ^ 0x8AC4168C) + 1250;
  a10 = 65 * ((((2 * &a9) | 0x12) - &a9 - 9) ^ 0x8C) + 25;
  v13 = (*(v10 + 8 * (a1 + 1752)))(&a9);
  return (*(v10 + 8 * (((**(v11 + 8 * (v12 - 1104)) == ((v12 - 375733559) & 0x16653FEA ^ 0x76A)) * ((237 * (v12 ^ 0x4BC)) ^ 0x923)) ^ v12)))(v13);
}

uint64_t sub_1D48CBD5C(int a1)
{
  v13.val[1].i64[0] = (v5 + 13) & 0xF;
  v13.val[1].i64[1] = (v5 + 12) & 0xF;
  v13.val[2].i64[0] = (v5 + 11) & 0xF;
  v13.val[2].i64[1] = (v5 + 10) & 0xF;
  v13.val[3].i64[0] = (v5 + 9) & 0xF;
  v13.val[3].i64[1] = v7 & 0xF ^ 3;
  v14.val[0].i64[0] = (v5 + 7) & 0xF;
  v14.val[0].i64[1] = (v5 + 6) & 0xF;
  v14.val[1].i64[0] = (v5 + 5) & 0xF;
  v14.val[1].i64[1] = (v5 + 4) & 0xF;
  v14.val[2].i64[0] = (v5 + 3) & 0xF;
  v14.val[2].i64[1] = (v5 + 2) & 0xF;
  v14.val[3].i64[0] = (v5 + 1) & 0xF;
  v14.val[3].i64[1] = v5 & 0xF;
  v10 = vqtbl4q_s8(v14, xmmword_1D4B4B4E0).u64[0];
  v11.i64[0] = 0x7575757575757575;
  v11.i64[1] = 0x7575757575757575;
  v13.val[0].i64[0] = (v6 - 1) & 0xF;
  v13.val[0].i64[1] = (v5 + 14) & 0xF;
  v14.val[3].i64[0] = vqtbl4q_s8(v13, xmmword_1D4B4B4E0).u64[0];
  v14.val[3].i64[1] = v10;
  v14.val[0] = vrev64q_s8(vmulq_s8(v14.val[3], v11));
  *(v8 + v6) = veorq_s8(veorq_s8(veorq_s8(*(v2 + v13.val[0].i64[0] - 15), *(v1 + v6)), veorq_s8(*(v4 + v13.val[0].i64[0] - 15), *(v3 + v13.val[0].i64[0] - 15))), vextq_s8(v14.val[0], v14.val[0], 8uLL));
  return (*(v9 + 8 * ((((v7 & 0x10) == 16) * ((1165 * (a1 ^ 0x41C)) ^ 0xDB5)) ^ a1 ^ 0xC9A)))();
}

uint64_t sub_1D48CBEBC()
{
  v8 = v6;
  v7 = v3 - (((&v7 | 0x54B8B870) - (&v7 & 0x54B8B870)) ^ 0xB2101460) * v1 + 1144;
  (*(v0 + 8 * (v3 + 2596)))(&v7);
  v8 = v5;
  v7 = (v3 ^ 0x833) - ((2 * (&v7 & 0x5F261B18) - &v7 + 551150818) ^ 0xC67148F2) * v1 - 859;
  (*(v0 + 8 * (v3 ^ 0xA5C)))(&v7);
  return (v2 - 671454635);
}

uint64_t sub_1D48CBFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, int a22, uint64_t a23)
{
  v27 = 742307843 * ((((&a19 | 0x764115BA) ^ 0xFFFFFFFE) - (~&a19 | 0x89BEEA45)) ^ 0x979C6710);
  a19 = (v23 + 167) ^ v27;
  a21 = v24;
  a22 = v27 ^ ((v25 ^ 0x127E74FE) - 39986304 + ((2 * v25) & 0x24FCE9FC));
  a23 = a17;
  v28 = (*(v26 + 8 * (v23 + 2693)))(&a19);
  return (*(v26 + 8 * (((a20 == 671454635) * (((v23 - 1485968909) & 0x2FB) + 3501)) ^ v23)))(v28);
}

uint64_t sub_1D48CC120(int8x16_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14 = (v8 - 32);
  v15 = (v9 - 32);
  v16 = veorq_s8(*v15, a1);
  v14[-1] = veorq_s8(v15[-1], a1);
  *v14 = v16;
  return (*(v13 + 8 * (((v7 == 32) * (((v6 ^ (v12 + 1394)) * v10) ^ v11)) ^ (a6 + v6 + 1583))))();
}

uint64_t sub_1D48CC284@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(uint64_t, uint64_t))
{
  v18 = 1785193651 * ((~((v17 - 176) | 0x16677CD2) + ((v17 - 176) & 0x16677CD2)) ^ 0x1FB92701);
  *(v17 - 176) = v16;
  *(v17 - 168) = v18 + a1 + 2533;
  *(v17 - 164) = 118099106 - v18;
  (*(v15 + 8 * (a1 + 3695)))(v17 - 176);
  return a15(0xFFFFFFFFLL, 2540);
}

uint64_t sub_1D48CC314@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, char a3@<W2>, int a4@<W3>, int a5@<W8>)
{
  v13 = *(v12 + 8 * a4);
  v14 = (v5 + 4 + a5);
  v15 = *(&off_1F5033D40 + v7) - 8;
  v16 = *(&off_1F5033D40 + v8);
  v17 = *(&off_1F5033D40 + v9);
  *(a1 + v14) = v15[v14 & 0xC] ^ HIBYTE(v6) ^ (((v5 + 4 + a5) & 0xC) * v10) ^ *((v14 & 0xC) + v16 + 5) ^ *(v17 + (v14 & 0xC) + 1) ^ v11;
  *(a1 + (v14 + 1)) = (((v14 + 1) & a2) * v10) ^ BYTE2(v6) ^ v15[(v14 + 1) & a2] ^ *(((v14 + 1) & a2) + v16 + 5) ^ *(((v14 + 1) & a2) + v17 + 1) ^ 0x83;
  *(a1 + (v14 + 2)) = (((v5 + 4 + a5 + 2) & 0xE) * v10) ^ BYTE1(v6) ^ v15[(v5 + 4 + a5 + 2) & 0xELL] ^ *(((v14 + 2) & 0xELL) + v16 + 5) ^ *(v17 + ((v5 + 4 + a5 + 2) & 0xELL) + 1) ^ a3;
  v18 = (v14 + 3);
  *(a1 + v18) = v6 ^ (v18 * v10) ^ v15[v18] ^ *(v18 + v16 + 5) ^ *(v18 + v17 + 1) ^ 0x88;
  return v13();
}

uint64_t sub_1D48CC32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, uint64_t a30, int a31, int a32)
{
  *v36 = v36[623] ^ (v32 - 1041) ^ (((v35 | ~(v32 - 1041)) & (v32 - 1041 - v35) | v35 & ~(v32 - 1041)) >> 31) ^ 0x26E;
  v38 = v37 - 152;
  *(v38 + 24) = a30 ^ 3;
  *(v38 + 32) = a30 + (v33 + 1);
  *(v37 - 144) = a32 ^ a30;
  *(v37 - 140) = ((v32 - 1663) ^ 0xF8F7DAA0) + a30;
  *(v37 - 112) = -117974496 - a30 + v32 - 1663;
  *(v37 - 152) = 1 - a30;
  *(v37 - 148) = ((v32 - 1663) ^ 0xF8F7DA68) + a30;
  v39 = (*(v34 + 8 * a29))(v37 - 152);
  return (*(v34 + 8 * *(v37 - 136)))(v39);
}

uint64_t sub_1D48CC3A0@<X0>(uint64_t a1@<X0>, void *a2@<X2>, int *a3@<X8>)
{
  v8 = (v3 - 1317) | 0x422;
  v9 = (v8 + 1745316665) & 0x97F89615;
  *a2 = a1;
  *a3 = (v4 + v8 - 1202) ^ v12;
  v15 = v11;
  v14 = v9 - ((2 * (&v14 & 0x7C6ACDD8) - &v14 + 60109349) ^ 0xE53D9E35) * v5 + 691;
  (*(v6 + 8 * (v9 ^ 0x861)))(&v14);
  v14 = v9 + 460 - ((2 * (&v14 & 0x3CA37658) - &v14 - 1017345626) ^ 0x25F425B6) * v5 + 231;
  v15 = v13;
  (*(v6 + 8 * ((v9 + 460) ^ 0x9AD)))(&v14);
  return (v7 - 671454635);
}

uint64_t sub_1D48CC53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, char a12, __int16 a13, char a14, _BYTE *a15, uint64_t a16, uint64_t a17, _BYTE *a18, char *a19, char *a20, _BYTE *a21, char *a22)
{
  v25 = (v22 - 2137537703) & 0x9FF;
  LODWORD(a20) = v22 + 1037613739 * (((&a18 | 0xDC43225) + (~&a18 | 0xF23BCDDA)) ^ 0xDCC61F5B) + 2383;
  a19 = &a10;
  a21 = a15;
  a22 = &a14;
  (*(v23 + 8 * (v22 ^ 0xA19u)))(&a18);
  LODWORD(a21) = (v25 + 1638) ^ (843532609 * (&a18 ^ 0x5C4D5485));
  a20 = &a12;
  a18 = a15;
  (*(v23 + 8 * (v25 ^ 0xF1B)))(&a18);
  a19 = a15;
  LODWORD(a18) = (v25 + 1385) ^ (1504884919 * (((&a18 | 0xC4AC3414) - &a18 + (&a18 & 0x3B53CBE8)) ^ 0x3F6F830F));
  v26 = (*(v23 + 8 * (v25 ^ 0xF13)))(&a18);
  return (*(v23 + 8 * ((598 * (HIDWORD(a18) == ((29 * (v25 ^ 0x19D)) ^ (v24 - 75)))) ^ v25)))(v26);
}

void sub_1D48CC5C0(_DWORD *a1)
{
  v1 = *a1 ^ (1564307779 * ((((2 * a1) | 0x8DBFB438) - a1 - 1189075484) ^ 0xD1D2160F));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48CC68C(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, int a18, unsigned int a19, unsigned int a20, unsigned int a21, uint64_t a22, int a23, unsigned int a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, unsigned int a29)
{
  v30.n128_u64[0] = 0x404040404040404;
  v30.n128_u64[1] = 0x404040404040404;
  v31.n128_u64[0] = 0x8282828282828282;
  v31.n128_u64[1] = 0x8282828282828282;
  return (*(v29 + 8 * ((((a18 ^ 0x9A6) - 4629 + ((a18 + 290) | 0x880)) * (a16 < 0xFFFFFFFE)) ^ a18)))(a24, a29, 1774613585, 2520353927, a8, a21, a19, a20, a1, a2, a3, v30, v31);
}

uint64_t sub_1D48CC86C()
{
  v3 = v0 ^ 0x952;
  v4 = (v8 ^ 0xEC85F5FF) + ((2 * v8) & 0xD90BEBFE) + (v0 ^ 0x3B7F9F24);
  v5 = (v0 ^ 0x952) - 1974;
  v11 = v7;
  v10 = v3 - ((&v10 - 841592000 - 2 * (&v10 & 0xCDD65340)) ^ 0x2B7EFF50) * v2 - 294;
  (*(v1 + 8 * (v3 + 1158)))(&v10);
  v10 = v5 - 143681137 * (((&v10 | 0xF001EF9D) - &v10 + (&v10 & 0xFFE1060)) ^ 0x16A9438D) + 1680;
  v11 = v9;
  (*(v1 + 8 * (v5 + 3132)))(&v10);
  return v4 - 671454635;
}

uint64_t sub_1D48CC8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, uint64_t a17, char a18)
{
  a16 = v18 + 1018781430;
  *(v21 - 128) = v20 - 435584651 * ((v21 - 128) ^ 0x6D321A56) + 1441;
  *(v21 - 120) = &a18;
  *(v21 - 112) = a14;
  (*(v19 + 8 * (v20 + 3076)))(v21 - 128);
  *(v21 - 104) = (v20 - 25) ^ (1361651671 * (((((v21 - 128) | 0x7BE96226) ^ 0xFFFFFFFE) - (~(v21 - 128) | 0x84169DD9)) ^ 0xCF7D51A7));
  *(v21 - 120) = &a15;
  *(v21 - 112) = a14;
  v22 = (*(v19 + 8 * (v20 ^ 0xC83)))(v21 - 128);
  return (*(v19 + 8 * ((57 * (*(v21 - 128) <= ((3 * (v20 ^ 0x3AF)) ^ 0x29ADEF65u))) ^ v20)))(v22);
}

uint64_t sub_1D48CC9C0()
{
  v3 = (v0 + 54709088) > 0x75BF2037;
  if (v0 + 54709088 < (((v1 - 2188) | 0x44C) ^ 0x75BF25F9u))
  {
    v3 = 1;
  }

  return (*(v2 + 8 * ((30 * !v3) ^ v1)))();
}

uint64_t sub_1D48CC9C8()
{
  v4 = 1785193651 * ((((v3 - 144) | 0x89F650A7) + (~(v3 - 144) | 0x7609AF58)) ^ 0x7FD7F48A);
  *(v3 - 144) = (v1 + 1593) ^ v4;
  *(v3 - 140) = (v8 - 200831426 + (v1 ^ 0x742)) ^ v4;
  *(v3 - 120) = v2;
  *(v3 - 136) = v6;
  (*(v0 + 8 * (v1 + 3218)))(v3 - 144);
  *v7 = v8;
  result = v9;
  *(v9 + 8) = 671454635;
  return result;
}

uint64_t sub_1D48CCAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  a16 = (1037613739 * ((&a15 & 0xAB3823A | ~(&a15 | 0xAB3823A)) ^ 0x244E50BA)) ^ 0x86F54BA0;
  v17 = (*(v16 + 29168))(&a15);
  return (*(v16 + 8 * (((16 * (a15 != 671454635)) | (32 * (a15 != 671454635))) ^ 0xD8u)))(v17);
}

uint64_t sub_1D48CCB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  LODWORD(STACK[0x264]) = a8;
  LODWORD(STACK[0x3F0]) = a4;
  LODWORD(STACK[0x290]) = v58;
  v60 = STACK[0x498];
  v61 = (((a8 ^ 0xECAED45A) + 324086694) ^ ((a8 ^ 0x80539519) + 2142005991) ^ ((a8 ^ 0x2AD109CA) - 718342602)) - 1740377526 + (((*(v60 + 72) ^ 0xCF3291D9) + 818769447) ^ ((*(v60 + 72) ^ 0x393900DA) - 960037082) ^ ((*(v60 + 72) ^ 0xB027D98A) + 1339565686));
  v62 = (((v59 ^ 0x269B57D7) - 647714775) ^ ((v59 ^ 0x832C8578) + 2094234248) ^ ((v59 ^ 0xE39B9A26) + 476341722)) + (((*(v60 + 76) ^ 0x6769476) - 108434550) ^ ((*(v60 + 76) ^ 0xA66C9296) + 1502834026) ^ ((*(v60 + 76) ^ 0xE6364E69) + 432648599)) - 549114141;
  v63 = (v62 ^ 0xA9DA400F) & (2 * (v62 & 0xAD13622F)) ^ v62 & 0xAD13622F;
  v64 = ((2 * (v62 ^ 0xB3FC0403)) ^ 0x3DDECC58) & (v62 ^ 0xB3FC0403) ^ (2 * (v62 ^ 0xB3FC0403)) & 0x1EEF662C;
  v65 = v64 ^ 0x2212224;
  v66 = (v64 ^ 0x1CCE0008) & (4 * v63) ^ v63;
  v67 = ((4 * v65) ^ 0x7BBD98B0) & v65 ^ (4 * v65) & 0x1EEF662C;
  v68 = (v67 ^ 0x1AAD0020) & (16 * v66) ^ v66;
  v69 = ((16 * (v67 ^ 0x442660C)) ^ 0xEEF662C0) & (v67 ^ 0x442660C) ^ (16 * (v67 ^ 0x442660C)) & 0x1EEF6620;
  v70 = v68 ^ 0x1EEF662C ^ (v69 ^ 0xEE66200) & (v68 << 8);
  *(v60 + 72) = v61 ^ ((v61 ^ 0xD80AA0FD) + 740179515) ^ ((v61 ^ 0x381BC958) - 871409760) ^ ((v61 ^ 0x1005F742) - 468620922) ^ ((v61 ^ 0xFBFFFFDF) + 267084057) ^ 0x4DC729B1;
  *(v60 + 76) = v62 ^ (2 * ((v70 << 16) & 0x1EEF0000 ^ v70 ^ ((v70 << 16) ^ 0x662C0000) & (((v69 ^ 0x1009042C) << 8) & 0x1EEF0000 ^ 0x10890000 ^ (((v69 ^ 0x1009042C) << 8) ^ 0x6F660000) & (v69 ^ 0x1009042C)))) ^ 0xDAB9E6FE;
  v71 = STACK[0x498];
  v72 = (((LODWORD(STACK[0x3F0]) ^ 0x12F2167D) - 317855357) ^ ((LODWORD(STACK[0x3F0]) ^ 0x40A11050) - 1084297296) ^ ((LODWORD(STACK[0x3F0]) ^ 0x147F4EA4) - 343887524)) - 1608748612 + (((*(STACK[0x498] + 80) ^ 0xDC4BEECD) + 599003443) ^ ((*(STACK[0x498] + 80) ^ 0x880F37AA) + 2012268630) ^ ((*(STACK[0x498] + 80) ^ 0x126891EE) - 308842990));
  v73 = (v72 ^ 0xE9385F46) & (2 * (v72 & 0xEC3C1F56)) ^ v72 & 0xEC3C1F56;
  v74 = ((2 * (v72 ^ 0xB1384D4A)) ^ 0xBA08A438) & (v72 ^ 0xB1384D4A) ^ (2 * (v72 ^ 0xB1384D4A)) & 0x5D04521C;
  v75 = v74 ^ 0x45045204;
  v76 = (v74 ^ 0x10000018) & (4 * v73) ^ v73;
  v77 = ((4 * v75) ^ 0x74114870) & v75 ^ (4 * v75) & 0x5D04521C;
  v78 = (v77 ^ 0x54004000) & (16 * v76) ^ v76;
  v79 = ((16 * (v77 ^ 0x904120C)) ^ 0xD04521C0) & (v77 ^ 0x904120C) ^ (16 * (v77 ^ 0x904120C)) & 0x5D045210;
  v80 = v78 ^ 0x5D04521C ^ (v79 ^ 0x50040000) & (v78 << 8);
  v81 = v72 ^ (2 * (((v80 << 16) ^ 0x521C0000) & (((v79 ^ 0xD00521C) << 8) & 0x5D040000 ^ 0x59040000 ^ (((v79 ^ 0xD00521C) << 8) ^ 0x4520000) & (v79 ^ 0xD00521C)) ^ v80 ^ ((v80 << 16) & 0x5D040000 | 0x18)));
  v82 = (((LODWORD(STACK[0x290]) ^ 0xBBFDF3C4) + 1140984892) ^ ((LODWORD(STACK[0x290]) ^ 0xEF324395) + 281918571) ^ ((LODWORD(STACK[0x290]) ^ 0x12E3F8D8) - 316930264)) - 297223759 + (((*(STACK[0x498] + 84) ^ 0xDBB018FF) + 609216257) ^ ((*(STACK[0x498] + 84) ^ 0x116B2E33) - 292236851) ^ ((*(STACK[0x498] + 84) ^ 0x8CF77E45) + 1929937339));
  v83 = (v82 ^ 0x5DAF9665) & (2 * (v82 & 0x9E0FD761)) ^ v82 & 0x9E0FD761;
  v84 = ((2 * (v82 ^ 0x59AA34A5)) ^ 0x8F4BC788) & (v82 ^ 0x59AA34A5) ^ (2 * (v82 ^ 0x59AA34A5)) & 0xC7A5E3C4;
  v85 = v84 ^ 0x40A42044;
  v86 = (v84 ^ 0x8001C380) & (4 * v83) ^ v83;
  v87 = ((4 * v85) ^ 0x1E978F10) & v85 ^ (4 * v85) & 0xC7A5E3C4;
  v88 = (v87 ^ 0x6858300) & (16 * v86) ^ v86;
  v89 = ((16 * (v87 ^ 0xC12060C4)) ^ 0x7A5E3C40) & (v87 ^ 0xC12060C4) ^ (16 * (v87 ^ 0xC12060C4)) & 0xC7A5E3C0;
  v90 = v88 ^ 0xC7A5E3C4 ^ (v89 ^ 0x42042000) & (v88 << 8);
  *(v71 + 80) = v81 ^ 0xB010F3D7;
  *(v71 + 84) = v82 ^ (2 * ((v90 << 16) & 0x47A50000 ^ v90 ^ ((v90 << 16) ^ 0x63C40000) & (((v89 ^ 0x85A1C384) << 8) & 0x47A50000 ^ 0x42040000 ^ (((v89 ^ 0x85A1C384) << 8) ^ 0x25E30000) & (v89 ^ 0x85A1C384)))) ^ 0xD0605860;
  STACK[0x2F0] -= 320;
  return (STACK[0x308])(a1, a2, a3, a4, a5, a6, a44, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_1D48CCBBC@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 + 127 - v1;
  v6 = *(v5 - 31);
  v7 = a1 + 127 - v1;
  v8.i64[0] = 0x404040404040404;
  v8.i64[1] = 0x404040404040404;
  v9.i64[0] = 0x8282828282828282;
  v9.i64[1] = 0x8282828282828282;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v4 + 8 * (v2 ^ (4 * (v1 + 32 != (v2 ^ 0xD4Bu) - 2115)))))();
}

uint64_t sub_1D48CCC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  v75 = v71 + 16;
  v76 = *(v74 - 160);
  *(v74 - 124) = *(v74 - 164) ^ 0xCE5920C4;
  *(v74 - 128) = v76 ^ 0x1978C64A;
  *(v74 - 132) = *(v74 - 168) ^ 0x8AA361C;
  *(v74 - 136) = *(v74 - 156) ^ v72 ^ 0xDCB3F5DC;
  *(v74 - 116) = v75;
  *(v74 - 172) = 0;
  v77 = *(v74 - 120) < 0xCC15D6A4;
  *(v74 - 144) = v72 - 1001070941;
  *(v74 - 140) = v77;
  v78 = v75;
  v79 = (v73 + v75);
  v81 = *(v74 - 232);
  v80 = *(v74 - 224);
  v82 = *(v81 + ((v72 - 93) ^ 0xE9u ^ v79[4]));
  v83 = ((*(v80 + (v79[5] ^ 0x87)) + 29) ^ 0x74) << 16;
  v84 = v78 + (v72 - 314);
  *(v74 - 152) = v84;
  v86 = *(v74 - 248);
  v85 = *(v74 - 240);
  v87 = v83 & 0xFFFFFF00 | ((v82 ^ 0x20) << 24) | ((*(v85 + (v79[6] ^ 0xE2)) ^ 0x96) << 8) | (53 * *(v86 + (v79[7] ^ 0xBFLL))) ^ 0xFA;
  v88 = ((53 * *(v86 + (v79[15] ^ 0x3CLL))) ^ 0x68 | ((*(v85 + (*(v73 + v84) ^ 8)) ^ 0xD2) << 8)) & 0xFF00FFFF | ((*(v81 + (v79[12] ^ 0xBDLL)) ^ 8) << 24) | (((*(v80 + (v79[13] ^ 0xCALL)) + 29) ^ 0xFD) << 16);
  v89 = (53 * *(v86 + (v79[3] ^ 0x19))) ^ 0x38 | ((*(v81 + (*v79 ^ 0x50)) ^ 0x15) << 24) | (((*(v80 + (v79[1] ^ 0x1ELL)) + 29) ^ 0x68) << 16) | ((*(v85 + (v79[2] ^ 6)) ^ 0xAE) << 8);
  v90 = ((*(v81 + v79[8]) ^ 0x2B) << 24) | (((*(v80 + (v79[9] ^ 0xB0)) + 29) ^ 0x86) << 16) | ((*(v85 + (v79[10] ^ 0x42)) ^ 0x53) << 8) | (53 * *(v86 + (v79[11] ^ 0x60))) ^ 0xDA;
  if ((((53 * *(v86 + (v79[7] ^ 0xBFLL))) ^ 0xFA) & 2) != 0)
  {
    v91 = -2;
  }

  else
  {
    v91 = 2;
  }

  *(v74 - 164) = v87;
  v92 = v91 + v87;
  *(v74 - 160) = v88;
  v93 = a64 ^ v88;
  v94 = a63 ^ v92;
  *(v74 - 156) = v90;
  *(v74 - 168) = v89;
  v95 = *(a7 + 8 * (v72 - 98)) - 4;
  v96 = *(a7 + 8 * (v72 & 0x5F47C03F)) - 12;
  v97 = *(v96 + 4 * HIBYTE(v94)) + a8;
  v98 = *(a7 + 8 * (v72 ^ 0x105)) - 4;
  v99 = -21582785 * *(v98 + 4 * v94);
  v100 = *(a7 + 8 * (v72 - 279));
  v101 = *(v95 + 4 * BYTE1(v94));
  v102 = (*(v96 + 4 * ((a62 ^ v90) >> 24)) + a8) ^ __ROR4__(*(v95 + 4 * ((a61 ^ v89) >> 8)), 14) ^ *(v100 + 4 * BYTE2(v94)) ^ (-21582785 * *(v98 + 4 * v93));
  v103 = a35 ^ (v102 + a36 - 2 * (v102 & a36));
  v104 = a60 ^ __ROR4__(*(v95 + 4 * ((a62 ^ v90) >> 8)), 14) ^ *(v100 + 4 * BYTE2(v93)) ^ (*(v96 + 4 * ((a61 ^ v89) >> 24)) + a8) ^ 0x8E1E9161 ^ v99;
  v105 = a59 ^ (-21582785 * *(v98 + 4 * (a62 ^ v90))) ^ v97 ^ *(v100 + 4 * ((a61 ^ v89) >> 16)) ^ __ROR4__(*(v95 + 4 * BYTE1(v93)), 14) ^ 0x7A8BED94;
  v106 = a58 ^ __ROR4__(v101, 14) ^ (*(v96 + 4 * HIBYTE(v93)) + a8) ^ *(v100 + 4 * ((a62 ^ v90) >> 16)) ^ 0x342D1067 ^ (-21582785 * *(v98 + 4 * (a61 ^ v89)));
  v107 = *(v96 + 4 * HIBYTE(v105)) + a8;
  v108 = __ROR4__(*(v95 + 4 * ((v103 ^ 0xAB13) >> 8)), 14);
  v109 = *(v100 + 4 * BYTE2(v105));
  v110 = *(v96 + 4 * ((v103 ^ 0xC04AB13u) >> 24)) + a8;
  v111 = -21582785 * *(v98 + 4 * (v103 ^ 0x33u));
  v112 = *(v100 + 4 * ((v103 ^ 0xC04AB13u) >> 16));
  v113 = *(v95 + 4 * BYTE1(v105));
  v114 = *(v74 - 252) ^ (*(v96 + 4 * HIBYTE(v104)) + a8) ^ v108 ^ *(v100 + 4 * BYTE2(v106)) ^ (-21582785 * *(v98 + 4 * v105));
  v115 = a57 ^ (*(v96 + 4 * HIBYTE(v106)) + a8) ^ (-21582785 * *(v98 + 4 * v104)) ^ v112 ^ __ROR4__(v113, 14) ^ 0xD9D684A;
  v116 = a56 ^ *(v100 + 4 * BYTE2(v104)) ^ v107 ^ __ROR4__(*(v95 + 4 * BYTE1(v106)), 14) ^ 0x87DD46DC ^ v111;
  v117 = a55 ^ v109 ^ (-21582785 * *(v98 + 4 * v106)) ^ v110 ^ __ROR4__(*(v95 + 4 * BYTE1(v104)), 14) ^ 0x96521C3F;
  v118 = -21582785 * *(v98 + 4 * v116);
  v119 = *(v100 + 4 * BYTE2(v116));
  v120 = *(v96 + 4 * (HIBYTE(v114) ^ 0xEE)) + a8;
  v121 = *(v74 - 256) ^ __ROR4__(*(v95 + 4 * BYTE1(v115)), 14) ^ (*(v96 + 4 * HIBYTE(v116)) + a8) ^ *(v100 + 4 * ((v114 ^ 0x2F7BB36B) >> 16)) ^ (-21582785 * *(v98 + 4 * v117));
  v122 = a54 ^ __ROR4__(*(v95 + 4 * BYTE1(v116)), 14) ^ (*(v96 + 4 * HIBYTE(v115)) + a8) ^ (-21582785 * *(v98 + 4 * (v114 ^ 0x6Bu))) ^ *(v100 + 4 * BYTE2(v117)) ^ 0x92680818;
  v123 = a53 ^ __ROR4__(*(v95 + 4 * ((v114 ^ 0xB36B) >> 8)), 14) ^ v119 ^ (*(v96 + 4 * HIBYTE(v117)) + a8) ^ (-21582785 * *(v98 + 4 * v115)) ^ 0xD8A932B2;
  v124 = a52 ^ v118 ^ __ROR4__(*(v95 + 4 * BYTE1(v117)), 14) ^ *(v100 + 4 * BYTE2(v115)) ^ v120 ^ 0xDBC82169;
  v125 = -21582785 * *(v98 + 4 * v123);
  v126 = a71 ^ __ROR4__(*(v95 + 4 * ((v121 ^ 0x9E59) >> 8)), 14) ^ (*(v96 + 4 * HIBYTE(v122)) + a8) ^ *(v100 + 4 * BYTE2(v123)) ^ (-21582785 * *(v98 + 4 * v124));
  v127 = a51 ^ (*(v96 + 4 * HIBYTE(v123)) + a8) ^ __ROR4__(*(v95 + 4 * BYTE1(v124)), 14) ^ (-21582785 * *(v98 + 4 * v122)) ^ *(v100 + 4 * ((v121 ^ 0xD16F9E59) >> 16)) ^ 0xF4361671;
  v128 = a70 ^ *(v100 + 4 * BYTE2(v122)) ^ (-21582785 * *(v98 + 4 * (v121 ^ 0x79u))) ^ __ROR4__(*(v95 + 4 * BYTE1(v123)), 14) ^ (*(v96 + 4 * HIBYTE(v124)) + a8);
  v129 = a50 ^ (*(v96 + 4 * ((v121 ^ 0xD16F9E59) >> 24)) + a8) ^ v125 ^ (*(v95 + 4 * BYTE1(v122)) >> 14) ^ (*(v95 + 4 * BYTE1(v122)) << 18) ^ *(v100 + 4 * BYTE2(v124)) ^ 0x7E1E5010;
  v130 = *(v100 + 4 * BYTE2(v127));
  v131 = *(v96 + 4 * ((v128 ^ 0x6754500Au) >> 24)) + a8;
  v132 = -21582785 * *(v98 + 4 * v127);
  v133 = *(v95 + 4 * BYTE1(v127));
  v134 = -21582785 * *(v98 + 4 * (v128 ^ 0x2Au));
  v135 = a49 ^ (*(v96 + 4 * HIBYTE(v127)) + a8) ^ *(v100 + 4 * BYTE2(v129)) ^ (-21582785 * *(v98 + 4 * (v126 ^ 0x8Eu))) ^ __ROR4__(*(v95 + 4 * ((v128 ^ 0x500A) >> 8)), 14) ^ 0x541774FA;
  v136 = a48 ^ (*(v96 + 4 * HIBYTE(v129)) + a8) ^ __ROR4__(*(v95 + 4 * ((v126 ^ 0x9DAE) >> 8)), 14) ^ v132 ^ *(v100 + 4 * ((v128 ^ 0x6754500Au) >> 16)) ^ 0x9A279982;
  v137 = a47 ^ v130 ^ (*(v96 + 4 * ((v126 ^ 0xE0349DAE) >> 24)) + a8) ^ __ROR4__(*(v95 + 4 * BYTE1(v129)), 14) ^ 0xCFD4C0A7 ^ v134;
  v138 = a46 ^ v131 ^ (-21582785 * *(v98 + 4 * v129)) ^ __ROR4__(v133, 14) ^ *(v100 + 4 * ((v126 ^ 0xE0349DAE) >> 16)) ^ 0x8EB61C45;
  v139 = -21582785 * *(v98 + 4 * v137);
  v140 = *(v95 + 4 * BYTE1(v137));
  v141 = a69 ^ *(v100 + 4 * BYTE2(v137)) ^ (-21582785 * *(v98 + 4 * v136)) ^ __ROR4__(*(v95 + 4 * BYTE1(v135)), 14) ^ (*(v96 + 4 * HIBYTE(v138)) + a8);
  v142 = a45 ^ __ROR4__(*(v95 + 4 * BYTE1(v136)), 14) ^ *(v100 + 4 * BYTE2(v135)) ^ (*(v96 + 4 * HIBYTE(v137)) + a8) ^ 0x7C892C4A ^ (-21582785 * *(v98 + 4 * v138));
  v143 = a44 ^ *(v100 + 4 * BYTE2(v138)) ^ (*(v96 + 4 * HIBYTE(v136)) + a8) ^ (-21582785 * *(v98 + 4 * (v135 - ((2 * v135) & 0x40) + 32))) ^ __ROR4__(v140, 14) ^ 0x190B7FE4;
  v144 = a43 ^ (*(v96 + 4 * HIBYTE(v135)) + a8) ^ __ROR4__(*(v95 + 4 * BYTE1(v138)), 14) ^ *(v100 + 4 * BYTE2(v136)) ^ v139 ^ 0xCFA132BA;
  BYTE2(v109) = BYTE2(v141) ^ 0x2C;
  v145 = *(v95 + 4 * BYTE1(v142));
  v146 = -21582785 * *(v98 + 4 * v142);
  v147 = *(v96 + 4 * HIBYTE(v142)) + a8;
  v148 = a42 ^ __ROR4__(*(v95 + 4 * BYTE1(v144)), 14) ^ (*(v96 + 4 * ((v141 ^ 0x402CF460u) >> 24)) + a8) ^ *(v100 + 4 * BYTE2(v142)) ^ 0x2655A6B2 ^ (-21582785 * *(v98 + 4 * v143));
  v149 = a41 ^ (*(v96 + 4 * HIBYTE(v144)) + a8) ^ v146 ^ *(v100 + 4 * BYTE2(v143)) ^ __ROR4__(*(v95 + 4 * ((v141 ^ 0xF460) >> 8)), 14) ^ 0x354150DE;
  v150 = a40 ^ *(v100 + 4 * BYTE2(v144)) ^ (-21582785 * *(v98 + 4 * (v141 ^ 0x40u))) ^ __ROR4__(*(v95 + 4 * BYTE1(v143)), 14) ^ v147 ^ 0x6005D395;
  v151 = __ROR4__(v145, 14);
  v152 = a39 ^ v151 ^ (-21582785 * *(v98 + 4 * v144)) ^ *(v100 + 4 * BYTE2(v109)) ^ 0xD6EF510D ^ (*(v96 + 4 * HIBYTE(v143)) + a8);
  v153 = *(v96 + 4 * HIBYTE(v152)) + a8;
  v154 = *(v100 + 4 * BYTE2(v152));
  v155 = (*(v96 + 4 * HIBYTE(v150)) + a8) ^ *(v74 - 216) ^ *(v100 + 4 * BYTE2(v149)) ^ (-21582785 * *(v98 + 4 * v148)) ^ __ROR4__(*(v95 + 4 * BYTE1(v152)), 14);
  v156 = a68 ^ *(v100 + 4 * BYTE2(v150)) ^ (*(v96 + 4 * HIBYTE(v148)) + a8) ^ __ROR4__(*(v95 + 4 * BYTE1(v149)), 14) ^ (-21582785 * *(v98 + 4 * ((a39 ^ v151 ^ (63 * *(v98 + 4 * v144)) ^ *(v100 + 4 * BYTE2(v109))) ^ 0xDu ^ (*(v96 + 4 * HIBYTE(v143)) + a8))));
  v157 = a38 ^ *(v100 + 4 * BYTE2(v148)) ^ __ROR4__(*(v95 + 4 * BYTE1(v150)), 14) ^ v153 ^ (-21582785 * *(v98 + 4 * v149)) ^ 0xDE12593A;
  v158 = a37 ^ v154 ^ (*(v96 + 4 * HIBYTE(v149)) + a8) ^ (-21582785 * *(v98 + 4 * v150)) ^ __ROR4__(*(v95 + 4 * BYTE1(v148)), 14) ^ 0x8D19C5A6;
  v159 = *(v95 + 4 * BYTE1(v158));
  v160 = -21582785 * *(v98 + 4 * (v155 ^ 0x30u));
  v161 = -21582785 * *(v98 + 4 * (v156 ^ 0x23u));
  v162 = *(v100 + 4 * ((v156 ^ 0xA1F9E423) >> 16));
  v163 = *(v100 + 4 * ((v155 ^ 0x911C5930) >> 16));
  v164 = *(v95 + 4 * ((v155 ^ 0x5930) >> 8));
  v165 = *(v96 + 4 * (HIBYTE(v155) ^ 0x50)) + a8;
  v166 = *(v95 + 4 * ((v156 ^ 0xE423) >> 8));
  LODWORD(v95) = *(v95 + 4 * BYTE1(v157));
  v167 = *(v96 + 4 * (HIBYTE(v156) ^ 0x60)) + a8;
  v168 = a67 ^ v162 ^ __ROR4__(v164, 14) ^ (*(v96 + 4 * HIBYTE(v157)) + a8) ^ (-21582785 * *(v98 + 4 * v158));
  LODWORD(v96) = *(v74 - 212) ^ (*(v96 + 4 * HIBYTE(v158)) + a8) ^ v160 ^ __ROR4__(v166, 14) ^ *(v100 + 4 * BYTE2(v157));
  v169 = a66 ^ __ROR4__(v159, 14) ^ v163 ^ (-21582785 * *(v98 + 4 * v157)) ^ v167;
  v170 = a65 ^ v165 ^ v161 ^ *(v100 + 4 * BYTE2(v158)) ^ __ROR4__(v95, 14);
  LODWORD(v95) = v169 ^ 0x7EC2C88;
  v171 = *(a7 + 8 * (v72 - 243)) - 12;
  LODWORD(v100) = *(v171 + 4 * ((v169 ^ 0x7EC2C88u) >> 16));
  v172 = *(a7 + 8 * (v72 - 133)) - 4;
  LODWORD(v98) = *(v172 + 4 * (v169 ^ 0xDBu));
  v173 = *(v171 + 4 * ((v170 ^ 0x644667A6u) >> 16));
  v174 = *(v172 + 4 * (v168 ^ 0x2Bu));
  v175 = v96 ^ 0xAD089B63;
  v176 = *(a7 + 8 * (v72 - 162)) - 8;
  v177 = v168 ^ 0x9A25D878;
  v178 = *(v172 + 4 * (v96 ^ 0x30u));
  v179 = *(a7 + 8 * (v72 - 267)) - 12;
  v180 = *(v179 + 4 * HIBYTE(v177));
  LODWORD(v96) = v170 ^ 0xA6 ^ *(v74 - 136) ^ BYTE1(v95) ^ *(v176 + 4 * (BYTE1(v95) ^ 0xF5u)) ^ *(v171 + 4 * BYTE2(v177)) ^ *(v172 + 4 * (v170 ^ 0xF5u)) ^ __ROR4__(*(v179 + 4 * (BYTE3(v96) ^ 0xBD)), 7);
  v181 = *(v74 - 184);
  v182 = v177 ^ *(v74 - 132) ^ BYTE1(v175) ^ v174 ^ *(v176 + 4 * (BYTE1(v175) ^ 0xF5u)) ^ (v173 - ((2 * v173) & 0xBB708860) + 1572357168) ^ __ROR4__(*(v179 + 4 * BYTE3(v95)), 7);
  LODWORD(v95) = BYTE1(v177) ^ *(v74 - 128) ^ v95 ^ __ROR4__(*(v179 + 4 * ((v170 ^ 0x644667A6u) >> 24)), 7) ^ v98 ^ *(v171 + 4 * BYTE2(v175)) ^ *(v176 + 4 * (BYTE1(v177) ^ 0xF5u));
  LODWORD(v179) = v95 - ((2 * v95) & 0x3FDD04D4);
  LODWORD(v95) = (v96 - ((2 * v96) & 0xAA84C80A) - 717069307) ^ *(v74 - 204);
  LODWORD(v96) = (v182 - ((2 * v182) & 0xBA60C85E) + 1563452463) ^ *(v74 - 200);
  LODWORD(v171) = (v179 - 1611758998) ^ *(v74 - 208);
  v183 = v175 ^ *(v74 - 124) ^ v100 ^ BYTE1(v170) ^ 0x67 ^ __ROR4__(v180, 7) ^ *(v176 + 4 * (BYTE1(v170) ^ 0x92u)) ^ v178;
  v184 = *(a7 + 8 * (v72 - 236)) - 12;
  v185 = (v183 - ((2 * v183) & 0xE6148F88) + 1930053572) ^ *(v74 - 196);
  v79[3] = *(v184 + (((v182 - ((2 * v182) & 0x5E) + 47) ^ *(v74 - 200)) ^ 0xDFLL)) ^ 0xD4;
  v186 = *(a7 + 8 * (v72 ^ 0x167)) - 8;
  v79[4] = (*(v186 + (HIBYTE(v185) ^ 0x2CLL)) - 62) ^ 0x78;
  *v79 = (*(v186 + (BYTE3(v96) ^ 0x57)) - 62) ^ 0xC8;
  v187 = *(a7 + 8 * (v72 ^ 0x14E)) - 12;
  v79[13] = (*(v187 + (BYTE2(v171) ^ 0x5CLL)) - 89) ^ 0xC7;
  v79[11] = *(v184 + (v95 ^ 0x46)) ^ 0x90;
  v188 = *(a7 + 8 * (v72 ^ 0x1D1)) - 12;
  *(v181 + *(v74 - 152)) = BYTE1(v171) ^ 0x9B ^ *(v188 + BYTE1(v171));
  v79[2] = BYTE1(v96) ^ 0x88 ^ *(v188 + (BYTE1(v96) ^ 0xE6));
  v79[10] = BYTE1(v95) ^ 0xC6 ^ *(v188 + (BYTE1(v95) ^ 0x84));
  v79[15] = *(v184 + (v171 ^ 0x11)) ^ 0x27;
  v79[5] = (*(v187 + (BYTE2(v185) ^ 0x44)) - 89) ^ 0xE2;
  v79[8] = (*(v186 + (BYTE3(v95) ^ 0x26)) - 62) ^ 0xA2;
  v79[7] = *(v184 + (v185 ^ 0x3DLL)) ^ 0x2D;
  v79[12] = (*(v186 + (BYTE3(v171) ^ 0x44)) - 62) ^ 0x23;
  v79[1] = (*(v187 + (BYTE2(v96) ^ 0xA3)) - 89) ^ 0x17;
  LODWORD(v179) = *(v74 - 120);
  LODWORD(v96) = *(v74 - 116);
  v79[6] = BYTE1(v185) ^ 0xD0 ^ *(v188 + (BYTE1(v185) ^ 0x58));
  v79[9] = (*(v187 + (BYTE2(v95) ^ 0xF8)) - 89) ^ 0x90;
  v189 = v96 - 870984012 < v179;
  if (*(v74 - 140) != (v96 - 870984012) < 0xCC15D6A4)
  {
    v189 = *(v74 - 140);
  }

  return (*(*(v74 - 192) + 8 * ((223 * v189) ^ v72)))();
}

uint64_t sub_1D48CCCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *(*(a14 + 96) + 504) = v16 + 1;
  *(*(a14 + 96) + 496) = a16 - 1;
  v19 = 843532609 * (((~(v18 - 160) & 0x47FC1DC) - (~(v18 - 160) | 0x47FC1DD)) ^ 0x58329558);
  *(v18 - 148) = 276443307 - v19;
  *(v18 - 144) = v19 - 875954088;
  STACK[0x2E0] = &STACK[0x27C];
  v20 = (*(v17 + 29392))(v18 - 160);
  return (*(v17 + 8 * ((215 * (a16 - 1499319966 + (STACK[0x2C0] & 0x3F) < 0xFFFFFFC0)) ^ 0x861u)))(v20);
}

uint64_t sub_1D48CCE38@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7) ^ 0x82;
  return (*(v6 + 8 * ((2805 * (v7 == (v5 ^ (a2 + 2467)) - 991)) ^ (v3 + v5 + 109))))();
}

void sub_1D48CCE80()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v1 = *(v0 + 8) - 435584651 * ((-823092867 - (v0 | 0xCEF0997D) + (v0 | 0x310F6682)) ^ 0x5C3D7CD4);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1D48CD078()
{
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v0 == 0;
  return (*(v3 + 8 * ((23 * v6) ^ 0x408)))();
}

uint64_t sub_1D48CD0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, unsigned int a12, char *a13, int a14)
{
  a13 = &a10;
  a12 = (v16 - 714) ^ (50899313 * (((&a12 | 0xCC6706C2) - (&a12 & 0xCC6706C2)) ^ 0xE6AC2CB8));
  v17 = (*(v14 + 8 * (v16 ^ 0x79B)))(&a12);
  return (*(v14 + 8 * (((a14 == v15) * (v16 - 1543)) ^ v16)))(v17);
}

uint64_t sub_1D48CD1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, unsigned int a24)
{
  a24 = (v25 + 330) ^ ((((&a21 | 0x90D518EB) + (~&a21 | 0x6F2AE714)) ^ 0xCC984C6F) * v24);
  a21 = a13;
  a23 = &a19;
  (*(v26 + 8 * (v25 ^ 0x837)))(&a21);
  a23 = &a15;
  a21 = a13;
  a24 = (v25 + 330) ^ (((-1045856419 - (&a21 ^ 0x4DCDDE5D | 0xC1A97F5D) + (&a21 ^ 0x4DCDDE5D | 0x3E5680A2)) ^ 0x2FD60A7A) * v24);
  (*(v26 + 8 * (v25 + 1995)))(&a21);
  a22 = a13;
  LODWORD(a21) = (v25 + 77) ^ (1504884919 * (((&a21 | 0xCFB693BB) - &a21 + (&a21 & 0x30496C40)) ^ 0x347524A0));
  v27 = (*(v26 + 8 * (v25 + 2003)))(&a21);
  return (*(v26 + 8 * ((3137 * (HIDWORD(a21) == ((v25 - 643) ^ a10))) ^ v25)))(v27);
}

uint64_t sub_1D48CD3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, char a17, uint64_t a18, char *a19, int a20, int a21, uint64_t a22, int *a23, int a24, int *a25, uint64_t *a26)
{
  a16 = 783852075;
  v29 = 435584651 * ((1333176400 - (&a19 | 0x4F76A850) + (&a19 | 0xB08957AF)) ^ 0xDDBB4DF9);
  a19 = &a17;
  a21 = v29 + v26 - 661;
  a22 = a18;
  a23 = &a16;
  a24 = (a15 - 670966098) ^ v29;
  a25 = &a15;
  a26 = &a18;
  v30 = (*(v27 + 8 * (v26 + 1159)))(&a19);
  return (*(v27 + 8 * (((a20 == 671454635) * (v26 - 2190 + v26 - 1889 + 625)) ^ v26)))(v30, v28);
}

uint64_t sub_1D48CD4E4()
{
  v4 = (v3 - 543228110) & 0x20610874;
  v9 = v4 - ((694492625 - (&v9 | 0x29651DD1) + (&v9 | 0xD69AE22E)) ^ 0x30324E3E) * v2 + 100;
  v10 = v8;
  (*(v1 + 8 * (v4 + 1552)))(&v9);
  v10 = v6;
  v9 = v4 - 722 - (((&v9 | 0x85E4CE09) + (~&v9 | 0x7A1B31F6)) ^ 0x634C6218) * v2 + 822;
  result = (*(v1 + 8 * (v4 + 1552)))(&v9);
  *(v0 + 8) = (v4 ^ 0x7F259DA0) + (v7 ^ 0xA8DFFFBB) + ((2 * v7) & 0x51BFFF76);
  return result;
}

uint64_t sub_1D48CD530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40, int a41, unsigned int a42, unsigned int a43, int a44, int a45, char a46)
{
  v54 = *(v49 + 8 * (v46 - 10));
  v55 = (a46 - ((2 * a46) & 0x58) + 51);
  if (v55 == 53)
  {
    v58 = (a8 + 1375) | 0x4C;
    v59 = &a30 + v51 + 1774893827;
    v60 = ((v59[1] ^ v50) << 16) | ((*v59 ^ ((v58 - 1151) | 0x480) ^ 0x62) << 24) | ((v59[2] ^ v50) << 8);
    v48[((((v53 ^ 0x69CABAFF) + 444331313) ^ 0x69CABAFEu) >> 2) ^ 0x1A72AEBFLL] = (v60 | v59[3] ^ v50) + v47 - 2 * ((v60 | v59[3] ^ v50) & (v47 + 4) ^ (v59[3] ^ v50) & 4);
    v61 = *(v49 + 8 * ((63 * ((v51 + 1774893827) > 0x3F)) ^ v58));
    return v61(1774893827, v61, v52 + 16, 1, 0, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }

  else if (v55 == 52)
  {
    v56 = (a8 + 377);
    v57 = *(&a30 + v51 + v56 + 1774893398) ^ v50 | ((*(&a30 + v51 + 1774893828) ^ v50) << 8) | ((*(&a30 + v51 + 1774893829) ^ v50) << 16) | ((*(&a30 + v51 + 1774893830) ^ v50) << 24);
    *v48 = v57 + v47 - ((2 * v57) & 0xE7CCA056);
    return (*(v49 + 8 * ((956 * ((v51 + 1774893827) < 0x40)) ^ v56)))(386208803, 1695547392, 2147418112, 1742077952, 1774893823, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {
    v62 = (((a40 ^ 0x6DE2802C) - 1843560492) ^ ((a40 ^ 0xFFF94FAF) + 438353) ^ ((a40 ^ 0xD437870A) + 734558454)) + (((a40 ^ 0xCE2854E4) + 836217628) ^ ((a40 ^ 0x8B2D553A) + 1959963334) ^ ((a40 ^ 0x3294957) - 53037399)) - 867394372;
    v63 = (((a41 ^ 0x127B07A0) - 310052768) ^ ((a41 ^ 0x7C575600) - 2086098432) ^ ((a41 ^ 0x28001929) - 671095081)) + (((a41 ^ 0xB4B80A3B) + 1263007173) ^ ((a41 ^ 0x965405F4) + 1772878348) ^ ((a41 ^ 0x64C04746) - 1690322758)) - 1023556086;
    a40 = v62 ^ ((v62 ^ 0x797D619C) - 1183410742) ^ ((v62 ^ 0xAFFC26CC) + 1878512282) ^ ((v62 ^ 0x96CEA305) + 1455773521) ^ ((v62 ^ 0x7FBBEFFF) - 1078977621) ^ 0x79D84323;
    a41 = v63 ^ ((v63 ^ 0x415FE3E7) - 2012927775) ^ ((v63 ^ 0x66FFEB50) - 1348132776) ^ ((v63 ^ 0x76EEC3B0) - 1078720328) ^ ((v63 ^ 0x67EBFFFF) - 1364118279) ^ 0x70897C71;
    v64 = (((a42 ^ 0xCF5E60FD) + 815898371) ^ ((a42 ^ 0x98C7F27A) + 1731726726) ^ ((a42 ^ 0x11B5DA0E) - 297130510)) + (((a42 ^ 0x563302F3) - 1446183667) ^ ((a42 ^ 0xEFACD458) + 273886120) ^ ((a42 ^ 0xFFB39E22) + 5005790)) - 1743209726;
    v65 = (v64 ^ 0xE63F874A) & (2 * (v64 & 0xF43FD610)) ^ v64 & 0xF43FD610;
    v66 = ((2 * (v64 ^ 0x8E73234A)) ^ 0xF499EAB4) & (v64 ^ 0x8E73234A) ^ (2 * (v64 ^ 0x8E73234A)) & 0x7A4CF55A;
    v67 = v66 ^ 0xA44154A;
    v68 = (v66 ^ 0x7008E000) & (4 * v65) ^ v65;
    v69 = ((4 * v67) ^ 0xE933D568) & v67 ^ (4 * v67) & 0x7A4CF558;
    v70 = (v69 ^ 0x6800D540) & (16 * v68) ^ v68;
    v71 = ((16 * (v69 ^ 0x124C2012)) ^ 0xA4CF55A0) & (v69 ^ 0x124C2012) ^ (16 * (v69 ^ 0x124C2012)) & 0x7A4CF550;
    v72 = v70 ^ 0x7A4CF55A ^ (v71 ^ 0x204C5500) & (v70 << 8);
    v73 = v64 ^ (2 * ((v72 << 16) & 0x7A4C0000 ^ v72 ^ ((v72 << 16) ^ 0x755A0000) & (((v71 ^ 0x5A00A05A) << 8) & 0x7A4C0000 ^ 0x32080000 ^ (((v71 ^ 0x5A00A05A) << 8) ^ 0x4CF50000) & (v71 ^ 0x5A00A05A))));
    v74 = (((a43 ^ 0x9161D1EC) + 1855860244) ^ ((a43 ^ 0xF486F36) - 256405302) ^ ((a43 ^ 0xD805F653) + 670697901)) + (((a43 ^ 0xB80AD322) + 1207250142) ^ ((a43 ^ 0xA33AC149) + 1556430519) ^ ((a43 ^ 0x5D1C5AE2) - 1562139362)) - 726230310;
    v75 = (v74 ^ 0x279DF4B3) & (2 * (v74 & 0xB7A1F638)) ^ v74 & 0xB7A1F638;
    v76 = ((2 * (v74 ^ 0x6DE3883)) ^ 0x62FF9D76) & (v74 ^ 0x6DE3883) ^ (2 * (v74 ^ 0x6DE3883)) & 0xB17FCEBA;
    v77 = v76 ^ 0x91004289;
    v78 = (v76 ^ 0x200F8820) & (4 * v75) ^ v75;
    v79 = ((4 * v77) ^ 0xC5FF3AEC) & v77 ^ (4 * v77) & 0xB17FCEB8;
    v80 = (v79 ^ 0x817F0AA0) & (16 * v78) ^ v78;
    v81 = ((16 * (v79 ^ 0x3000C413)) ^ 0x17FCEBB0) & (v79 ^ 0x3000C413) ^ (16 * (v79 ^ 0x3000C413)) & 0xB17FCEB0;
    v82 = v80 ^ 0xB17FCEBB ^ (v81 ^ 0x117CCA00) & (v80 << 8);
    a42 = v73 ^ 0xA61A742D;
    a43 = v74 ^ (2 * ((v82 << 16) & 0x317F0000 ^ v82 ^ ((v82 << 16) ^ 0x4EBB0000) & (((v81 ^ 0xA003040B) << 8) & 0x317F0000 ^ 0x310000 ^ (((v81 ^ 0xA003040B) << 8) ^ 0x7FCE0000) & (v81 ^ 0xA003040B)))) ^ 0x930423C7;
    return v54(438353, &a30 + 4, a3, a4, a22, 3704889198, 3418120150, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a1, a24, a25, a26, a27, a28, a29, a30, a31, a32);
  }
}

uint64_t sub_1D48CD8B8(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 12) + 18753 * (((result | 0x9464) - (result & 0x9464)) ^ 0xC0E1);
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0xA9;
  v3 = v2 ^ 0xA9;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = -2046908039;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0xA9E1E30021696B88;
    *(v1 + 80) = 0x561E1CFFDE969477;
    *(v1 + 92) = v4;
  }

  *(result + 8) = 428168469;
  return result;
}

uint64_t sub_1D48CD970(uint64_t result)
{
  v1 = 742307843 * (((result | 0x219209D98EDD5F97) - result + (result & 0xDE6DF6267122A068)) ^ 0x920ED4B290FFD2C2);
  v2 = *(result + 32);
  v3 = v2 - v1;
  v4 = *result ^ v1;
  v5 = *(result + 16);
  v6 = v5 - v1;
  v7 = *(result + 40) + v1;
  v8 = *(result + 4) + v1;
  v9 = *(result + 12) + v1;
  v10 = v6 >= v3;
  v11 = v5 != v2;
  if (v7)
  {
    v11 = v10;
  }

  if (v11)
  {
    v9 = v4;
  }

  *(result + 8) = v9 ^ v8;
  return result;
}

uint64_t sub_1D48CDA18(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

uint64_t sub_1D48CDBD8()
{
  LODWORD(STACK[0x38C]) = v0;
  STACK[0x2F0] -= 2432;
  LODWORD(STACK[0x2FC]) = v0;
  return (*(v2 + 8 * ((3096 * (v0 == ((v1 - 2413) ^ 0x28059599))) | (v1 - 1982))))();
}

uint64_t sub_1D48CDC54(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1D48CDD10(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38)
{
  v45 = v44 ^ (v44 - 340);
  v46.n128_u64[0] = 0x8282828282828282;
  v46.n128_u64[1] = 0x8282828282828282;
  v47 = vdupq_n_s32(0x73E6502Fu);
  v48 = vdupq_n_s32(0x73E6502Bu);
  v130 = v43 - 16;
  v49.n128_u64[0] = 0x404040404040404;
  v49.n128_u64[1] = 0x404040404040404;
  v129 = *(v40 + 8 * (a4 + v38 + 1707));
  v50 = a29;
  v51 = (BYTE4(a30) - ((2 * BYTE4(a30)) & 0xBF) - 26);
  if (v51 == 228)
  {
    v132 = vld4q_s8(&a18 + 4);
    v91 = veorq_s8(v132.val[0], v46);
    v92 = vmovl_high_u8(v91);
    v93 = vmovl_u8(*v91.i8);
    v94 = veorq_s8(v132.val[1], v46);
    _Q21 = vmovl_high_u8(v94);
    _Q20 = vmovl_u8(*v94.i8);
    v97 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v98 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v99 = veorq_s8(v132.val[2], v46);
    v100 = vmovl_u8(*v99.i8);
    v101 = vmovl_high_u8(v99);
    v132.val[0] = veorq_s8(v132.val[3], v46);
    v132.val[1] = vmovl_u8(*v132.val[0].i8);
    v132.val[2] = vmovl_u16(*v132.val[1].i8);
    v132.val[1] = vmovl_high_u16(v132.val[1]);
    v132.val[0] = vmovl_high_u8(v132.val[0]);
    v132.val[3] = vmovl_u16(*v132.val[0].i8);
    v132.val[0] = vmovl_high_u16(v132.val[0]);
    v102 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v101, 8uLL)), vshlq_n_s32(vmovl_high_u16(v92), 0x18uLL)), v132.val[0]);
    v103 = vorrq_s8(vorrq_s8(vorrq_s8(v98, vshll_n_u16(*v101.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v92.i8), 0x18uLL)), v132.val[3]);
    v104 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v100, 8uLL)), vshlq_n_s32(vmovl_high_u16(v93), 0x18uLL)), v132.val[1]);
    v105 = vorrq_s8(vorrq_s8(vorrq_s8(v97, vshll_n_u16(*v100.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v93.i8), 0x18uLL)), v132.val[2]);
    v132.val[0] = veorq_s8(vandq_s8(v102, v47), (*v132.val & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v132.val[3] = veorq_s8(vandq_s8(v103, v47), (*&v132.val[3] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v132.val[1] = veorq_s8(vandq_s8(v104, v47), (*&v132.val[1] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v132.val[2] = veorq_s8(vandq_s8(v105, v47), (*&v132.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v132.val[0] = vaddq_s32(vsubq_s32(v102, vaddq_s32(v132.val[0], v132.val[0])), v48);
    v132.val[3] = vaddq_s32(vsubq_s32(v103, vaddq_s32(v132.val[3], v132.val[3])), v48);
    v132.val[1] = vaddq_s32(vsubq_s32(v104, vaddq_s32(v132.val[1], v132.val[1])), v48);
    v132.val[2] = vaddq_s32(vsubq_s32(v105, vaddq_s32(v132.val[2], v132.val[2])), v48);
    LODWORD(a35) = v132.val[2].i32[0];
    *(&a35 + 4) = vextq_s8(v132.val[2], v132.val[1], 4uLL);
    *(&a36 + 4) = vextq_s8(v132.val[1], v132.val[3], 4uLL);
    *(&a37 + 4) = vextq_s8(v132.val[3], v132.val[0], 4uLL);
    *(&a38 + 4) = vextq_s8(v132.val[0], v132.val[0], 4uLL).u64[0];
    HIDWORD(a38) = v132.val[0].i32[3];
    v106 = &a35 + v42 + 874163395;
    *v106 = (v39 + v45 + 1448 - 1884) ^ __ROR4__(*(v106 - 8) ^ *(v106 - 3) ^ *(v106 - 14) ^ *(v106 - 16), 31);
    return (*(v40 + 8 * ((1768 * (v43 == 874163332)) ^ v45)))(v50);
  }

  else if (v51 == 229)
  {
    v131 = vld4q_s8(&a18 + 4);
    v52 = v44 ^ (v44 + 180);
    v53 = veorq_s8(v131.val[0], v46);
    v54 = vmovl_u8(*v53.i8);
    v55 = vmovl_u16(*v54.i8);
    v56 = vmovl_high_u8(v53);
    v57 = vmovl_u16(*v56.i8);
    v58 = veorq_s8(v131.val[1], v46);
    v59 = vmovl_high_u8(v58);
    v60 = vmovl_u8(*v58.i8);
    v61 = vorrq_s8(vshll_high_n_u16(v59, 8uLL), vmovl_high_u16(v56));
    v62 = vorrq_s8(vshll_n_u16(*v59.i8, 8uLL), v57);
    v63 = vorrq_s8(vshll_high_n_u16(v60, 8uLL), vmovl_high_u16(v54));
    v64 = vorrq_s8(vshll_n_u16(*v60.i8, 8uLL), v55);
    v65 = veorq_s8(v131.val[2], v46);
    _Q21 = vmovl_u8(*v65.i8);
    _Q20 = vmovl_high_u8(v65);
    __asm
    {
      SHLL2           V22.4S, V20.8H, #0x10
      SHLL2           V23.4S, V21.8H, #0x10
    }

    v131.val[0] = veorq_s8(v131.val[3], v46);
    v131.val[1] = vmovl_high_u8(v131.val[0]);
    v131.val[0] = vmovl_u8(*v131.val[0].i8);
    v131.val[2] = vorrq_s8(vorrq_s8(v61, _Q22), vshlq_n_s32(vmovl_high_u16(v131.val[1]), 0x18uLL));
    v131.val[1] = vorrq_s8(vorrq_s8(v62, vshll_n_s16(*_Q20.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v131.val[1].i8), 0x18uLL));
    v131.val[3] = vorrq_s8(vorrq_s8(v63, _Q23), vshlq_n_s32(vmovl_high_u16(v131.val[0]), 0x18uLL));
    v131.val[0] = vorrq_s8(vorrq_s8(v64, vshll_n_s16(*_Q21.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v131.val[0].i8), 0x18uLL));
    v74 = vdupq_n_s32(0xE7CCA056);
    v131.val[2] = vaddq_s32(vsubq_s32(v131.val[2], vandq_s8(vaddq_s32(v131.val[2], v131.val[2]), v74)), v48);
    v131.val[1] = vaddq_s32(vsubq_s32(v131.val[1], vandq_s8(vaddq_s32(v131.val[1], v131.val[1]), v74)), v48);
    v131.val[3] = vaddq_s32(vsubq_s32(v131.val[3], vandq_s8(vaddq_s32(v131.val[3], v131.val[3]), v74)), v48);
    v131.val[0] = vaddq_s32(vsubq_s32(v131.val[0], vandq_s8(vaddq_s32(v131.val[0], v131.val[0]), v74)), v48);
    LODWORD(a35) = v131.val[0].i32[0];
    *(&a35 + 4) = vextq_s8(v131.val[0], v131.val[3], 4uLL);
    *(&a36 + 4) = vextq_s8(v131.val[3], v131.val[1], 4uLL);
    *(&a37 + 4) = vextq_s8(v131.val[1], v131.val[2], 4uLL);
    HIDWORD(a38) = v131.val[2].i32[3];
    v75 = *(&off_1F5033D40 + (v52 ^ 0x307));
    *(&a38 + 4) = vextq_s8(v131.val[2], v131.val[2], 4uLL).u64[0];
    v76 = v75 - 8;
    v77 = *(&off_1F5033D40 + (v52 ^ 0x3B2));
    v78 = *(&off_1F5033D40 + v52 - 734) - 4;
    LODWORD(v75) = (a28 & 0x6C0BA2C6 ^ 0x2803A246 ^ (a28 ^ 0xB9D3B776) & (a29 ^ 0x2A27EA4F) | HIDWORD(a28) & 0x7802D1B ^ 0x6000809 ^ (a28 ^ 0x41AC6592) & (HIDWORD(a28) ^ (v41 + v52 - 77 - 879))) + (HIDWORD(a27) ^ v41) + *(v75 - 8 + 4 * (v130 + v42)) + (*(&a35 + (v78[v130 + v42] - 15)) ^ v39);
    v79 = *(v77 + v130 + v42);
    v80 = (v79 - 82) ^ (((v79 - 82) ^ 0xD2) - 34) ^ (((v79 - 82) ^ 0xC3) - 51) ^ (((v79 - 82) ^ 0x9E) - 110) ^ (((v79 - 82) ^ 0x7F) + 113);
    v81 = ((v75 ^ 0x7359B491) - 891647155) ^ ((v75 ^ 0xABB83438) + 305859558);
    LODWORD(v75) = (((a28 ^ 0xC8F49) - 823113) ^ ((a28 ^ 0xFA633425) + 94161883) ^ ((a28 ^ 0xBC43F3E5) + 1136397339)) + 1204454627 + (((v75 ^ 0x467CC022 ^ ((v75 ^ 0x63E5BD74) - 630816086) ^ v81 ^ ((v75 ^ 0xFD78FDFF) + 1157349923)) << (v80 & 8) << ((v80 ^ 0x12) & 0x17 ^ 2)) | ((v75 ^ 0x467CC022 ^ ((v75 ^ 0x63E5BD74) - 630816086) ^ v81 ^ ((v75 ^ 0xFD78FDFF) + 1157349923)) >> (98 - v79)));
    v82 = (v75 ^ 0xFC69CB34) & (2 * (v75 & 0xFE61C3A6)) ^ v75 & 0xFE61C3A6;
    v83 = ((2 * (v75 ^ 0xB82BCE7C)) ^ 0x8C941BB4) & (v75 ^ 0xB82BCE7C) ^ (2 * (v75 ^ 0xB82BCE7C)) & 0x464A0DDA;
    v84 = v83 ^ 0x424A044A;
    v85 = (v83 ^ 0x990) & (4 * v82) ^ v82;
    v86 = ((4 * v84) ^ 0x19283768) & v84 ^ (4 * v84) & 0x464A0DD8;
    v87 = (v86 ^ 0x80540) & (16 * v85) ^ v85;
    v88 = ((16 * (v86 ^ 0x46420892)) ^ 0x64A0DDA0) & (v86 ^ 0x46420892) ^ (16 * (v86 ^ 0x46420892)) & 0x464A0DD0;
    v89 = v87 ^ 0x464A0DDA ^ (v88 ^ 0x44000D00) & (v87 << 8);
    LODWORD(v128) = (v44 + 430091734) & 0xFAF3CAEC;
    HIDWORD(v128) = HIDWORD(a11) - 2131272934;
    return (*(v40 + 8 * v52))(a29, v77, v76, 1179254784, v75 ^ (2 * ((v89 << 16) & 0x464A0000 ^ v89 ^ ((v89 << 16) ^ 0xDDA0000) & (((v88 ^ 0x24A005A) << 8) & 0x464A0000 ^ 0x4420000 ^ (((v88 ^ 0x24A005A) << 8) ^ 0x4A0D0000) & (v88 ^ 0x24A005A)))) ^ 0x3C4D909B, v52, v78, v43 - 15, a9, a10, a11, a12, a13, v128, v129, v43 - 16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
  }

  else
  {
    v107 = (((HIDWORD(a27) ^ 0x4D5B9221) - 1297846817) ^ ((HIDWORD(a27) ^ 0xD17DA6CD) + 780294451) ^ ((HIDWORD(a27) ^ 0xDA0A7C65) + 636847003)) + (((HIDWORD(a27) ^ 0x2C972345) - 748102469) ^ ((HIDWORD(a27) ^ 0x4312D526) - 1125307686) ^ ((HIDWORD(a27) ^ 0x29A9BEEA) - 698990314)) - 1018681782;
    v108 = (v107 ^ 0xA5836AC0) & (2 * (v107 & 0xC9106AC8)) ^ v107 & 0xC9106AC8;
    v109 = ((2 * (v107 ^ 0x37833A40)) ^ 0xFD26A110) & (v107 ^ 0x37833A40) ^ (2 * (v107 ^ 0x37833A40)) & 0xFE935088;
    v110 = v109 ^ 0x2915088;
    v111 = (v109 ^ 0x6C020000) & (4 * v108) ^ v108;
    v112 = ((4 * v110) ^ 0xFA4D4220) & v110 ^ (4 * v110) & 0xFE935088;
    v113 = v111 ^ 0xFE935088 ^ (v112 ^ 0xFA014000) & (16 * v111);
    v114 = (16 * (v112 ^ 0x4921088)) & 0xFE935080 ^ 0x16825008 ^ ((16 * (v112 ^ 0x4921088)) ^ 0xE9350880) & (v112 ^ 0x4921088);
    v115 = (v113 << 8) & 0xFE935000 ^ v113 ^ ((v113 << 8) ^ 0x93508800) & v114;
    v116 = v107 ^ (2 * ((v115 << 16) & 0x7E930000 ^ v115 ^ ((v115 << 16) ^ 0x50880000) & ((v114 << 8) & 0xFE930000 ^ 0x6C830000 ^ ((v114 << 8) ^ 0x13500000) & v114)));
    v117 = (((a28 ^ 0x6838EB39) - 1748560697) ^ ((a28 ^ 0x8235BA2E) + 2110408146) ^ ((a28 ^ 0xAC21199E) + 1407116898)) + (((a28 ^ 0x489EEE6E) - 1218375278) ^ ((a28 ^ 0xBC00F668) + 1140787608) ^ ((a28 ^ 0xB2B2508F) + 1296936817)) - 1868308541;
    v118 = (v117 ^ 0xFB24AC4E) & (2 * (v117 & 0xFBB4B14F)) ^ v117 & 0xFBB4B14F;
    v119 = ((2 * (v117 ^ 0x1A6DAE4C)) ^ 0xC3B23E06) & (v117 ^ 0x1A6DAE4C) ^ (2 * (v117 ^ 0x1A6DAE4C)) & 0xE1D91F02;
    v120 = v119 ^ 0x20490101;
    v121 = (v119 ^ 0xC1900E00) & (4 * v118) ^ v118;
    v122 = ((4 * v120) ^ 0x87647C0C) & v120 ^ (4 * v120) & 0xE1D91F00;
    v123 = (v122 ^ 0x81401C00) & (16 * v121) ^ v121;
    v124 = ((16 * (v122 ^ 0x60990303)) ^ 0x1D91F030) & (v122 ^ 0x60990303) ^ (16 * (v122 ^ 0x60990303)) & 0xE1D91F00;
    v125 = v123 ^ 0xE1D91F03 ^ (v124 ^ 0x1911000) & (v123 << 8);
    HIDWORD(a27) = v116 ^ 0xF73A8351;
    LODWORD(a28) = v117 ^ (2 * ((v125 << 16) & 0x61D90000 ^ v125 ^ ((v125 << 16) ^ 0x1F030000) & (((v124 ^ 0xE0480F03) << 8) & 0x61D90000 ^ 0x20C00000 ^ (((v124 ^ 0xE0480F03) << 8) ^ 0x591F0000) & (v124 ^ 0xE0480F03)))) ^ 0x7C28C7C0;
    v126 = (((HIDWORD(a28) ^ 0x5E808817) - 1585481751) ^ ((HIDWORD(a28) ^ 0x96B037B7) + 1766836297) ^ ((HIDWORD(a28) ^ 0x8E1CF729) + 1910704343)) + (((HIDWORD(a28) ^ 0xDAD00E6B) + 623899029) ^ ((HIDWORD(a28) ^ 0xBB611407) + 1151265785) ^ ((HIDWORD(a28) ^ 0x279D52E5) - 664621797)) - 1517352771;
    v127 = (((a29 ^ 0x8673AE7) - 140983015) ^ ((a29 ^ 0x18C304E9) - 415433961) ^ ((a29 ^ 0x56887687) - 1451783815)) + (((a29 ^ 0x708BD5E7) - 1888212455) ^ ((a29 ^ 0xD5742B6D) + 713806995) ^ ((a29 ^ 0xE3D3B603) + 472664573)) + 195878479;
    HIDWORD(a28) = v126 ^ ((v126 ^ 0x8365D0BF) + 1705793772) ^ ((v126 ^ 0x1DE42700) - 80892075) ^ ((v126 ^ 0xF8583FE9) + 512866238) ^ ((v126 ^ 0x7FEFBFFD) - 1725548630) ^ 0x5F1A3F22;
    LODWORD(a29) = v127 ^ ((v127 ^ 0xF2A6B361) + 1913455012) ^ ((v127 ^ 0xA98B05F7) + 690009910) ^ ((v127 ^ 0x3BA60456) - 1156729195) ^ ((v127 ^ 0x1FDFFFFD) - 1619768000) ^ 0x397805B4;
    return v129(v46, v47, v48, v49);
  }
}

uint64_t sub_1D48CDD54()
{
  v8 = *(v4 + 8 * (v0 - 2444));
  v9 = *v2;
  v10 = v1 - 4 + v6;
  *(*v2 + v10) = (v7 ^ 0xA3) - ((2 * (v7 ^ 0xA3)) & 4) - 126;
  *(v9 + v10 + 1) = (v3 ^ 0xF0) - ((2 * (v3 ^ 0xF0)) & 4) - 126;
  *(v9 + v10 + 2) = (v5 ^ 0x5F) - ((2 * (v5 ^ 0x5F)) & 4) - 126;
  *(v9 + v10 + 3) = -38;
  return v8();
}

void sub_1D48CDDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  v14 = (LOBYTE(STACK[0x278]) - ((2 * LOBYTE(STACK[0x278])) & 0xDD) - 11);
  if (v14 == 246)
  {
    v18 = STACK[0x25C];
    v19 = STACK[0x258];
    LOBYTE(STACK[0x250]) = (8 * (LOBYTE(STACK[0x25C]) - ((a12 & 0x6D ^ 8) & (2 * LOBYTE(STACK[0x25C])))) - 112) ^ 0x12;
    LOBYTE(STACK[0x251]) = v12 ^ (v18 >> 5);
    LOBYTE(STACK[0x252]) = v12 ^ (v18 >> 13);
    LOBYTE(STACK[0x253]) = v12 ^ (v18 >> 21);
    LOBYTE(STACK[0x254]) = ((__PAIR64__(v19, v18) >> 29) - 2 * ((v18 & 0x20000000) != 0) + 1) ^ 0x83;
    LOBYTE(STACK[0x255]) = v12 ^ (v19 >> 5);
    LOBYTE(STACK[0x256]) = v12 ^ (v19 >> 13);
    v17 = (v19 >> 21) ^ 0xFFFFFF82;
  }

  else
  {
    if (v14 != 243)
    {
      goto LABEL_6;
    }

    v15 = STACK[0x258];
    v16 = STACK[0x25C];
    LOBYTE(STACK[0x250]) = v12 ^ (LODWORD(STACK[0x258]) >> 21);
    LOBYTE(STACK[0x251]) = (v15 >> ((4 * v13) ^ 0xE5)) ^ v12;
    LOBYTE(STACK[0x252]) = v12 ^ (v15 >> 5);
    LOBYTE(STACK[0x253]) = ((__PAIR64__(v15, v16) >> 29) - 2 * ((v16 & 0x20000000) != 0) + 1) ^ 0x83;
    LOBYTE(STACK[0x254]) = v12 ^ (v16 >> 21);
    LOBYTE(STACK[0x255]) = v12 ^ (v16 >> 13);
    LOBYTE(STACK[0x256]) = v12 ^ (v16 >> 5);
    LOBYTE(v17) = (8 * (v16 - ((2 * v16) & 0x16)) + 88) ^ 0xDA;
  }

  LOBYTE(STACK[0x257]) = v17;
LABEL_6:
  JUMPOUT(0x1D49327C0);
}

void sub_1D48CDEFC()
{
  if (v0 == 1002670346)
  {
    v2 = 671454635;
  }

  else
  {
    v2 = 671412611;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_1D48CDF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned int a32, int a33, int a34, uint64_t a35, uint64_t a36)
{
  v40 = __ROR8__(__ROR8__(v38, 37) ^ 0x9E7DFC47442994C5, 27);
  v41 = ((v40 ^ 0xC40AC973BCFFE509) - ((2 * (v40 ^ 0xC40AC973BCFFE509)) & 0x84CD7400CCF9398ALL) - 0x3D9945FF9983633BLL) ^ a3;
  v42 = a5 ^ a31;
  v43 = a5 ^ a31 ^ 0x5E8CC683F9A37215;
  v44 = v40 ^ 0xC40AC973BCFFE509 ^ v37 ^ 0xFD3533F9DC42A8E4;
  v45 = (v43 + 0xE3C9A4A6840F577 - 2 * ((((v36 - 1679) | 0x418u) + 0xE3C9A4A6840EF82) & v43 ^ v42 & 8)) ^ v39;
  v46 = v45 ^ 0x629A61E2FE92CDE4;
  v47 = v41 ^ 0x8ABB7B075CE8A96ELL;
  v48 = (v45 ^ 0x629A61E2FE92CDE4) & (v42 ^ 0xA173397C065C8DEALL) ^ v41 ^ 0x8ABB7B075CE8A96ELL;
  v49 = (v40 ^ 0xC40AC973BCFFE509) & (v37 ^ 0x2CACC0623BD571BLL);
  v50 = (v45 ^ 0x9D659E1D016D321BLL) & (v37 ^ 0xFD3533F9DC42A8E4);
  v51 = (v48 ^ v43) & 1;
  if ((v51 & v50) != 0)
  {
    v51 = -v51;
  }

  v52 = (v48 ^ v43) & 0xFFFFFFFFFFFFFFFELL ^ 0x8ABEF87C8808CCB5 ^ (v51 + v50);
  v53 = v46 ^ v49;
  v54 = (v52 ^ (8 * v52) | (v52 >> 61)) ^ (v52 >> 39) ^ ((v52 >> 61) & v52 | (v52 << 25));
  v55 = v41 ^ 0x754484F8A3175691;
  v56 = (v47 | ~v44) - (v55 ^ v44);
  v57 = v55 & v43 ^ v44;
  v58 = v57 ^ 0xB73927F7504FC0F2 ^ ((v57 ^ 0xB73927F7504FC0F2) >> 7);
  v59 = v57 ^ 0xF38BFF733C051F6 ^ v48;
  v60 = v53 ^ 0x92CFC162FD513143 ^ ((v53 ^ 0x92CFC162FD513143) >> 1) ^ (((v53 ^ 0x92CFC162FD513143) >> 6) | ((v53 ^ 0x92CFC162FD513143) << 63)) ^ (v54 + ((v53 ^ 0x92CFC162FD513143) << 58) - 2 * (v54 & ((v53 ^ 0x92CFC162FD513143) << 58)));
  v61 = v37 ^ v56 ^ 0x4CAAD1CDF7D7CF33 ^ v53 ^ ((v37 ^ v56 ^ 0x4CAAD1CDF7D7CF33 ^ v53) >> 10) ^ ((v37 ^ v56 ^ 0x4CAAD1CDF7D7CF33 ^ v53) << 47) ^ ((v37 ^ v56 ^ 0x4CAAD1CDF7D7CF33 ^ v53) >> 17) ^ ((v37 ^ v56 ^ 0x4CAAD1CDF7D7CF33 ^ v53) << 54);
  *(&v62 + 1) = v57 ^ 0xB73927F7504FC0F2;
  *&v62 = v57;
  v63 = ((v57 ^ 0xB73927F7504FC0F2) << 57) ^ ((v57 ^ 0xB73927F7504FC0F2) << 23) ^ __ROR8__((v62 >> 44) & 0xE0000000000FFFFFLL ^ __ROR8__(v58, 3) ^ 0xAFA235EACE6B4032, 61) ^ 0x7D11AF5673019D05;
  v64 = v59 ^ v63 ^ __ROR8__(v59, 19) ^ (v59 << 36) ^ (v59 >> 28);
  v65 = v61 ^ v63;
  v66 = v64 & ~v65;
  v67 = v61 & ~v60;
  v68 = v54 & (~(2 * v64) + v64);
  v69 = v60 & ~v54 ^ v64;
  v70 = v60 ^ (__ROR8__(__ROR8__(v61, 62) ^ 0x25DA1EB034059543, 2) ^ 0x36897853F2FE9AAFLL) & v65;
  if ((v68 & 0x100000000 & v65) != 0)
  {
    v71 = -(v68 & 0x100000000);
  }

  else
  {
    v71 = v68 & 0x100000000;
  }

  v72 = (v71 + v65) ^ v68 & 0xFFFFFFFEFFFFFFFFLL;
  v73 = v54 ^ v67 ^ v69 ^ 0x5747C156E755AED6;
  v74 = (v70 ^ 0x6F45779FA95FC03AuLL) >> 1;
  v75 = v72 ^ 0x9A383CF881807545;
  v76 = (v72 ^ 0x9A383CF881807545) << (v74 & 0x17);
  v77 = v69 ^ v72;
  v78 = v77 ^ 0xAC7C0FF4012565E3;
  v79 = v61 ^ 0x28FA59BDD48D0B6 ^ v66 ^ v70;
  v80 = (v77 & 0x8000) == 0;
  v81 = v73 ^ __ROR8__(v73, 61) ^ (v73 << 25) ^ (v73 >> 39);
  v82 = 0x8000;
  if (!v80)
  {
    v82 = -32768;
  }

  v83 = v82 + v78;
  v84 = v79 ^ __ROR8__(v79, 10) ^ (v79 << 47) ^ (v79 >> 17);
  v85 = v75 ^ (v75 >> 7) ^ (v76 << (v74 & 0x17 ^ 0x17)) ^ ((v75 >> 41) | (v75 << 57));
  *(&v86 + 1) = v70 ^ 0x6F45779FA95FC03ALL;
  *&v86 = v70;
  v87 = v74 ^ (v86 >> 6) ^ ((v70 ^ 0x6F45779FA95FC03ALL) & 0x9B6535C14F352826 ^ (v70 << 63) | (v70 ^ 0x6F45779FA95FC03ALL) & 0x649ACA3EB0CAD7D9) ^ v81;
  v88 = v78 ^ (v78 >> 19) ^ (v83 >> 28) ^ ((v83 ^ 0x8000) << 36) ^ ((v83 ^ 0x8000) << 45) ^ v85;
  v89 = v85 ^ v84;
  v90 = v87 ^ 0x1BD15DE7EA57F00 ^ v85 & ~v84;
  v91 = v88 ^ (v87 ^ 0x1BD15DE7EA57F00) & ~v81;
  v92 = v81 & ~v88 ^ v89;
  v93 = v91 + v81 - 2 * (v88 & v81);
  v94 = (v58 >> 3) & 1;
  v95 = v91 ^ 0x6E04C15915AB860ALL ^ v92;
  v96 = v95 >> 19;
  *(&v86 + 1) = (v95 >> 19) & v95 & 0x1A36E0206AEDLL ^ (v95 >> 28) ^ (((v95 >> 19) | v95) & 0xD8807A36E0206AEDLL | (v95 >> 19) & 0x5C91FDF9512 ^ v95 & 0x277F85C91FDF9512);
  *&v86 = (v95 << 36) ^ (v95 << 45) ^ *(&v86 + 1);
  v97 = v93 ^ (v87 ^ 0xFE42EA21815A80FFLL) & v84;
  v98 = v90 ^ v84 ^ ((v89 - ((2 * v89) & 0x4BCF7563A6B4D67ELL) - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) & v88 ^ 0x7370AC685030CB36;
  v99 = (v97 >> 39) ^ (v97 >> 61) ^ (8 * (v97 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v97 ^ 0x3278F838FE43D2BCLL) - (((v97 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v97 ^ 0x3278F838FE43D2BCLL))));
  v100 = v99 ^ 0x64F1F1;
  v101 = v92 ^ 0x26974B18501E2B14 ^ ((v92 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v92 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v92 ^ 0x26974B18501E2B14) << 23) ^ ((v92 ^ 0x26974B18501E2B14) << 57);
  v102 = v90 ^ 0x7955EAEC4D48B80CLL ^ (v90 << 63) ^ __ROR8__(v90 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v90 ^ 0x7955EAEC4D48B80CuLL) >> v94 >> (v94 ^ 1u));
  v103 = v99 ^ 0x64F1F1 ^ v102;
  v104 = (v98 >> 17) ^ __ROR8__(v98, 10) ^ __ROR8__(__ROR8__(v98, 14) & 0xFFFC000000000007 ^ __ROR8__(v98, 61), 3);
  *&v86 = __ROR8__(__ROR8__(v101, 7) ^ __ROR8__(__ROR8__(v86 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v105 = v101 & ~v104 ^ v103;
  v106 = v86 ^ 0xBBDB0FB7A00B9120 ^ (v99 ^ 0xFFFFFFFFFF9B0E0ELL) & v102;
  v107 = v99 ^ (((v103 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v103 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v104 ^ 0x425764BB58132BD4 ^ v106;
  v108 = (v86 ^ 0x4424F0485FF46EDFLL) & v100 ^ v104 ^ v101;
  v109 = (v108 ^ -v108 ^ (0x70C7A8D3F3643DFDLL - (v108 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v110 = v106 ^ 0x97F6A7E5F6E8F58ALL ^ v108;
  v111 = v104 ^ 0x44C9D571A5C4A51CLL ^ v105 ^ (v86 ^ 0xBBDB0FB7A00B9120) & ~(v104 ^ v101);
  v112 = v105 ^ 0xD3DA1E3360BF843ALL ^ ((v105 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v105 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v114 = __ROR8__(__ROR8__(v107, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v107 ^ (8 * v107) ^ ((v107 >> 61) | (v107 << 25)), 23) ^ 0x735302FC48340548, 41);
  v115 = (v109 >> 7) ^ (v109 >> 41) ^ (v109 << 23) ^ (v109 << 57);
  v116 = v115 ^ v109;
  v117 = v110 ^ (v110 >> 28) ^ (v110 >> 19) ^ (v110 << 36) ^ (v110 << 45) ^ v115 ^ v109;
  v118 = v112 & 0xFFFFFFF7FFFFFFFFLL ^ (v105 << 63) ^ (v112 & 0x800000000 | ((v105 ^ 0xD3DA1E3360BF843ALL) << (v96 & 0x12) << (v96 & 0x12 ^ 0x3A))) ^ v114;
  if (v115 == v109)
  {
    v119 = 0;
  }

  else
  {
    v119 = v111 << 47;
  }

  v120 = v114 ^ 0x7E241A02A439A981;
  v113 = (v111 ^ (v111 >> 10) | (v111 << 54)) ^ (v111 << 54) & v111;
  v121 = (v119 ^ v113 | (v111 << 47)) ^ (v113 & (v111 << 47) & 0xFFFF800000000000 | (v111 >> 17));
  v122 = v118 ^ 0x7E241A02A439A981;
  v123 = v121 ^ v116 ^ v120 & ~v117;
  v124 = (~(2 * v120) + v120) & (v118 ^ 0x7E241A02A439A981) ^ v117;
  v125 = v123 ^ v124;
  v126 = v123 ^ v124 ^ 0x93C23431B76D41FLL;
  *(&v127 + 1) = v126;
  *&v127 = v123 ^ v124;
  v128 = v120 ^ 0x6005BE354A5BB0B2 ^ v124 ^ v121 & (v118 ^ 0x81DBE5FD5BC6567ELL);
  v129 = v116 & ~v121 ^ v122;
  v130 = v117 & ~(v121 ^ v116) ^ v121 ^ v129;
  v131 = (v127 >> 62) ^ (4 * (v126 >> 28)) ^ 0x406FF36C296024B3;
  v132 = (v128 << (v116 & 3) << (v116 & 3 ^ 3)) ^ v128 ^ ((v128 >> 39) ^ (v128 >> 61) | (v128 << 25));
  *(&v127 + 1) = v126;
  *&v127 = v125;
  v133 = ((v127 >> 19) ^ __ROR8__(v131, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v134 = v123 ^ 0x2DB5B6AF87F64351 ^ ((v123 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v123 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v123 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v123 ^ 0x2DB5B6AF87F64351) >> 41);
  v135 = v134 ^ (v126 << 36) ^ (((2 * v133) & 0xFFFFFFFF18D20D4ALL) + (v133 ^ 0xFFFFFFFF8C6906A5));
  v136 = v135 ^ (v129 ^ 0x6DC4FB0BD4FFFF44 ^ ((v129 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (((v129 ^ 0x6DC4FB0BD4FFFF44) >> 1) ^ ((v129 ^ 0x6DC4FB0BD4FFFF44) >> 6) | (v129 << 63))) & ~v132;
  v137 = v132 & ~v135 ^ __ROR8__(v130 ^ 0xF374A001D380BDC2, 17) ^ ((v130 ^ 0xF374A001D380BDC2) >> 10) ^ (((v130 ^ 0xF374A001D380BDC2) << 54) | (v130 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v130 ^ 0xF374A001D380BDC2) << 54) & (v130 ^ 0xF374A001D380BDC2) | v130 & 0x20) ^ v134;
  *(&v127 + 1) = (v137 ^ -v137 ^ (v136 - (v137 ^ v136))) + v136;
  *&v127 = *(&v127 + 1) ^ 0x69309AC4CAE2F93;
  v138 = 2 * (a34 & 1) + (a34 ^ 1u);
  v139 = v137 ^ 0x3096EC2D0511544CLL;
  v140 = v137 ^ __ROR8__(v137 ^ 0x3096EC2D0511544CLL, 7) ^ ((v137 ^ 0x3096EC2D0511544CLL) << 23);
  return (*(a36 + 8 * (v36 ^ (203 * (a32 <= v138)))))(a1, v140, a2, *(&v127 + 1) ^ 0x69309AC4CAE2F93 ^ __ROR8__(*(&v127 + 1) ^ 0x69309AC4CAE2F93, 19) ^ (v127 >> 28), a36, v138, v140 ^ (v139 >> 41), a4, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D48CEA88()
{
  if (!v3 || v3 == -42052)
  {
    __asm { BRAA            X9, X17 }
  }

  v8 = v6;
  v7 = 2228 - ((((2 * &v7) | 0x6177063C) - &v7 + 1329888482) ^ 0x56132F0E) * v1;
  (*(v0 + 29440))(&v7);
  v8 = v4;
  v7 = 2228 - (((&v7 | 0x72C5D769) - &v7 + (&v7 & 0x8D3A2890)) ^ 0x946D7B79) * v1;
  (*(v0 + 29440))(&v7);
  return (v3 ^ 0x3CD5BDAB) + ((2 * v3) & 0x79AB7B56u) - 349186048 - 671454635;
}

uint64_t sub_1D48CEB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v32 - 136) = &a28;
  *(v32 - 128) = &a28;
  *(v32 - 120) = &a18;
  *(v32 - 112) = a14;
  *(v32 - 104) = a13;
  *(v32 - 144) = (v31 + 3113) ^ (((v32 - 144) ^ 0x970DCC13) * v29);
  v33 = (*(v28 + 8 * (v31 + 3594)))(v32 - 144);
  return (*(v28 + 8 * (((v30 - 265678217 < ((v31 + 587709196) & 0xDCF84CED ^ 0x7FFFF757)) * (v31 ^ 0x28)) ^ (v31 + 127))))(v33);
}

uint64_t sub_1D48CEBBC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, int8x16_t a4@<Q0>)
{
  v11 = v5 + 32;
  v12 = (v11 ^ v9 ^ ((v7 + 1598) | v8)) + v4;
  v13 = *(a3 + v12 - 15);
  v14 = *(a3 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = veorq_s8(v13, a4);
  *(v15 - 31) = veorq_s8(v14, a4);
  return (*(v10 + 8 * (((v6 == v11) * a2) ^ v7)))();
}

uint64_t sub_1D48CEBC4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W7>, int a6@<W8>)
{
  v12 = (a6 - 1);
  *(a2 + v12) = ((v12 & 0xF) * a5) ^ *(v7 + v12) ^ (v6 - 95) ^ *(a4 + (v12 & 0xF)) ^ *((v12 & 0xF) + a3 + 5) ^ *((v12 & 0xF) + v10 + 1) ^ v9;
  return (*(v11 + 8 * ((((((v6 + 1441 + v8) & a1) - 25) ^ 4) * (v12 == 0)) ^ (v6 + 2136))))();
}

uint64_t sub_1D48CEC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v54 = v50 - 1535;
  if (a6)
  {
    v55 = a46 == 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = v55;
  return (*(v53 + 8 * ((((v56 ^ (v54 ^ v52)) & 1) * v51) ^ (v54 - 1234))))(a1, a2, a3, a4, a5, a6, 1780078589, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a46 + 1448, a48, a49, a50, a6 + 800);
}

void sub_1D48CEC48(int a1@<W8>)
{
  v4 = v6[3] ^ 0x82;
  v5 = ((*v6 ^ 0x82) << 24) | ((v6[1] ^ 0x82) << 16) | ((v6[2] ^ 0x82) << 8) | v4;
  **(v1 + 16) = (v5 + v2 - 2 * (v5 & ((a1 + 714) ^ (v2 + 2052)) ^ v4 & 4)) ^ v2;
  *(v1 + 8) = *(v3 + 24);
}

uint64_t sub_1D48CECEC@<X0>(int a1@<W8>)
{
  v7 = (v4 + v5 - 16);
  v12.val[1].i64[0] = (v4 + 13) & 0xF;
  v12.val[1].i64[1] = (v4 + 12) & 0xF;
  v12.val[2].i64[0] = (v4 + ((a1 + 51) | 0xC6) + 53) & 0xF;
  v12.val[2].i64[1] = (v4 + 10) & 0xF;
  v12.val[3].i64[0] = (v4 + 9) & 0xF;
  v12.val[3].i64[1] = v4 & 0xF ^ 8;
  v13.val[0].i64[0] = (v4 + 7) & 0xF;
  v13.val[0].i64[1] = (v4 + 6) & 0xF;
  v13.val[1].i64[0] = (v4 + 5) & 0xF;
  v13.val[1].i64[1] = (v4 + 4) & 0xF;
  v13.val[2].i64[0] = (v4 + 3) & 0xF;
  v13.val[2].i64[1] = (v4 + 2) & 0xF;
  v13.val[3].i64[0] = (v4 + 1) & 0xF;
  v13.val[3].i64[1] = v4 & 0xF;
  v8.i64[0] = 0x6161616161616161;
  v8.i64[1] = 0x6161616161616161;
  v9.i64[0] = 0x8282828282828282;
  v9.i64[1] = 0x8282828282828282;
  v12.val[0].i64[0] = (v4 - 1) & 0xF;
  v12.val[0].i64[1] = (v4 + 14) & 0xF;
  v10.i64[0] = vqtbl4q_s8(v12, xmmword_1D4B4B4E0).u64[0];
  v10.i64[1] = vqtbl4q_s8(v13, xmmword_1D4B4B4E0).u64[0];
  v13.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*v7, *(v1 + v12.val[0].i64[0] - 15)), veorq_s8(*(v12.val[0].i64[0] + v3 - 12), *(v12.val[0].i64[0] + v2 - 10))));
  v13.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v13.val[0], v13.val[0], 8uLL), v9), vmulq_s8(v10, v8)));
  *v7 = vextq_s8(v13.val[0], v13.val[0], 8uLL);
  return (*(v6 + 8 * ((((v4 & 0x10) != 16) * (((a1 - 461) | 0x1C6) ^ 0x1DD)) ^ ((a1 - 461) | 0x1C6))))(((a1 - 461) | 0x1C6) ^ 0x7AEu, v4 + v5 - 32);
}

uint64_t sub_1D48CEED8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = v2;
  *(result + 32) = 671412448;
  return result;
}

uint64_t sub_1D48CEF7C()
{
  STACK[0x200] = STACK[0x2B8];
  LODWORD(STACK[0x288]) = STACK[0x314];
  return (*(v1 + 8 * ((((LODWORD(STACK[0x2AC]) - 1) < 2) * ((7 * ((v0 + 2822) ^ 0xD50) - 2592) ^ 0x67 ^ (37 * ((7 * ((v0 + 2822) ^ 0xD50)) ^ 0xC0C)))) ^ (7 * ((v0 + 2822) ^ 0xD50)))))();
}

uint64_t sub_1D48CEFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = v62 ^ 0x5CE;
  *v64 = (((a49 - v62) | (v62 - a49)) >> ((v62 ^ 0xCE) + 81)) | 0x80000000;
  (*(a4 + 8 * (v62 + 3699)))(a60);
  v67 = v64[1];
  v68 = v64[398] ^ ((v64[2] & 0x7FFFFFFE | v67 & 0x80000000) >> 1) ^ *(v63 + 4 * (v64[2] & 1));
  *v64 = v64[397] ^ ((v67 & 0x7FFFFFFE | *v64 & (v66 + 852 + v65)) >> 1) ^ *(v63 + 4 * (v67 & 1));
  v64[1] = v68;
  return (*(a62 + 8 * (v66 - 527)))();
}

uint64_t sub_1D48CF0CC@<X0>(uint64_t a1@<X8>)
{
  v4 = 143681137 * (((&v6 | 0x83AF2C2B) + (~&v6 | 0x7C50D3D4)) ^ 0x6507803A);
  v8 = v4 + v3 + 1991;
  v6 = -383424052 - (v4 + v2) - ((-168836740 - (v2 << (((v3 - 77) | 0x90) ^ 0xD8))) & 0xDC5B121C);
  v7 = a1;
  return (*(v1 + 8 * (v3 ^ 0xCFC)))(&v6);
}

uint64_t sub_1D48CF19C(uint64_t a1)
{
  v8 = (*(v3 + 8 * (v6 + 2726)))(a1, 0);
  if (v8 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v9 = v8;
  result = a1;
  if (v9 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 2607)))(result);
    goto LABEL_8;
  }

  if (v9)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 12) = v5;
  return result;
}

uint64_t sub_1D48CF284@<X0>(int a1@<W0>, unint64_t a2@<X6>, int a3@<W7>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = a3 ^ 0x6A5D;
  v21 = (v18 + 4 * v14);
  v22 = HIDWORD(a2) + (((v20 - 1885) | 0x400) ^ v19 ^ *v21) + HIDWORD(v16) + v13 * (*(*(a12 + 8) + 4 * v14) ^ a4);
  *(v21 - 1) = v22 + a4 - (a1 & (2 * v22));
  return (*(v17 + 8 * (((v14 + 1 == v12) * v15) ^ (v20 - 1406))))();
}

uint64_t sub_1D48CF300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 + 1669) ^ 0x7D0u) - 3389 + v2;
  v6 = *(a2 + v5 - 15);
  v7 = *(a2 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((1774 * ((v2 & 0xFFFFFFE0) == 32)) ^ (v3 + 1669))))();
}

uint64_t sub_1D48CF454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * (&a14 ^ 0x43402596);
  a19 = &a10;
  a14 = a11;
  a15 = (v21 + 1421512092) ^ v22;
  a16 = v22 ^ 0x8BC0E4E0;
  a18 = v22 ^ 0xA33F4F7D;
  v23 = (*(v20 + 8 * (v21 ^ 0xFFEu)))(&a14);
  return (*(v20 + 8 * (((a17 == (((v21 + 183) | 0xA1) ^ (v19 + 848))) * (((v21 - 582602221) & 0x5EF) - 393)) ^ v21)))(v23);
}

uint64_t sub_1D48CF5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = (v62 - 539) | 0xD;
  v66 = 50899313 * ((((2 * (v63 - 192)) | 0xB6689256) - (v63 - 192) - 1530153259) ^ 0x71FF6351);
  *(v63 - 176) = &STACK[0x250];
  *(v63 - 184) = v66 - 543127213;
  *(v63 - 168) = v66 + v65 + 1397;
  *(v63 - 192) = &STACK[0x3EC];
  *(v63 - 160) = 0;
  v67 = (*(v64 + 8 * (v65 + 3124)))(v63 - 192);
  return (*(a62 + 8 * ((1276 * (*(v63 - 152) == (((v65 - 641) | 0x200) ^ 0x280597A7))) ^ v65)))(v67);
}

uint64_t sub_1D48CF704(uint64_t a1)
{
  v7 = (a1 + v3 - 16);
  v8 = (v1 + v3 - 16);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * ((((v3 & 0xFFFFFFE0) == 32) * ((19 * (v5 ^ (v4 + 2650))) ^ 0x9E4)) ^ (v2 + v5 + 563))))();
}

uint64_t sub_1D48CF810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, int a22, unsigned int a23, char *a24)
{
  v27 = 675097751 * ((((2 * &a19) | 0x47A1712E) - &a19 - 600881303) ^ 0x60909D01);
  a23 = v27 ^ 0xA33F4F7D;
  a20 = ((v25 ^ 0x4CD) + 1421511637) ^ v27;
  a21 = v27 ^ 0xBF084631;
  a19 = a17;
  a24 = &a14;
  v28 = (*(v24 + 8 * (v25 ^ 0x9FA)))(&a19);
  return (*(v24 + 8 * ((29 * ((((v25 ^ 0xCD) - 1) ^ (a22 == v26 + (((v25 ^ 0x4CD) + 1996340345) & 0x890247BB) - 1953)) & 1)) ^ v25 ^ 0x4CD)))(v28);
}

void V3lNO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48CF96C(uint64_t result)
{
  v6 = 15 * (v2 ^ (result + 94));
  v7 = *v4;
  if (((v6 ^ 0xA5C) & *v4) == ((v2 + 2027522237) & 0x29A1F4CF) - 1035)
  {
    v8 = *(&off_1F5033D40 + (v2 ^ (result + 140)));
    if (!*v8)
    {
      *v8 = v7;
      **(&off_1F5033D40 + v6 - 2628) = 255;
      *v7 |= ~v7[*v7 & 0x3ELL] << 16;
      v7[4] |= ~v7[v7[4] & 0x3ELL] << 16;
      v7[8] |= (v7[v7[8] & 0x3ELL] ^ (v3 + v6 - 2088438071 - 624)) << 16;
      v7[12] |= ~v7[v7[12] & 0x3ELL] << 16;
      v7[16] |= ~v7[v7[16] & 0x3ELL] << 16;
      v7[20] |= ~v7[v7[20] & 0x3ELL] << 16;
      v7[24] |= ~v7[v7[24] & 0x3ELL] << 16;
      v7[28] |= ~v7[v7[28] & 0x3ELL] << 16;
      v7[32] |= ~v7[v7[32] & 0x3ELL] << 16;
      v7[36] |= ~v7[v7[36] & 0x3ELL] << 16;
      v7[40] |= ~v7[v7[40] & 0x3ELL] << 16;
      v7[44] |= ~v7[v7[44] & 0x3ELL] << 16;
      v7[48] |= ~v7[v7[48] & 0x3ELL] << 16;
      v7[52] |= ~v7[v7[52] & 0x3ELL] << 16;
      v7[56] |= ~v7[v7[56] & 0x3ELL] << 16;
      v7[60] |= ~v7[v7[60] & 0x3ELL] << 16;
      *(v5 - 136) = v6 - 1563 - 1785193651 * ((((v5 - 144) | 0x51B23CE2) - (v5 - 144) + ((v5 - 144) & 0xAE4DC318)) ^ 0xA79398CE);
      *(v5 - 144) = *(&off_1F5033D40 + v6 - 2459) - 4;
      (*(v1 + 8 * (v6 ^ 0x4CA)))(v5 - 144);
      *(v5 - 136) = v6 - 1563 - 1785193651 * ((2 * ((v5 - 144) & 0x1BE867C0) - (v5 - 144) + 1679267902) ^ 0x92363C12);
      *(v5 - 144) = *(&off_1F5033D40 + v6 - 2611);
      (*(v10 + 8 * (v6 + 1078)))(v5 - 144);
      __asm { BRAA            X8, X17 }
    }
  }

  *v9 = 671412586;
  return result;
}

uint64_t sub_1D48CFCE4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v14 = (v13 + 4 * v10);
  v15 = v10 + 1;
  v16 = *(v13 + 4 * v15);
  v17 = v14[397] ^ ((v16 & ((5 * (v8 ^ a7)) ^ (a3 + 2653)) | v9 & 0x80000000) >> 1);
  *v14 = (v17 + v12 - (a4 & (2 * v17))) ^ *(v11 + 4 * (v16 & 1));
  return (*(a1 + 8 * (((v15 == 227) * a8) ^ v8)))();
}

uint64_t sub_1D48CFDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (v20 + 1211) ^ (843532609 * (&a15 ^ 0x5C4D5485));
  a17 = &a11;
  a15 = a13;
  (*(v18 + 8 * (v20 ^ 0xDC4u)))(&a15);
  a16 = a13;
  LODWORD(a15) = (v20 + 958) ^ (1504884919 * (&a15 ^ 0xFBC3B71B));
  v21 = (*(v18 + 8 * (v20 ^ 0xDCCu)))(&a15);
  return (*(v18 + 8 * (((HIDWORD(a15) == v19) * ((v20 - 628) ^ 0xDE)) ^ v20)))(v21);
}

uint64_t sub_1D48CFEAC(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6)
{
  v11 = v7 + 2;
  v12 = v9 + 2;
  v13 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a5)), a6);
  v12[-1] = vaddq_s8(vsubq_s8(v11[-1], vandq_s8(vaddq_s8(v11[-1], v11[-1]), a5)), a6);
  *v12 = v13;
  return (*(v10 + 8 * (((v8 == 32) * (((v6 + 1307) | 0x441) ^ 0xDBA)) ^ v6)))();
}

uint64_t sub_1D48CFF08@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = v11 - 1143248161 < HIDWORD(a11) + 2040062613;
  if ((HIDWORD(a11) + 2040062613) < 0xBBDB6ADF != v11 > 0x44249520)
  {
    v13 = (HIDWORD(a11) + 2040062613) < 0xBBDB6ADF;
  }

  return (*(v12 + 8 * ((!v13 * ((a7 - 3361) ^ 0xA0)) ^ a7)))(1143248160, (a7 - 3361), a1, a2, a3, a4, a5, a6, a8, a9, a10, a11);
}

uint64_t sub_1D48CFF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, int a14, int a15)
{
  v20 = *(v15 + 4) - v18;
  v21 = 1564307779 * ((&a12 + 1438914143 - 2 * (&a12 & 0x55C4165F)) ^ 0xC2C9DA4C);
  a12 = (v19 - 1039) ^ v21;
  a13 = a9;
  a15 = (v20 ^ 0x2543CC92) - v21;
  v22 = (*(v16 + 8 * (v19 + 1600)))(&a12);
  return (*(v16 + 8 * ((19 * (a14 != v17)) ^ v19)))(v22);
}

uint64_t sub_1D48D0070@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 4) - 126;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((4083 * v4) ^ 0x7FAu)))(0);
}

uint64_t sub_1D48D00C0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = (STACK[0x448] + 31);
  v2[12] = -126;
  v2[13] = -126;
  v2[14] = -126;
  v2[15] = -125;
  *(v3 - 15) ^= *v2 ^ 0x82;
  *(v3 - 14) ^= v2[1] ^ 0x82;
  *(v3 - 13) ^= v2[2] ^ 0x82;
  *(v3 - 12) ^= v2[3] ^ 0x82;
  *(v3 - 11) ^= v2[4] ^ 0x82;
  *(v3 - 10) ^= v2[5] ^ 0x82;
  *(v3 - 9) ^= v2[6] ^ 0x82;
  *(v3 - 8) ^= v2[7] ^ 0x82;
  *(v3 - 7) ^= v2[8] ^ 0x82;
  *(v3 - 6) ^= v2[9] ^ 0x82;
  *(v3 - 5) ^= v2[10] ^ 0x82;
  *(v3 - 4) ^= v2[11] ^ 0x82;
  *(v3 - 3) ^= v2[12] ^ 0x82;
  *(v3 - 2) ^= v2[13] ^ 0x82;
  *(v3 - 1) ^= v2[14] ^ 0x82;
  *v3 ^= v2[15] ^ 0x82;
  return (*(a1 + 8 * (a2 + 857)))();
}

uint64_t sub_1D48D028C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, unsigned int a14, int a15, unsigned int a16, char *a17)
{
  v20 = 675097751 * ((((&a12 | 0x1A226AE4) ^ 0xFFFFFFFE) - (~&a12 | 0xE5DD951B)) ^ 0xA69DB08D);
  a16 = v20 ^ 0xA33F4F7D;
  a17 = &a11;
  a12 = a9;
  a13 = (v19 + 1421510677) ^ v20;
  a14 = v20 ^ 0xAC4AEA62;
  v21 = (*(v17 + 8 * (v19 ^ 0x977)))(&a12);
  return (*(v17 + 8 * (((a15 == 671454635) * (((v19 + 1878980555) & 0xDBEFCDFD ^ v18) + (v19 ^ 0x679))) ^ v19)))(v21);
}

uint64_t sub_1D48D044C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, int a20, int a21, int a22, unsigned int a23, char *a24)
{
  v27 = 675097751 * (&a19 ^ 0x43402596);
  a19 = a16;
  a24 = &a18;
  a23 = v27 ^ 0xA33F4F7D;
  a20 = (v26 + 1421512189) ^ v27;
  a21 = v27 ^ 0x539826E1;
  v28 = (*(v25 + 8 * (v26 + 3351)))(&a19);
  return (*(v25 + 8 * ((3198 * (a22 == v26 + 671454811 + v24 - 1289)) ^ v26)))(v28);
}

uint64_t sub_1D48D0528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 **a11)
{
  v19 = *(&off_1F5033D40 + (v11 ^ (v15 + 117)));
  v20 = v11 ^ (v15 + 1007) ^ 2u;
  v22 = ((**a11 - (*v19 ^ v17)) ^ v13) + (((v20 ^ (v15 + 1005)) + v12) & (2 * (**a11 - (*v19 ^ v17)))) + v18 == v14 && v20 != 1043;
  return (*(v16 + 8 * (v20 ^ (2 * v22))))(a1, a2, a3, a4);
}

uint64_t sub_1D48D06FC@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v7 = (v5 ^ (v3 + 1456) ^ 0xFFFFFFFFFFFFF31ELL) + v4;
  v8 = *(a2 + v7 - 15);
  v9 = *(a2 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((2666 * ((v4 & 0xFFFFFFE0) == 32)) ^ (v2 + v5 + 368))))();
}

uint64_t sub_1D48D0760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v12 = 38 * ((v7 - 1520) ^ 0x516);
  *v8 = a1;
  *a7 = (v7 - 1520) ^ (v9 + 1299) ^ v17;
  v13 = (v12 + 558) | 0xB;
  v19 = v16;
  v18 = v12 - (&v18 ^ 0xE6A8AC10) * v11 + 2114;
  (*(v10 + 8 * (v12 + 3566)))(&v18);
  v19 = v15;
  v18 = v13 - ((((2 * &v18) | 0xCEB0442A) - &v18 + 413654507) ^ 0x1F08E05) * v11 + 1545;
  (*(v10 + 8 * (v13 + 2997)))(&v18);
  return 0;
}

uint64_t sub_1D48D08B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v15 = v12 - v14;
  v16 = v12 + 1776823903;
  v17 = v13 + 16 < (a11 + 2074644883);
  if (a11 + 2074644883 < (v15 + v13))
  {
    v17 = 1;
  }

  return (*(v11 + 8 * ((161 * !v17) ^ v16)))(0xA2C4B17CD766117BLL, a2, 0);
}

uint64_t sub_1D48D09BC@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(*(v1 + 8) + 4 * v7) = *(*(a1 + 8) + 4 * v7);
  return (*(v2 + 8 * (((v7 == v5 - 1967) * v6) ^ v3)))();
}

uint64_t sub_1D48D0A24(_DWORD *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1 - 742307843 * ((a1 - 1703533285 - 2 * (a1 & 0x9A76251B)) ^ 0x8454A84E);
  v3 = *(*(&off_1F5033D40 + (v1 + 2013066631)) - 4);
  v4 = v1 + 2013066631 - 210068311 * ((-761553681 - (&v3 | 0xD29B9CEF) + (&v3 | 0x2D646310)) ^ 0x7A0BF9C7) + 695;
  return (*(*(&off_1F5033D40 + (v1 ^ 0x88030ADF)) + (v1 ^ 0x88030447)))(&v3);
}

void YHrWZQ6wU()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2018) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 + dword_1EC7E2018) ^ 0x82))] ^ 0xB]) + 58);
  v1 = *(v0 - 4);
  v2 = off_1F5034390 - 4;
  v3 = off_1F5034330;
  v4 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + (-35 * ((qword_1EC7E2160 + v1) ^ 0x82)) - 4) ^ 0xBu)) ^ (-35 * ((qword_1EC7E2160 + v1) ^ 0x82))) - 51);
  v5 = 1228258013 * (&v7[*v4 - v1] ^ 0xC891BCBEBCEAD82);
  *(v0 - 4) = v5;
  *v4 = v5;
  v8[1] = (1037613739 * ((-74648657 - (v8 | 0xFB8CF3AF) + (v8 | 0x4730C50)) ^ 0xD571212F)) ^ 0x86F54BA0;
  LOBYTE(v4) = -35 * ((*v4 - *(v0 - 4)) ^ 0x82);
  v6 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2018) ^ 0x82)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * ((qword_1EC7E2160 + dword_1EC7E2018) ^ 0x82))] ^ 0x30]) - 55);
  (*(v6 + 8 * ((v4 ^ v3[v2[v4] ^ 0xC7]) + 3403)))(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48D10E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v32 - 128) = &a28;
  *(v32 - 120) = a13;
  *(v32 - 144) = &a28;
  *(v32 - 136) = a14;
  *(v32 - 112) = v31 + 1737 + ((2 * ((v32 - 144) & 0x7D0A1698) - (v32 - 144) + 49670497) ^ 0x95F82572) * v30;
  (*(v29 + 8 * (v31 ^ 0xE48)))(v32 - 144);
  *(v32 - 144) = &a28;
  *(v32 - 136) = a14;
  *(v32 - 112) = v31 + 1737 + ((2 * ((v32 - 144) & 0x31E54E80) - (v32 - 144) + 1310372223) ^ 0xD9177D6C) * v30;
  *(v32 - 128) = &a28;
  *(v32 - 120) = a13;
  (*(v29 + 8 * (v31 + 3528)))(v32 - 144);
  *(v32 - 112) = v31 + 1737 + ((((v32 - 144) | 0x86AB6226) - (v32 - 144) + ((v32 - 144) & 0x79549DD8)) ^ 0x11A6AE35) * v30;
  *(v32 - 144) = &a28;
  *(v32 - 136) = a14;
  *(v32 - 128) = &a28;
  *(v32 - 120) = a13;
  (*(v29 + 8 * (v31 + 3528)))(v32 - 144);
  v33 = ((2 * (((v32 - 144) ^ 0x28CDC6B7) & 0x385360A1) - ((v32 - 144) ^ 0x28CDC6B7) - 944988322) ^ 0x786C95FA) * v30;
  *(v32 - 136) = a15;
  *(v32 - 128) = (36955955 * v28 - 1444802585) ^ v33;
  *(v32 - 124) = v31 + 906 - v33;
  (*(v29 + 8 * (v31 + 3493)))(v32 - 144);
  v34 = *(v32 - 144) == ((v31 + 2161) ^ 0x61D24A2F);
  v35 = ((v32 - 144) ^ 0x970DCC13) * v30;
  *(v32 - 136) = a15;
  *(v32 - 128) = (36955955 * v28 - 1481758540) ^ v35;
  *(v32 - 124) = v31 + 906 - v35;
  v36 = (*(v29 + 8 * (v31 ^ 0xE6D)))(v32 - 144);
  return (*(v29 + 8 * ((505 * ((((v31 + 1820) ^ v34) & 1) == 0)) ^ v31)))(v36);
}

void T40gmCiYgO7uIqkoes4oO6isuYo()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2070) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 - dword_1EC7E2070) ^ 0x82))] ^ 0xCD]) - 52);
  v1 = -35 * ((qword_1EC7E2160 - *v0) ^ 0x82);
  v2 = *(&off_1F5033D40 + (*(off_1F5034348 + (*(off_1F5033F78 + v1 - 4) ^ 0xF4u) - 12) ^ v1) + 8);
  v3 = *v2 - *v0 - &v5;
  *v0 = (1228258013 * v3) ^ 0xC891BCBEBCEAD82;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * ((((v6 | 0x861CDB96) ^ 0xFFFFFFFE) - (~v6 | 0x79E32469)) ^ 0xA8E10916)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * ((*v2 + *v0) ^ 0x82);
  v4 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2070) ^ 0x82)) ^ byte_1D4B46C70[byte_1D4B43C80[(-35 * ((qword_1EC7E2160 + dword_1EC7E2070) ^ 0x82))] ^ 0x60]) - 68);
  (*(v4 + 8 * ((*(off_1F50343C8 + (*(off_1F50340C8 + v2 - 8) ^ 0x9Eu) - 8) ^ v2) + 3475)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48D1558()
{
  v4 = (v3 - 844) | 0x114;
  v8 = v3 - ((2 * (&v8 & 0x73C2B200) - &v8 + 205344248) ^ 0xEA95E1E8) * v1 + 1215;
  v9 = v6;
  (*(v0 + 8 * (v3 ^ 0xD95u)))(&v8);
  v9 = v7;
  v8 = v4 - ((((2 * &v8) | 0x51044DB2) - &v8 + 1467865383) ^ 0x4E2A8AC9) * v1 + 1783;
  (*(v0 + 8 * (v4 ^ 0xFDD)))(&v8);
  return (v2 - 671454635);
}

uint64_t sub_1D48D16E8(_DWORD *a1)
{
  v1 = 1361651671 * ((2 * (a1 & 0xD984840E) - a1 + 645626865) ^ 0x6D10B78F);
  v2 = *a1 - v1;
  v3 = *(*(&off_1F5033D40 + (v2 ^ 0x27C)) + 84);
  v4 = a1[3] + v1 + 1429874511;
  v5 = v3 - 1746595662 > v4;
  if (v4 < 0x97E510B2 != v3 > 0x681AEF4D)
  {
    v5 = v3 > 0x681AEF4D;
  }

  return (*(*(&off_1F5033D40 + (v2 ^ 0x2B9)) + ((!v5 * (((v2 - 658) | 0x552) - 1288)) ^ v2)))();
}

uint64_t sub_1D48D17E4()
{
  v5 = (v4 + 123248737) & 0xF8A75FF8;
  v9 = v4 - (((&v9 | 0x91C8AE21) + (~&v9 | 0x6E3751DE)) ^ 0x77600230) * v2 - 234;
  v10 = v7;
  (*(v1 + 8 * (v4 + 1218)))(&v9);
  v10 = v8;
  v9 = v5 - (&v9 ^ 0xE6A8AC10) * v2 - 324;
  result = (*(v1 + 8 * (v5 + 1128)))(&v9);
  *(v0 + 4) = v3;
  return result;
}

uint64_t sub_1D48D1900()
{
  v4.i64[0] = 0x404040404040404;
  v4.i64[1] = 0x404040404040404;
  v5.i64[0] = 0x8282828282828282;
  v5.i64[1] = 0x8282828282828282;
  *(v2 - 603 + ((v1 - 935) | 0x298)) = vaddq_s8(vsubq_s8(*(v0 - 1751 + ((v1 - 935) | 0x298)), vandq_s8(vaddq_s8(*(v0 - 1751 + ((v1 - 935) | 0x298)), *(v0 - 1751 + ((v1 - 935) | 0x298))), v4)), v5);
  return (*(v3 + 8 * (v1 ^ 0xA97)))();
}

uint64_t sub_1D48D1A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = ((-1975466125 - ((v20 - 144) | 0x8A40C773) + ((v20 - 144) | 0x75BF388C)) ^ 0xE2B2F49F) * v18;
  *(v20 - 136) = a15;
  *(v20 - 128) = ((((v19 - 1996) | 0x809) + 36953862) * (v15 - 4) - 1370890675) ^ v21;
  *(v20 - 124) = v19 - v21 - 882;
  v22 = (*(v16 + 8 * (v19 ^ 0x969)))(v20 - 144);
  return (*(v16 + 8 * ((4088 * (*(v20 - 144) != v17 + ((v19 - 1904) | 0x74) - 244)) ^ v19)))(v22);
}

uint64_t sub_1D48D1C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char *a15, int a16)
{
  a15 = &a10;
  a14 = (50899313 * ((&a14 + 1175456989 - 2 * (&a14 & 0x46100CDD)) ^ 0x6CDB26A7)) ^ 0x72E;
  v19 = (*(v16 + 29464))(&a14);
  return (*(v16 + 8 * ((1146 * (a16 == v18)) ^ v17)))(v19);
}

void sub_1D48D1D3C(uint64_t a1)
{
  v1 = *(a1 + 36) ^ (1504884919 * (a1 ^ 0xFBC3B71B));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1D48D1DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, void *a6)
{
  v10 = (v6 - 1001) | 0x470;
  v11 = 113 * (v10 ^ 0x47C);
  *a6 = a1;
  *a5 = v15 ^ (v7 + 1072) ^ v10;
  v19 = v17;
  v18 = v11 - 143681137 * ((&v18 - 1498146318 - 2 * (&v18 & 0xA6B419F2)) ^ 0x401CB5E2) + 872;
  v12 = v11 + 2324;
  v13 = 4 * (v11 ^ 0x576);
  (*(v8 + 8 * v12))(&v18);
  v19 = v16;
  v18 = v13 - 143681137 * ((((2 * &v18) | 0x170D3CE4) - &v18 - 193371762) ^ 0xED2E3262) + 1996;
  (*(v8 + 8 * (v13 + 3448)))(&v18);
  return (v9 - 671454635);
}

uint64_t sub_1D48D20D0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  *v14 = 0;
  v16 = a1 ^ 0x1CC2E40B;
  v17 = v13 + a1 - 215;
  a13 = (a1 + 1781688437) ^ (1037613739 * ((-2044789428 - (&a12 | 0x861EFD4C) + (&a12 | 0x79E102B3)) ^ 0xA8E32FCC));
  v18 = (*(v15 + 8 * (a1 ^ 0x1CC2ED15u)))(&a12);
  return (*(v15 + 8 * (((a12 != 671454635) * (v16 ^ 0x7D1)) ^ v17)))(v18);
}

void sub_1D48D20D8(_DWORD *a1)
{
  v1 = *a1 ^ (50899313 * ((a1 + 1029127688 - 2 * (a1 & 0x3D573E08)) ^ 0x179C1472));
  v2 = *(&off_1F5033D40 + (v1 ^ 0x725));
  v3 = *(v2 + 8 * ((((*(v2 + 8 * (v1 + 1889)))(32) != 0) * (((v1 + 569672911) & 0xDE0B777B) - 771)) ^ v1));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48D218C(uint64_t a1, int a2)
{
  v8 = (v5 - 32);
  v9 = (v6 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((v4 != 32) * a2) ^ (v2 + v3 + 1984))))();
}

uint64_t sub_1D48D2214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, char a13, int a14, char a15, __int16 a16, char a17, uint64_t a18, uint64_t a19, _BYTE *a20, char *a21, char *a22, _BYTE *a23, char *a24)
{
  a21 = &a13;
  LODWORD(a22) = v24 + 411 + ((960818240 - (&a20 | 0x3944EC40) + (&a20 | 0xC6BB13BF)) ^ 0x17B93EC0) * v27 + 3038;
  a23 = a12;
  a24 = &a15;
  (*(v25 + 8 * ((v24 + 411) ^ 0xFEAu)))(&a20);
  a22 = &a17;
  a20 = a12;
  LODWORD(a23) = (v24 + 2025) ^ (843532609 * (&a20 ^ 0x5C4D5485));
  (*(v25 + 8 * (v24 + 3690)))(&a20);
  a21 = a12;
  LODWORD(a20) = (v24 + 1772) ^ (1504884919 * ((-398198243 - (&a20 | 0xE843FA1D) + (&a20 | 0x17BC05E2)) ^ 0xEC7FB2F9));
  v28 = (*(v25 + 8 * ((v24 + 411) ^ 0xF3Bu)))(&a20);
  return (*(v25 + 8 * (((HIDWORD(a20) == v26) * (v24 + 1710)) ^ (v24 + 411))))(v28);
}

void G7b066W()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2130) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 + dword_1EC7E2130) ^ 0x82))] ^ 0xC7]) - 49);
  v1 = -35 * (*v0 ^ qword_1EC7E2160 ^ 0x82);
  v2 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + v1 - 4) ^ 0xC4u)) ^ v1) - 5);
  v3 = (*v2 - *v0) ^ &v5;
  *v0 = (1228258013 * v3) ^ 0xC891BCBEBCEAD82;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * (((v6 | 0xB38B8A7E) - v6 + (v6 & 0x4C747580)) ^ 0x6289A701)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * ((*v2 + *v0) ^ 0x82);
  v4 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2130 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * (dword_1EC7E2130 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x60]) + 4);
  (*(v4 + 8 * ((*(off_1F50343C8 + (*(off_1F50340C8 + v2 - 8) ^ 0x9Eu) - 8) ^ v2) + 3475)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48D2668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v19 - 128) = &a17;
  *(v19 - 132) = v18 + 435584651 * (((~(v19 - 136) & 0xC9DB092) - (~(v19 - 136) | 0xC9DB093)) ^ 0x61AFAAC5) + 1468;
  v20 = (*(v17 + 8 * (v18 ^ 0xCEFu)))(v19 - 136);
  return (*(v17 + 8 * (((*(v19 - 136) == 671454635) * ((((v18 - 2080334479) | 0x788B10C2) ^ 0xFC8BB392) + v18 - 465)) ^ v18)))(v20);
}

void sub_1D48D27B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  **(a1 + 24) = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x1D48CEEE4);
}

uint64_t sub_1D48D2880@<X0>(uint64_t a1@<X3>, int a2@<W8>, int8x16_t a3@<Q5>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int8x16_t *a25)
{
  v27 = (v26 + 908);
  v28 = vld1q_dup_f32(v27);
  v29 = a2 ^ 0x2DEu;
  v30.i64[0] = 0x8000000080000000;
  v30.i64[1] = 0x8000000080000000;
  v31.i64[0] = 0x100000001;
  v31.i64[1] = 0x100000001;
  a3.i32[0] = *(v26 + 4 * (v29 - 2218));
  a3.i32[1] = a25->i32[2];
  a3.i32[2] = a25->i32[3];
  v32 = vextq_s8(v28, a3, 0xCuLL);
  v33 = a3;
  v33.i32[3] = a25[1].i32[0];
  v34 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v33, vnegq_f32(v31)), vandq_s8(v32, v30)), 1uLL), *(a25 - 908));
  v32.i32[0] = *(v25 + 4 * (*(v26 + 4 * (v29 - 2218)) & 1));
  v32.i32[1] = *(v25 + 4 * (a25->i32[2] & 1));
  v32.i32[2] = *(v25 + 4 * (a25->i32[3] & 1));
  v32.i32[3] = *(v25 + 4 * (v33.i8[12] & 1));
  *a25 = veorq_s8(vaddq_s32(vsubq_s32(v34, vandq_s8(vaddq_s32(v34, v34), vdupq_n_s32(0x445DE054u))), vdupq_n_s32(0x222EF02Au)), v32);
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1D48D2DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  a15 = (v16 - 2030746894) ^ (1037613739 * (&a14 ^ 0xD1022D7F));
  v17 = (*(v15 + 8 * (v16 ^ 0x690)))(&a14);
  return (*(v15 + 8 * ((923 * (a14 == (v16 ^ 0x28059D05))) ^ v16)))(v17);
}

uint64_t sub_1D48D2E24@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  v13 = a1 + v11;
  a11 = (a1 + 937810176) ^ (1037613739 * (((&a10 | 0x7EE557B0) - (&a10 & 0x7EE557B0)) ^ 0xAFE77ACF));
  v14 = (*(v12 + 8 * (a1 ^ (a1 + 2558))))(&a10);
  return (*(v12 + 8 * (((a10 == 671454635) * (v13 + 3520)) ^ v13)))(v14);
}

uint64_t sub_1D48D2EB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = 1361651671 * (((v18 - 136) & 0x70603A7A | ~((v18 - 136) | 0x70603A7A)) ^ 0xC4F409FB);
  *(v18 - 136) = a12 - v19 + 789;
  *(v18 - 128) = &a17;
  *(v18 - 120) = ((a4 << 6) & 0xF7EFD740) - v19 + ((a4 << ((2 * a12) ^ 0x8D)) ^ 0x7BF7EBBF) - 16780033;
  v20 = (*(v17 + 8 * (a12 + 2272)))(v18 - 136);
  return (*(v17 + 8 * ((2133 * (*(a10 + 4) - 1673015720 < ((a12 - 928) | 0x140u) + 2147482779)) ^ a12)))(v20);
}

void d040f74D()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2118) ^ 0x82)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * ((qword_1EC7E2160 - dword_1EC7E2118) ^ 0x82))] ^ 0xB]) - 127);
  v1 = *(v0 - 4);
  v2 = off_1F5034390 - 4;
  v3 = off_1F5034330;
  v4 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + (-35 * ((qword_1EC7E2160 - v1) ^ 0x82)) - 4) ^ 0x85u)) ^ (-35 * ((qword_1EC7E2160 - v1) ^ 0x82))) - 189);
  v5 = 1228258013 * ((*v4 + v1) ^ &v7 ^ 0xC891BCBEBCEAD82);
  *(v0 - 4) = v5;
  *v4 = v5;
  v8[1] = (1037613739 * ((2 * (v8 & 0x322C410) - v8 - 52610067) ^ 0x2DDF1692)) ^ 0x86F54BA0;
  LOBYTE(v4) = -35 * ((*v4 + *(v0 - 4)) ^ 0x82);
  v6 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2118) ^ 0x82)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * ((qword_1EC7E2160 + dword_1EC7E2118) ^ 0x82))] ^ 0x8E]) - 127);
  (*(v6 + 8 * ((v4 ^ v3[v2[v4] ^ 0xC7]) + 3403)))(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48D3254(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v15 = (a2 - 2126478389) | 0x40C2081;
  v16 = (a2 + 131) | 0x701;
  v17 = 1785193651 * ((((2 * (v14 - 120)) | 0x34EF4D9A) - (v14 - 120) + 1703434547) ^ 0x6C5602E1);
  *(v14 - 112) = v17 + a2 + 2510;
  *(v14 - 108) = a13 - v17 - 993557420;
  *(v14 - 120) = v14 - 220;
  v18 = (*(v13 + 8 * (a2 + 3672)))(v14 - 120);
  v19 = ((*(v14 - 152) & 0x3F ^ 0xDEE7BD4D) + 736486421) ^ ((*(v14 - 152) & 0x3F ^ 0x3F4E214B) + (v15 ^ 0x4F00DC8E)) ^ ((v16 ^ *(v14 - 152) & 0x3F ^ 0xE1A99BD3) + 346801504);
  *(v14 - 220 + v19 + 184395430) = 2;
  return (*(v13 + 8 * ((3003 * (v19 + 184395374 < 0xFFFFFFC8)) ^ a2)))(v18);
}

uint64_t sub_1D48D344C(uint64_t a1)
{
  *v3 = a1;
  *v2 = (v1 - 274 + v4) ^ v9;
  v6 = (((v1 - 274) ^ 0x2FC) - 166) | 0x400;
  v12 = v8;
  v11 = ((v1 - 274) ^ 0x2FC) - 143681137 * ((&v11 + 2089233585 - 2 * (&v11 & 0x7C872CB1)) ^ 0x9A2F80A1) + 1850;
  (*(v5 + 8 * (((v1 - 274) ^ 0x2FC) + 3302)))(&v11);
  v12 = v10;
  v11 = v6 - 143681137 * (((&v11 | 0x3DEC7727) - &v11 + (&v11 & 0xC21388D8)) ^ 0xDB44DB37) + 992;
  (*(v5 + 8 * (v6 + 2444)))(&v11);
  return 0;
}

uint64_t sub_1D48D369C(uint64_t a1, int a2)
{
  v8 = (v5 - 32);
  v9 = (v6 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((v4 == 32) * a2) ^ (v2 + v3 + 1131))))();
}

uint64_t sub_1D48D36B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, uint64_t a63)
{
  v79 = v67;
  v78 = v68;
  v76 = v70;
  v77 = v69;
  if (v63 == 32)
  {
    LODWORD(a13) = 0;
    v71 = a62;
    v75 = *(&off_1F5033D40 + a62 - 1413);
    v72 = 19;
    goto LABEL_7;
  }

  if (v63 == 20)
  {
    LODWORD(a13) = 0;
    v75 = *(&off_1F5033D40 + a45) - 8;
    HIDWORD(a15) = 1;
    LODWORD(a16) = 15;
LABEL_9:
    v71 = a62;
    goto LABEL_10;
  }

  if (v63 != 16)
  {
    v75 = 0;
    HIDWORD(a15) = 0;
    LODWORD(a16) = 0;
    LODWORD(a13) = 1;
    goto LABEL_9;
  }

  LODWORD(a13) = 0;
  v71 = a62;
  v75 = *(&off_1F5033D40 + a62 - 1276) - 12;
  v72 = 18;
LABEL_7:
  LODWORD(a16) = v72;
  HIDWORD(a15) = 1;
LABEL_10:
  v73 = 675097751 * (((((v65 - 192) | 0xAEA3D92C) ^ 0xFFFFFFFE) - (~(v65 - 192) | 0x515C26D3)) ^ 0x121C0345);
  *(v65 - 128) = a51;
  *(v65 - 188) = v71 - v73 + 43;
  *(v65 - 152) = a53;
  *(v65 - 144) = 0;
  *(v65 - 168) = 0;
  *(v65 - 160) = &STACK[0x20C];
  *(v65 - 136) = (a57 ^ 0x3FB5FFCE) - v73 + ((2 * a57) & 0x7F6BFF9C) + v71 + 725 - 303095591;
  *(v65 - 184) = a52;
  *(v65 - 176) = a8;
  (*(v66 + 8 * (v71 + 2224)))(v65 - 192);
  return (*(a63 + 8 * ((122 * (*(v65 - 192) == 671454635)) ^ v64)))(1409796786, 180407558, 3820752067, 907, 1636829387, a6, 90201349, a8, a9, a10, a11, a12, a13, v75, a15, a16, v76, *(&v76 + 1), v77, *(&v77 + 1), a21, a22, v78, *(&v78 + 1), a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, v79, *(&v79 + 1), a39, a8, a41, a42, a6);
}

uint64_t sub_1D48D39BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59)
{
  v65 = *(v61 + v60 * v62 + 36);
  v67 = v65 + 714876934 > 212197241 || v65 + 714876934 < a59;
  v68 = !v67;
  if (v65 == v63)
  {
    v68 = 1;
  }

  return (*(v64 + 8 * ((v68 * ((v59 ^ 0x494) - 259)) ^ v59)))();
}

uint64_t sub_1D48D3A60@<X0>(int a1@<W0>, unint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, int a5@<W4>, unsigned int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, int *a25)
{
  v32 = v26 + 1066;
  v33 = (v27 + (v30 - 1));
  v34 = ((*(*a24 + (*a25 & a2)) ^ v33) & 0x7FFFFFFF) * (v26 ^ 0x866E7692);
  v35 = (v34 ^ HIWORD(v34)) * (((v26 + 1066 + v31) & a1) - 2039583037);
  LOBYTE(v35) = *(*(v28 + 8 * (v32 & a3)) + (v35 >> 24) - 10) ^ *(*(v28 + 8 * (v32 - 2038)) + (v35 >> 24) - 8) ^ *((v35 >> 24) + *(v28 + 8 * (v32 - 1818)) + 4) ^ v35 ^ ((((v34 ^ HIWORD(v34)) * (((v32 + v31) & a1) - 2039583037)) >> 24) * a4);
  *v33 = v35 ^ (a6 >> v25);
  return (*(v29 + 8 * (((v30 == (v35 != (a6 >> v25))) * a5) ^ (v26 + 1066))))();
}

uint64_t sub_1D48D3A68@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = (a2 + 221766666) & 0xF2C81FDF;
  *v7 = a1;
  *v8 = v2;
  v12 = v10;
  v11 = v5 - (((&v11 ^ 0x74179BEA | 0xBDBD006A) - (&v11 ^ 0x74179BEA) + ((&v11 ^ 0x74179BEA) & 0x4242FF90)) ^ 0x2F023790) * v3 + 287;
  (*(v4 + 8 * (v5 ^ 0x9F5)))(&v11);
  v12 = v9;
  v11 = (v5 ^ 0x607) - ((1567398806 - (&v11 | 0x5D6C9B96) + (&v11 | 0xA2936469)) ^ 0x443BC879) * v3 + 1826;
  (*(v4 + 8 * ((v5 ^ 0x607) + 3278)))(&v11);
  return 0;
}

uint64_t sub_1D48D3A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v69 = ((2 * (v62 & 0x4DAA9A80) - v62 + 844457338) ^ 0x189E4F00) * v63;
  *(v67 - 168) = v69 + v65 + 1397;
  *(v67 - 192) = &STACK[0x3EC];
  *(v67 - 160) = 0;
  *(v67 - 184) = v69 - 543127213;
  *(v67 - 176) = &STACK[0x250];
  v70 = (*(v68 + 8 * (v65 ^ 0xC4C)))(v67 - 192);
  return (*(a62 + 8 * (((*(v67 - 152) == v66) * (v64 ^ 0x4FC ^ ((v65 - 137) | 8))) ^ v65)))(v70);
}

uint64_t sub_1D48D3E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, _BYTE *a41, _BYTE *a42, uint64_t a43, _BYTE *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  if (v63 == -1217254596 || v63 == 96287595 || v63 == -1134443296)
  {
    v67 = (v63 ^ 0x7DB78E71) - ((2 * (v63 ^ 0x7DB78E71)) & 0x95064910) - 897375096;
    v68 = *(v66 + 8 * (a62 - 1399));
    LOBYTE(STACK[0x1790]) = *a42 ^ HIBYTE(v67) ^ a41[5] ^ a44[1] ^ 0xCA;
    LOBYTE(STACK[0x1791]) = BYTE2(v67) ^ 0x63 ^ a42[1] ^ a41[6] ^ a44[2] ^ 0x83;
    LOBYTE(STACK[0x1792]) = BYTE1(v67) ^ 0xC6 ^ a42[2] ^ a41[7] ^ a44[3] ^ 0x24;
    LOBYTE(STACK[0x1793]) = v67 ^ 0x29 ^ a42[3] ^ a41[8] ^ a44[4] ^ 0x88;
    return v68((a62 - 1408));
  }

  else
  {
    v70 = *(v65 + 8 * (a62 ^ 0x500));
    HIDWORD(a22) = v62;
    return (*(v66 + 8 * ((a62 + 990) ^ (98 * ((v62 >> 3) & 1)))))(a1, a2, a3, a4, a5, a6, a7, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v64, a27, a28, a29, a30, a31, a32, v70 - 8, v70 + 28, v70 + 12, v70 - 4);
  }
}

uint64_t sub_1D48D40B8(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = 843532609 * ((-2 - ((a1 | 0x32057923) + (~a1 | 0xCDFA86DC))) ^ 0x91B7D259);
  v2 = *(a1 + 12) + v1;
  v3 = *(a1 + 16) + v1;
  v4 = *(a1 + 24);
  v5 = *a1;
  v6 = *(a1 + 48);
  v7 = *(a1 + 8) ^ v1;
  v8 = *(&off_1F5033D40 + v2 + 542396537);
  if (v3 == 1865916833 || v3 == 1865916830)
  {
    __asm { BRAA            X19, X17 }
  }

  v10 = *(a1 + 40);
  v11 = v7 + 811655368;
  v12 = 1564307779 * (&v15 ^ 0x970DCC13);
  v18 = v11 ^ v12;
  v21 = v4;
  v20 = v12 + 542396537 + v2 + 689;
  v15 = v10;
  v17 = v6;
  v19 = v5;
  result = (*(v8 + 8 * (v2 ^ 0xDFABA129)))(&v15);
  *(a1 + 32) = v16;
  return result;
}

uint64_t sub_1D48D43B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a15 = a10;
  a17 = &a13;
  a18 = (v18 + 1624) ^ (843532609 * ((((&a15 | 0x9B196340) ^ 0xFFFFFFFE) - (~&a15 | 0x64E69CBF)) ^ 0x38ABC83A));
  (*(v20 + 8 * (v18 + 3289)))(&a15);
  LODWORD(a15) = (v18 + 1371) ^ (1504884919 * ((((2 * &a15) | 0x69ECFD6C) - &a15 + 1258914122) ^ 0x4F35C9AD));
  a16 = a10;
  v21 = (*(v20 + 8 * (v18 ^ 0xF21)))(&a15);
  return (*(v20 + 8 * ((2909 * (HIDWORD(a15) == v18 - 3 + v19)) ^ v18)))(v21);
}

uint64_t sub_1D48D4544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, uint64_t a37, uint64_t a38)
{
  *v43 = (((((v42 - 624) ^ (v39 - 623)) - 1) & (623 - v42)) >= 0) + v43[623];
  *(v44 - 104) = (a36 ^ 0xC) - a35;
  *(v44 - 144) = 1 - a35;
  *(v44 - 140) = a36 + a35 + 80;
  *(v44 - 120) = a35 ^ 3;
  *(v44 - 112) = (v40 + 1) + a35;
  *(v44 - 136) = (v41 - 1883963096) ^ a35;
  *(v44 - 132) = a36 + a35;
  v45 = (*(v38 + 29576))(v44 - 144);
  return (*(a38 + 8 * *(v44 - 128)))(v45);
}

void Y2Zxt()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2090 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * (dword_1EC7E2090 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x30]) + 147);
  v1 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - *v0) ^ 0x82)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * ((qword_1EC7E2160 - *v0) ^ 0x82))] ^ 0x60]) + 34);
  v2 = *v1 - *v0 - &v4;
  *v0 = 1228258013 * v2 + 0x5804E9A2B9663D3ALL;
  *v1 = 1228258013 * (v2 ^ 0xC891BCBEBCEAD82);
  v5[1] = (1037613739 * ((1401159049 - (v5 | 0x5383FD89) + (v5 | 0xAC7C0276)) ^ 0x7D7E2F09)) ^ 0x86F54BA0;
  LOBYTE(v1) = -35 * ((*v1 + *v0) ^ 0x82);
  v3 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E2090) ^ 0x82)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * ((qword_1EC7E2160 + dword_1EC7E2090) ^ 0x82))] ^ 0x8C]) - 114);
  (*(v3 + 8 * ((*(off_1F50343C8 + (*(off_1F50340C8 + v1 - 8) ^ 0x9Eu) - 8) ^ v1) + 3475)))(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48D47F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = v6 ^ ((a4 - 547) | 0x244) ^ 0x8C19AD8B;
  if ((v5 - 337504521) < 0x419CAA5A != v7 > ((a4 - 837043563) & 0x31E4472D ^ 0xBE6351A4))
  {
    v8 = (v5 - 337504521) < 0x419CAA5A;
  }

  else
  {
    v8 = v5 - 337504521 > v7 + 1100786266;
  }

  return (*(v4 + 8 * ((155 * v8) ^ a4)))();
}

uint64_t sub_1D48D48C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = a72 - 1695091589 < (v72 + 1884407881);
  if ((v72 + 1884407881) < 0xC9AF96A6 != (a72 - 1695091589) < 0xC9AF96A6)
  {
    v75 = (v72 + 1884407881) < 0xC9AF96A6;
  }

  return (*(v74 + 8 * ((53 * (((v73 - 1) ^ v75) & 1)) ^ v73)))();
}

void sub_1D48D49B0(_DWORD *a1)
{
  v1 = *a1 + 143681137 * ((-2 - ((a1 | 0x64AD6D09) + (~a1 | 0x9B5292F6))) ^ 0x7DFA3EE6);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1D48D4A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * ((2 * (&a14 & 0x43432EF8) - &a14 + 1019007236) ^ 0x7FFCF492);
  a19 = &a10;
  a18 = v22 ^ 0xA33F4F7D;
  a15 = (v21 + 1421511500) ^ v22;
  a16 = v22 ^ 0x37D97C5;
  a14 = a11;
  v23 = (*(v19 + 8 * (v21 ^ 0xDAE)))(&a14);
  return (*(v19 + 8 * (((a17 == ((5 * (v21 ^ 0x3AC)) ^ (v20 - 405))) * ((v21 ^ 0x1DB) + 3285)) ^ v21)))(v23);
}

uint64_t sub_1D48D4B1C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v62 = ((-2072995033 - (v55 | 0x84709B27) + (v55 | 0x7B8F64D8)) ^ 0x51444EA2) * v56;
  *(v60 - 192) = &STACK[0x22C];
  *(v60 - 168) = v62 + v57 + 1526;
  *(v60 - 184) = a1 + v62;
  *(v60 - 176) = &STACK[0x368];
  *(v60 - 160) = 0;
  v63 = (*(v61 + 8 * (v57 + 3253)))(v60 - 192);
  v64 = *(v60 - 152);
  STACK[0x258] = v59;
  return (*(a55 + 8 * (((v64 == v58) * (((v57 + 962) ^ 0x3C1) + 1297)) ^ v57)))(v63, 49, 2001594425, 2464958299, 1830008731, 3963, 3555339229, 739629041, 0);
}

uint64_t sub_1D48D4C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  (*(a4 + 8 * ((v40 + 78) ^ 0x8FB50128)))(a23 + a25);
  v42 = (*(a38 + 8 * (v39 - 1883959999)))();
  *v41 = v42;
  v43 = 1812433253 * ((v42 + 922846560 - ((2 * v42) & 0x6E030AC0)) ^ ((v42 >> ((v39 - 62) ^ 0x17)) | 0x37018560)) + 1;
  v41[1] = v43;
  return (*(a38 + 8 * ((v39 - 1883963023) ^ 0x6E)))(v43, 1812433253, 922846560, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v38, a28);
}

uint64_t sub_1D48D4D1C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v1 + v5) = *(a1 + v5) + ((v3 + 81) | 0x30) - ((2 * *(a1 + v5)) & 4) + 16;
  return (*(v4 + 8 * ((335 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1D48D4D64(uint64_t a1, signed int a2, int a3)
{
  if (v3 <= a2)
  {
    v3 = a2;
  }

  return (*(v4 + 8 * (((283 * ((((a3 ^ 0xD9F) + 738) | 0x338) ^ 0x7BA) - 1867) * (v3 < 0x7FFFFFFF)) ^ a3 ^ 0xD9F)))();
}

uint64_t sub_1D48D4DB8@<X0>(int a1@<W8>)
{
  if (v1 >= v2)
  {
    v6 = 671412617;
  }

  else
  {
    v6 = 671454635;
  }

  return (*(v3 + 8 * ((903 * (v6 == ((a1 - v5 + 224) ^ 0x2805954B))) ^ (v4 + a1 - 879))))();
}

uint64_t sub_1D48D4FD0(uint64_t a1, char a2, int a3)
{
  v16 = (v14 + 4 * v7);
  v17 = HIDWORD(v4) + v11 * (*(v8 + 4 * v7) ^ v3) + (*v16 ^ v3) + HIDWORD(v5) + v13 * (*(v6 + 4 * v7) ^ v3);
  *(v16 - 1) = v17 + v3 - ((v17 << (a2 + 85)) & a3);
  return (*(v9 + 8 * (((v7 + 1 == v10) * v15) ^ v12)))();
}

uint64_t sub_1D48D5114(uint64_t a1)
{
  v1 = 1564307779 * (((a1 | 0x689DD73) - (a1 & 0x689DD73)) ^ 0x91841160);
  v2 = *(a1 + 8) - v1;
  v3 = *(a1 + 24) ^ v1;
  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 1673015719;
  v5 = v4 - 1673015719 < 0;
  v7 = 1673015719 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1F5033D40 + (v2 ^ 0xCC9)) + ((((v3 - 1235013301) < (4 * v7)) * ((v2 - 842) ^ 0x975)) | v2)))();
}

uint64_t sub_1D48D51D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, unsigned int a12, char *a13, int a14)
{
  a12 = (50899313 * ((((2 * &a12) | 0x59312E42) - &a12 + 1399285983) ^ 0x8653BD5B)) ^ 0x72E;
  a13 = &a10;
  v17 = (*(v14 + 29464))(&a12);
  return (*(v14 + 8 * ((2888 * (a14 == v16)) ^ v15)))(v17);
}

uint64_t sub_1D48D5500(uint64_t a1, int a2)
{
  v8 = (v5 - 32);
  v9 = (v6 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((v4 == 32) * a2) ^ (v2 + v3 + 2674))))();
}

uint64_t sub_1D48D5510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, unsigned int a17)
{
  v20 = 1564307779 * ((&a14 & 0x7FB71E0C | ~(&a14 | 0x7FB71E0C)) ^ 0x17452DE0);
  a17 = v17 - ((2 * v17) & 0xFBF408DA) - v20 + 2113537133;
  a14 = v20 ^ 0x434;
  a15 = a11;
  v21 = (*(v19 + 29720))(&a14);
  return (*(v19 + 8 * ((3503 * (a16 == v18 + 421)) ^ 0x1A5u)))(v21);
}

uint64_t sub_1D48D55D8@<X0>(char a1@<W2>, char a2@<W3>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v8 = v4 - 1;
  *(a4 + v8) = *(a3 + v8) + ((v5 + a1) & a2) - ((2 * *(a3 + v8)) & 4) + 123;
  return (*(v6 + 8 * (((v8 == 0) * v7) ^ v5)))();
}

uint64_t sub_1D48D5618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * ((1401623413 - (&a14 | 0x538B1375) + (&a14 | 0xAC74EC8A)) ^ 0x86BFC6F0)) ^ 0x72E;
  a15 = &a12;
  v19 = (*(v17 + 29464))(&a14);
  return (*(v17 + 8 * ((3395 * (a16 == v16)) ^ v18)))(v19);
}

uint64_t sub_1D48D56A4(int a1, int8x16_t a2, int8x8_t a3, int8x8_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, int a9)
{
  v15 = a6 - 8;
  v17.val[0].i64[0] = (v12 + v15 - 1) & 0xF;
  v17.val[0].i64[1] = (v12 + v15 + 14) & 0xF;
  v17.val[1].i64[0] = (v12 + v15 + 13) & 0xF;
  v17.val[1].i64[1] = (a7 + v15) & 0xF;
  v17.val[2].i64[0] = (v12 + v15 + 11) & 0xF;
  v17.val[2].i64[1] = (v12 + v15 + 10) & 0xF;
  v17.val[3].i64[0] = (v12 + v15 + 9) & 0xF;
  v17.val[3].i64[1] = (v12 + v15) & 0xF ^ 8;
  *(a8 + v15) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a8 + v15), *(v9 + v17.val[0].i64[0] - 7)), veor_s8(*(v17.val[0].i64[0] + v11 - 4), *(v17.val[0].i64[0] + v10 - 2)))), a4), vmul_s8(*&vqtbl4q_s8(v17, a2), a3)));
  return (*(v14 + 8 * (((v13 == v15) * a9) ^ (a1 + 1223))))();
}

uint64_t sub_1D48D572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = v62 + 579;
  v66 = 1785193651 * ((-2 - ((~(v63 - 192) | 0x835275BF) + ((v63 - 192) | 0x7CAD8A40))) ^ 0x7573D193);
  *(v63 - 192) = &STACK[0x208];
  *(v63 - 176) = 2634 - v66;
  *(v63 - 180) = v65 - v66 + 939;
  v67 = (*(v64 + 8 * (v65 + 3096)))(v63 - 192);
  v68 = LOBYTE(STACK[0x20B]);
  v69 = (LOBYTE(STACK[0x208]) << 24) | (LOBYTE(STACK[0x209]) << 16) | v68 | (LOBYTE(STACK[0x20A]) << ((v65 - 6) & 0xFE ^ 0xC6));
  v70 = v69 - ((v69 & 0xB9D8C3F ^ v68 & 5) << ((v65 ^ 0x1B) + 51)) - 1952609222;
  v71 = *(a62 + 8 * ((61 * ((LODWORD(STACK[0x374]) >> 4) & 1)) ^ v65));
  LODWORD(STACK[0x3BC]) = v70;
  return v71(v67);
}

uint64_t sub_1D48D5928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, _DWORD *a37, uint64_t a38)
{
  v42 = (v39 + 93650679) | 0x8A200128;
  v43 = (*(v38 + 8 * (v39 + 3453)))(a37 + 4, 0);
  v44 = a37[4] - 154095246 - ((2 * a37[4]) & 0xEDA162E4);
  a37[1] = a37[6] - 154095246 - ((v42 + 1575772604) & (2 * a37[6]));
  a37[2] = v44;
  v45 = (*(a38 + 8 * (v39 + 3455)))(v43);
  a37[3] = v45 - 154095246 - ((2 * v45) & 0xEDA162E4);
  v46 = (*(a38 + 8 * (v39 ^ 0xF81)))();
  *a37 = v46 - 154095246 - ((2 * v46) & 0xEDA162E4);
  v47 = 50899313 * ((((v41 - 144) | 0xE3A79D6EFBBDB0FDLL) - (v41 - 144) + ((v41 - 144) & 0x1C58629104424F00)) ^ 0x50ACEA88D1769A87);
  v40[1] = (*a37 ^ 0xF6D0B172) + ((1664525 * (*v40 ^ (*v40 >> 30))) ^ v40[1]);
  v48 = v42 - 1172964967 + v47;
  *(v41 - 104) = v42 - 1172964967 - v47 - 122;
  *(v41 - 144) = 1 - v47;
  *(v41 - 140) = v48 - 156;
  *(v41 - 136) = (v42 + 1939933034) ^ v47;
  *(v41 - 132) = v48;
  *(v41 - 112) = v47 + 2;
  *(v41 - 120) = v47 ^ 0x26F;
  v49 = (*(a38 + 8 * (v42 ^ 0x8FB50F59)))(v41 - 144);
  return (*(a38 + 8 * *(v41 - 128)))(v49);
}

uint64_t sub_1D48D5B88(uint64_t a1)
{
  v6 = (*(v2 + 8 * (v4 ^ 0x742)))(a1, **(v1 + 8 * (v4 ^ 0x9A2)), 0, v3 + 4);
  v7 = (*(v2 + 8 * (v4 ^ 0x750)))(a1);
  return (*(v2 + 8 * ((31 * (((v4 + 64) ^ (v6 == ((v4 - 1183) | 0xA0) - 1514)) & 1)) ^ v4)))(v7);
}

uint64_t sub_1D48D5C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + v2 - 16);
  v7 = (a2 + v2 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((102 * ((v2 & 0xFFFFFFE0) != 32)) ^ (v4 + v3 + 691))))();
}

uint64_t sub_1D48D5C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v18 - 128) = &a14;
  *(v18 - 120) = a13;
  *(v18 - 112) = (v17 + 241) ^ (((((v18 - 136) | 0x6AFDC157) - ((v18 - 136) & 0x6AFDC157)) ^ 0x21960D29) * v16);
  v19 = (*(v15 + 8 * (v17 ^ 0xF89)))(v18 - 136);
  return (*(v15 + 8 * (((*(v18 - 136) > (v14 + 820)) * ((v17 + 1208) ^ 0xE13)) ^ v17)))(v19);
}

uint64_t sub_1D48D5D58@<X0>(uint64_t a1@<X8>)
{
  v4 = v3 ^ 0x473;
  v5 = *(a1 + 4);
  *(v1 + 4) = v5;
  v6 = (((v4 + 207) | 0x304) ^ 0x9C47C9F6) + v5 == 0;
  return (*(v2 + 8 * ((2 * v6) | (32 * v6) | v4)))();
}

uint64_t sub_1D48D5DA0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v8 = a1;
  *v9 = v2;
  v6 = (a2 - 347) ^ 0x1CC2E23E;
  v12 = a2 - 347 - (((&v12 | 0x9D9B0B6B) - &v12 + (&v12 & 0x6264F490)) ^ 0x7B33A77B) * v5 + 1951;
  v13 = v11;
  (*(v4 + 8 * (a2 + 3056)))(&v12);
  v12 = v3 - ((&v12 + 774923170 - 2 * (&v12 & 0x2E3063A2)) ^ 0xC898CFB2) * v5 + v6 + 1152;
  v13 = v10;
  (*(v4 + 8 * (v6 ^ 0x1CC2ED4B)))(&v12);
  return 0;
}

uint64_t sub_1D48D5E04@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(*(v5 + 8) + 4 * v2) ^ v4) + v1;
  *(*(a1 + 8) + 4 * v2) = (((v3 + 1183128774) & 0xB97AEF39) + v8 - ((2 * v8) & 0x32366EA) + 26322524) ^ 0x81C35036;
  return (*(v7 + 8 * ((927 * (v6 > (v2 + 1))) ^ (v3 + 781))))(0x43882C560191A65CLL, 2177060918, 1132997718);
}

uint64_t sub_1D48D5EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned int a43)
{
  v48 = *(&a31 + a8 + 72);
  v49 = ((2 * a8) & 0x1FFD8EA8) + (a8 ^ 0x8FFEC755) + v43;
  *(v46 + v49) = v48 ^ 0xB;
  *(v46 + v49 + 1) = ((v45 - 48) ^ BYTE1(v48)) - ((v48 >> 7) & 4) - 126;
  *(v46 + v49 + 2) = (BYTE2(v48) ^ 0x2C) - ((v48 >> 15) & 4) - 126;
  *(v46 + v49 + 3) = (HIBYTE(v48) ^ 0x46) - ((2 * (HIBYTE(v48) ^ 0x46)) & 4) - 126;
  return (*(v47 + 8 * (((a8 + 4 < a43) * v44) ^ v45)))(a1, a2, a3, a4, a5, a6, a7, (v45 - 2116));
}

uint64_t sub_1D48D5F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (v64 + 1698302273) & 0x9AC5EFCF;
  STACK[0x17C8] = 0xC1A27FA322B19ABDLL;
  STACK[0x17C0] = 0xCE6BACA4572F6656;
  v69 = v68 - 1340;
  v70 = v68 - 1422;
  if (LOBYTE(STACK[0x3F7]))
  {
    v71 = 6;
  }

  else
  {
    v71 = 8;
  }

  if ((v70 & a23) != 0)
  {
    v72 = v71;
  }

  else
  {
    v72 = STACK[0x414];
  }

  LODWORD(STACK[0x2AC]) = v72;
  v73 = 1037613739 * ((631953759 - ((v66 - 192) ^ 0xFD5236A1 | 0x25AAD95F) + ((v66 - 192) ^ 0xFD5236A1 | 0xDA5526A0)) ^ 0xF6053D7E);
  *(v66 - 168) = a31;
  *(v66 - 176) = &STACK[0x1790];
  *(v66 - 192) = &STACK[0x200];
  *(v66 - 160) = v73 + v69 + 521;
  *(v66 - 156) = v73 + (v72 ^ 0x6FD7FCFB) + ((2 * v72) & 0xDFAFF9F6) - 138543105;
  *(v66 - 152) = (v69 + 1340 + 2050717919 * a34 + 216334226) ^ v73;
  *(v66 - 144) = &STACK[0x17C0];
  *(v66 - 136) = &STACK[0x288];
  v74 = (*(v67 + 8 * (v69 + 3636)))(v66 - 192);
  v75 = *(v66 - 184);
  LODWORD(STACK[0x2FC]) = v75;
  return (*(a64 + 8 * ((2185 * (v75 == v65)) ^ v69)))(v74);
}

uint64_t sub_1D48D5FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, char a17, int a18, int a19, char a20, _BYTE *a21, int a22, char a23, uint64_t a24, int a25, char a26, _BYTE *a27, char *a28, char *a29, _BYTE *a30, char *a31)
{
  a28 = &a15;
  LODWORD(a29) = v31 + 2270 + 1037613739 * ((2 * (&a27 & 0x455F8870) - &a27 - 1163888753) ^ 0x6BA25AF0);
  a30 = a21;
  a31 = &a23;
  (*(v33 + 8 * (v31 ^ 0xAEA)))(&a27);
  a28 = &a17;
  LODWORD(a29) = v31 + 2270 + 1037613739 * ((&a27 & 0x4C2FF932 | ~(&a27 | 0x4C2FF932)) ^ 0x62D22BB2);
  a30 = a21;
  a31 = &a26;
  (*(v33 + 8 * (v31 ^ 0xAEA)))(&a27);
  LODWORD(a30) = (v31 + 846) ^ (843532609 * ((&a27 & 0x69A1C5CB | ~(&a27 | 0x69A1C5CB)) ^ 0xCA136EB1));
  a27 = a21;
  a29 = &a20;
  (*(v33 + 8 * (v31 ^ 0xA33)))(&a27);
  LODWORD(a27) = (v31 + 593) ^ (1504884919 * (&a27 ^ 0xFBC3B71B));
  a28 = a21;
  v34 = (*(v33 + 8 * (v31 + 2519)))(&a27);
  return (*(v33 + 8 * ((2105 * (HIDWORD(a27) == ((v31 + 335) ^ (v32 - 513)))) ^ v31)))(v34);
}

uint64_t sub_1D48D620C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, int a19, char *a20)
{
  if (v22)
  {
    v23 = -1556131970;
  }

  else
  {
    v23 = -1556131969;
  }

  v24 = 675097751 * (((&a15 | 0xFCDD3D27) - (&a15 & 0xFCDD3D27)) ^ 0xBF9D18B1);
  a19 = v23 ^ v24;
  a16 = v24 ^ 0x54BA8F41;
  a17 = v24 ^ 0x8D7220A;
  a20 = &a12;
  a15 = a13;
  v25 = (*(v20 + 29400))(&a15);
  return (*(v20 + 8 * ((52 * (a18 == v21)) ^ 0x19A)))(v25);
}

uint64_t sub_1D48D62EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v12 = v7 < a7;
  v13 = v8 + 1;
  if (v12 == v13 > a2 + 2)
  {
    v12 = v13 + a7 < v7;
  }

  return (*(v11 + 8 * ((v12 * v9) ^ v10)))();
}

uint64_t sub_1D48D6518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (((2 * v3) ^ 0x17C8) - 312)) ^ v3)))();
}

uint64_t sub_1D48D6548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v7 - v8 - 8;
  *(a6 + v11) = *(v6 + v11);
  return (*(v10 + 8 * ((240 * ((((v9 - 80) | 0x40) ^ (v8 - (v7 & 0xFFFFFFF8) == -8)) & 1)) ^ ((v9 - 80) | 0x40))))(v6 + v11 - 8, v8 - (v7 & 0xFFFFFFF8) + 16);
}

uint64_t sub_1D48D65AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v10 = *(a1 + 64);
  *v8 = 0;
  return (*(v9 + 8 * ((3406 * (v10 == 0)) ^ a8)))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1D48D6608@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a3 + v6);
  return (*(v5 + 8 * ((78 * (v6 == (((a2 + v4 + 574) | 0x1A9u) ^ 0x3E9))) ^ (a2 + v4 + 3376))))();
}

uint64_t sub_1D48D6698(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, unsigned int a27, unsigned int a28)
{
  v31 = 742307843 * ((-456222757 - (&a25 | 0xE4CE97DB) + (&a25 | 0x1B316824)) ^ 0x513E571);
  a25 = v28 - v31 + 95;
  a27 = ((a2 - a14 + 1438290795) ^ 0xD93FFFFE) - v31 + ((2 * (a2 - a14 + 1438290795)) & 0xB27FFFFC) + 1056144990;
  a28 = v31 + (((a2 & 0xFFFFFFF0) + 16) ^ 0xE63FBCFF) + ((v28 - 1640256425) & 0x61C459BC) + ((((a2 & 0xFFFFFFF0) + 16) << (((v28 - 18) & 0x83) - 1)) & 0xCC7F79E0) + 2043500026;
  a26 = v29;
  v34 = v28;
  v32 = (*(v30 + 8 * (v28 ^ 0xDF7)))(&a25);
  return (*(v30 + 8 * ((3857 * (*(v29 + 24) == 671454635)) ^ v34)))(v32);
}

uint64_t sub_1D48D68B8@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = v3 < v4;
  *(&STACK[0x27C] + a2) = *(v7 + v2) - ((2 * *(v7 + v2)) & 4) - 126;
  if (v9 == v2 + 1 > a1)
  {
    v9 = (((v8 - 618) | 0xE) ^ (v5 + 1)) + v2 < v3;
  }

  return (*(v6 + 8 * ((30 * v9) ^ v8)))();
}

uint64_t sub_1D48D692C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, char a5@<W4>, uint64_t a6@<X6>, unint64_t a7@<X7>, int a8@<W8>)
{
  v23 = (v15 - 537919616) & 0xFFBBAFBB;
  v24 = ((a2 ^ v16) + v17) ^ ((a2 ^ 0x22DA4ED45810ED24) - 0x22DA4ED45810ED24) ^ ((a2 ^ v23 ^ 0x5DB5C2BFA5DB0BF4) - 0x5DB5C2BF7A70A466);
  v25 = v21 + (v24 + v18) * (v24 + v20) - ((((v21 + (v24 + v18) * (v24 + v20)) * v22) >> 64) >> 31) * v8;
  v26 = v25 * a1 + (v19 ^ v12) * (v19 ^ v12) + a6;
  v27 = (v26 - (((v26 * a7) >> 64) >> 31) * v14) * v25;
  *(v10 + a3) = *(v9 + a3) ^ (v27 >> 15) ^ a5;
  *(v10 + (a3 | 1)) = *(v9 + (a3 | 1)) ^ (v27 >> 23) ^ a5;
  *(v10 + (a3 | 2)) = *(v9 + (a3 | 2)) ^ a5 ^ (v27 >> 31);
  *(v10 + (a3 | 3)) = *(v9 + (a3 | 3)) ^ a5 ^ (v27 >> 39);
  v28 = a3 + 4;
  v29 = 2 * (v23 ^ (a8 + 3728));
  v30 = v23 + 542397564;
  v31 = v28 + v13 < a4;
  if (a4 < v13 != v28 > (v29 ^ 0xDE494F04))
  {
    v31 = a4 < v13;
  }

  return (*(v11 + 8 * ((3612 * v31) ^ v30)))();
}

uint64_t sub_1D48D6A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44)
{
  v47 = *(v44 + 8 * (v46 - 944));
  v48 = *(v47 - 4);
  a14 = 19 * *v48 - 88;
  a15 = 19 * v48[1] - 88;
  a16 = v48[2] * (2 * (v46 ^ 0x4A) + 13) - 88;
  a17 = (v46 ^ 0x4A) + 124 + 19 * v48[3] - 87;
  a18 = 19 * v48[4] - 88;
  a19 = 19 * v48[5] - 88;
  a20 = 19 * v48[6] - 88;
  a21 = 19 * v48[7] - 88;
  a22 = 19 * v48[8] - 88;
  a23 = 19 * v48[9] - 88;
  a24 = 19 * v48[10] - 88;
  a25 = 19 * v48[11] - 88;
  a26 = 19 * v48[12] - 88;
  a27 = 19 * v48[13] - 88;
  a28 = 19 * v48[14] - 88;
  a29 = 19 * v48[15] - 88;
  a30 = 19 * v48[16] - 88;
  v49 = *(v47 - 4);
  a31 = 19 * v49[17] - 88;
  a32 = 19 * v49[18] - 88;
  a33 = 19 * v49[19] - 88;
  a34 = 19 * v49[20] - 88;
  a35 = 19 * v49[21] - 88;
  a36 = 19 * v49[22] - 88;
  a37 = 19 * v49[23] - 88;
  a38 = 19 * v49[24] - 88;
  a39 = 19 * v49[25] - 88;
  a40 = 19 * v49[26] - 88;
  a41 = 19 * v49[27] - 88;
  a42 = 19 * v49[28] - 88;
  a43 = 19 * v49[29] - 88;
  a44 = 19 * v49[30] - 88;
  v50 = (*(v45 + 8 * (v46 + 2851)))(&a14);
  return (*(v45 + 8 * ((26 * (v50 != 0)) ^ v46)))(v50, v51, v52, v53, v54, v55, v56, v57);
}

uint64_t sub_1D48D6C74(uint64_t a1)
{
  v6 = ((v2 + v4 + 2205) ^ 0xFFFFFFFFFFFFF713) + v3;
  v7 = *(v1 + v6 - 15);
  v8 = *(v1 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((53 * ((v3 & 0xFFFFFFE0) == 32)) ^ (v2 + v4 + 3012))))();
}

uint64_t sub_1D48D6D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, unsigned int a19, char *a20, int a21)
{
  a19 = (50899313 * ((2 * (&a19 & 0x544E82D8) - &a19 + 733052194) ^ 0x17A5758)) ^ 0x72E;
  a20 = &a16;
  v24 = (*(v22 + 29464))(&a19);
  return (*(v22 + 8 * ((3846 * (a21 == v23)) ^ v21)))(v24);
}

uint64_t sub_1D48D6E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int *a22)
{
  v28 = (v22 - 770) | 0xA1A;
  *v23 = 1;
  v29 = *a22;
  v30 = (((v25 | (v27 - 168)) - ((v27 - 168) & v25)) ^ 0x53A8896BC290A127) * v26;
  v31 = v28 + 1035747992 - v30;
  *(v27 - 168) = v30;
  *(v27 - 136) = v31;
  *(v27 - 132) = v31 - 25;
  *(v27 - 160) = v29 ^ v30;
  *(v27 - 152) = v30 ^ 0x13FF;
  *(v27 - 144) = v28 - v30 - 2124589447;
  *(v27 - 140) = ((v28 + 1035747992) ^ 0x6A) + v30;
  v32 = (*(v24 + 8 * (v28 ^ 0xCC)))(v27 - 168);
  return (*(v24 + 8 * *(v27 - 164)))(v32);
}

void NOAHabXy()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2008) ^ 0x82)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * ((qword_1EC7E2160 - dword_1EC7E2008) ^ 0x82))] ^ 0xF4]) + 201);
  v1 = -35 * ((qword_1EC7E2160 + *v0) ^ 0x82);
  v2 = *(&off_1F5033D40 + (*(off_1F5034348 + (*(off_1F5033F78 + v1 - 4) ^ 0xF4u) - 12) ^ v1) + 8);
  v3 = *v0 - &v5 + *v2;
  *v0 = 1228258013 * v3 + 0xC891BCBEBCEAD82;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * (v6 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * ((*v2 - *v0) ^ 0x82);
  v4 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2008 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * (dword_1EC7E2008 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x60]) + 4);
  (*(v4 + 8 * ((*(off_1F5034330 + (*(off_1F5034390 + v2 - 4) ^ 0xC7u)) ^ v2) + 3403)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48D70F8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X7>, int a3@<W8>)
{
  *v4 = a1;
  *a2 = a3;
  v7 = v3 ^ 0x757;
  v11 = (v3 ^ 0x222) - 143681137 * (&v11 ^ 0xE6A8AC10) + 1327;
  v12 = v9;
  (*(v5 + 8 * (v3 ^ 0xFC7)))(&v11);
  v12 = v10;
  v11 = v7 - 143681137 * ((2123729591 - (&v11 | 0x7E958AB7) + (&v11 | 0x816A7548)) ^ 0x67C2D958) + 452;
  (*(v5 + 8 * (v7 + 1904)))(&v11);
  return (v6 - 671454635);
}

uint64_t sub_1D48D762C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = ((((v20 - 144) | 0xC30DC61E) - (v20 - 144) + ((v20 - 144) & 0x3CF239E0)) ^ 0x54000A0D) * v19;
  *(v20 - 136) = a15;
  *(v20 - 128) = (36955955 * (((v15 - 1427486790) & 0x5515BDD9 ^ 0xFFFFF23C) + v16) - 1370890675) ^ v21;
  *(v20 - 124) = v15 - v21 - 943;
  v22 = (*(v17 + 8 * (v15 + 1644)))(v20 - 144);
  return (*(v17 + 8 * ((99 * (((v15 - 44) ^ (*(v20 - 144) == v18)) & 1)) ^ v15)))(v22);
}

uint64_t sub_1D48D76F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v22 = v20;
  v23 = v18 - ((2 * v18) & 0xFBF408DA) + 2113537133;
  v24 = v20 - 2149;
  v25 = v21 - 136;
  v26 = 1564307779 * ((((v21 - 136) | 0xCB965416) - (v21 - 136) + ((v21 - 136) & 0x3469ABE8)) ^ 0x5C9B9805);
  *(v21 - 116) = v23 - v26;
  *(v21 - 136) = (v20 - 2149) ^ v26;
  v27 = (v21 - 136);
  *(v21 - 128) = a15;
  (*(v19 + 8 * (v20 + 490)))(v21 - 136);
  v28 = v17 - ((((v20 ^ 0xD93u) + 782) ^ 0xC66594A08297EFDCLL) & (2 * v17));
  v29 = 1785193651 * ((v21 - 136) ^ 0x5F98BD38F621A42CLL);
  v30 = v20 - v29 + 388;
  *(v21 - 116) = v30;
  *v27 = a15;
  *(v21 - 128) = (v28 - 0x1CCD35AFBEB40A1ELL) ^ v29;
  (*(v19 + 8 * (v22 ^ 0x2FC)))(v21 - 136);
  v31 = 1564307779 * ((((2 * v25) | 0xD655A46) - v25 - 112373027) ^ 0x91BF6130);
  *(v21 - 116) = v16 - ((2 * v16) & 0xFBF408DA) + 2113537133 - v31;
  *(v21 - 136) = v24 ^ v31;
  *(v21 - 128) = a15;
  (*(v19 + 8 * (v22 ^ 0x21A)))(v21 - 136);
  *(v21 - 116) = v30;
  *v27 = a15;
  *(v21 - 128) = v29 ^ (v15 - ((2 * v15) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL);
  (*(v19 + 8 * (v22 + 460)))(v21 - 136);
  v32 = 2113537132;
  if (!a11)
  {
    v32 = 2113537133;
  }

  v33 = 1564307779 * ((v25 & 0x2005384A | ~(v25 | 0x2005384A)) ^ 0x48F70BA6);
  *(v21 - 128) = a15;
  *(v21 - 136) = v24 ^ v33;
  *(v21 - 116) = v32 - v33;
  v34 = (*(v19 + 8 * (v22 ^ 0x21A)))(v21 - 136);
  return (*(v19 + 8 * (v22 ^ (58 * (a11 != 0)))))(v34);
}

void sub_1D48D79B4(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2190 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * (dword_1EC7E2190 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x8C]) + 86);
  v4 = *(v3 - 4);
  v5 = *(&off_1F5033D40 + (*(off_1F50343C8 + (*(off_1F50340C8 + (-35 * (v4 ^ qword_1EC7E2160 ^ 0x82)) - 8) ^ 0x6Cu) - 8) ^ (-35 * (v4 ^ qword_1EC7E2160 ^ 0x82))) - 143);
  v6 = &v8[v4 + *v5];
  *(v3 - 4) = 1228258013 * v6 + 0x5804E9A2B9663D3ALL;
  *v5 = 1228258013 * (v6 ^ 0xC891BCBEBCEAD82);
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v6) = 843532609 * ((((2 * &v10) | 0xF11E4CDC) - &v10 - 2022647406) ^ 0x24C272EB);
  v10 = v9;
  v11 = 276443307 - v6;
  v12 = v6 - 875954088;
  LODWORD(v5) = 1228258013 * ((*v5 - *(v3 - 4)) ^ 0xEBCEAD82);
  v7 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2190 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46C70[byte_1D4B43C80[(-35 * (dword_1EC7E2190 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x9E]) - 160);
  (*(v7 + 8 * ((*(off_1F5034330 + (*(off_1F5034390 + v5 - 4) ^ 0xC7u)) ^ v5) + 3431)))(&v10);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1D48D7C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  v26 = v22 ^ (v24 - 100);
  v27 = 742307843 * (((&a19 | 0xAC1618E) - &a19 + (&a19 & 0xF53E9E70)) ^ 0x14E3ECDB);
  v28 = v22 - 482533111;
  v29 = *(v23 + 8);
  v30 = *(v29 + 8);
  v31 = 742307843 * ((-769719151 - (&a19 | 0xD21F0491) + (&a19 | 0x2DE0FB6E)) ^ 0x33C2763B);
  a21 = ((*v29 ^ 0xB69F5C7F) + 1501361151 + ((2 * *v29) & 0x6D3EB8FE)) ^ v31;
  a19 = (v28 + 93) ^ v31;
  a22 = a14;
  a20 = v30;
  (*(v25 + 8 * v26))(&a19);
  v32 = *(v23 + 8);
  v33 = *(v32 + 24);
  LODWORD(v32) = (*(v32 + 16) ^ 0xFA7E5BFE) + 362673280 + (((v28 - 799) ^ 0xF4FCB6E9) & (2 * *(v32 + 16)));
  a22 = a14;
  a21 = v32 ^ v27;
  a19 = (v28 + 93) ^ v27;
  a20 = v33;
  v34 = (*(v25 + 8 * (v28 + 2619)))(&a19);
  return (*(v25 + 8 * ((113 * (*(v23 + 16) > 1u)) ^ (v28 - 639))))(v34);
}

_DWORD *sub_1D48D7E08@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  if (v2 + 3354 >= 1447 * (v5 ^ 0x21Bu) + 2147480753)
  {
    v6 = -v4;
  }

  else
  {
    v6 = v3;
  }

  *(a2 + 4) = v6;
  *result = -446812180;
  return result;
}

uint64_t sub_1D48D7E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v63 + 52);
  v69 = (v68 ^ 0xDD7DDB74) & (2 * (v68 & 0x9979D266)) ^ v68 & 0x9979D266;
  v70 = (v68 ^ 0xCFAFDB34) << ((5 * (v65 ^ 0xEB)) ^ 0x33);
  v71 = (v70 ^ 0xADAC12A4) & (v68 ^ 0xCFAFDB34) ^ v70 & 0x56D60952;
  v72 = v71 ^ 0x52520952;
  v73 = (v71 ^ 0x4840000) & (4 * v69) ^ v69;
  v74 = ((4 * v72) ^ 0x5B582548) & v72 ^ (4 * v72) & 0x56D60950;
  v75 = v73 ^ 0x56D60952 ^ (v74 ^ 0x52500140) & (16 * v73);
  v76 = (16 * (v74 ^ 0x4860812)) & 0x56D60950 ^ 0x12960852 ^ ((16 * (v74 ^ 0x4860812)) ^ 0x6D609520) & (v74 ^ 0x4860812);
  v77 = (v75 << 8) & 0x56D60900 ^ v75 ^ ((v75 << 8) ^ 0xD6095200) & v76;
  v78 = (v77 << 16) & 0x56D60000 ^ v77 ^ ((v77 << 16) ^ 0x9520000) & ((v76 << 8) & 0x56D60000 ^ 0xD60000 ^ ((v76 << 8) ^ 0x56090000) & v76);
  v79 = (LODWORD(STACK[0x288]) ^ 0xBBF9FFBE) + 1610549120 + ((2 * LODWORD(STACK[0x288])) & 0x77F3FF7C);
  v80 = 143681137 * (((v66 - 192) & 0xED97C391 | ~((v66 - 192) | 0xED97C391)) ^ 0xF4C0907E);
  *(v66 - 152) = ((v65 + 2112185297) ^ a28) - v80;
  *(v66 - 172) = (v65 - 423) ^ v80;
  *(v66 - 168) = v79 ^ v80;
  *(v66 - 160) = &STACK[0x17B0];
  *(v66 - 164) = v80 ^ v68 ^ (2 * v78) ^ 0x2871D5DF;
  *(v66 - 192) = a35;
  *(v66 - 184) = v64;
  v81 = (*(v67 + 8 * (v65 ^ 0xF47)))(v66 - 192);
  v82 = *(v66 - 176);
  LODWORD(STACK[0x2FC]) = v82;
  return (*(a63 + 8 * ((2301 * (v82 == 671454635)) ^ v65)))(v81);
}

uint64_t sub_1D48D80BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((v4 - 779063381) & 0x54A4E9EB ^ 0xD7E)) ^ (v2 + v4 + 2495))))();
}

uint64_t sub_1D48D8108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v26 = STACK[0x250];
  STACK[0x300] = *(v25 + 8 * (v23 - 1467));
  STACK[0x2F0] = v24 + ((v23 + 1936848432) & 0x8C8E071B) - 682;
  STACK[0x390] = v26;
  if (v26)
  {
    v27 = a23 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = !v27;
  return (*(v25 + 8 * ((37 * v28) ^ (v23 - 7))))(1);
}

uint64_t sub_1D48D84FC()
{
  v3 = *(v0 + 16) + 818445953;
  v4 = *(v0 + 12) + 813969447;
  v5 = (v3 < 0x868311EC) ^ (v4 < 0x868311EC);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0x868311EC;
  }

  return (*(v2 + 8 * ((2945 * v6) ^ v1)))();
}

uint64_t sub_1D48D8564@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W5>, uint64_t a4@<X6>, int a5@<W8>)
{
  v11 = HIDWORD(v6) + HIDWORD(v7) + (*(v10 + 4 * a5) ^ v5);
  *(v10 + 4 * a3) = v5 + ((v9 - 1816) | 0x80E) + v11 - (a2 & (2 * v11)) - 2175;
  *(v10 + 4 * a5) = HIDWORD(v11) + (((v9 - 1279) | 0x851) ^ 0x8052E998) - 2 * HIDWORD(v11);
  return (*(v8 + 8 * (v9 ^ (2777 * (a1 + 1 == a4)))))();
}

uint64_t sub_1D48D8B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16, char *a17)
{
  v20 = 675097751 * (&a12 ^ 0x43402596);
  a16 = v20 ^ 0xA33F4F7D;
  a17 = &a10;
  a12 = a11;
  a13 = (v19 + 1421510522) ^ v20;
  a14 = v20 ^ 0x456A6BE1;
  v21 = (*(v18 + 8 * (v19 ^ 0x99C)))(&a12);
  return (*(v18 + 8 * (((a15 == v17 + 492721633) * ((349 * (v19 ^ 0x7C2)) ^ 0xD8E)) ^ v19)))(v21);
}

uint64_t sub_1D48D8C30(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  *v62 = 0x7D7D7D7D7D7D7D7DLL;
  v62[1] = 0x8282828284828290;
  v66 = 843532609 * ((((v64 - 192) ^ 0xDD80F67 | 0x4941B84A) - ((v64 - 192) ^ 0xDD80F67) + (((v64 - 192) ^ 0xDD80F67) & 0xB6BE47B5)) ^ 0x18D4E3A8);
  *(v64 - 188) = v63 - v66 - 473376367;
  *(v64 - 184) = -556239658 - v66;
  STACK[0x408] = a3;
  (*(v65 + 8 * (v63 ^ 0x47E)))(v64 - 192);
  LODWORD(STACK[0x424]) = 1499320237;
  v67 = (*(a62 + 8 * (v63 ^ 0x400)))(336);
  STACK[0x448] = v67;
  return (*(a62 + 8 * (((v67 != 0) * (((v63 + 690) | 0x2A) ^ (v63 + 751))) ^ v63)))(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_1D48D8E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, __int16 a13, char a14, uint64_t a15, char a16, __int16 a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, unsigned int a23)
{
  a23 = (v23 + 1088) ^ (843532609 * (((&a20 | 0xDF4C53CF) + (~&a20 | 0x20B3AC30)) ^ 0x8301074B));
  a20 = a19;
  a22 = &a14;
  (*(v24 + 8 * (v23 ^ 0xD41)))(&a20);
  a23 = (v23 + 1088) ^ (843532609 * ((-1644322960 - (&a20 | 0x9DFD9F70) + (&a20 | 0x6202608F)) ^ 0x3E4F340A));
  a22 = &a18;
  a20 = a19;
  (*(v24 + 8 * (v23 ^ 0xD41)))(&a20);
  a23 = (v23 + 1088) ^ (843532609 * ((2 * (&a20 & 0x45DAF3A8) - &a20 + 975506515) ^ 0x666858D6));
  a20 = a19;
  a22 = &a16;
  (*(v24 + 8 * (v23 ^ 0xD41)))(&a20);
  a20 = a19;
  a22 = &a12;
  a23 = (v23 + 1088) ^ (843532609 * (((&a20 | 0xC552C36D) + (~&a20 | 0x3AAD3C92)) ^ 0x991F97E9));
  (*(v24 + 8 * (v23 ^ 0xD41)))(&a20);
  a20 = a19;
  a22 = &a10;
  a23 = (v23 + 1088) ^ (843532609 * (&a20 ^ 0x5C4D5485));
  (*(v24 + 8 * (v23 ^ 0xD41)))(&a20);
  a21 = a19;
  LODWORD(a20) = (v23 + 835) ^ (1504884919 * ((&a20 & 0x97E121E1 | ~(&a20 | 0x97E121E1)) ^ 0x93DD6905));
  v26 = (*(v24 + 8 * (v23 ^ 0xD49)))(&a20);
  return (*(v24 + 8 * ((55 * (HIDWORD(a20) == ((v23 - 547783745) & v25) - 743695828)) ^ v23)))(v26);
}

uint64_t sub_1D48D90B0(uint64_t a1)
{
  v6 = 384 * (v1 ^ 0x481);
  v7 = (v6 + 1466524019) & 0xA8969BFF;
  *v3 = a1;
  *v2 = (v5 + v6 - 1536) ^ v11;
  v8 = 6 * (v7 ^ 0x28E);
  v13 = v7 - 143681137 * (((&v13 | 0x4225F91E) - (&v13 & 0x4225F91E)) ^ 0xA48D550E) + 1345;
  v14 = v10;
  (*(v4 + 8 * (v7 + 2797)))(&v13);
  v14 = v12;
  v13 = v8 - 143681137 * ((-1961283530 - (&v13 | 0x8B193036) + (&v13 | 0x74E6CFC9)) ^ 0x924E63D9) - 826;
  (*(v4 + 8 * (v8 + 626)))(&v13);
  return 0;
}

uint64_t sub_1D48D914C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16, char *a17)
{
  v21 = (v20 + 1610279026) & 0xA0051A5E;
  v22 = ((((2 * &a12) | 0x8C23A03E) - &a12 + 971911137) ^ 0x8551F589) * v19;
  a12 = a9;
  a16 = v22 ^ 0xA33F4F7D;
  a17 = &a11;
  a13 = (v21 + 1421510385) ^ v22;
  a14 = v22 ^ 0x5E68B7A0;
  v23 = (*(v17 + 8 * (v21 + 1547)))(&a12);
  return (*(v17 + 8 * (((a15 == v18) * ((v21 - 1959) ^ 0x186)) ^ v21)))(v23);
}

uint64_t sub_1D48D921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, char *a16, int a17)
{
  a16 = &a10;
  a15 = (50899313 * (((&a15 | 0xF2B1ACFD) - &a15 + (&a15 & 0xD4E5300)) ^ 0xD87A8687)) ^ 0x72E;
  v20 = (*(v17 + 29464))(&a15);
  return (*(v17 + 8 * ((2929 * (a17 == (v18 ^ 0xD959C8A2))) ^ v19)))(v20);
}

uint64_t sub_1D48D9314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 128) = v16;
  *(v20 - 120) = &a15;
  *(v20 - 112) = (v19 - 1186) ^ (((((v20 - 136) | 0xDD9D043F) - (v20 - 136) + ((v20 - 136) & 0x2262FBC0)) ^ 0x96F6C841) * v18);
  v21 = (*(v17 + 8 * (v19 + 2038)))(v20 - 136);
  return (*(v17 + 8 * (((*(v20 - 136) > v15) * ((41 * (v19 ^ 0x687)) ^ 0x2A1)) ^ v19)))(v21);
}

uint64_t sub_1D48D9510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * ((&a14 + 706502495 - 2 * (&a14 & 0x2A1C5F5F)) ^ 0xD77525)) ^ 0x72E;
  a15 = &a11;
  v18 = (*(v16 + 29464))(&a14);
  return (*(v16 + 8 * ((43 * (a16 != v17)) ^ 0x196u)))(v18);
}

uint64_t sub_1D48D96A0@<X0>(unsigned int a1@<W8>)
{
  v1 = a1 + 1975459895 < v3 + 54709088;
  if (a1 > 0x8A40DFC8 != v3 + 54709088 < (((v4 - 1342) | 0x44C) ^ 0x75BF25F9u))
  {
    v1 = v3 + 54709088 < (((v4 - 1342) | 0x44C) ^ 0x75BF25F9u);
  }

  return (*(v5 + 8 * ((30 * !v1) ^ (v4 + 846))))();
}

uint64_t sub_1D48D978C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  v37 = *(&a19 + v31 + 72);
  v38 = ((2 * v31) & 0xDBFFCF10) + (v31 ^ 0xEDFFE789) + v32;
  *(v34 + v38) = v37 ^ 0xB;
  *(v34 + v38 + 1) = (v33 ^ (v36 - 30) ^ BYTE1(v37) ^ 0xCD) - ((v37 >> 7) & 4) - 126;
  *(v34 + v38 + 2) = (BYTE2(v37) ^ 0x2C) - ((v37 >> 15) & 4) - 126;
  *(v34 + v38 + 3) = (HIBYTE(v37) ^ 0x46) - ((2 * (HIBYTE(v37) ^ 0x46)) & 4) - 126;
  return (*(v35 + 8 * ((28 * (v31 + 4 < a31)) ^ v33)))();
}

uint64_t sub_1D48D98A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29, uint64_t a30, int a31, void *a32, int *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v62 = (v60 - 1883963719);
  v63 = (-(((v62 ^ 0xFFFFFFFFFFFFEC00) + v59) ^ ((v62 ^ 0xFFFFEC00) + v59)) | ((v62 ^ 0xFFFFFFFFFFFFEC00) + v59)) >> 63;
  *a29 = v59 + 1;
  v64 = ((v58 ^ (v58 >> 11)) << 7) & 0x9D2C5680 ^ v58 ^ (v58 >> 11);
  LODWORD(v62) = (v60 - 1883963718) ^ v63 ^ v64 ^ (v64 << 15) & (v62 ^ 0xEFC60000) ^ (((v60 - 1883963718) ^ v63 ^ v64 ^ (v64 << 15) & (v62 ^ 0xEFC60000)) >> 18);
  v65 = &a58 + (a31 - 1);
  v66 = -2039581373 * ((*(*a32 + (*a33 & 0xFFFFFFFFB6542C80)) ^ v65) & 0x7FFFFFFF);
  v67 = -2039581373 * (v66 ^ HIWORD(v66));
  v68 = *(v61[133] + (v67 >> 24) - 12);
  v69 = *(v61[151] + (v67 >> 24) - 8) ^ *(v61[215] + (v67 >> 24)) ^ (v62 - ((2 * v62) & 0x70) + 56) ^ v68 ^ v67 ^ (107 * (v67 >> 24));
  LODWORD(v67) = (*(v61[151] + (v67 >> 24) - 8) ^ *(v61[215] + (v67 >> 24)) ^ (v62 - ((2 * v62) & 0x70) + 56) ^ v68 ^ v67 ^ (107 * BYTE3(v67)));
  *v65 = v69 ^ 0x38;
  return (*(a2 + 8 * ((457 * (a31 == (v67 != 56))) ^ 0x2F9)))();
}

uint64_t sub_1D48D9A60@<X0>(uint64_t a1@<X3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, _DWORD *a11)
{
  v14 = a2 - 16;
  v15 = (a2 - 1531) ^ 0x9DC3FB3A;
  v16 = (*a11 ^ 0x8052E343) * *(*(a6 + 16) + 16);
  v17 = 210068311 * ((~((v12 - 136) | 0x363A763) + ((v12 - 136) & 0x363A763)) ^ 0xABF3C24B);
  *(v12 - 136) = v17 ^ 0x63B831A7;
  *(v12 - 112) = a7;
  *(v12 - 128) = &a10;
  *(v12 - 120) = v17 + v14 - 2237;
  *(v12 - 104) = ((v16 ^ 0xCEE1FF7F) + 931067094 + (v15 & (2 * v16))) ^ v17;
  v18 = (*(v11 + 8 * (v14 + 773)))(v12 - 136);
  return (*(v11 + 8 * (v14 ^ (16 * (a1 != 1)))))(v18);
}

uint64_t sub_1D48D9D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a15 = a13;
  a17 = &a11;
  a18 = (v18 + 73) ^ (843532609 * ((((2 * &a15) | 0x3D975B78) - &a15 - 516664764) ^ 0x4286F939));
  (*(v20 + 8 * (v18 ^ 0x936u)))(&a15);
  a16 = a13;
  LODWORD(a15) = (v18 - 180) ^ (1504884919 * ((2 * (&a15 & 0x586DCC78) - &a15 - 1483590784) ^ 0x5C51849B));
  v22 = (*(v20 + 8 * (v18 ^ 0x93Eu)))(&a15);
  return (*(v20 + 8 * (((HIDWORD(a15) == v19) * ((v18 - 185239492) & 0xD0E5D8FF ^ (v21 - 543))) ^ v18)))(v22);
}

uint64_t sub_1D48D9E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char *a20, unsigned int a21, uint64_t a22, char *a23)
{
  a20 = &a15;
  a22 = a18;
  a23 = &a13;
  a21 = v23 + 1037613739 * ((&a19 & 0x9703E0EF | ~(&a19 | 0x9703E0EF)) ^ 0xB9FE326F) + 3023;
  v25 = (*(v24 + 8 * (v23 ^ 0xF99)))(&a19);
  return (*(v24 + 8 * ((2779 * (a19 == ((v23 + 553) ^ 0x28059641))) ^ v23)))(v25);
}

uint64_t sub_1D48D9F34@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v58 = &STACK[0x17D0] + a1;
  *v58 = *v56;
  v59 = (v55 - 1041) | 0x411;
  *(v58 + 1) = *(v56 + 1);
  *(v58 + 9) = *(v56 + 9);
  *(v58 + 13) = *(v56 + 13);
  v58[15] = v56[15];
  v61 = *v56;
  v60 = *(v56 + 1);
  *(v58 + 2) = v61;
  *(v58 + 3) = v60;
  v62 = *(v57 + 8 * (v59 ^ 0xD3D)) - 4;
  v63 = *(v62 + (v58[5] ^ 0x56));
  v64 = (v59 - 1729) | 0x24;
  v65 = 19 * v63 + 34;
  v66 = v65 & 0x50 ^ 0xC9;
  LOBYTE(v60) = (v65 ^ 0x5E) & (2 * ((v65 ^ 0x5E) & (2 * ((v65 ^ 0x5E) & (2 * ((v65 ^ 0x5E) & (2 * ((v65 ^ 0x5E) & (2 * (v66 ^ (13 - 19 * v63) & (((v59 + 63) | 0x24) ^ 0x3A))) ^ v66)) ^ v66)) ^ v66)) ^ v66));
  v67 = 76 * v63 - 102;
  v68 = v67 & 0x7C ^ 0xA1;
  LODWORD(v60) = (v65 ^ v67 ^ (2 * (v66 ^ v68 ^ (v67 ^ 0x3A) & (2 * ((v67 ^ 0x3A) & (2 * ((v67 ^ 0x3A) & (2 * ((v67 ^ 0x3A) & (2 * ((v67 ^ 0x3A) & (2 * v68) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v60)));
  v69 = *(v57 + 8 * (v59 ^ 0xD22)) - 8;
  v70 = *(v69 + (v58[15] ^ 0x74));
  v71 = *(v69 + (v58[7] ^ 0xB3));
  LODWORD(v60) = ((v60 << 16) ^ 0xF4482EF8) & ((v71 - ((2 * v71) & 0x22222222) + 1365209361) ^ 0xA4A00EED) | (v71 - ((2 * v71) & 0x22222222) + 1365209361) & 0x1005107;
  v72 = *(v69 + (v58[11] ^ 0x19));
  v73 = *(v57 + 8 * (v59 ^ 0xD40)) - 8;
  v74 = *(v73 + (v58[2] ^ 0xA4));
  v75 = *(v57 + 8 * (v59 ^ 0xDFC)) - 8;
  v76 = *(v75 + (v58[12] ^ 0x28));
  v77 = (v74 ^ (v74 >> 3) ^ ((v74 >> 5) | 0x20)) << 8;
  v78 = v76 ^ (v76 >> 3) ^ (v76 >> 2) ^ 0xE;
  v79 = v70 - ((2 * v70) & 0x9A) + 489658701;
  v80 = ((v78 << 24) ^ 0x6B5F4552) & (v79 ^ 0xE2F0F43E);
  v81 = *(v75 + (*v58 ^ 0xBBLL));
  v82 = *(v62 + (v58[13] ^ 0xCFLL));
  v83 = 19 * v82 - 20;
  v84 = v83 & 0x2C ^ 0xC;
  v85 = (((v81 ^ (v81 >> 3) ^ (v81 >> 2)) << 24) ^ 0x5C20D4A8) & (v77 ^ 0xFF6616FC) | v77 & 0x2B00;
  LOBYTE(v81) = 76 * v82 + 76;
  v86 = *(v75 + (v58[8] ^ 4));
  v87 = (v83 ^ v81 ^ (2 * (v84 ^ v81 & 0x87 ^ 0xF ^ (v81 ^ 8) & (2 * ((v81 ^ 8) & (2 * ((v81 ^ 8) & (2 * ((v81 ^ 8) & 0xC ^ v81 & 0x87 ^ 0xF)) ^ v81 & 0x87 ^ 0xF)) ^ v81 & 0x87 ^ 0xF)) ^ (v83 ^ 0x14) & (2 * ((v83 ^ 0x14) & (2 * ((v83 ^ 0x14) & (2 * ((v83 ^ 0x14) & (2 * v84) ^ v84)) ^ v84)) ^ v84))))) << 16;
  v88 = (v87 ^ 0xFFC47FFF) & ((v80 | v79 & 0x1AAD) ^ 0x8CCB2509);
  v89 = v87 & 0x6B0000;
  v285 = v69;
  v90 = *(v69 + (v58[3] ^ 0xF1));
  v91 = (((v86 ^ (v86 >> 3) ^ (v86 >> 2)) << 24) ^ 0x845507BB) & ((v72 - ((2 * v72) & 0x134) + 1756894362) ^ 0x9765C321) | (v72 - ((2 * v72) & 0x134) + 1756894362) & 0x881044;
  v92 = (v85 ^ 0x8263EB04) & (v90 ^ 0xFF6FFF67) | v90 & 0x53;
  v93 = *(v73 + (v58[6] ^ 0xAELL));
  v94 = (v60 ^ 0x8208002) & (((v93 ^ (v93 >> 5) ^ (v93 >> 3)) << 8) ^ 0xD8AB4EDB);
  v95 = v60 & 0x25540924;
  LOBYTE(v60) = *(v62 + (v58[1] ^ 0x72));
  LOBYTE(v90) = 19 * v60 - 52;
  v96 = v90 & 0xA8 ^ 0x5A;
  LOBYTE(v60) = 76 * v60;
  v97 = -20 - v60;
  LOBYTE(v60) = v60 + 18;
  v98 = v97 & 0xC0 ^ v60 & 0x84;
  LODWORD(v60) = (((v60 ^ v90 ^ (2 * (v98 ^ v96 ^ (v90 ^ 0x34) & (2 * ((v90 ^ 0x34) & (2 * ((v90 ^ 0x34) & (2 * ((v90 ^ 0x34) & (2 * ((v90 ^ 0x34) & (2 * v96) ^ v96)) ^ v96)) ^ v96)) ^ v96)) ^ (v60 ^ 0x40) & (2 * ((v60 ^ 0x40) & (2 * ((v60 ^ 0x40) & (2 * ((v60 ^ 0x40) & (2 * ((v60 ^ 0x40) & (2 * (v60 & (2 * (v60 & 0x84)) | v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98))))) << 16) ^ 0xFB39F346) & (v92 ^ 0xF3BCEDA8);
  v99 = *(v73 + (v58[10] ^ 0x41));
  v100 = (v99 ^ 0x32 ^ (v99 >> 3) ^ (((v99 ^ 0x32) >> 5) | 0x20)) << 8;
  v284 = v73;
  v101 = v89 ^ 0x91D501A5 ^ v88;
  v102 = (*(v73 + (v58[14] ^ 0xC9)) ^ (*(v73 + (v58[14] ^ 0xC9)) >> 5) ^ (*(v73 + (v58[14] ^ 0xC9)) >> 3)) << 8;
  v283 = v75;
  v103 = v95 ^ 0x711C2D1B ^ v94;
  v104 = (*(v75 + (v58[4] ^ 0x51)) ^ (*(v75 + (v58[4] ^ 0x51)) >> 3) ^ (*(v75 + (v58[4] ^ 0x51)) >> 2)) << 24;
  v286 = v62;
  LOBYTE(v58) = *(v62 + (v58[9] ^ 0x7DLL));
  v105 = 19 * v58 - 78;
  LOBYTE(v58) = 76 * v58 + 40;
  v106 = v58 & 0x89 | 0x36;
  LODWORD(v58) = (v105 ^ v58 ^ (2 * ((v58 ^ 0x2C) & (2 * ((v58 ^ 0x2C) & (2 * ((v58 ^ 0x2C) & (2 * ((v58 ^ 0x2C) & (2 * ((v58 ^ 0x2C) & (2 * v106) ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ v106 ^ ((2 * (((2 * (((2 * (((2 * (((2 * (v105 ^ 0xE)) & 0x1C ^ 0x12) & (v105 ^ 0xE))) ^ 0x12) & (v105 ^ 0xE))) ^ 0x12) & (v105 ^ 0xE))) ^ 0x12) & (v105 ^ 0xE))) ^ 0x52) & (v105 ^ 0x4E)))) << 16;
  LODWORD(a44) = v92 & 0x4210CB9 ^ 0x3C6EB278 ^ v60;
  v292 = v104 & 0x73000000 ^ 0x9441F23D ^ (v104 ^ 0xA1FFFFFF) & v103;
  v293 = v102 & 0x8600 ^ 0x70BBD248 ^ v101 & (v102 ^ 0xFFFFC8FF);
  v291 = v58 & 0xA00000 ^ 0xD8A28758 ^ (v58 ^ 0xFF44FFFF) & (v100 & 0x3F00 ^ 0xDAF49465 ^ (v100 ^ 0xFFFFFEFF) & (v91 ^ 0xF576D7C1));
  v281 = STACK[0x470];
  v282 = STACK[0x468];
  v294 = (STACK[0x470] + 7);
  v295 = v64;
  HIDWORD(a8) = (v64 + 63558987) & 0xFC3627A7;
  LODWORD(a43) = HIDWORD(a8) - 929;
  v107 = *(v73 + (*(STACK[0x468] + (HIDWORD(a8) - 929)) ^ 0xD3));
  v108 = v107 ^ 0x56 ^ (v107 >> 3) ^ (((v107 ^ 0x56) >> 5) | 0xC0);
  LOWORD(v107) = *(v69 + (*(STACK[0x468] + 11) ^ 0x3FLL));
  v109 = *(v73 + (*(STACK[0x468] + 14) ^ 0xC3));
  v110 = ((v107 ^ 0x41) - 29) ^ ((v107 ^ 0x78) - 36) ^ ((v107 ^ 0xFF91) + 51);
  LOWORD(v107) = v110 + ((2 * v107) & 0xFFC4 ^ (((2 * v107) & 0xFFC4 ^ 0xFFF2) - 44) ^ (((2 * v107) & 0xFFC4 ^ 0xFFA8) - 118) ^ 0xFFDE) + 59;
  v111 = *(v69 + (*(STACK[0x468] + 3) ^ 0x87));
  v289 = v109 ^ (v109 >> 3) ^ ((~v109 & 0xE0) >> 5);
  v112 = *(v69 + (*(STACK[0x468] + 7) ^ 0xEELL));
  v113 = ((v112 - ((2 * v112) & 4) - 1534464254) ^ 0x515410A4) & ((v108 << 8) ^ 0xD15DACA4) ^ (v112 - ((2 * v112) & 4) - 1534464254) & 0x2400A45B;
  LOBYTE(v91) = 1 - v110;
  v114 = *(v62 + (*(STACK[0x468] + 13) ^ 0xFLL));
  LOBYTE(v109) = v91 & 2;
  v115 = 19 * v114 - 23;
  v116 = v115 & 0x7B ^ 0x32;
  v117 = v115 ^ (2 * ((v115 ^ 0x16) & (2 * ((v115 ^ 0x16) & (2 * ((v115 ^ 0x16) & (2 * ((v115 ^ 0x16) & (2 * ((v115 ^ 0x16) & (2 * ((v115 ^ 6) & (2 * v115) & 0x2E ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116));
  v118 = 38 * v114 + 65;
  v119 = v118 & 0x37 ^ 0x4C;
  v120 = (v118 ^ (2 * ((v118 ^ 0xFFFFFFFC) & (2 * ((v118 ^ 0x3E) & (2 * ((v118 ^ 0x3E) & (2 * ((v118 ^ 0x3E) & (2 * ((v118 ^ 0x3E) & (2 * v119) ^ v119)) ^ v119)) ^ v119)) ^ v119)) ^ v119))) & 0x6A;
  v121 = (((v120 ^ 0x67) + 92) ^ (v120 + 61) ^ ((v120 ^ 0xFFFFFFD1) - 18)) + (((v117 ^ 8) + 92) ^ ((v117 ^ 0x60) + 52) ^ ((v117 ^ 0xFFFFFFA6) - 10)) + 81;
  v122 = v121 & 0xFFFFFFA8 ^ 0x7F;
  LOBYTE(v109) = ((v121 ^ (2 * ((v121 ^ 0x72) & (2 * ((v121 ^ 0x72) & (2 * ((v121 ^ 0x72) & (2 * ((v121 ^ 0x72) & (2 * ((v121 ^ 0x72) & (2 * ((v121 ^ 0x72) & 0x1A ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ 0xFFFFFFA8) << (v109 ^ 2) << v109) ^ v117;
  v123 = *(v75 + (*(STACK[0x468] + 8) ^ 0xAALL));
  LOWORD(v121) = v107 & 0xFF95 ^ 0xFFB2;
  LOWORD(v62) = v107 ^ (2 * ((v107 ^ 0x30) & (2 * ((v107 ^ 0x30) & (2 * ((v107 ^ 0x30) & (2 * ((v107 ^ 0x30) & (2 * (v107 & (2 * (v107 & (2 * v107) & 0x62 ^ v121)) ^ v121)) ^ v121)) ^ v121)) ^ v121)) ^ v121));
  v124 = v123 ^ (v123 >> 3) ^ (v123 >> 2);
  v125 = *(v286 + (*(STACK[0x468] + 1) ^ 0xDLL));
  v126 = 19 * v125 + 52;
  LODWORD(v69) = v126 & 0xFFFFFFDE ^ 9;
  v127 = 76 * v125 + 118;
  LODWORD(v75) = v127 & 0xFFFFFFC8 ^ 0xFFFFFFDD;
  v128 = v126 ^ v127 ^ (2 * (v69 ^ v75 ^ (v127 ^ 0x5E) & (2 * ((v127 ^ 0x5E) & (2 * ((v127 ^ 0x5E) & (2 * ((v127 ^ 0x5E) & (2 * ((v127 ^ 0x5A) & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ (v126 ^ 0x4C) & (2 * ((v126 ^ 0x4C) & (2 * ((v126 ^ 0x4C) & (2 * ((v126 ^ 0x4C) & (2 * ((v126 ^ 0x4C) & (2 * (v126 & (2 * v69) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69))));
  v290 = ((((v128 >> 4) | 0xFFFFFFFFFFFFFFF0) & ((v111 << 12) ^ 0x53D6212771E37D31) | (v128 >> 4)) ^ 0x8000D8888C102246) & ((v128 << 28) ^ 0xC0C4F88BCD14A75ELL) ^ ((v128 >> 4) | 0xFFFFFFFFFFFFFFF0) & ((v111 << 12) ^ 0x53D6212771E37D31) & 0x12020020104B5821;
  v129 = *(v73 + (*(STACK[0x468] + 10) ^ 8));
  LODWORD(v69) = ((2 * *(STACK[0x468] + 4)) & 0x1D6) + (*(STACK[0x468] + 4) ^ 0xF6F55FEB);
  v130 = ((v62 & 0x1F0 ^ 0xFFFFFE7F) & ((v124 << 24) ^ 0x1BC202D0) | v62 & 0x2F) ^ ((v129 ^ (v129 >> 5) ^ (v129 >> 3)) << 8);
  v131 = (2 * ((((v69 + 2135926776) ^ 0xBE4EB20E) + 938756627) ^ (v69 + 2135926776) ^ (((v69 + 2135926776) ^ 0xC6DA80D) + 97996818) ^ (((v69 + 2135926776) ^ 0x1E) + 3) ^ (((v69 + 2135926776) ^ 0xFE) + 227))) & 0x1A4;
  LODWORD(v69) = v69 - (((v131 ^ 0x1AA7D4FA) + 236634652) ^ ((v131 ^ 0xAC602556) - 1193462856) ^ ((v131 ^ 0xB6C7F028) - 1569003830)) + 1291670184;
  LODWORD(v69) = *(v283 + (v69 ^ ((v69 ^ 0xED7DD31F) + 1035450044) ^ ((v69 ^ 0x412A9702) - 1847528793) ^ ((v69 ^ 0x9C9DA1A1) + 1280820230) ^ ((v69 ^ 0x1FFF7FE7) - 818603452) ^ 0x2F359A2A));
  v132 = v69 ^ (v69 >> 3) ^ (v69 >> 2) ^ 0x80;
  LODWORD(v69) = *(v283 + (*(STACK[0x468] + 12) ^ 0x9FLL));
  LODWORD(v75) = v69 ^ (v69 >> 3) ^ (v69 >> 2) ^ 0xA6;
  LODWORD(v69) = *(v73 + (*(STACK[0x468] + 2) ^ 0x3FLL));
  v133 = *(v286 + (*(STACK[0x468] + 9) ^ 0x9DLL));
  v134 = 19 * v133 + 33;
  v135 = v134 & 0xCF ^ 0x98;
  LODWORD(v69) = (v290 >> 12) & 0x2950573 ^ ((v69 ^ (v69 >> 3) ^ ((v69 >> 5) | 0xA8)) << 8) ^ ((v290 << 20) ^ 0xE4DAFA8C) & ((v290 >> 12) ^ 0x754C7315);
  v136 = v69 ^ 0x38;
  LOBYTE(v128) = 76 * v133 + 38;
  v137 = v130 ^ ((v128 ^ v134 ^ (2 * (((2 * (((2 * (v128 ^ 0x2E)) & 0x60 ^ 0x30) & (v128 ^ 0x2E))) ^ 0x70) & (v128 ^ 0x2E) ^ v135 ^ (v134 ^ 0x5E) & (2 * ((v134 ^ 0x5E) & (2 * ((v134 ^ 0x5E) & (2 * ((v134 ^ 0x5E) & (2 * ((v134 ^ 0x5E) & (2 * ((v134 ^ 0x1E) & (2 * v134) & 0x3E ^ v135)) ^ v135)) ^ v135)) ^ v135)) ^ v135))))) << 16);
  v138 = *(v285 + (*(STACK[0x468] + 15) ^ 0x4BLL));
  LOBYTE(v61) = *(v286 + (*(STACK[0x468] + 5) ^ 0xF7));
  LOBYTE(v128) = 19 * v61 + 122;
  v139 = v128 & 0x38 ^ 0xD9;
  LODWORD(v73) = ((((v109 << 16) ^ 0x23BE5B8B) & ((v289 << 8) ^ 0x77FFB69B) & 0x21E36500 | (v289 << 8) & 0x2400) ^ 0xFBFC2DBE ^ ((((v109 << 16) ^ 0x23BE5B8B) & ((v289 << 8) ^ 0x77FFB69B) | (v289 << 8) & 0xA400) ^ 0xDC008014) & ((v75 << 24) ^ 0xEF1C9A9F)) & ((v138 - ((2 * v138) & 0x2E) - 1241402601) ^ 0x49FE4CA8) ^ (v138 - ((2 * v138) & 0x2E) - 1241402601) & 0x220109DE;
  LOBYTE(v61) = 76 * v61 + 96;
  LOBYTE(v92) = v61 & 0xE8 ^ 0x5A;
  LOBYTE(v61) = v128 ^ v61 ^ (2 * (v139 ^ v92 ^ (v61 ^ 0x74) & (2 * ((v61 ^ 0x74) & (2 * ((v61 ^ 0x74) & (2 * ((v61 ^ 0x74) & (2 * ((v61 ^ 0x74) & (2 * v92) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ (v128 ^ 6) & (2 * ((v128 ^ 6) & (2 * ((v128 ^ 6) & (2 * ((v128 ^ 6) & (2 * ((v128 ^ 6) & (2 * ((v128 ^ 6) & 0x3E ^ v139)) ^ v139)) ^ v139)) ^ v139)) ^ v139))));
  v288 = STACK[0x468] + 7;
  v140 = *(v283 + (*STACK[0x468] ^ 0xD6));
  v141 = ((((v61 << 16) ^ 0xFF21C0EA) & ((v132 << 24) ^ 0x12A7C0EA) | (v61 << 16) & 0x580000) ^ 0xEDA16E0) & (v113 ^ 0xAA22158) ^ v113 & 0x55829F5;
  LODWORD(v61) = ((((v140 ^ ~(v140 >> 1)) >> 2 << 6) ^ 0x77) & (((v140 ^ (v140 >> 1)) >> 4) ^ 0xFFFFFFF4) | ((v140 ^ (v140 >> 1)) >> 4) & 8) ^ (((v140 ^ 0xB1) >> 2) | ((v140 ^ 0xFFFFFFB1) << 6));
  LODWORD(v287) = v69 ^ 0x7A786638 ^ (((v61 & 0xC0) << 18) | (v61 << 26));
  v142 = *(&off_1F5033D40 + (v295 ^ 0x6AB)) - 8;
  v143 = v109 ^ 0x2Fu;
  v144 = *(&off_1F5033D40 + (v295 ^ 0x603)) - 12;
  v145 = *&v144[4 * v143] - 18166394;
  v146 = *(&off_1F5033D40 + v295 - 1536) - 4;
  LODWORD(v143) = *&v146[4 * (v112 ^ 0xCE)] - (((v141 ^ 0x6F7BEB82) - 55022584) ^ ((v141 ^ 0x3747DEF0) - 1534830218) ^ ((v141 ^ 0x79FD43BB) - 364985281)) - 884596032;
  LODWORD(v112) = (v143 ^ 0xC63CECCC) & (2 * (v143 & 0xE6BCCE8D)) ^ v143 & 0xE6BCCE8D;
  LODWORD(v61) = ((2 * (v143 ^ 0x33CFCCC)) ^ 0xCB006482) & (v143 ^ 0x33CFCCC) ^ (2 * (v143 ^ 0x33CFCCC)) & 0xE5803240;
  v147 = ((4 * (v61 ^ 0x24801241)) ^ 0x9600C904) & (v61 ^ 0x24801241) ^ (4 * (v61 ^ 0x24801241)) & 0xE5803240;
  LODWORD(v61) = (v61 ^ 0x81002000) & (4 * v112) ^ v112 ^ 0xE5803241 ^ (v147 ^ 0x84000000) & (16 * ((v61 ^ 0x81002000) & (4 * v112) ^ v112));
  v148 = (16 * (v147 ^ 0x61803241)) & 0xE5803240 ^ 0xA5801241 ^ ((16 * (v147 ^ 0x61803241)) ^ 0x58032410) & (v147 ^ 0x61803241);
  LODWORD(v61) = (v61 << 8) & 0xE5803200 ^ v61 ^ ((v61 << 8) ^ 0x80324100) & v148;
  v149 = *(&off_1F5033D40 + (v295 ^ 0x69E)) - 8;
  v150 = *&v142[4 * (BYTE3(v287) ^ 0xB4)] - (((BYTE3(v287) ^ 0x217D03F4) + 1258776743) ^ ((BYTE3(v287) ^ 0x5278EA7A) + 939688233) ^ ((BYTE3(v287) ^ 0x2C6FD36E) + 1175828541)) + 1303248554;
  v151 = *&v149[4 * (BYTE1(v130) ^ 0x2B)] ^ v145 ^ ((v145 ^ 0x816E2846) + 744621518) ^ ((v145 ^ 0x9D9560B1) + 815353147) ^ ((v145 ^ 0x21D7E51D) - 1931753321) ^ ((v145 ^ 0x6FDF7F9E) - 1026338282) ^ v150 ^ ((v150 ^ 0x3F1E4B11) - 662956006) ^ ((v150 ^ 0x51574A5F) - 1238034088) ^ ((v150 ^ 0x92BC15E) - 297168297) ^ ((v150 ^ 0x7FFF6CE7) - 1734524944) ^ v143 ^ (2 * ((v61 << 16) & 0x65800000 ^ v61 ^ ((v61 << 16) ^ 0x32410000) & ((v148 << 8) & 0x65800000 ^ 0x65800000 ^ ((v148 << 8) ^ 0x320000) & v148)));
  v152 = *&v142[4 * (HIBYTE(v141) ^ 0x39)] - (((HIBYTE(v141) ^ 0xCB3E35DB) - 1450782623) ^ ((HIBYTE(v141) ^ 0x2C0CD5CF) + 1320431733) ^ ((HIBYTE(v141) ^ 0xB858DA79) - 622837821)) - 1859693301;
  v153 = (v152 ^ 0x2C2BA2EB) & (2 * (v152 & 0xACAB8ACC)) ^ v152 & 0xACAB8ACC;
  LODWORD(v61) = ((2 * (v152 ^ 0x656AB26B)) ^ 0x9382714E) & (v152 ^ 0x656AB26B) ^ (2 * (v152 ^ 0x656AB26B)) & 0xC9C138A6;
  v154 = v61 ^ 0x484108A1;
  LODWORD(v61) = (v61 ^ 0x81803000) & (4 * v153) ^ v153;
  v155 = ((4 * v154) ^ 0x2704E29C) & v154 ^ (4 * v154) & 0xC9C138A4;
  LODWORD(v61) = (v155 ^ 0x1002080) & (16 * v61) ^ v61;
  v156 = ((16 * (v155 ^ 0xC8C11823)) ^ 0x9C138A70) & (v155 ^ 0xC8C11823) ^ (16 * (v155 ^ 0xC8C11823)) & 0xC9C138A0;
  LODWORD(v61) = v61 ^ 0xC9C138A7 ^ (v156 ^ 0x88010800) & (v61 << 8);
  v157 = (v61 << 16) & 0x49C10000 ^ v61 ^ ((v61 << 16) ^ 0x38A70000) & (((v156 ^ 0x41C03087) << 8) & 0x49C10000 ^ 0x8C10000 ^ (((v156 ^ 0x41C03087) << 8) ^ 0x41380000) & (v156 ^ 0x41C03087));
  LODWORD(v61) = (v62 & 0xF0 ^ 0x7F) & 0xD0 | v62 & 0x2F;
  v158 = *&v146[4 * (v62 ^ 0x3B)] - (((v61 ^ 0x2C587593) - 1747230878) ^ ((v61 ^ 0x4E127E8E) - 175025027) ^ ((v61 ^ 0x438B7DDF) - 133671122)) - 1385051043;
  v159 = (v158 ^ 0xCECA4F92) & (2 * (v158 & 0xECD08FD4)) ^ v158 & 0xECD08FD4;
  LODWORD(v61) = ((2 * (v158 ^ 0x1FCB549A)) ^ 0xE637B69C) & (v158 ^ 0x1FCB549A) ^ (2 * (v158 ^ 0x1FCB549A)) & 0xF31BDB4E;
  LODWORD(v62) = v61 ^ 0x11084942;
  LODWORD(v61) = (v61 ^ 0xE2021200) & (4 * v159) ^ v159;
  v160 = ((4 * v62) ^ 0xCC6F6D38) & v62 ^ (4 * v62) & 0xF31BDB4C;
  LODWORD(v61) = (v160 ^ 0xC00B4900) & (16 * v61) ^ v61;
  v161 = ((16 * (v160 ^ 0x33109246)) ^ 0x31BDB4E0) & (v160 ^ 0x33109246) ^ (16 * (v160 ^ 0x33109246)) & 0xF31BDB40;
  LODWORD(v61) = v61 ^ 0xF31BDB4E ^ (v161 ^ 0x31199000) & (v61 << 8);
  LODWORD(v143) = *&v144[4 * (((v69 ^ 0x7A786638) >> 16) ^ 0xBB)] + 576079045;
  v162 = v143 ^ *&v149[4 * (v289 ^ 0x30)] ^ ((v143 ^ 0x47CCEE67) - 831760340) ^ ((v143 ^ 0x98B8420A) + 286848071) ^ ((v143 ^ 0xD6D01AB1) + 1601219838) ^ ((v143 ^ 0x7FFBFF6F) - 161789660) ^ v158 ^ (2 * ((v61 << 16) & 0x731B0000 ^ v61 ^ ((v61 << 16) ^ 0x5B4E0000) & (((v161 ^ 0xC2024B0E) << 8) & 0x731B0000 ^ (((v161 ^ 0xC2024B0E) << 8) ^ 0x1BDB0000) & (v161 ^ 0xC2024B0E) ^ 0x60000000))) ^ v152 ^ (2 * v157);
  v163 = *&v142[4 * (v124 ^ 0x40)] - (((v124 ^ 0x2ECEE14E) + 1158085692) ^ ((v124 ^ 0xA0738656) - 876897500) ^ ((v124 ^ 0xD1D75D0C) - 1172356998)) - 1709964577;
  v164 = ((2 * (v163 & 0x9A8E2483)) & 0x1000900 | v163 & 0x9A8E2483) ^ (2 * (v163 & 0x9A8E2483)) & (v163 ^ 0x930C39A2);
  LODWORD(v61) = ((2 * (v163 ^ 0x930C39A2)) ^ 0x13043A42) & (v163 ^ 0x930C39A2) ^ (2 * (v163 ^ 0x930C39A2)) & 0x9821D20;
  v165 = v61 ^ 0x8820521;
  LODWORD(v61) = (v61 ^ 0x821121) & (4 * v164) ^ v164;
  v166 = ((4 * v165) ^ 0x26087484) & v165 ^ (4 * v165) & 0x9821D20;
  LODWORD(v61) = (v166 ^ 0x1400) & (16 * v61) ^ v61;
  v167 = ((16 * (v166 ^ 0x9820921)) ^ 0x9821D210) & (v166 ^ 0x9820921) ^ (16 * (v166 ^ 0x9820921)) & 0x9821D20;
  LODWORD(v61) = v61 ^ 0x9821D21 ^ (v167 ^ 0x8001000) & (v61 << 8);
  v168 = (v61 << 16) & 0x9820000 ^ v61 ^ ((v61 << 16) ^ 0x1D210000) & (((v167 ^ 0x1820D21) << 8) & 0x9820000 ^ 0x9820000 ^ (((v167 ^ 0x1820D21) << 8) ^ 0x21D0000) & (v167 ^ 0x1820D21));
  v169 = *&v149[4 * (BYTE1(v69) ^ 0x7E)];
  LODWORD(v69) = *&v144[4 * ((((BYTE2(v141) ^ 0x88F68F9E) + 1976292973) ^ ((BYTE2(v141) ^ 0xA26CF25D) + 1599187888) ^ ((BYTE2(v141) ^ 0x2A9A7D9D) - 676912016)) - ((((v141 >> 15) & 0xF8 ^ 0x600CE7EA) - 1415336228) ^ (((v141 >> 15) & 0xF8 ^ 0x27BA9FDE) - 334113040) ^ (((v141 >> 15) & 0xF8 ^ 0x47B6788C) - 1944505922))) - 3325574812] - 559893995;
  LODWORD(a39) = v73;
  LODWORD(v138) = *&v146[4 * (v138 ^ 0x4B)] - (((v73 ^ 0xE25C3E5F) - 1093425287) ^ ((v73 ^ 0xEA823115) - 1240618957) ^ ((v73 ^ 0x291F799F) + 1972428985)) - 1309933753;
  v170 = (v138 ^ 0x8A70FA2F) & (2 * (v138 & 0xCB62F0AC)) ^ v138 & 0xCB62F0AC;
  LODWORD(v61) = ((2 * (v138 ^ 0x8A355B3F)) ^ 0x82AF5726) & (v138 ^ 0x8A355B3F) ^ (2 * (v138 ^ 0x8A355B3F)) & 0x4157AB92;
  LODWORD(v143) = v61 ^ 0x4150A891;
  LODWORD(v61) = (v61 ^ 0x70300) & (4 * v170) ^ v170;
  v171 = ((4 * v143) ^ 0x55EAE4C) & v143 ^ (4 * v143) & 0x4157AB90;
  LODWORD(v61) = (v171 ^ 0x156AA00) & (16 * v61) ^ v61;
  v172 = ((16 * (v171 ^ 0x40010193)) ^ 0x157AB930) & (v171 ^ 0x40010193) ^ (16 * (v171 ^ 0x40010193)) & 0x4157AB90;
  LODWORD(v61) = v61 ^ 0x4157AB93 ^ (v172 ^ 0x152A900) & (v61 << 8);
  v173 = v69 ^ v169 ^ v163 ^ ((v69 ^ 0x718A4B18) - 1126431771) ^ ((v69 ^ 0x246CBDC) - 821001439) ^ ((v69 ^ 0x278AC818) - 354647835) ^ ((v69 ^ 0x66EFFFDF) - 1413892316) ^ (2 * v168) ^ v138 ^ (2 * ((v61 << 16) & 0x41570000 ^ v61 ^ ((v61 << 16) ^ 0x2B930000) & (((v172 ^ 0x40050283) << 8) & 0x41570000 ^ 0x540000 ^ (((v172 ^ 0x40050283) << 8) ^ 0x57AB0000) & (v172 ^ 0x40050283))));
  LODWORD(a41) = v137;
  LODWORD(v138) = *&v142[4 * (BYTE3(v73) ^ 0x6F)] + (((BYTE3(v73) ^ 0x4468B787) - 2080581686) ^ ((BYTE3(v73) ^ 0xD46B55CF) + 335492482) ^ ((BYTE3(v73) ^ 0xCF69D873) + 150845502)) - ((((2 * BYTE3(v73)) ^ 0xE0693D82) - 1932572990) ^ (((2 * BYTE3(v73)) ^ 0xB63E94E7) - 627511387) ^ (((2 * BYTE3(v73)) ^ 0xE883DD13) - 2077907375)) + 1779494530;
  v174 = v138 & 0xCF62C63E ^ 0x5F8ED1B8 ^ (v138 ^ 0x8E6897BE) & (2 * (v138 & 0xCF62C63E));
  v175 = ((2 * (v138 ^ 0x90EC1786)) ^ 0xBF1DA370) & (v138 ^ 0x90EC1786) ^ (2 * (v138 ^ 0x90EC1786)) & 0x5F8ED1B8;
  v176 = v175 & 0xAB648404 ^ v174 ^ ((4 * v174) ^ 0xD55FC2E4) & (v175 ^ 0x1F0C8130);
  v177 = ((4 * v175) ^ 0xD75680C4) & (v175 ^ 0x1F0C8130) ^ v175 & 0xAB648404;
  v178 = v177 & 0xAB648404 ^ v176 ^ ((16 * v176) ^ 0xE3C19F84) & (v177 ^ 0xB048008);
  v179 = ((16 * v177) ^ 0x1B2C8404) & (v177 ^ 0xB048008) ^ v177 & 0xAB648404;
  LODWORD(v69) = v178 ^ v179 & 0xAB648404 ^ ((v178 << 8) ^ 0x25B53C04) & (v179 ^ 0xB0480B8);
  v180 = ((v179 << 8) ^ 0xAFE48404) & (v179 ^ 0xB0480B8) ^ v179 & 0xAB648404;
  v181 = *&v144[4 * (BYTE2(v137) ^ 0x1C)] + 578220994;
  v182 = (v181 ^ 0x815C7711) & (2 * (v181 & 0x89800750)) ^ v181 & 0x89800750;
  LODWORD(v61) = ((2 * (v181 ^ 0x805C7D11)) ^ 0x13B8F482) & (v181 ^ 0x805C7D11) ^ (2 * (v181 ^ 0x805C7D11)) & 0x9DC7A40;
  LODWORD(v143) = v61 ^ 0x8440A41;
  LODWORD(v61) = (v61 ^ 0x3000) & (4 * v182) ^ v182;
  v183 = ((4 * v143) ^ 0x2771E904) & v143 ^ (4 * v143) & 0x9DC7A40;
  LODWORD(v61) = (v183 ^ 0x1506800) & (16 * v61) ^ v61;
  v184 = ((16 * (v183 ^ 0x88C1241)) ^ 0x9DC7A410) & (v183 ^ 0x88C1241) ^ (16 * (v183 ^ 0x88C1241)) & 0x9DC7A40;
  LODWORD(v61) = v61 ^ 0x9DC7A41 ^ (v184 ^ 0x9C42000) & (v61 << 8);
  HIDWORD(v287) = v141;
  LODWORD(v61) = (v61 << 16) & 0x9DC0000 ^ v61 ^ ((v61 << 16) ^ 0x7A410000) & (((v184 ^ 0x185A41) << 8) & 0x9DC0000 ^ 0x1840000 ^ (((v184 ^ 0x185A41) << 8) ^ 0xDC7A0000) & (v184 ^ 0x185A41)) ^ v69 ^ v180 & 0x2B648404 ^ ((v69 << 16) ^ 0xFADC8405) & (v180 ^ 0x548A0000) ^ ((v69 << 16) ^ 0xFADC8405) & 0x5F8E8000;
  LODWORD(v69) = *&v146[4 * ((v290 >> 12) ^ 0xDLL)] - (v136 ^ 0x21C17698);
  LODWORD(v61) = v181 ^ *&v149[4 * (BYTE1(v141) ^ 0x9F)] ^ (v69 - ((2 * v69) & 0x3137A21C) - 1734618866) ^ v138 ^ (2 * v61);
  LOWORD(v62) = v61 ^ 0x4792;
  BYTE2(v69) = BYTE2(v162) ^ 0x82;
  v185 = *&v144[4 * (((v61 ^ 0x625C4792) >> 16) ^ 0xC5)];
  LODWORD(v61) = v61 ^ 0x9CE57E02;
  LODWORD(v138) = ((__ROR4__(__ROR4__(v185, 7) ^ 0x620ACBDA, 25) ^ 0xAE931623) + ((2 * v185) & 0x57EDF624)) ^ *&v149[4 * (BYTE1(v173) ^ 0xF7)] ^ (*&v142[4 * (((v151 ^ 0x334434C6u) >> 24) ^ 0x8A)] - (((v151 ^ 0x334434C6u) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v162 ^ 0x11)] - (v162 ^ 0x21C176B8));
  v186 = *&v149[4 * (BYTE1(v62) ^ 0x6E)] ^ (*&v144[4 * ((v151 ^ 0x334434C6u) >> 16)] - 1409877230) ^ (*&v142[4 * (((v162 ^ 0xD68211C1) >> 24) ^ 0x8A)] - (((v162 ^ 0xD68211C1) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v173 ^ 0xB2)] - (v173 ^ 0x21C1761B));
  v187 = *&v149[4 * ((v151 ^ 0x34C6) >> 8)] ^ (*&v144[4 * ((BYTE2(v69) - (BYTE2(v69) ^ 0x7C)) ^ 0xFFFFFFF8) + 4 * BYTE2(v69)] - 1409877230) ^ (*&v142[4 * (((v173 ^ 0xCE17A062) >> 24) ^ 0x8A)] - (((v173 ^ 0xCE17A062) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v62 ^ 0x40)] - (v61 ^ 0x21C17679));
  LODWORD(v69) = *&v149[4 * ((v162 ^ 0x11C1) >> 8)] ^ (*&v146[4 * (v151 ^ 0x16)] - (v151 ^ 0x21C176BF)) ^ (*&v144[4 * (BYTE2(v173) ^ 0x6B)] - 1409877230) ^ (*&v142[4 * (BYTE3(v61) ^ 0x8A)] - (BYTE3(v61) ^ 0x5F6A3ADE));
  v188 = *&v149[4 * (BYTE1(v187) ^ 0xBB)];
  v189 = v188 & 0xFFFFFFBF ^ (*&v144[4 * (BYTE2(v69) ^ 0x2C)] - 1409877230) ^ (v188 & 0x40 | 0x94F5230B) ^ (*&v146[4 * (v186 ^ 0xE0)] - (v186 ^ 0x21C17649)) ^ (*&v142[4 * (((v138 ^ 0xC29E1175) >> 24) ^ 0x8A)] - (((v138 ^ 0xC29E1175) >> 24) ^ 0x5F6A3ADE));
  v190 = *&v149[4 * (BYTE1(v69) ^ 0x4F)] ^ (*&v142[4 * (((v186 ^ 0xF7D9A230) >> 24) ^ 0x8A)] - (((v186 ^ 0xF7D9A230) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v187 ^ 0x80)] - (v187 ^ 0x21C17629)) ^ (*&v144[4 * (BYTE2(v138) ^ 0xE2)] - 1409877230);
  v191 = *&v149[4 * (BYTE1(v138) ^ 0x46)] ^ (*&v144[4 * (((v186 ^ 0xF7D9A230) >> 16) - (((v186 ^ 0xF7D9A230) >> 15) & 0xF8)) + 496] - 1409877230) ^ (*&v142[4 * (((v187 ^ 0xCFECEC50) >> 24) ^ 0x8A)] - (((v187 ^ 0xCFECEC50) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v69 ^ 0xA8)] - (v69 ^ 0x21C17601));
  LODWORD(v69) = *&v149[4 * ((v186 ^ 0xA230) >> 8)] ^ (*&v144[4 * (((v187 ^ 0xCFECEC50) >> 16) ^ 0x7C)] - 1409877230) ^ (*&v142[4 * (((v69 ^ 0x13501878) >> 24) ^ 0x8A)] - (((v69 ^ 0x13501878) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v138 ^ 0xA5)] - (v138 ^ 0x21C1760C));
  v192 = v190 ^ 0xF40D6B87;
  LODWORD(v62) = (v190 ^ 0xF40D6B87) >> 8;
  v193 = (v191 ^ 0xF97FC1A2) >> 24;
  LODWORD(v61) = (v190 ^ 0xF40D6B87) >> 24;
  LODWORD(v138) = *&v146[4 * (v190 ^ 0x57)] - (v190 ^ 0x21C176FE);
  v194 = (v69 ^ 0x1DF67BEA) >> 24;
  v195 = *&v149[4 * ((v191 ^ 0xC1A2) >> 8)] ^ (*&v144[4 * ((v69 ^ 0x1DF67BEA) >> 16)] - 1409877230) ^ v138 ^ (*&v142[4 * (((v189 ^ 0xFB60CFE9) >> 24) ^ 0x8A)] - (((v189 ^ 0xFB60CFE9) >> 24) ^ 0x5F6A3ADE));
  v196 = v193 ^ 0x8A;
  v197 = v193 ^ 0x5F6A3ADE;
  LODWORD(v199) = __ROR4__(*&v149[4 * (BYTE1(v69) ^ 0x2C)] ^ 0x94F5230B ^ (*&v142[4 * (v61 ^ 0x8A)] - (v61 ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v191 ^ 0x72)] - (v191 ^ 0x21C176DB)) ^ (*&v144[4 * ((((v189 ^ 0xFB60CFE9) >> 16) - (((v189 ^ 0xFB60CFE9) >> 16) ^ 0x7C)) ^ 0xFFFFFFF8) + 4 * ((v189 ^ 0xFB60CFE9) >> 16)] - 1409877230), 24) ^ 0xF7A7AFD3;
  HIDWORD(v199) = v199;
  v198 = v199 >> 8;
  v200 = *&v149[4 * ((v189 ^ 0xCFE9) >> 8)] ^ (*&v144[4 * BYTE2(v192)] - 1409877230) ^ (*&v146[4 * (v69 ^ 0x3A)] - (v69 ^ 0x21C17693)) ^ (*&v142[4 * v196] - v197);
  v201 = v195 ^ 0xFBC8137;
  v202 = *&v149[4 * ((v62 - 1853103297 - ((v192 >> 7) & 0x7E)) ^ 0x918BE368)] ^ (*&v144[4 * ((v191 ^ 0xF97FC1A2) >> 16)] - 1409877230) ^ (*&v146[4 * (v189 ^ 0x39)] - (v189 ^ 0x21C17690)) ^ (*&v142[4 * (v194 ^ 0x8A)] - ((1600797406 - (v194 & 2)) ^ v194 & 0xFFFFFFFD));
  v203 = (v202 ^ 0x25BF358A) >> 24;
  v204 = ((v195 ^ 0xFBC8137u) >> 16) & 0xC0;
  v205 = *&v149[4 * (BYTE1(v200) ^ 0x25)] ^ (*&v142[4 * (HIBYTE(v201) ^ 0x8A)] - (HIBYTE(v201) ^ 0x5F6A3ADE)) ^ (*&v144[4 * (((v202 ^ 0x25BF358A) >> 16) ^ 0x7C)] - 1409877230) ^ (*&v146[4 * (BYTE1(v199) ^ 0xD3)] - (BYTE1(v199) ^ 0x21C1767A));
  if (((v195 ^ 0xFBC8137) & 0x3F0000) != 0)
  {
    v204 = (v195 ^ 0xFBC8137u) >> 16;
  }

  v206 = *&v149[4 * (BYTE1(v202) ^ 0x35)] ^ (*&v146[4 * (v200 ^ 0x37)] - (v200 ^ 0x21C1769E)) ^ (*&v144[4 * (v204 ^ 0x7C)] - 1409877230) ^ (*&v142[4 * (((v198 ^ 0x1DD0DB03u) >> 24) ^ 0x8A)] - (((v198 ^ 0x1DD0DB03u) >> 24) ^ 0x5F6A3ADE));
  v207 = *&v149[4 * BYTE1(v201)] ^ (*&v142[4 * (((v200 ^ 0xCC4472E7) >> 24) ^ 0x8A)] - (((v200 ^ 0xCC4472E7) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v202 ^ 0x5A)] - (v202 ^ 0x21C176F3)) ^ (*&v144[4 * (BYTE2(v198) ^ 0xAC)] - 1409877230);
  v208 = *&v149[4 * (BYTE1(v198) ^ 0x8C)] ^ (*&v144[4 * (BYTE2(v200) ^ 0x38)] - 1409877230) ^ (*&v146[4 * (v195 ^ 0xE7)] - (v195 ^ 0x21C1764E)) ^ (*&v142[4 * (v203 ^ 0x8A)] - (v203 ^ 0x5F6A3ADE));
  v209 = v206 ^ 0x94240652;
  v210 = (v208 ^ 0x28B1C8AFu) >> 24;
  v211 = *&v149[4 * ((v207 ^ 0xF582) >> 8)] ^ (*&v144[4 * ((v208 ^ 0x28B1C8AFu) >> 16)] - 1409877230) ^ (*&v142[4 * (((v205 ^ 0x3AB33250u) >> 24) ^ 0x8A)] - (((v205 ^ 0x3AB33250u) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v206 ^ 0x82)] - (v206 ^ 0x21C1762B));
  v212 = *&v149[4 * ((v208 ^ 0xC8AF) >> 8)] ^ (*&v144[4 * (BYTE2(v205) ^ 0xCF)] - 1409877230) ^ (*&v146[4 * (v207 ^ 0x52)] - (v207 ^ 0x21C176FB)) ^ (*&v142[4 * (((v206 ^ 0x94240652) >> 24) ^ 0x8A)] - (((v206 ^ 0x94240652) >> 24) ^ 0x5F6A3ADE));
  v213 = *&v149[4 * ((v205 ^ 0x3250) >> 8)] ^ (*&v146[4 * (v208 ^ 0x7F)] - (v208 ^ 0x21C176D6)) ^ (*&v144[4 * BYTE2(v209)] - 1409877230) ^ (*&v142[4 * (((v207 ^ 0x57A0F582) >> 24) ^ 0x8A)] - (((v207 ^ 0x57A0F582) >> 24) ^ 0x5F6A3ADE));
  v214 = *&v149[4 * (BYTE1(v209) ^ 0x57)] ^ (*&v144[4 * (BYTE2(v207) ^ 0xDC)] - 1409877230) ^ (*&v142[4 * (v210 ^ 0x8A)] - (v210 ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v205 ^ 0x80)] - (v205 ^ 0x21C17629));
  v215 = BYTE2(v213) ^ 0xB2;
  v216 = (v213 ^ 0x2B27C12) >> 24;
  v217 = (v214 ^ 0xBE27B2EF) >> 24;
  v218 = *&v149[4 * ((v213 ^ 0x7C12) >> 8)] ^ (*&v144[4 * ((v214 ^ 0xBE27B2EF) >> 16)] - 1409877230) ^ (*&v146[4 * (v212 ^ 0x10)] - (v212 ^ 0x21C176B9)) ^ (*&v142[4 * (((v211 ^ 0xDBAE4527) >> 24) ^ 0x8A)] - (((v211 ^ 0xDBAE4527) >> 24) ^ 0x5F6A3ADE));
  v219 = *&v149[4 * (BYTE1(v214) ^ 0xE5)] ^ (*&v144[4 * (BYTE2(v211) ^ 0xD2)] - 1409877230) ^ (*&v146[4 * (v213 ^ 0xC2)] - (v213 ^ 0x21C1766B)) ^ (*&v142[4 * (((v212 ^ 0x6FA1BBC0) >> 24) ^ 0x8A)] - (((v212 ^ 0x6FA1BBC0) >> 24) ^ 0x5F6A3ADE));
  v220 = *&v149[4 * ((v211 ^ 0x4527) >> 8)] ^ (*&v144[4 * ((v212 ^ 0x6FA1BBC0) >> 16)] - 1409877230) ^ (*&v142[4 * (v216 ^ 0x8A)] - (v216 ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v214 ^ 0x3F)] - (v214 ^ 0x21C17696));
  v221 = (*&v144[4 * v215] - 1409877230) ^ *&v149[4 * (BYTE1(v212) ^ 0xBB)] ^ (*&v142[4 * (v217 ^ 0x8A)] - (v217 ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v211 ^ 0xF7)] - (v211 ^ 0x21C1765E));
  v222 = *&v149[4 * (BYTE1(v220) ^ 0x1F)] ^ (*&v144[4 * ((v221 ^ 0x7DDF413Fu) >> 16)] - 1409877230) ^ (*&v142[4 * (((v218 ^ 0x179F0454) >> 24) ^ 0x8A)] - (((v218 ^ 0x179F0454) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v219 ^ 0xF5)] - (v219 ^ 0x21C1765C));
  v223 = (*&v144[4 * ((v218 ^ 0x179F0454) >> 16)] - 1409877230) ^ *&v149[4 * ((v221 ^ 0x413F) >> 8)] ^ (*&v142[4 * (((v219 ^ 0x75457125) >> 24) ^ 0x8A)] - (((v219 ^ 0x75457125) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v220 ^ 0xC0)] - (v220 ^ 0x21C17669));
  v224 = *&v149[4 * (BYTE1(v218) ^ 0x53)];
  v225 = v224 ^ -v224 ^ (-1795874037 - (__ROR4__(__ROR4__(v224, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v226 = BYTE2(v220) ^ 0x59;
  v227 = (*&v144[4 * (BYTE2(v219) ^ 0x39)] - 1409877230) ^ (*&v146[4 * (v221 ^ 0xEF)] - (v221 ^ 0x21C17646)) ^ (*&v142[4 * (((v220 ^ 0xAC254810) >> 24) ^ 0x8A)] - (((v220 ^ 0xAC254810) >> 24) ^ 0x5F6A3ADE)) ^ (((2 * v225) & 0x29EA4616) + (v225 ^ 0x94F5230B));
  v228 = (*&v144[4 * v226] - 1409877230) ^ *&v149[4 * (BYTE1(v219) ^ 0x26)] ^ (*&v142[4 * (((v221 ^ 0x7DDF413Fu) >> 24) ^ 0x8A)] - (((v221 ^ 0x7DDF413Fu) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (v218 ^ 0x84)] - (v218 ^ 0x21C1762D));
  v229 = v227 ^ 0x8CA395FC;
  v230 = v223 ^ 0xA3ECFAB3;
  v231 = v228 ^ 0x10CC86ED;
  if (((v227 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v232 = -16;
  }

  else
  {
    v232 = 16;
  }

  v233 = *&v146[4 * (v223 ^ 0x63)] - (v223 ^ 0x21C176CA);
  v234 = (*&v144[4 * BYTE2(v231)] - 1409877230) ^ (*&v142[4 * (((v222 ^ 0x8EBD9B97) >> 24) ^ 0x8A)] - (((v222 ^ 0x8EBD9B97) >> 24) ^ 0x5F6A3ADE)) ^ 0x94F5230B ^ *&v149[4 * (BYTE1(v227) ^ 0xC2)];
  v235 = (v234 ^ -v234 ^ (v233 - (v234 ^ v233))) + v233;
  v236 = HIBYTE(v229);
  v237 = (*&v144[4 * (BYTE2(v222) ^ 0xC1)] - 1409877230) ^ *&v149[4 * BYTE1(v231)] ^ (*&v142[4 * (HIBYTE(v230) ^ 0x8A)] - (HIBYTE(v230) ^ 0x5F6A3ADE)) ^ (*&v146[4 * ((v232 + v229) ^ 0xC0)] - ((v232 + v229) ^ 0x21C17669));
  v238 = *&v142[4 * (v236 ^ 0x8A)] - (v236 ^ 0x5F6A3ADE);
  v239 = *&v146[4 * (v228 ^ 0x3D)] - (v228 ^ 0x21C17694);
  v240 = HIBYTE(v231);
  v241 = (*&v144[4 * BYTE2(v230)] - 1409877230) ^ *&v149[4 * (BYTE1(v222) ^ 0x9B)] ^ v239;
  v242 = *&v142[4 * (HIBYTE(v231) ^ 0x8A)];
  v243 = v241 ^ v238;
  v244 = (*&v144[4 * (BYTE2(v227) ^ 0xDF)] - 1409877230) ^ (v242 - (v240 ^ 0x5F6A3ADE)) ^ *&v149[4 * (BYTE1(v223) ^ 0xAD)] ^ (*&v146[4 * (v222 ^ 0x47)] - (v222 ^ 0x21C176EE));
  v245 = *(&off_1F5033D40 + (v295 ^ 0x682)) - 4;
  v246 = *(&off_1F5033D40 + v295 - 1493) - 12;
  v247 = *&v246[4 * ((v244 ^ 0x66EB169Au) >> 16)] ^ 0x4D522762;
  v248 = (v247 >> (v197 & 3) >> (v197 & 3 ^ 3)) ^ v247;
  v249 = *(&off_1F5033D40 + (v295 ^ 0x604));
  v250 = *(&off_1F5033D40 + (v295 ^ 0x66D)) - 8;
  v251 = ((v237 ^ 0xA4) - 1352815326) ^ *(v249 + 4 * (BYTE1(v243) ^ 0x57u)) ^ *&v245[4 * (HIBYTE(v235) ^ 0xBE)] ^ *&v250[4 * (v237 ^ 0x91)] ^ (v248 >> 2);
  v252 = *&v246[4 * (BYTE2(v235) ^ 0xBF)] ^ 0x4D522762;
  v253 = *&v245[4 * (HIBYTE(v237) ^ 0x43)] ^ ((v243 ^ 0xC4) - 1352815326) ^ *(v249 + 4 * (BYTE1(v244) ^ 0x7Cu)) ^ v252 ^ *&v250[4 * (v243 ^ 0xF1)] ^ (v252 >> 2) ^ (v252 >> 5);
  v254 = *&v245[4 * (BYTE3(v243) ^ 0xD5)];
  v255 = *&v245[4 * ((v244 ^ 0x66EB169Au) >> 24)];
  LODWORD(v245) = *&v246[4 * (BYTE2(v237) ^ 0x20)];
  v256 = *(v249 + 4 * (BYTE1(v237) ^ 0x2Du));
  v257 = v254 ^ ((v244 ^ 0x9A) - 1352815326) ^ *&v250[4 * (v244 ^ 0xAF)] ^ *(v249 + 4 * ((v235 ^ 0x84FF) >> 8));
  v258 = v247 ^ a44 ^ (v251 - ((2 * v251) & 0x8E629B10) - 953070200);
  v259 = *&v246[4 * ((v243 ^ 0x6CCB3DC4) >> 16)] ^ 0x4D522762;
  v260 = v257 ^ ((v245 ^ 0x4D522762) >> 2) ^ ((v245 ^ 0x4D522762) >> 5);
  v261 = v255 ^ (~v235 - 1352815326) ^ v259 ^ v256 ^ (v259 >> 2) ^ (v259 >> 5) ^ *&v250[4 * (v235 ^ 0xCA)];
  v262 = (v253 - ((2 * v253) & 0x9144417A) + 1218584765) ^ v292;
  v263 = v245 ^ 0x4D522762 ^ v291 ^ (v260 - ((2 * v260) & 0x9ABBE42E) + 1298002455);
  HIDWORD(v265) = ((v261 ^ 0x23A4540) - ((2 * (v261 ^ 0x23A4540)) & 0xA35A92) + 13741385) ^ v293;
  LODWORD(v265) = ((v261 ^ 0x23A4540) - 2 * ((v261 ^ 0x23A4540) & 0x13D1AD5D ^ v261 & 0x14) - 1814975159) ^ v293;
  v264 = v265 >> 24;
  v266 = *(&off_1F5033D40 + (v295 ^ 0x6DC)) - 12;
  *(STACK[0x470] + 8) = (-97 * v266[BYTE3(v263) ^ 0x4CLL]) ^ ((-97 * v266[BYTE3(v263) ^ 0x4CLL]) >> 5) ^ ((-97 * v266[BYTE3(v263) ^ 0x4CLL]) >> 1) ^ 0xD4;
  *(v294 - 3) = (-97 * v266[HIBYTE(v262) ^ 0x61]) ^ ((-97 * v266[HIBYTE(v262) ^ 0x61]) >> 5) ^ ((-97 * v266[HIBYTE(v262) ^ 0x61]) >> 1) ^ 0xD8;
  v267 = *(&off_1F5033D40 + (v295 ^ 0x66C)) - 12;
  v294[3] = ((((((v263 ^ 0xD2C1) >> 8) ^ 0xDA) + 99) ^ ((v263 ^ 0xD2C1) >> 8) ^ 0xDA) + v267[((v263 ^ 0xD2C1) >> 8) ^ 0x6CLL]) ^ 0xB3;
  v268 = *(&off_1F5033D40 + v295 - 1715);
  LOBYTE(v261) = *(v268 + (((((v263 ^ 0xA619D2C1) >> 16) ^ -((v263 ^ 0xA619D2C1) >> 16) ^ (510 - ((v263 ^ 0xA619D2C1) >> 16) - ((2 * ((v263 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL)) ^ 0xD9;
  v269 = ((((v263 ^ 0xA619D2C1) >> 16) ^ -((v263 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v263 ^ 0xA619D2C1) >> 16) - ((2 * ((v263 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v270 = v269 & 8 ^ v261;
  v271 = (v269 & 8 & v261) == 0;
  v272 = v261 - (v269 & 8);
  if (v271)
  {
    v272 = v270;
  }

  v294[2] = v272 ^ v269 & 0xF7;
  HIDWORD(v274) = v264 ^ 0x8829CA87;
  LODWORD(v274) = v264 ^ 0x8829CA87;
  v273 = v274 >> 8;
  *(v281 + a43) = (v267[BYTE1(v262) ^ 0x94] + (((BYTE1(v262) ^ 0x22) + 99) ^ BYTE1(v262) ^ 0x22)) ^ 0xA8;
  *(v294 - 2) = BYTE2(v262) ^ 0x9E ^ *(v268 + (BYTE2(v262) ^ 0xD5));
  v275 = *(&off_1F5033D40 + (v295 ^ 0x6B0));
  v276 = *(v275 + (v258 ^ 0xE7)) - 24;
  *(v294 - 4) = v276 ^ 0x5D ^ (v276 >> 1) & 0x1E;
  v294[5] = (-97 * v266[HIBYTE(v273) ^ 0x60]) ^ ((-97 * v266[HIBYTE(v273) ^ 0x60]) >> 5) ^ ((-97 * v266[HIBYTE(v273) ^ 0x60]) >> 1) ^ 0xFE;
  v277 = *(v275 + ((180 - (v263 ^ 0x56) + (v263 ^ 0xE2) - 2 * ((180 - (v263 ^ 0x56)) & (v263 ^ 0xE2))) ^ -(v263 ^ 0xE2)) + 180) - 24;
  v294[4] = v277 ^ 0x62 ^ (v277 >> 1) & 0x1E;
  v294[7] = (v267[((v274 >> 8) >> 8) ^ 0x4FLL] + (((((v274 >> 8) >> 8) ^ 0xF9) + 99) ^ ((v274 >> 8) >> 8) ^ 0xF9)) ^ 0xBE;
  *(v294 - 5) = (v267[BYTE1(v258) ^ 0x1FLL] + (((BYTE1(v258) ^ 0xA9) + 99) ^ BYTE1(v258) ^ 0xA9)) ^ 0x84;
  v278 = *(v275 + (v262 ^ 0xDDLL));
  *v294 = (((v278 + ((v278 - 24) ^ 0xAE) - 23) ^ 0xFE) + v278 - 24) ^ ((v278 - 24) >> 1) & 0x1E;
  *(v294 - 7) = (-97 * v266[HIBYTE(v258) ^ 0x67]) ^ ((-97 * v266[HIBYTE(v258) ^ 0x67]) >> 5) ^ ((-97 * v266[HIBYTE(v258) ^ 0x67]) >> 1) ^ 0xE1;
  v294[6] = BYTE2(v273) ^ 0x8E ^ *(v268 + (BYTE2(v273) ^ 0x55));
  *(v294 - 6) = BYTE2(v258) ^ 0xD3 ^ *(v268 + (BYTE2(v258) ^ 0x7DLL));
  v279 = *(v275 + (BYTE1(v274) ^ 0xF7)) - 24;
  v294[8] = v279 ^ ((v279 & (v279 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  return (*(a55 + 8 * v295))(v268, v263, a55, 190, v267, v246, v243, v295, a2, a3, a4, a5, a6, a7, a8, v281, v282, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v283, a22, a23, a24, a25, a26, a27, a28, a29, v284, a31, a32, v285, a34, a35, v286, a37, v287, a39, v288, a41, v290, a43, a44);
}

uint64_t sub_1D48DD364(int *a1)
{
  v2 = a1[1] ^ (1037613739 * ((1893040290 - (a1 | 0x70D580A2) + (a1 | 0x8F2A7F5D)) ^ 0x5E285222));
  result = (*(*(&off_1F5033D40 + (v2 ^ 0x86F54BAB)) + (v2 ^ 0x86F5453A)))(*(&off_1F5033D40 + (v2 ^ 0x86F54BDD)) - 4, sub_1D4912C0C);
  v4 = **(&off_1F5033D40 + (v2 + 2030744900));
  if (result)
  {
    v4 = 671412329;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D48DD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *a10 = a1;
  v22 = (*(v21 + 8 * (v19 + 1382)))(a17 ^ v20);
  return (*(v21 + 8 * ((172 * ((((v19 - 21) ^ (5 * (v19 ^ 0x93) + 1)) ^ ((a17 ^ v20) + v17 - (v18 & (2 * (a17 ^ v20))) == v17)) & 1)) ^ v19)))(v22);
}

uint64_t sub_1D48DD50C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = v5 + 8;
  *(v8 + (a3 ^ v10) + v4) = *(v6 + (a3 ^ v10) + v4);
  return (*(v9 + 8 * (((a2 == v10) * a4) ^ v7)))();
}

uint64_t sub_1D48DD514()
{
  v4 = (&STACK[0x27C] + v2 + 8);
  *(v4 - 1) = 0x8282828282828282;
  *v4 = 0x8282828282828282;
  return (*(v3 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v1 - 2564) | 0x12) ^ 0x88)) ^ v1)))();
}

void sub_1D48DD568(uint64_t a1)
{
  v1 = 210068311 * (a1 ^ 0x576F9AD7);
  if (*(a1 + 24))
  {
    v2 = (*(a1 + 8) ^ v1) == 1442767301;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

void sub_1D48DD710(uint64_t a1)
{
  v1 = 143681137 * ((a1 & 0xE3E418E | ~(a1 | 0xE3E418E)) ^ 0x17691261);
  __asm { BRAA            X14, X17 }
}

void h5eRUOOOhxuaBmELCqQZZEcx()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E21A8) ^ 0x82)) ^ byte_1D4B46C70[byte_1D4B43C80[(-35 * ((qword_1EC7E2160 + dword_1EC7E21A8) ^ 0x82))] ^ 0x6C]) - 106);
  v1 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - *v0) ^ 0x82)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * ((qword_1EC7E2160 - *v0) ^ 0x82))] ^ 0x60]) + 34);
  v2 = *v0 ^ &v4 ^ *v1;
  *v0 = 1228258013 * v2 - 0xC891BCBEBCEAD82;
  *v1 = 1228258013 * (v2 ^ 0xC891BCBEBCEAD82);
  v5[1] = (1037613739 * ((-1595145326 - (v5 | 0xA0EC0392) + (v5 | 0x5F13FC6D)) ^ 0x8E11D112)) ^ 0x86F54BA0;
  LOBYTE(v1) = -35 * ((*v1 + *v0) ^ 0x82);
  v3 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E21A8) ^ 0x82)) ^ byte_1D4B46C70[byte_1D4B43C80[(-35 * ((qword_1EC7E2160 + dword_1EC7E21A8) ^ 0x82))] ^ 0x6C]) - 173);
  (*(v3 + 8 * ((*(off_1F5034330 + (*(off_1F5034390 + v1 - 4) ^ 0xC4u)) ^ v1) + 3600)))(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48DDA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, _BYTE *a15, char a16, __int16 a17, char a18, _BYTE *a19, char *a20, char *a21, _BYTE *a22, char *a23)
{
  LODWORD(a21) = v23 + 1037613739 * ((-755646058 - (&a19 | 0xD2F5C196) + (&a19 | 0x2D0A3E69)) ^ 0xFC081316) + 2525;
  a20 = &a14;
  a22 = a15;
  a23 = &a18;
  (*(v24 + 8 * (v23 ^ 0xDEB)))(&a19);
  a21 = &a16;
  a19 = a15;
  LODWORD(a22) = (v23 + 1101) ^ (843532609 * ((((2 * &a19) | 0x5CEB0F78) - &a19 - 779454396) ^ 0x7238D339));
  (*(v24 + 8 * (v23 + 2766)))(&a19);
  a20 = a15;
  LODWORD(a19) = (v23 + 848) ^ (1504884919 * ((2 * (&a19 & 0x6039EC08) - &a19 - 1614408714) ^ 0x6405A4ED));
  v25 = (*(v24 + 8 * (v23 + 2774)))(&a19);
  return (*(v24 + 8 * (((HIDWORD(a19) == 671454635) * ((v23 + 391565639) & 0xE8A92FBF ^ 0xE16)) ^ v23)))(v25);
}

uint64_t sub_1D48DDBF0()
{
  v3 = v0 ^ 0xAA73936;
  v8 = v1 - 143681137 * ((((&v8 | 0xA47EAB16) ^ 0xFFFFFFFE) - (~&v8 | 0x5B8154E9)) ^ 0xBD29F8F9) + v3 + 237;
  v9 = v6;
  (*(v2 + 8 * (v3 ^ 0xAA731AA)))(&v8);
  v8 = v1 - 143681137 * ((((2 * &v8) | 0xDAD05344) - &v8 + 311940702) ^ 0xBC085B2) + v3 + 237;
  v9 = v7;
  (*(v2 + 8 * (v1 + v3 + 1689)))(&v8);
  return (v3 ^ v5 ^ 0x61C28035) + ((2 * v5) & 0xD6CB7FFE) - 1130375764 - 671454635;
}

uint64_t sub_1D48DDD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = (a10 + 1617974259) & 0x9F8FA774;
  v15 = a11 + (v14 ^ v12);
  v16 = v13 + v15 + (((v14 - 1904) | 0x244) ^ 0xD55AD18A) + 383153626;
  if (v15 > 0xBA70E7FA != v16 < 0x458F1805)
  {
    v17 = v15 > 0xBA70E7FA;
  }

  else
  {
    v17 = v15 + 1167005701 > v16;
  }

  return (*(v11 + 8 * (((((a10 - 13) & 0x74) + 1) ^ v17) & 1 ^ (a10 + 1617974259) & 0x9F8FA774)))();
}

uint64_t sub_1D48DDE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, char *a20, int a21)
{
  a19 = (50899313 * (((&a19 | 0xD73B3426) - &a19 + (&a19 & 0x28C4CBD8)) ^ 0xFDF01E5C)) ^ 0x72E;
  a20 = &a15;
  v22 = (*(v21 + 29464))(&a19);
  return (*(v21 + 8 * ((829 * (a21 == 671454635)) ^ 0x192)))(v22);
}

uint64_t sub_1D48DDF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q6>)
{
  v6 = (a1 + v4);
  *v6 = a3;
  v6[1] = a3;
  return (*(v5 + 8 * ((468 * (695 * (v3 ^ 0x8D4u) - 2748 == (a2 & 0xFFFFFFFFFFFFFFE0))) ^ v3)))();
}

uint64_t sub_1D48DDF80()
{
  v4 = v2 + ((v3 + 1316) | 0x12) - 118107526;
  v5 = v0 - 162607340;
  v6 = (v5 < 0x27AE7C1F) ^ (v4 < 0x27AE7C1F);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 0x27AE7C1F;
  }

  return (*(v1 + 8 * ((11 * !v7) ^ v3)))();
}

uint64_t sub_1D48DDFF0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v4 = a1;
  *v8 = v2;
  v6 = (a2 - 533332794) & 0x1FC9F7AF;
  v11 = a2 - 2737 - ((2 * (&v11 & 0x24538CD8) - &v11 - 609455328) ^ 0x3D04DF30) * v3 + 1489;
  v12 = v10;
  (*(v5 + 8 * ((a2 - 2737) ^ 0xC83)))(&v11);
  v12 = v9;
  v11 = v6 - ((1570745885 - (&v11 | 0x5D9FAE1D) + (&v11 | 0xA26051E2)) ^ 0x44C8FDF2) * v3 + 1706;
  (*(v5 + 8 * (v6 + 3158)))(&v11);
  return 0;
}

uint64_t sub_1D48DDFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, unsigned int a23, char *a24)
{
  v27 = 675097751 * (((&a19 | 0x3E41206F) - &a19 + (&a19 & 0xC1BEDF90)) ^ 0x7D0105F9);
  a24 = &a14;
  a23 = v27 ^ 0xA33F4F7D;
  a20 = (v24 + 1421512204) ^ v27;
  a21 = v27 ^ 0x5A9DDEEC;
  a19 = a16;
  v28 = (*(v25 + 8 * (v24 + 3366)))(&a19);
  return (*(v25 + 8 * ((1427 * (a22 == (v24 ^ 0x474 ^ (v26 - 2504)) + v24 + 1492)) ^ v24)))(v28);
}

uint64_t sub_1D48DE120(uint64_t result)
{
  v4 = *(v1 + 16);
  *result = v3;
  *(result + 8) = v2;
  *(result + 12) = v2;
  *(result + 16) = 0x5D46ADFB55BA936BLL;
  *(result + 24) = 671454635;
  *v4 = result;
  *v1 = 671454635;
  return result;
}

uint64_t sub_1D48DE168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, int a21, uint64_t a22)
{
  v28 = v25 + 32 * v26;
  v29 = (*v28 ^ 0x943ED17E) + 2078113536 + ((*v28 << (((v23 + 9) | 8) ^ 9)) & 0x287DA2FC);
  v30 = ((((2 * &a19) | 0x1C484002) - &a19 - 237248513) ^ 0x1006AD54) * v22;
  a20 = *(v28 + 8);
  a22 = a17;
  a21 = v29 ^ v30;
  a19 = (v23 + 410) ^ v30;
  (*(v27 + 8 * (v23 + 2936)))(&a19);
  v31 = (*(v28 + 16) ^ 0x1B3F5AFF) - 186845825 + ((2 * *(v28 + 16)) & 0x367EB5FE);
  v32 = (&a19 ^ 0x1E228D55) * v22;
  a20 = *(v28 + 24);
  a21 = v31 ^ v32;
  a19 = (v23 + 410) ^ v32;
  a22 = a17;
  v33 = (*(v27 + 8 * (v23 ^ 0xC98)))(&a19);
  return (*(v27 + 8 * (((v24 > (v26 + 1)) | (8 * (v24 > (v26 + 1)))) ^ v23)))(v33);
}

void sub_1D48DE2AC(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) - 435584651 * ((2 * (a1 & 0x5128B9BB) - a1 + 785860164) ^ 0x43E55C12);
  v2 = 742307843 * ((v4 & 0x347ED963 | ~(v4 | 0x347ED963)) ^ 0xD5A3ABC9);
  v5 = *(a1 + 8);
  v6 = v5 + 48;
  v4[1] = v1 + v2 + 852;
  v4[2] = v2 + 1442767853;
  v3 = *(&off_1F5033D40 + v1 - 2120);
  (*(v3 + 8 * (v1 ^ 0x6BB)))(v4);
  __asm { BRAA            X8, X17 }
}

void sub_1D48DE3CC(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) - 143681137 * (a1 ^ 0xE6A8AC10);
  v2 = *(a1 + 8);
  v3 = *(v2 + 4);
  if (v3 - 1673015719 < 0)
  {
    v4 = 1673015719 - v3;
  }

  else
  {
    v4 = v3 - 1673015719;
  }

  v6 = v1 - 1564307779 * (&v6 ^ 0x970DCC13) - 746;
  v7 = v2;
  v5 = *(&off_1F5033D40 + v1 - 2642);
  (*(v5 + 8 * (v1 + 1130)))(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48DE4BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = (v8 + 4 * v6);
  v11 = v6 + 1;
  *v10 = *(v7 + 4 * (*(v8 + 4 * v11) & 1)) ^ v10[397] ^ ((*(v8 + 4 * v11) & ((v4 - 1508) ^ (v9 + 1506)) | v5 & 0x80000000) >> 1);
  return (*(a2 + 8 * (((v11 != 227) * a4) ^ v4)))();
}

uint64_t sub_1D48DE664()
{
  v3 = (v0 - 2671) | 0xC44;
  v4 = ((v3 - 3152) & v1) - ((((v3 ^ 0xD4D) + 1945) ^ 0xAD2FA6EE) & (2 * ((v3 - 3152) & v1))) + 1452791610 != ((6 * (v3 ^ 0xD4D)) ^ 0x5697D136);
  return (*(v2 + 8 * (((2 * v4) | (16 * v4)) ^ v3)))();
}

uint64_t sub_1D48DE724@<X0>(unsigned int a1@<W3>, char a2@<W4>, char a3@<W5>, _DWORD *a4@<X6>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = ((v19 >> ((v14 ^ a2) ^ a3)) ^ v16) + (a4[1] ^ v12) + a1 * (*(*(a12 + 8) + 4) ^ v12);
  *a4 = (v20 + v15 - ((v13 + 787) & (2 * v20))) ^ a5;
  return (*(v18 + 8 * (((a6 == 2) * v17) ^ v14)))();
}

uint64_t sub_1D48DE798@<X0>(uint64_t a1@<X8>)
{
  v3 = (((v2 + 1454) | 0x600) ^ 0xCF33EC88) + *(a1 + 16);
  v4 = *(a1 + 12) - 823159761;
  v5 = v3 < v2 + 619606921;
  v6 = v3 > v4;
  if (v4 < 0x24EE75F4 != v5)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((242 * !v6) ^ v2)))();
}

uint64_t sub_1D48DE814(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = v9 + 32;
  v13 = (v12 ^ a3 ^ v8 ^ (v6 + 1136)) + v7;
  v14 = *(v5 + v13 - 15);
  v15 = *(v5 + v13 - 31);
  v16 = a1 + v13;
  *(v16 - 15) = v14;
  *(v16 - 31) = v15;
  return (*(v11 + 8 * (((v10 == v12) * a4) ^ (v4 + v8 + 455))))();
}

uint64_t sub_1D48DE81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, char a15, __int16 a16, char a17, _BYTE *a18, uint64_t a19, _BYTE *a20, char *a21, char *a22, _BYTE *a23, char *a24)
{
  a23 = a18;
  a24 = &a17;
  a21 = &a13;
  LODWORD(a22) = v25 + 1037613739 * (((&a20 | 0x3D1D19DF) + (~&a20 | 0xC2E2E620)) ^ 0xEC1F34A1) + 1383;
  (*(v26 + 8 * (v25 + 1583)))(&a20);
  a22 = &a15;
  a20 = a18;
  LODWORD(a23) = (v25 - 41) ^ (843532609 * ((2 * (&a20 & 0x3A5769C0) - &a20 - 978807234) ^ 0x99E5C2BB));
  (*(v26 + 8 * (v25 ^ 0x6A8)))(&a20);
  a21 = a18;
  LODWORD(a20) = (v25 - 294) ^ (1504884919 * ((((2 * &a20) | 0x18167640) - &a20 - 202062624) ^ 0xF7C88C3B));
  v27 = (*(v26 + 8 * (v25 ^ 0x6A0)))(&a20);
  return (*(v26 + 8 * ((341 * (HIDWORD(a20) == (((v25 ^ 0x9B0) + 943) ^ (v24 - 3269)) + 5 * (v25 ^ 0x9B0))) ^ v25)))(v27);
}

uint64_t sub_1D48DEA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, uint64_t a28, uint64_t a29, unsigned int *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v41 = *a30;
  v42 = 675097751 * ((0x8B88B6C748EDCA16 - ((v40 - 144) | 0x8B88B6C748EDCA16) + ((v40 - 144) | 0x74774938B71235E9)) ^ 0xF59FE393F452107FLL);
  *(v40 - 112) = ((v39 + 2001113577) ^ 0x31) + v42;
  *(v40 - 144) = -675097751 * ((1223543318 - ((v40 - 144) | 0x48EDCA16) + ((v40 - 144) | 0xB71235E9)) ^ 0xF452107F);
  *(v40 - 140) = -711081617 - v42 + v39;
  *(v40 - 132) = v42 ^ 0x94 ^ (v39 + 2001113577);
  *(v40 - 128) = v39 + 2001113577 - v42;
  *(v40 - 120) = v42;
  *(v40 - 104) = v41 ^ v42;
  v43 = (*(a2 + 8 * (v39 ^ a27)))(v40 - 144);
  return (*(a39 + 8 * *(v40 - 136)))(v43);
}

uint64_t sub_1D48DEB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  *a13 = a15;
  if (a10)
  {
    v20 = a18 == 1944473643;
  }

  else
  {
    v20 = 1;
  }

  v22 = v20 || a11 == 0;
  return (*(v19 + 8 * ((v22 * ((34 * (v18 ^ 0x233)) ^ (((v18 ^ 0x78E) - 1278) | 0x15) ^ 0xA5E)) ^ v18 ^ 0x78E)))();
}

uint64_t sub_1D48DECA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, char a15, uint64_t a16, int a17, char a18, _BYTE *a19, _BYTE *a20, char *a21, char *a22, _BYTE *a23, char *a24)
{
  v27 = v24 & v25;
  LODWORD(a22) = v27 + 1037613739 * ((2 * (&a20 & 0x71ADA028) - &a20 - 1907204139) ^ 0x5F5072AA) + 1575;
  a21 = &a12;
  a23 = a19;
  a24 = &a18;
  (*(v26 + 8 * (v27 ^ 0x931)))(&a20);
  a20 = a19;
  a22 = &a15;
  LODWORD(a23) = (v27 + 151) ^ (843532609 * (((&a20 | 0xBEC0E7C7) - &a20 + (&a20 & 0x413F1838)) ^ 0xE28DB342));
  (*(v26 + 8 * (v27 + 1816)))(&a20);
  LODWORD(a20) = (v27 - 102) ^ (1504884919 * (((&a20 | 0x999241AC) - (&a20 & 0x999241AC)) ^ 0x6251F6B7));
  a21 = a19;
  v28 = (*(v26 + 8 * (v27 + 1824)))(&a20);
  return (*(v26 + 8 * (((HIDWORD(a20) != 671454635) * (((v27 - 1655) | 0x800) ^ 0x83B)) ^ v27)))(v28);
}

uint64_t sub_1D48DEE18@<X0>(uint64_t a1@<X2>, int a2@<W4>, int a3@<W5>, int a4@<W8>)
{
  v8 = (v7 + 4 * v5);
  v9 = v5 + 1;
  *v8 = *(a1 + 4 * (*(v7 + 4 * v9) & 1)) ^ v8[397] ^ ((*(v7 + 4 * v9) & 0x7FFFFFFE | v4 & 0x80000000) >> 1);
  return (*(v6 + 8 * (((v9 == 227) * ((a4 ^ a2) * a3 + 2296)) ^ a4)))();
}

uint64_t sub_1D48DEE74(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = v10 + 32;
  v14 = (a1 ^ v13) + v8;
  v15 = *(v7 + v14 - 15);
  v16 = *(v7 + v14 - 31);
  v17 = a6 + v14;
  *(v17 - 15) = v15;
  *(v17 - 31) = v16;
  return (*(v12 + 8 * (((v11 == v13) * a2) ^ (v6 + v9 + 2363))))();
}

uint64_t sub_1D48DEE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, char *a20, int a21)
{
  a20 = &a13;
  a19 = (50899313 * ((((2 * &a19) | 0x436FB570) - &a19 + 1581786440) ^ 0x8B7CF0C2)) ^ 0x72E;
  v23 = (*(v21 + 29464))(&a19);
  return (*(v21 + 8 * ((1565 * (a21 == 671454635)) ^ v22)))(v23);
}

uint64_t sub_1D48DEF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, uint64_t a24, void *a25, _DWORD *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v34 = 4 * v29;
  v35 = -2039581373 * ((*(*a25 + (*a26 & a23)) ^ (a29 + 4 * v29)) & 0x7FFFFFFF);
  v36 = v35 ^ HIWORD(v35);
  v37 = -2039581373 * v36;
  v38 = 4 * (((-2039581373 * v36) >> 24) + 3);
  *(v32 + v34) = *(a29 + v34) ^ 0xEFB0C66F ^ (*(v32 + v34) - 273627537 - ((2 * *(v32 + v34)) & 0xDF618CDE)) ^ *(*(&off_1F5033D40 + v31 - 3604) + HIBYTE(v37) - 1) ^ *(*(&off_1F5033D40 + v31 - 3572) + v38) ^ *(*(&off_1F5033D40 + v31 - 3543) + v38 - 4) ^ (1967325184 * v36) ^ v37 ^ (-167436199 * HIBYTE(v37) - 2130224458 * (HIBYTE(v37) - (((((v31 - 3675) ^ v29) & v29) >> (__clz((v31 - 3675) ^ v29 | 1) ^ 0x1F)) & 1)));
  return (*(v30 + 8 * ((1333 * (v33 + ((v31 - 1249042272) & 0x4A72DF5F) == 3679)) ^ (v31 - 1153))))();
}

uint64_t sub_1D48DF064()
{
  v6 = (v3 + v2 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v1 - 1882) | 0x372) + 1956)) ^ v1)))();
}

void sub_1D48DF0B0(uint64_t a1)
{
  v1 = 435584651 * ((2 * (a1 & 0xDF2226E) - a1 + 1913511313) ^ 0x1F3FC7C7);
  v2 = **(a1 + 24) - 669908731;
  v3 = (*(a1 + 32) ^ v1) - 714410460;
  v4 = v2 < 0x6CAA32F;
  v5 = v2 > v3;
  if (v3 < 0x6CAA32F != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

uint64_t sub_1D48DF1A4(uint64_t a1)
{
  v7 = (v5 ^ (v1 + 1011) ^ 0xFFFFFFFFFFFFFDE8) + v4;
  v8 = *(v2 + v7 - 15);
  v9 = *(v2 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((3111 * ((v4 & 0xFFFFFFE0) == 32)) ^ (v3 + v5 + 1958))))();
}

uint64_t sub_1D48DF208(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = *(v6 + a5 + 16);
  v9 = (a2 + a5);
  *(v9 - 1) = *(v6 + a5);
  *v9 = v8;
  return (*(v7 + 8 * (((v5 != a5) * a4) ^ a3)))();
}

uint64_t sub_1D48DF238(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

uint64_t sub_1D48DF250@<X0>(int a1@<W8>, uint64_t a2, char a3, int a4, int a5, unsigned int a6, char *a7, char a8, char *a9, int a10, uint64_t *a11, uint64_t a12)
{
  v15 = 2 * (v12 ^ 0xC17);
  v16 = *(v13 + 32);
  v17 = 675097751 * (((&a5 | 0x7AB09D7) - &a5 + (&a5 & 0xF854F628)) ^ 0x44EB2C41);
  a7 = &a3;
  a9 = &a2 + 7;
  a8 = v17 ^ 0xA6;
  a6 = (((a1 ^ 0x2A81AB0F) - 713143089 + v15 - 8) ^ ((a1 ^ 0xA7F6844C) + 1477016500) ^ (((v15 - 40) ^ 0xAC2851EF) + (a1 ^ 0x53D7A613))) - v17 + 671998004;
  a10 = v15 - v17 - 562360942;
  a11 = &a2;
  a12 = v16;
  v18 = (*(v14 + 8 * (v15 | 0x6C1)))(&a5);
  return (*(v14 + 8 * ((504 * (a5 == 671454635)) ^ v15)))(v18);
}

uint64_t sub_1D48DF38C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9 = v4 + 32;
  v10 = ((((v3 + 273) | v6) - 1317) ^ v9) + v2;
  v11 = *(a1 + v10 - 15);
  v12 = *(a1 + v10 - 31);
  v13 = a2 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v5 == v9) * v7) ^ (v3 + 235))))();
}

uint64_t sub_1D48DF394(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) ^ (1504884919 * (a1 ^ 0xFBC3B71B));
  v2 = *(a1 + 16);
  v6 = *a1;
  v5 = (1564307779 * (((&v4 | 0xD4362FEB) - (&v4 & 0xD4362FEB)) ^ 0x433BE3F8)) ^ (v1 + 1197046014);
  v4 = v2;
  return (*(*(&off_1F5033D40 + (v1 ^ 0xB8A6951D)) + (v1 ^ 0xB8A69BE0)))(&v4);
}

uint64_t sub_1D48DF488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _BYTE *a13, int a14, char a15, __int16 a16, char a17, __int16 a18, char a19, uint64_t a20, char a21, uint64_t a22, _BYTE *a23, char *a24, char *a25, _BYTE *a26, char *a27)
{
  v31 = (v27 - 2973) | 0x30;
  LODWORD(a26) = (v27 - 1053) ^ (((((&a23 | 0xD0F66CDA) ^ 0xFFFFFFFE) - (~&a23 | 0x2F099325)) ^ 0x7344C7A0) * v29);
  a25 = &a15;
  a23 = a13;
  (*(v28 + 8 * (v27 + 612)))(&a23);
  LODWORD(a25) = v31 + 1037613739 * (((&a23 | 0xC909EC71) - (&a23 & 0xC909EC71)) ^ 0x180BC10E) + 3296;
  a26 = a13;
  a27 = &a19;
  a24 = &a21;
  (*(v28 + 8 * (v31 + 3496)))(&a23);
  a25 = &a17;
  a23 = a13;
  LODWORD(a26) = (v31 + 1872) ^ ((((&a23 | 0x9E2683C8) - &a23 + (&a23 & 0x61D97C30)) ^ 0xC26BD74D) * v29);
  (*(v28 + 8 * (v31 ^ 0xE31)))(&a23);
  LODWORD(a23) = (v31 + 1619) ^ (1504884919 * ((2 * (&a23 & 0x68E77778) - &a23 + 387483780) ^ 0xECDB3F9F));
  a24 = a13;
  v32 = (*(v28 + 8 * (v31 ^ 0xE39)))(&a23);
  return (*(v28 + 8 * ((((((((v27 + 99) | 0x30) + 101) ^ 0xB5) + 1) ^ (HIDWORD(a23) == v30)) & 1 | (8 * (((((((v27 + 99) | 0x30) + 101) ^ 0xB5) + 1) ^ (HIDWORD(a23) == v30)) & 1))) ^ v31)))(v32);
}

uint64_t sub_1D48DF6D8()
{
  v6 = *(v9 + 24);
  v7 = 1037613739 * ((1842000548 - ((v5 - 144) | 0x6DCAB2A4) + ((v5 - 144) | 0x92354D5B)) ^ 0x43376024);
  *(v5 - 144) = (v0 + 34) ^ v7;
  *(v5 - 140) = v7 ^ 0x306A01A;
  *(v5 - 136) = v11;
  (*(v3 + 8 * (v0 | 0x442)))(v5 - 144);
  *(v5 - 120) = v11;
  *(v5 - 112) = v2;
  *(v5 - 144) = (v0 + 578) ^ (((-966854498 - ((v5 - 144) | 0xC65EF89E) + ((v5 - 144) | 0x39A10761)) ^ 0xAEACCB72) * v4);
  *(v5 - 136) = v10;
  *(v5 - 128) = v10;
  *(v5 - 104) = v1;
  (*(v3 + 8 * (v0 + 1059)))(v5 - 144);
  *(v5 - 144) = v0 - 435584651 * ((v5 - 1467224889 - 2 * ((v5 - 144) & 0xA88BED57)) ^ 0xC5B9F701) - 742;
  *(v5 - 136) = v6;
  *(v5 - 128) = v10;
  return (*(v3 + 8 * (v0 + 893)))(v5 - 144);
}

uint64_t sub_1D48DFB88@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  if ((a1 - 1) >> 32)
  {
    v4 = 0;
  }

  else
  {
    v4 = (a2 ^ 0xFFFFFC62 ^ (v2 - 1855217460) & 0x6E945BFD) >= a1 - 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((v5 * (v2 - 1281)) ^ v2)))();
}

uint64_t sub_1D48DFBE4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v8 = *(result + 40);
  v7 = *(result + 48);
  v9 = *result;
  *a2 = v4;
  *v9 = v3;
  *v8 = v5;
  *v7 = v2 + v6;
  *(result + 8) = 671454635;
  return result;
}

uint64_t sub_1D48DFDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a18 = &a15;
  a17 = (50899313 * ((1357979225 - (&a17 | 0x50F11E59) + (&a17 | 0xAF0EE1A6)) ^ 0x85C5CBDC)) ^ 0x72E;
  v22 = (*(v20 + 29464))(&a17);
  return (*(v20 + 8 * ((2303 * (a19 == v21)) ^ v19)))(v22);
}

uint64_t sub_1D48DFE64@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFE32 ^ v3 ^ 0x2EBu) + v1;
  *(a1 - 7 + v6) = vadd_s8(vsub_s8(*(v4 - 7 + v6), vand_s8(vadd_s8(*(v4 - 7 + v6), *(v4 - 7 + v6)), 0x404040404040404)), 0x8282828282828282);
  return (*(v5 + 8 * ((1172 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_1D48DFED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20)
{
  a19 = (v22 + 494) ^ (((&a18 + v24 - 2 * (&a18 & v24)) ^ 0x9BADDA8D) * v26);
  a18 = v23 + 8 * v21;
  a20 = a14;
  v27 = (*(v25 + 8 * (v22 + 2338)))(&a18);
  return (*(v25 + 8 * (((a13 <= (v21 + 1)) * (v20 - 53)) ^ v22)))(v27);
}

uint64_t sub_1D48DFF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  *a23 = 64;
  *(v62 + 252) = 1673015719;
  *(v62 + 256) = v62 + 264;
  *(v62 + 520) = 64;
  *(v62 + 524) = 1673015719;
  *(v62 + 528) = v62 + 536;
  v82 = v62 + 520;
  v83 = v62 + 792;
  *(v62 + 792) = 64;
  *(v62 + 796) = 1673015719;
  *(v62 + 800) = v62 + 808;
  v84 = v62 + 1064;
  *(v62 + 1064) = 64;
  *(v62 + 1068) = 1673015719;
  *(v62 + 1072) = v62 + 1080;
  v85 = v62 + 1336;
  *(v62 + 1336) = 64;
  *(v62 + 1340) = 1673015719;
  *(v62 + 1344) = v62 + 1352;
  v70 = STACK[0x318] + 4;
  v71 = 1037613739 * ((((2 * (v68 - 192)) | 0x51AB3F2E) - (v68 - 192) - 685088663) ^ 0xF9D7B2E8);
  *(v68 - 184) = v70;
  *(v68 - 168) = a23;
  *(v68 - 176) = (v66 + 1588) ^ v71;
  *(v68 - 172) = v71 - 857762340 + (((v67 ^ 0xD1E5B887) + 773474169) ^ ((v67 ^ 0xC109BD8B) + 1056326261) ^ ((v67 ^ v63 ^ 0x630A50E9) - 1661621543));
  (*(v69 + 8 * (v66 ^ 0xB8E)))(v68 - 192);
  v72 = v67 ^ v65;
  v73 = v70 + v72;
  v74 = 1037613739 * (((~(v68 - 192) & 0xB55A831C) - (~(v68 - 192) | 0xB55A831D)) ^ 0x6458AE62);
  *(v68 - 184) = v73;
  *(v68 - 176) = (v66 + 1588) ^ v74;
  *(v68 - 172) = v74 - 857762340 + (((v67 ^ 0x196E7F92) - 426672018) ^ ((v67 ^ 0x7EEB69B3) - 2129357235) ^ ((v67 ^ 0x1463460A) - 342050314));
  *(v68 - 168) = v82;
  (*(a62 + 8 * (v66 ^ 0xB8E)))(v68 - 192);
  v75 = v73 + v72;
  v76 = 1037613739 * (((((v68 - 192) | 0xFB219C58) ^ 0xFFFFFFFE) - (~(v68 - 192) | 0x4DE63A7)) ^ 0xD5DC4ED8);
  *(v68 - 168) = v83;
  *(v68 - 184) = v75;
  *(v68 - 176) = (v66 + 1588) ^ v76;
  *(v68 - 172) = v76 - 857762340 + (((v67 ^ 0x81B8F8A7) + 2118584153) ^ ((v67 ^ 0xA3DA584A) + 1545971638) ^ ((v67 ^ 0x5184F0C6) - 1367666886));
  (*(a62 + 8 * (v66 ^ 0xB8E)))(v68 - 192);
  v77 = v75 + v72;
  v78 = 1037613739 * ((((v68 - 192) | 0x99EB2F90) - (v68 - 192) + ((v68 - 192) & 0x6614D068)) ^ 0x48E902EF);
  *(v68 - 168) = v84;
  *(v68 - 184) = v77;
  *(v68 - 176) = (v66 + 1588) ^ v78;
  *(v68 - 172) = v78 - 857762340 + (((v67 ^ 0xA0F71214) + 1594420716) ^ ((v67 ^ 0xDF93A673) + 543971725) ^ ((v67 ^ 0xC82E44C) - 209904716));
  (*(a62 + 8 * (v66 + 2426)))(v68 - 192);
  v79 = 1037613739 * (((((v68 - 192) | 0xFE67A4B0) ^ 0xFFFFFFFE) - (~(v68 - 192) | 0x1985B4F)) ^ 0xD09A7630);
  *(v68 - 168) = v85;
  *(v68 - 184) = v77 + v72;
  *(v68 - 176) = (v66 + 1588) ^ v79;
  *(v68 - 172) = v79 - 857762340 + (((v67 ^ 0x22B76C7C) - 582446204) ^ ((v67 ^ 0x3691D2DB) - 915526363) ^ ((v67 ^ 0x67C0EE8C) - 1740697228));
  (*(a62 + 8 * (v66 ^ 0xB8E)))(v68 - 192);
  v80 = STACK[0x318];
  STACK[0x348] = (v64 - 1499319901);
  return (*(a62 + 8 * ((104 * (v64 == 1499319901)) ^ (v63 + 490))))(v80);
}

uint64_t sub_1D48E0494@<X0>(uint64_t a1@<X8>)
{
  v8 = v1;
  v7 = v3 - 843532609 * (((&v5 | 0xF002993B) + (~&v5 | 0xFFD66C4)) ^ 0xAC4FCDBF) - 350;
  v5 = v2;
  v6 = v2;
  return (*(a1 + 8 * (v3 + 3108)))(&v5);
}

uint64_t sub_1D48E0564@<X0>(int a1@<W0>, char a2@<W8>)
{
  v7 = a2 + 2;
  v8 = (v3 - 2);
  *v8 = (v5 ^ v7) * (v7 + 17);
  *(v8 - 1) = (v7 ^ 0xBB) * (v7 + 18);
  return (*(v6 + 8 * (((v2 == -2) * a1) ^ v4)))();
}

uint64_t sub_1D48E1030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, char *a22, int a23)
{
  a22 = &a16;
  a21 = (50899313 * ((&a21 & 0xE192E417 | ~(&a21 | 0xE192E417)) ^ 0x34A63192)) ^ 0x72E;
  v25 = (*(v24 + 29464))(&a21);
  return (*(v24 + 8 * ((3623 * (a23 == (v23 ^ 0xD9CAA923) + 1312482841)) ^ v23)))(v25);
}

uint64_t sub_1D48E1104@<X0>(int a1@<W8>)
{
  v3 = v7[4];
  v4 = *v7;
  v8[0] = 0x8282828282828282;
  v8[1] = 0x8282828282828282;
  v5 = 1037613739 * ((v2 - 176) ^ 0xD1022D7F);
  *(v2 - 160) = v4;
  *(v2 - 152) = v2 - 196;
  *(v2 - 136) = v3;
  *(v2 - 176) = v5 + 1865131115;
  *(v2 - 168) = v8;
  *(v2 - 144) = (a1 + 2665) ^ v5;
  result = (*(v1 + 8 * (a1 ^ 0xEE9)))(v2 - 176);
  *(v7 + 4) = *(v2 - 140);
  return result;
}

uint64_t sub_1D48E133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, int a23, int a24, char *a25)
{
  v28 = v27 + 40;
  if (a13 < 0x1029A6C0)
  {
    v29 = -1556131971;
  }

  else
  {
    v29 = -1556131970;
  }

  v30 = 675097751 * ((((2 * &a20) | 0xDB3E49F8) - &a20 + 308337412) ^ 0xAEDF016A);
  a25 = &a14;
  a20 = a17;
  a24 = v29 ^ v30;
  a21 = (v27 + 1421510996) ^ v30;
  a22 = v30 ^ 0xBB1E5353;
  v31 = (*(v25 + 8 * (v28 ^ 0x84E)))(&a20);
  return (*(v25 + 8 * (((a23 == v26) * ((v27 + 56) ^ 0x176 ^ (7 * ((v27 + 40) ^ 0x7AE)))) ^ v28)))(v31);
}

uint64_t sub_1D48E14BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, uint64_t a12, unsigned int a13, uint64_t *a14)
{
  v17 = 1361651671 * ((&a10 & 0x89601377 | ~(&a10 | 0x89601377)) ^ 0x3DF420F6);
  a14 = &a9;
  a10 = v17 + 1487458218;
  a11 = (v15 - 9) ^ v17;
  a12 = v14;
  a13 = v17 ^ 0xEA879252;
  v18 = (*(v16 + 8 * (v15 + 2624)))(&a10);
  return (*(v16 + 8 * (((*(v14 + 24) == 671454635) * (((v15 - 1122) | 0x424) + 994)) ^ v15)))(v18);
}

uint64_t sub_1D48E1620@<X0>(uint64_t a1@<X0>, int a2@<W5>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * (((v7 == 0) * ((v5 - a2 - 2105) ^ 0xFFD)) ^ (v3 + v5 - 3112))))();
}

uint64_t sub_1D48E16B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, int a24)
{
  v26 = v25 + a24 + ((a8 + 720) | 0x49) + 1023 - 1804;
  v27 = v26 < v25;
  v28 = v26 > a22;
  if (a22 < v25 != v27)
  {
    v28 = v27;
  }

  return (*(v24 + 8 * ((2 * v28) | (4 * v28) | (a8 + 2957))))();
}

uint64_t sub_1D48E16BC()
{
  v5 = *(*(v4 + 8) + v0) - *(v2 + v0);
  v6 = (v5 ^ 0x1F77FAFF) - 38125691 + ((v5 << ((v1 - 89) & 0x7E ^ 0x35)) & 0x3EEFF5FE);
  v8 = v0 == 15 || v6 != 489831044;
  return (*(v3 + 8 * ((172 * v8) ^ v1)))();
}

uint64_t sub_1D48E1790@<X0>(int a1@<W8>)
{
  v4 = v2 + a1;
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  return (*(v3 + 8 * ((19 * (v5 <= (((3 * (v1 ^ 0xE73)) ^ 0xFFFFF0D5) - (v1 ^ 0xDD8) + 8 * (v1 ^ 0xDD8)))) ^ v1)))();
}

uint64_t sub_1D48E1950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, __int16 a14, char a15, _BYTE *a16, char a17, uint64_t a18, char *a19, _BYTE *a20, char *a21, char *a22, unsigned int a23)
{
  a23 = v23 - 1037613739 * ((((2 * &a19) | 0xE4849BE4) - &a19 + 230535694) ^ 0x2340608D) + 68668542;
  a19 = &a13;
  a20 = a16;
  a22 = &a17;
  (*(v25 + 8 * (v23 + 354)))(&a19);
  a21 = &a15;
  a19 = a16;
  LODWORD(a22) = (v23 - 1343) ^ (843532609 * (((&a19 | 0xE56E8F07) + (~&a19 | 0x1A9170F8)) ^ 0xB923DB83));
  (*(v25 + 8 * (v23 ^ 0x3BE)))(&a19);
  a20 = a16;
  LODWORD(a19) = (v23 - 1596) ^ (1504884919 * ((1199704076 - (&a19 | 0x4782080C) + (&a19 | 0xB87DF7F3)) ^ 0x43BE40E8));
  v26 = (*(v25 + 8 * (v23 + 330)))(&a19);
  return (*(v25 + 8 * (((HIDWORD(a19) == v24) * ((((v23 - 1335) | 0x16) - 1369) ^ (2 * v23) ^ 0x1812)) ^ v23)))(v26);
}

uint64_t sub_1D48E1ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, char *a14, int a15)
{
  a13 = (50899313 * ((&a13 - 1613540863 - 2 * (&a13 & 0x9FD35201)) ^ 0xB518787B)) ^ 0x72E;
  a14 = &a11;
  v16 = (*(v15 + 29464))(&a13);
  return (*(v15 + 8 * ((3204 * (a15 == 671454635)) ^ 0x2A1u)))(v16);
}

void sub_1D48E1B90(uint64_t a1, int a2)
{
  v4 = (((v2 ^ 0x6F856432) - 1871012914) ^ ((v2 ^ 0x4168C1F8) - 1097384440) ^ ((v2 ^ 0x68C1ED43) - 1757539651)) - 1667605206 + (((v3 ^ 0xE6BC46D9) + 423868711) ^ ((v3 ^ 0xAB14CC18) + 1424700392) ^ (((29 * (a2 ^ 0xEF) + 193249806) ^ v3) - 193249864));
  LODWORD(STACK[0x270]) = v4 ^ ((v4 ^ 0x9243295A) + 2113739454) ^ ((v4 ^ 0x96C9550B) + 2037868269) ^ ((v4 ^ 0xEB364FF5) + 76053523) ^ ((v4 ^ 0xFFFDFFBC) + 272878684) ^ 0x566D8491;
  JUMPOUT(0x1D48E1CD4);
}

void sub_1D48E24A0(unsigned int *a1, uint64_t a2, int a3)
{
  *(a1 + v5 + 4) = v8;
  v10 = v7 + v4;
  v11 = v10 + (a3 ^ (v3 - 1));
  *a1 = v11;
  v12 = a1 + 1;
  *(v12 + (v9 + v4)) = v6;
  *(v12 + v4) = 47;
  *(v12 + v10) = 61;
  *(v12 + v11) = 0;
  JUMPOUT(0x1D4933FBCLL);
}

uint64_t sub_1D48E2540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, _BYTE *a15, int a16, char a17, __int16 a18, char a19, uint64_t a20, uint64_t a21, _BYTE *a22, char *a23, char *a24, _BYTE *a25, char *a26)
{
  a23 = &a19;
  LODWORD(a24) = v26 - 138 + 1037613739 * ((&a22 & 0xD77D9161 | ~(&a22 | 0xD77D9161)) ^ 0xF98043E1) + 2734;
  a25 = a15;
  a26 = &a17;
  (*(v27 + 8 * ((v26 - 138) ^ 0xCBA)))(&a22);
  LODWORD(a25) = (v26 + 1172) ^ (843532609 * (((&a22 | 0x28E684EF) + (~&a22 | 0xD7197B10)) ^ 0x74ABD06B));
  a24 = &a14;
  a22 = a15;
  (*(v27 + 8 * ((v26 - 138) ^ 0xC63)))(&a22);
  LODWORD(a22) = (v26 + 919) ^ (1504884919 * ((((&a22 | 0xBC95C034) ^ 0xFFFFFFFE) - (~&a22 | 0x436A3FCB)) ^ 0xB8A988D0));
  a23 = a15;
  v29 = (*(v27 + 8 * ((v26 - 138) ^ 0xC6B)))(&a22);
  return (*(v27 + 8 * ((1308 * (HIDWORD(a22) == ((409 * ((v26 - 138) ^ 0x2E5)) ^ (v28 + 874)) + ((v26 - 138) ^ 0x193))) ^ (v26 - 138))))(v29);
}

uint64_t sub_1D48E26C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * (((&a14 | 0x6A52E49C) - (&a14 & 0x6A52E49C)) ^ 0x2912C10A);
  a14 = a11;
  a18 = v22 ^ 0xA33F4F7E;
  a19 = &a12;
  a15 = (v21 + 1421511515) ^ v22;
  a16 = v22 ^ 0x8D7220A;
  v23 = (*(v19 + 8 * (v21 + 2677)))(&a14);
  return (*(v19 + 8 * (((a17 == ((v21 + 2341) ^ (v20 + 757))) * (((v21 - 934) | 0x61B) ^ 0x9B6)) ^ v21)))(v23);
}

uint64_t sub_1D48E2790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4 + 269;
  v6 = v3 - (**(a2 + 8) == (v4 - 77));
  v7 = v4 - 906631652;
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 1673015719;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v8 = *(a1 + 96) + 800;
  v9 = 1361651671 * ((((2 * &v11) | 0x5A1B92BC) - &v11 - 755878238) ^ 0x66660520);
  v11 = *(a2 + 8) + (*(a2 + 4) - v6);
  v13 = (v5 - 1158) ^ v9;
  v14 = v8;
  v15 = v6 - v9 - 1314367720;
  (*(a3 + 8 * (v5 + 2152)))(&v11);
  return v12 * (v7 ^ 0x4BA7C40u) - 2018107352;
}

uint64_t sub_1D48E2C70()
{
  STACK[0x2F0] = v2 - 1824;
  LODWORD(STACK[0x38C]) = v1;
  return (*(v3 + 8 * ((((v0 ^ 0x5C0) + 702 + 163 * (v0 ^ 0x5C0) - 2940) * (STACK[0x2B0] == 0)) ^ (v0 + 1676))))();
}

uint64_t sub_1D48E2D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 112) = (v19 - 921) ^ (((((2 * (v20 - 136)) | 0xE1DB9282) - (v20 - 136) + 252851903) ^ 0xBB86053F) * v17);
  *(v20 - 128) = v18;
  *(v20 - 120) = &a15;
  v21 = (*(v16 + 8 * (v19 + 2303)))(v20 - 136);
  return (*(v16 + 8 * (((*(v20 - 136) > v15) * (((2 * v19) ^ 0x8F2) + 127 * (v19 ^ 0x585))) ^ v19)))(v21);
}

uint64_t sub_1D48E2DB8@<X0>(int8x16_t *a1@<X5>, int a2@<W8>, int8x16_t a3@<Q1>, int8x16_t a4@<Q3>)
{
  v8 = (v6 + v4);
  v9 = vaddq_s8(vsubq_s8(v8[1], vandq_s8(vaddq_s8(v8[1], v8[1]), a4)), a3);
  *a1 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a4)), a3);
  a1[1] = v9;
  return (*(v5 + 8 * (v7 + a2 + 1809)))();
}

uint64_t sub_1D48E2E1C@<X0>(int a1@<W8>, int *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13)
{
  v14 = a1 + 1007;
  v15 = 113 * ((a1 + 1204456660) & 0x3F7D ^ 0xC7A);
  *a2 = a13 ^ 0x73E6502B;
  *a3 = a11 ^ 0x73E6502B;
  v16 = (*(v13 + 8 * (a1 + 3700)))();
  v17 = (a13 ^ (v15 + 1944471044)) != ((2 * (a13 ^ (v15 + 1944471044))) & 0xEEBE248A);
  return (*(v13 + 8 * (((2 * v17) | (32 * v17)) ^ v14)))(v16);
}

uint64_t sub_1D48E2F2C()
{
  v4 = -1093512963 - v0;
  if ((64 - v2) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= 64 - v2;
  }

  v6 = !v5;
  return (*(v3 + 8 * ((((v6 ^ (v1 - 84)) & 1) * ((v1 - 138011225) & 0x839EBEB ^ 0xB5D)) ^ v1)))();
}

uint64_t sub_1D48E2FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, int a21, int a22)
{
  v28 = 1564307779 * ((((2 * &a19) | 0xFD015EF6) - &a19 + 25120901) ^ 0x698D6368);
  a22 = v25 - v28 + 2113537133 - (((v27 ^ 0x251) - 67893819) & (2 * v25));
  a19 = (v27 + 752) ^ v28;
  a20 = a16;
  (*(v26 + 8 * (v27 ^ 0xFC7)))(&a19);
  v29 = 1564307779 * ((2 * (&a19 & 0x3509EFA0) - &a19 - 889843624) ^ 0x5DFBDC4B);
  a22 = HIDWORD(v24) - ((2 * HIDWORD(v24)) & 0xFBF408DA) + 2113537133 - v29;
  a20 = a16;
  a19 = (v27 + 752) ^ v29;
  (*(v26 + 8 * (v27 + 3391)))(&a19);
  v30 = 1564307779 * ((&a19 + 2108246770 - 2 * (&a19 & 0x7DA94AF2)) ^ 0xEAA486E1);
  a19 = (v27 + 752) ^ v30;
  a22 = v24 - ((2 * v24) & 0xFBF408DA) + 2113537133 - v30;
  a20 = a16;
  (*(v26 + 8 * (v27 + 3391)))(&a19);
  v31 = 1564307779 * ((&a19 + 622345457 - 2 * (&a19 & 0x25183CF1)) ^ 0xB215F0E2);
  a19 = (v27 + 752) ^ v31;
  a22 = v23 - ((2 * v23) & 0xFBF408DA) + 2113537133 - v31;
  a20 = a16;
  (*(v26 + 8 * (v27 + 3391)))(&a19);
  v32 = 1564307779 * ((((2 * &a19) | 0xFC9E876A) - &a19 - 2119123893) ^ 0xE9428FA6);
  a19 = (v27 + 752) ^ v32;
  a20 = a16;
  a22 = v22 - ((2 * v22) & 0xFBF408DA) + 2113537133 - v32;
  v33 = (*(v26 + 8 * (v27 ^ 0xFC7)))(&a19);
  return (*(v26 + 8 * ((1027 * (a21 == 671454635)) | v27)))(v33);
}

uint64_t sub_1D48E324C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * ((2 * (&a14 & 0x745FE0F8) - &a14 - 1952440573) ^ 0xC8E03A95);
  a18 = v22 ^ 0xA33F4F7D;
  a15 = (v21 + 1421511560) ^ v22;
  a16 = v22 ^ 0x647EC077;
  a14 = a11;
  a19 = &a12;
  v23 = (*(v20 + 8 * (v21 + 2722)))(&a14);
  return (*(v20 + 8 * (((a17 == v19) * ((v21 + 565) ^ (v21 + 1116) ^ 0x59F)) ^ v21)))(v23);
}

uint64_t sub_1D48E3398(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v16 = a8 - 8;
  v18.val[0].i64[0] = (v13 + v16 - 1) & 0xF;
  v18.val[0].i64[1] = (v13 + v16 + a9 - 25) & 0xF;
  v18.val[1].i64[0] = (v13 + v16 + 13) & 0xF;
  v18.val[1].i64[1] = (v13 + v16 + 12) & 0xF;
  v18.val[2].i64[0] = (v13 + v16 + 11) & 0xF;
  v18.val[2].i64[1] = (v13 + v16 + 10) & 0xF;
  v18.val[3].i64[0] = (v13 + v16 + 9) & 0xF;
  v18.val[3].i64[1] = (v13 + v16) & 0xF ^ 8;
  *(v14 - 8 + v13) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a10 - 8 + v13), *(v11 + v18.val[0].i64[0] - 7)), veor_s8(*(v10 + v18.val[0].i64[0] - 7), *(v18.val[0].i64[0] + v12 - 5)))), a3), vmul_s8(*&vqtbl4q_s8(v18, a1), a2)));
  return (*(v15 + 8 * (a6 | (16 * (a7 == v16)))))();
}

uint64_t sub_1D48E33A8(uint64_t a1)
{
  v1 = *a1 - 843532609 * ((2 * (a1 & 0x47B6E254) - a1 + 944315819) ^ 0x6404492E) - 2264;
  v2 = (v1 ^ 0x9C47CEAE) + *(*(a1 + 8) + 4);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return (*(*(&off_1F5033D40 + v1 - 236) + ((458 * (v2 > (((v1 + 2187) | 0x4D) ^ 0x9CF))) ^ v1)))();
}

uint64_t sub_1D48E3534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t, uint64_t))
{
  v28 = HIDWORD(a13) | 0x20u;
  v29 = (v27 + v25);
  *v29 = v22;
  v29[1] = v23;
  *(v25 + v27 + v28 - 56) = v24;
  v29[3] = v26;
  return sub_1D48CC284(v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1D48E355C@<X0>(int a1@<W8>)
{
  v8 = v2 - 2;
  v9 = v1 + 2;
  *(v8 + v6) = (v9 ^ v4) * (v9 + 17);
  *(v8 + 121) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v3 == 2) * v5) ^ a1)))();
}

uint64_t sub_1D48E356C@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, char a6@<W5>, int a7@<W6>, unsigned int a8@<W8>, int a9, int a10, uint64_t a11)
{
  v20 = (v14 - 248 + a4) & a5;
  *(v12 + a8) = *(a11 + a8) ^ a6;
  v21 = (v20 ^ a7) + a8;
  v22 = v20 + a2 + (((a10 ^ v13) + v15) ^ ((a10 ^ (v20 + v16)) + v17) ^ ((a10 ^ v18) + a1));
  v23 = v22 < v11;
  v24 = v21 + v11 < v22;
  if (v21 > a3 != v23)
  {
    v24 = v23;
  }

  return (*(v19 + 8 * (((8 * v24) | (v24 << 6)) ^ v20)))();
}

uint64_t sub_1D48E3594@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + v4);
  v6 = v4 + ((v3 + 403) | 0x204u) - 1559;
  *(a1 + v6) = v5;
  return (*(v1 + 8 * ((1299 * (v6 == 0)) ^ v3)))();
}

uint64_t sub_1D48E35CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v17 = (v8 ^ 0x8052E343) + v10 + a3 * ((v8 + ((a7 - 1407 + v12) & v13) - 1799) ^ *(*(v11 + 8) + a2));
  *(v15 + 4 * v16) = v17 + v8 - (v9 & (2 * v17));
  return (*(v7 + 8 * ((a7 - 1407) ^ ((a4 == 0) * v14))))();
}

void hZZRqgZwI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48E36B0@<X0>(uint64_t a1@<X8>)
{
  v10 = (*(*(v8 + 8) + 4 * v2) ^ v5) + v1;
  *(*(a1 + 8) + 4 * v2) = v5 + v4 + 493 + v10 - (v6 & (2 * v10)) - 1062;
  return (*(v7 + 8 * (((v2 + 1 != v9) * v3) ^ v4)))();
}

uint64_t sub_1D48E3750()
{
  v8 = (**(v7 + 8) ^ v3) - (**(v6 + 8) ^ v3);
  **(v0 + 8) = v8 + v3 - ((v8 << (((v2 - 92) | 2) + 67)) & v5);
  return (*(v4 + 8 * ((103 * (v1 == 1)) ^ v2)))(0xFFFFFFFFLL);
}

uint64_t sub_1D48E37DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = v3 + 32;
  v9 = (v6 ^ v8) + v2;
  v10 = *(a2 + v9 - 15);
  v11 = *(a2 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v7 + 8 * (v4 ^ (8 * (v5 == v8)))))();
}

uint64_t sub_1D48E37E4()
{
  v4 = (v2 + 1281653873) | 0x20084014;
  *(v3 - 136) = (v4 - 606610957) ^ (1785193651 * ((((2 * ((v3 - 136) ^ 0xB4EDCAB6)) | 0x613E7C68) - ((v3 - 136) ^ 0xB4EDCAB6) + 1331741132) ^ 0xF25350AE));
  *(v0 + 8) = &v7;
  (*(v1 + 8 * (v4 ^ 0x6C6CCEE1)))(v3 - 136);
  return (v4 ^ 0x5649372D) + (v6 ^ 0xEDDF9DFB) + ((2 * v6) & 0xDBBF3BF6) - 671454635;
}

uint64_t sub_1D48E38F0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, char *a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  v29 = a1 ^ 0xB1;
  v30 = ((v28 - 1505331090 - 2 * ((v28 - 144) & 0xA64678FE)) ^ 0x77445581) * v21;
  v25[3] = &a21;
  v25[1] = v27;
  *(v28 - 128) = (a1 + 168) ^ v30;
  *(v28 - 124) = v22 + v30 + 726930000 + (a1 ^ 0xB1);
  (*(v23 + 8 * (a1 + 1006)))(v28 - 144);
  a10 = &a15;
  a11 = &a19;
  *v25 = v24;
  v25[1] = &a10;
  *(v28 - 128) = v29 + 50899313 * ((((2 * (v28 - 144)) | 0xC448C258) - (v28 - 144) - 1646551340) ^ 0x48EF4B56) - 1239;
  (*(v23 + 8 * (v29 ^ 0x4B8)))(v28 - 144);
  *(v28 - 128) = v29 + 143681137 * ((2 * ((v28 - 144) & 0x65746900) - (v28 - 144) + 445355773) ^ 0xFC233AED) + 126;
  v25[3] = &a13;
  v25[4] = &a10;
  v25[5] = a6;
  *v25 = &a21;
  v25[1] = v24;
  v31 = (*(v23 + 8 * (v29 ^ 0x4C9)))(v28 - 144);
  return (*(v23 + 8 * ((((722 * ((v29 + 93939093) & 0xFA6695F7 ^ 0x5A6)) ^ 0x5E6) * (v26 == 0)) ^ v29)))(v31);
}

uint64_t sub_1D48E3A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v22 = a5 ^ (a5 - 23);
  v23 = 59 * v22;
  v24 = v19 - 328993298 < ((25 * (v22 ^ 0x33)) ^ 0xEC63F724);
  v25 = v19 - 328993298 > a19;
  if (a19 < 0xEC63F5AE != v24)
  {
    v25 = v24;
  }

  return (*(v20 + 8 * ((!v25 * (v23 - 2292)) ^ (v21 + a5 + 3509))))();
}

void VkGM3ndk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    v11 = a11 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48E3BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, unsigned int a14)
{
  v17 = a14 < a13;
  if (v17 == v14 > 0xCF346F3A)
  {
    v17 = 17 * (v15 ^ 0x601) + v14 + 818647186 < a14;
  }

  return (*(v16 + 8 * (v15 ^ (16 * v17))))();
}

uint64_t sub_1D48E3D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, unsigned int a16)
{
  a16 = (v18 + 1879) ^ (843532609 * ((&a13 + 90678696 - 2 * (&a13 & 0x567A5A8)) ^ 0x592AF12D));
  a15 = &a11;
  a13 = a12;
  (*(v16 + 8 * (v18 + 3544)))(&a13);
  LODWORD(a13) = (v18 + 1626) ^ (1504884919 * (&a13 ^ 0xFBC3B71B));
  a14 = a12;
  v19 = (*(v16 + 8 * (v18 + 3552)))(&a13);
  return (*(v16 + 8 * ((30 * (HIDWORD(a13) == v17 + v18 + 1959 - 2128)) ^ v18)))(v19);
}

uint64_t sub_1D48E4010@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, unsigned int a63)
{
  v65 = (a1 ^ 0x702) + 157;
  (*(a55 + 8 * (a1 ^ 0xCA3)))(*a22, STACK[0x2C8], a63);
  v66 = LODWORD(STACK[0x2FC]);
  v67 = 675097751 * ((~v63 & 0xC0EF8CB59F6629B5 | v63 & 0x3F10734A6099D64ALL) ^ 0x4107261EDC260C23);
  *(v64 - 168) = v67 ^ 0x2804F185;
  *(v64 - 160) = v67 + v65 - 127064432 - 44;
  *(v64 - 152) = v66 ^ v67;
  *(v64 - 180) = (v65 - 127064526) ^ v67;
  *(v64 - 176) = v65 - 127064432 - v67;
  *(v64 - 192) = -675097751 * ((~v63 & 0x9F6629B5 | v63 & 0x6099D64A) ^ 0xDC260C23);
  *(v64 - 188) = v65 - v67 + 1699921097;
  v68 = (*(a55 + 8 * (v65 ^ 0xBB5)))(v64 - 192);
  return (*(a55 + 8 * *(v64 - 184)))(v68);
}

uint64_t sub_1D48E42A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *v20 = a17;
  *(v24 - 112) = (v22 + 1000) ^ (((((v24 - 136) | 0x7F601900) - ((v24 - 136) & 0x7F601900)) ^ 0x232D4D85) * v17);
  v20[2] = &a14;
  (*(v21 + 8 * (v22 ^ 0xA99)))(v24 - 136);
  v25 = a17;
  *(v24 - 136) = (v22 + 747) ^ (((v24 + 1715910018 - 2 * ((v24 - 136) & 0x6646B60A)) ^ 0x9D850111) * v23);
  v20[1] = v25;
  v26 = (*(v21 + 8 * (v22 + 2673)))(v24 - 136);
  return (*(v21 + 8 * ((623 * (*(v24 - 132) == v22 - v19 + v18)) ^ v22)))(v26);
}

uint64_t sub_1D48E438C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = v66 - 711;
  v69 = a65 - v65;
  v71 = a1 == 566983245 || v69 != (((v68 ^ 0x157) - 715470191) ^ (v68 - 264));
  return (*(v67 + 8 * ((v71 | (2 * v71)) ^ v68)))();
}

uint64_t sub_1D48E43E8(uint64_t a1)
{
  v4 = 307 * (v1 ^ 0x57B);
  *v8 = a1;
  *v7 = v9 ^ 0x73E653B2 ^ v4;
  v5 = (v4 - 912) | 0x700;
  v13 = v10;
  v12 = v4 - 612 - (((&v12 | 0xAD071CE3) - (&v12 & 0xAD071CE3)) ^ 0x4BAFB0F3) * v2 + 1919;
  (*(v3 + 8 * (v4 + 2759)))(&v12);
  v12 = v5 - (((&v12 | 0xBB461AF3) - (&v12 & 0xBB461AF3)) ^ 0x5DEEB6E3) * v2 + 427;
  v13 = v11;
  (*(v3 + 8 * (v5 + 1879)))(&v12);
  return 0;
}

uint64_t sub_1D48E451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a15 = &a10;
  a14 = (50899313 * ((-1025768029 - (&a14 ^ 0x3A84F0BA | 0xC2DC05A3) + (&a14 ^ 0x3A84F0BA | 0x3D23FA5C)) ^ 0x2D6C209C)) ^ 0x72E;
  v19 = (*(v16 + 29464))(&a14);
  return (*(v16 + 8 * ((1644 * (a16 == ((v17 + 89) ^ 0x3AF))) ^ v18)))(v19);
}

uint64_t sub_1D48E45C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v19 = v16 + ((v18 - 1871334747) & 0x6F8A4AFE ^ 0xFC5AA09E) < a16 - 1560489390;
  if ((a16 - 1560489390) < 0xFC5AA0B0 != v16 > 0x3A55F4F)
  {
    v19 = (a16 - 1560489390) < 0xFC5AA0B0;
  }

  return (*(v17 + 8 * ((30 * v19) ^ v18)))();
}

uint64_t sub_1D48E46D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char *a15, int a16)
{
  a15 = &a10;
  a14 = (50899313 * ((&a14 - 2077067134 - 2 * (&a14 & 0x84327882)) ^ 0xAEF952F8)) ^ 0x72E;
  v19 = (*(v16 + 29464))(&a14);
  return (*(v16 + 8 * ((1851 * (a16 == v17)) ^ v18)))(v19);
}

uint64_t sub_1D48E4824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a2 - 1;
  STACK[0x348] = v7;
  *(a1 + v7) = ((v2 + 1) ^ v3) * (v2 + 18);
  return (*(v6 + 8 * (((STACK[0x348] == 0) * v4) ^ (v5 + 224))))();
}

uint64_t sub_1D48E485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17)
{
  v21 = 1564307779 * ((&a12 & 0x217F19E | ~(&a12 | 0x217F19E)) ^ 0x6AE5C272);
  a16 = v18 - ((2 * v18) & 0xFBF408DA) - v21 + 2113537133;
  a14 = a11;
  a12 = v21 ^ 0x434;
  (*(v19 + 29720))(&a12);
  v22 = *(v17 + 8);
  v23 = (*v17 ^ 0xD0FDF27F) + 1058954751 + ((2 * *v17) & 0xA1FBE4FE);
  v24 = 742307843 * (((&a12 | 0xE7C95863) - (&a12 & 0xE7C95863)) ^ 0xF9EBD536);
  a12 = v24 ^ 0x491;
  a15 = v23 ^ v24;
  a14 = v22;
  a17 = a11;
  (*(v19 + 29560))(&a12);
  v25 = *(v17 + 24);
  v26 = (*(v17 + 16) ^ 0x399E507F) - 696385537 + ((2 * *(v17 + 16)) & 0x733CA0FE);
  v27 = 742307843 * ((((&a12 | 0x57C395F4) ^ 0xFFFFFFFE) - (~&a12 | 0xA83C6A0B)) ^ 0xB61EE75E);
  a12 = v27 ^ 0x491;
  a15 = v26 ^ v27;
  a17 = a11;
  a14 = v25;
  v28 = (*(v19 + 29560))(&a12);
  return (*(v19 + 8 * ((14 * (a13 == v20)) ^ 0xCC5u)))(v28);
}

uint64_t sub_1D48E4B78(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16)
{
  if (a16 < 0xC339E364 != (a13 - 1019616348) < 0xC339E364)
  {
    v18 = (a13 - 1019616348) < 0xC339E364;
  }

  else
  {
    v18 = a13 - 1019616348 > a16;
  }

  return (*(v16 + 8 * ((!v18 * ((a6 - 1971) ^ ((a4 + v17 + 1989) | 0x252))) ^ (a4 + v17 + 1944))))();
}

uint64_t sub_1D48E4B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = STACK[0x2C8];
  v77 = 675097751 * ((((v75 - 192) | 0xBF108D65) - (v75 - 192) + ((v75 - 192) & 0x40EF7298)) ^ 0xFC50A8F3);
  *(v75 - 184) = ((v72 ^ 0xFFCDB3F5) + 1991765888 + (v73 & 2)) ^ v77;
  *(v75 - 176) = &STACK[0x28C];
  *(v75 - 168) = v76;
  LOBYTE(STACK[0x1870]) = -69 - -105 * ((((v75 + 64) | 0x65) - (v75 + 64) + ((v75 + 64) & 0x98)) ^ 0xF3);
  *(v75 - 152) = a36;
  *(v75 - 192) = a31;
  *(v75 - 156) = v77 + v71 - 884;
  *(v75 - 136) = a35;
  *(v75 - 140) = -675097751 * ((((v75 - 192) | 0xBF108D65) - (v75 - 192) + ((v75 - 192) & 0x40EF7298)) ^ 0xFC50A8F3) + a70 * ((v71 ^ 0xEE1) + 1194214965) + 786410973;
  v78 = (*(v70 + 8 * (v71 + 1447)))(v75 - 192);
  v79 = *(v75 - 144);
  LODWORD(STACK[0x2FC]) = v79;
  return (*(a62 + 8 * (((v79 == v74) * (((v71 - 2311) | 0xA2B) - 2594)) ^ v71)))(v78);
}

uint64_t sub_1D48E4CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v59 = STACK[0x378];
  STACK[0x438] = STACK[0x378];
  STACK[0x250] = 0;
  LODWORD(STACK[0x3EC]) = 1499319901;
  STACK[0x368] = 0;
  LODWORD(STACK[0x22C]) = 1499319901;
  return (*(v58 + 8 * (((((v59 == 0) ^ ((a50 ^ 0x29) + 1)) & 1) * (((a50 - 1580673049) & 0x5E371FFF) - 1471)) ^ a50)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_1D48E4D24(uint64_t a1, unsigned int a2, int a3, int a4)
{
  *(v11 + (v4 + 1)) = *(v8 + v10);
  v13 = a3 + v10 + 1 < v6;
  if (v6 < v7 != v9 + v10 > a2)
  {
    v13 = v6 < v7;
  }

  return (*(v12 + 8 * ((v13 * a4) ^ v5)))();
}

uint64_t sub_1D48E4D3C()
{
  v3 = ((v1 - 2163) ^ 0xFFFFFFFFFFFFFEC0) + v0;
  v5 = v3 < 0x10 && ((v0 - 1) & 0xFu) >= (v3 & 0xF);
  return (*(v2 + 8 * ((v5 * (v1 ^ 0x9B8)) ^ v1)))();
}

uint64_t sub_1D48E4D8C@<X0>(unint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v8 = (a2 ^ 0x3D2) & (v5 + 15);
  v12 = a1 < 0x10 || (1 - v6 + v2 - v5 + v8) < 0x10 || (1 - v6 + v4 - v5 + v8) < 0x10 || v3 - v6 - v5 + v8 + (((a2 - 429) | 0x8C) ^ 0x2BDuLL) < 0x10;
  return (*(v7 + 8 * ((1898 * v12) ^ a2)))();
}

uint64_t sub_1D48E5004()
{
  v3 = (v0 ^ 0x92F) - 1500;
  v8 = (v0 ^ 0x92F) - (((&v8 | 0x59F97928) - &v8 + (&v8 & 0xA60686D0)) ^ 0xBF51D538) * v2 + 174;
  v9 = v7;
  (*(v1 + 8 * (v0 ^ 0xF49u)))(&v8);
  v8 = v3 - ((((2 * &v8) | 0xDEF03F2) - &v8 - 116883961) ^ 0xE05F2DE9) * v2 + 1674;
  v9 = v6;
  (*(v1 + 8 * (v3 ^ 0xC4A)))(&v8);
  return (v0 ^ 0x92F) + (v5 ^ 0xFC15F7AB) + ((2 * v5) & 0xF82BEF56) + 65667151;
}

void sub_1D48E5040(unint64_t a1, int a2, unsigned int a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v19 = ((v14 ^ 0xC2510EE5FCF17B31) + 0x3DAEF11A030E84CFLL) ^ ((v14 ^ 0xCEF9DA81865AE082) + 0x3106257E79A51F7ELL) ^ ((v14 ^ 0xCA8D464A9463AF3) - 0xCA8D464A9463AF3);
  v20 = ((v19 + 0x483BC70B8F6EB807) * v16 + ((((v15 + 67617790) | 0x92101001) ^ 0x564A9A8D35BEC5F7) + v19) * v17) * v18 + ((((v15 + 67617790) | 0x92101001) ^ 0x564A9A8D35BEC5F7) + v19) * (v19 + 0x483BC70B8F6EB807) + a7;
  v21 = v20 - (((v20 * a1) >> 64) >> 31) * a8;
  v22 = v21 * v11 + (a2 ^ v10) * (a2 ^ v10) + v12;
  v23 = v22 - (((v22 * a5) >> 64) >> 31) * v13;
  *(v9 + a3) = (((v23 * v21) >> 15) - ((2 * ((v23 * v21) >> 15)) & 4) - 126) ^ *(v8 + a3);
  *(v9 + (a3 | 1)) = (((v23 * v21) >> 23) - ((2 * ((v23 * v21) >> 23)) & 4) - 126) ^ *(v8 + (a3 | 1));
  *(v9 + (a3 | 2)) = (((v23 * v21) >> 31) - ((2 * ((v23 * v21) >> 31)) & 4) - 126) ^ *(v8 + (a3 | 2));
  *(v9 + (a3 | 3)) = (((v23 * v21) >> 39) + (a6 ^ (2 * ((v23 * v21) >> 39)) | 0xFB) - 125) ^ *(v8 + (a3 | 3));
  JUMPOUT(0x1D48D095CLL);
}

uint64_t sub_1D48E51F8()
{
  v4 = (v1 - 3177) - v2 - 224;
  v5 = -1609504638 - v0;
  if (HIDWORD(v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 >= v4;
  }

  v7 = v6;
  return (*(v3 + 8 * (v1 | (2 * v7))))();
}

uint64_t sub_1D48E5288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, int a59, int a60, uint64_t a61, int a62, int a63)
{
  *v66 = (a63 - 863) & 0x8D4D81 ^ v66[623] ^ (((v67 | ~(a63 - 863)) & (a63 - 863 - v67) | v67 & ~(a63 - 863)) >> 31);
  v69 = 50899313 * ((0x7430144D45E80E4FLL - ((v68 - 192) | 0x7430144D45E80E4FLL) + a57) ^ 0x38C49C5490DCDBCALL);
  *(v68 - 192) = 1 - v69;
  *(v68 - 188) = (a60 ^ (a63 - 1485) ^ 9 ^ (a63 - 1485)) + v69;
  *(v68 - 184) = (a63 + 55968452) ^ v69;
  *(v68 - 180) = a60 + v69;
  *(v68 - 168) = v69 ^ 3;
  *(v68 - 160) = (v65 + 1) + v69;
  *(v68 - 152) = a58 - v69;
  v70 = (*(v64 + 8 * (a63 + 2211)))(v68 - 192);
  return (*(a64 + 8 * *(v68 - 176)))(v70);
}

uint64_t sub_1D48E52CC@<X0>(int a1@<W8>)
{
  v4 = 742307843 * ((2 * (((v3 - 168) ^ 0xE465DFA8FD5C478) & 0x22E8BFEA43854CC0) - ((v3 - 168) ^ 0xE465DFA8FD5C478) - 0x22E8BFEA43854CC1) ^ 0x60CDC0842D8DFA12);
  STACK[0x318] = v4 + v1;
  *(v3 - 168) = (a1 + 1248215460) ^ v4;
  *(v3 - 164) = a1 + 1248215460 - v4 - 54;
  *(v3 - 128) = -742307843 * ((2 * (((v3 - 168) ^ 0x8FD5C478) & 0x43854CC0) - ((v3 - 168) ^ 0x8FD5C478) - 1132809409) ^ 0x2D8DFA12);
  *(v3 - 144) = v4 + a1 - 1255348600;
  *(v3 - 156) = ((a1 + 1248215460) ^ 0xF9) - v4;
  STACK[0x328] = v4 + 489831044;
  v5 = (*(v2 + 8 * (a1 + 3756)))(v3 - 168);
  return (*(v2 + 8 * *(v3 - 160)))(v5);
}

uint64_t sub_1D48E53EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, unint64_t a60, int a61, int a62)
{
  if (a40 != 154278013)
  {
    if ((a40 - 154278014) < 2)
    {
      JUMPOUT(0x1D48E5498);
    }

    v66 = *(v64 + 8 * (a62 - 1475));
    STACK[0x398] = v62;
    STACK[0x268] = a60;
    STACK[0x300] = v66;
    JUMPOUT(0x1D48E56F8);
  }

  return (*(v64 + 8 * (((((v63 + 433) ^ a5) == 32) * (((v63 - 266) ^ a3) * a4 - 1464)) ^ (v63 - 266))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

void sub_1D48E5730(uint64_t a1)
{
  v3 = *(*(a1 + 16) + 4) == 1673015719 || *(*a1 + 4) == 1673015719;
  v1 = *(a1 + 8) ^ (1564307779 * ((((2 * a1) | 0xB1B019AC) - a1 - 1490554070) ^ 0xCFD5C0C5));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1D48E5828(uint64_t result)
{
  if ((v2 + v3 - 1) >= 0x7FFFFFFF)
  {
    v6 = -v5;
  }

  else
  {
    v6 = v4;
  }

  *(v1 + 4) = v6;
  *(result + 8) = 1743819800;
  return result;
}

uint64_t sub_1D48E5860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, __int16 a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, unsigned int a21)
{
  a18 = a17;
  a20 = &a14;
  a21 = (v21 - 724) ^ (843532609 * (((&a18 | 0x1CA542F1) + (~&a18 | 0xE35ABD0E)) ^ 0x40E81675));
  (*(v22 + 8 * (v21 + 941)))(&a18);
  a21 = (v21 - 724) ^ (843532609 * (((&a18 | 0x83AC08FB) - (&a18 & 0x83AC08FB)) ^ 0xDFE15C7E));
  a20 = &a12;
  a18 = a17;
  (*(v22 + 8 * (v21 + 941)))(&a18);
  a21 = (v21 - 724) ^ (843532609 * (((&a18 | 0x13CB2483) - (&a18 & 0x13CB2483)) ^ 0x4F867006));
  a18 = a17;
  a20 = &a16;
  (*(v22 + 8 * (v21 ^ 0x455)))(&a18);
  LODWORD(a18) = (v21 - 977) ^ (1504884919 * (&a18 ^ 0xFBC3B71B));
  a19 = a17;
  v24 = (*(v22 + 8 * (v21 ^ 0x45D)))(&a18);
  return (*(v22 + 8 * (((HIDWORD(a18) == v23) * (((v21 + 1103588631) & 0xBFFEEFFF) - 29779945)) | v21)))(v24);
}

uint64_t sub_1D48E5A58@<X0>(int a1@<W0>, unint64_t a2@<X6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v16 = HIDWORD(a2) + HIDWORD(v11) + (*(v15 + 4 * v9) ^ (a3 + ((v14 - 7310497) & 0x6F8F76) - 1846));
  *(v15 + 4 * a9) = a3 + v14 - 485 + v16 - (a1 & (2 * v16)) - 635;
  *(v15 + 4 * v9) = HIDWORD(v16) + a3 - 2 * HIDWORD(v16);
  return (*(v13 + 8 * (v14 ^ (3243 * (v12 + 1 == v10)))))();
}

uint64_t sub_1D48E5B58@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v8 = a2 - 1;
  *(v7 + v8) = *(v2 + v8) ^ *(v4 + (v8 & 0xF)) ^ *(v3 + (v8 & 0xF)) ^ -(v8 & 0xF | (16 * (v8 & 0xF))) ^ *((v8 & 0xF) + v5 + 2) ^ 0x82;
  return (*(v6 + 8 * ((97 * (v8 == ((a1 - 658) | 0xA8u) - 2233)) ^ (a1 - 637))))();
}

uint64_t sub_1D48E5BCC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, int a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = STACK[0x358];
  v72 = &v69[6 * v67];
  v72[2] = v68;
  v72[3] = a59;
  *(v72 + 2) = v71;
  v72[6] = a65;
  *v69 = ((3 * (a1 ^ 0x46)) ^ 0x2F0) + v65;
  LODWORD(STACK[0x248]) = v66;
  v74 = v66 + 1077876932 < 575197240 && v66 + 1077876932 >= a49;
  return (*(v70 + 8 * (a1 ^ (120 * v74))))();
}

uint64_t sub_1D48E5C48@<X0>(int a1@<W8>)
{
  v7 = v5 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = v1 - v4 + v8 + 1;
  v10 = v1 + v8 + 1;
  v11 = v8 + v3 + 4;
  v12 = v8 - v4 + v2 + ((a1 - 233) | 0x208u) - 600;
  v13 = v8 + v2 + 6;
  v15 = v10 > v5 && v9 < v7;
  if (v11 > v5 && v11 - v4 < v7)
  {
    v15 = 1;
  }

  v18 = v13 > v5 && v12 < v7 || v15;
  return (*(v6 + 8 * ((126 * (v18 ^ 1)) ^ a1)))();
}

uint64_t sub_1D48E5CE0@<X0>(int a1@<W0>, int a2@<W2>, unsigned int a3@<W8>)
{
  HIDWORD(v13) = a1 ^ 0x62C4889;
  LODWORD(v13) = a1 ^ 0x40000000;
  v14 = (v4 ^ v12) + (v13 >> 27) + (((v7 ^ v3) + v12 - ((a3 ^ 0x8C58954E) & (2 * (v7 ^ v3)))) ^ a2) + (*(v5 + 4 * (v6 + v11)) ^ v9) - 857597928;
  return (*(v10 + 8 * ((837 * (v6 + 1 == v8 + 64)) ^ a3)))(v14 ^ ((v14 ^ 0x1F6F5B05) - 487591239) ^ ((v14 ^ 0xC5B8FEC2) + 943216512) ^ ((v14 ^ 0x267F0C7A) - 604002872) ^ ((v14 ^ 0xFED7FFFF) + 56055363) ^ 0x44531ECB, 3807376057, v3);
}

uint64_t sub_1D48E5DFC@<X0>(int a1@<W8>)
{
  v6 = *(v3 + 8);
  v7 = *(v6 + 4 * v5 - 4) ^ 0x8052E343;
  *(v6 + 4 * (v5 + a1)) = ((v7 >> (32 - (v1 ^ 0xE))) & (v2 + 1871692649) | ~(v7 >> (32 - (v1 ^ 0xE))) & 0x90703096) ^ 0x1022D3D5;
  return (*(v4 + 8 * ((28 * (v5 < 2)) | v2)))();
}

uint64_t sub_1D48E5EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, char a14, _BYTE *a15, char a16, char *a17, _BYTE *a18, char *a19, char *a20, unsigned int a21)
{
  a20 = &a16;
  a17 = &a14;
  a18 = a15;
  a21 = v21 - ((((2 * &a17) | 0x7743B888) - &a17 + 1147020220) ^ 0x6AA3F13B) * v24 + 68671569;
  (*(v22 + 8 * (v21 ^ 0xFCD)))(&a17);
  a19 = &a11;
  a17 = a15;
  LODWORD(a20) = (v21 + 1684) ^ (843532609 * ((((&a17 | 0x800A7516) ^ 0xFFFFFFFE) - (~&a17 | 0x7FF58AE9)) ^ 0x23B8DE6C));
  (*(v22 + 8 * (v21 + 3349)))(&a17);
  a18 = a15;
  LODWORD(a17) = (v21 + 1431) ^ (1504884919 * ((-132120484 - (&a17 | 0xF820005C) + (&a17 | 0x7DFFFA3)) ^ 0xFC1C48B8));
  v25 = (*(v22 + 8 * (v21 ^ 0xFE5)))(&a17);
  return (*(v22 + 8 * (((HIDWORD(a17) == v23) * ((589 * (v21 ^ 0x169)) ^ 0xB66)) ^ v21)))(v25);
}

uint64_t sub_1D48E60A8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((27 * (v5 == 0)) ^ (v2 + 510))))();
}

uint64_t sub_1D48E6110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  v12 = v8 - v10;
  if (v9 > v12)
  {
    v12 = v9;
  }

  return (*(v11 + 8 * ((((v12 > 0x7FFFFFFE) ^ ((a6 ^ 0xFB) * a8)) & 1 | (8 * (((v12 > 0x7FFFFFFE) ^ ((a6 ^ 0xFB) * a8)) & 1))) ^ a6)))();
}

uint64_t sub_1D48E61C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, uint64_t a19)
{
  (*(v22 + 8 * (v21 ^ 0x717)))(v20);
  a19 = a13;
  a17 = (v21 - 609) ^ ((((&a17 | 0xB010A2D) - &a17 + (&a17 & 0xF4FEF5D0)) ^ 0xF0C2BD36) * v19);
  v23 = (*(v22 + 8 * (v21 ^ 0x7ED)))(&a17);
  return (*(v22 + 8 * (((a18 == 671454635) * ((v21 + 1202488955) & 0xB85379FA ^ 0xA26)) ^ v21)))(v23);
}

uint64_t sub_1D48E6284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  *a4 = 0;
  *a5 = 0;
  a16 = (1037613739 * (&a15 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  v17 = (*(v16 + 29168))(&a15);
  return (*(v16 + 8 * ((2437 * (a15 == 671454635)) | 0x20Au)))(v17);
}

uint64_t sub_1D48E6450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16, char *a17)
{
  v20 = 675097751 * ((2 * (&a12 & 0x6BD8A9A8) - &a12 - 1809361326) ^ 0xD76773C4);
  a16 = v20 ^ 0xA33F4F7D;
  a12 = a11;
  a17 = &a10;
  a13 = (v19 + 1421509244) ^ v20;
  a14 = v20 ^ 0x36317B65;
  v21 = (*(v17 + 8 * (v19 ^ 0x29Eu)))(&a12);
  return (*(v17 + 8 * (((a15 == v18) * (((v19 + 1231236858) & 0xD4B) - 1660)) ^ v19)))(v21);
}

uint64_t sub_1D48E651C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, unsigned int a20, unsigned int a21, uint64_t a22)
{
  v27 = 1564307779 * ((-2 - ((&a17 ^ 0x41827C88 | 0x8C6D8017) + (&a17 ^ 0x80050016 | 0x73927FE8))) ^ 0xA9754F72);
  a19 = a13;
  a17 = v27 ^ 0x434;
  a21 = v24 - v27 - ((2 * v24) & 0xFBF408DA) + 2113537133;
  (*(v25 + 29720))(&a17);
  v28 = 742307843 * ((&a17 + 132376821 - 2 * (&a17 & 0x7E3E8F5)) ^ 0x19C165A0);
  a22 = a13;
  a20 = v28 ^ ((v23 ^ 0x911FD5FF) + 2130475647 + ((2 * v23) & 0x223FABFE));
  a17 = v28 ^ 0x491;
  a19 = v22;
  v29 = (*(v25 + 29560))(&a17);
  return (*(v25 + 8 * ((3599 * (a18 == v26)) ^ 0x68Du)))(v29);
}

uint64_t sub_1D48E668C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, unsigned int a17)
{
  a16 = a11;
  a14 = v17;
  a17 = 1841 - 210068311 * (&a14 ^ 0x576F9AD7);
  v20 = (*(v19 + 30512))(&a14);
  return (*(v19 + 8 * ((4041 * (a15 == v18)) ^ 0x3B9u)))(v20);
}

uint64_t sub_1D48E670C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22)
{
  v27 = (v26 - 1190) | 0x100;
  v28 = 1564307779 * (((&a17 | 0x5390923C) - (&a17 & 0x5390923C)) ^ 0xC49D5E2F);
  a19 = a15;
  a17 = (v27 + 796) ^ v28;
  a21 = v24 - ((2 * v24) & 0xFBF408DA) - v28 + 2113537133;
  (*(v25 + 8 * (v27 + 3435)))(&a17);
  v29 = 742307843 * (((&a17 | 0x447ECAAC) - &a17 + (&a17 & 0xBB813550)) ^ 0x5A5C47F9);
  a19 = v22;
  a20 = ((v23 ^ 0x79FDDE7E) - 1776389632 + (((v27 ^ 0x5CC) - 201607128) & (2 * v23))) ^ v29;
  a17 = (v27 + 889) ^ v29;
  a22 = a15;
  v30 = (*(v25 + 8 * (v27 + 3415)))(&a17);
  return (*(v25 + 8 * ((98 * (a18 != 671454635)) | v27)))(v30);
}

uint64_t sub_1D48E6864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18)
{
  a18 = *(*(v18 + 8 * (v20 - 1404)) - 4);
  a17 = v20 + 1564307779 * ((2 * (&a17 & 0x4DC44E08) - &a17 + 842772978) ^ 0xA5367DE1) - 1429;
  v22 = (*(v19 + 8 * (v20 + 2191)))(&a17);
  return (*(v19 + 8 * (((*v21 == (17 * (v20 ^ 0xF4) + 31)) * ((v20 - 314) ^ 0xEF7)) ^ v20)))(v22);
}

void sub_1D48E69B4(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1504884919 * ((2 * (a1 & 0x5311737A) - a1 - 1393652603) ^ 0x572D3B9E));
  __asm { BRAA            X12, X17 }
}

void sub_1D48E6A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, unsigned int a19, int a20)
{
  v24 = (((&a18 | 0x80AE28BF) + (~&a18 | 0x7F51D740)) ^ 0xD7C1B269) * v22;
  a19 = ((v20 ^ 0xFAC7B7BB) + 759029232 + ((((v23 - 1252) | 0x400) - 175150480) & (2 * v20))) ^ v24;
  a20 = v23 - v24 - 578;
  a18 = &a10;
  (*(v21 + 8 * (v23 ^ 0xB77)))(&a18);
  JUMPOUT(0x1D48CABD8);
}

void sub_1D48E6B8C(int a1@<W8>)
{
  if (v1 <= -721306370)
  {
    if (v1 > -1249025096)
    {
      if (v1 <= -1170991373)
      {
        if (v1 == -1249025095 || v1 == -1244344130)
        {
          goto LABEL_41;
        }

        v6 = -1242297169;
      }

      else if (v1 > -898652696)
      {
        if (v1 == -898652695)
        {
          goto LABEL_41;
        }

        v6 = -764594456;
      }

      else
      {
        if (v1 == -1170991372)
        {
          goto LABEL_45;
        }

        v6 = -1130377115;
      }

      goto LABEL_40;
    }

    if (v1 <= -1613960436)
    {
      if (v1 == -1784006354 || v1 == -1735055765)
      {
        goto LABEL_41;
      }

      v5 = -1635782450;
    }

    else
    {
      if (v1 > -1404268102)
      {
        if (v1 == -1404268101)
        {
          goto LABEL_41;
        }

        v6 = -1285369064;
        goto LABEL_40;
      }

      if (v1 == -1613960435)
      {
        goto LABEL_41;
      }

      v5 = -1525251128;
    }
  }

  else
  {
    if (v1 <= -113003125)
    {
      if (v1 <= -606187811)
      {
        if (v1 == -721306369)
        {
          goto LABEL_45;
        }

        if (v1 == -684404030)
        {
          goto LABEL_41;
        }

        v6 = -606187815;
      }

      else if (v1 > -219247284)
      {
        if (v1 == -219247283)
        {
          goto LABEL_41;
        }

        v6 = -156558184;
      }

      else
      {
        if (v1 == -606187810)
        {
          goto LABEL_41;
        }

        v6 = -563995473;
      }

      goto LABEL_40;
    }

    if (v1 <= 1309372087)
    {
      if (v1 <= -38210749)
      {
        if (v1 != -113003124)
        {
          v5 = -87541134;
          goto LABEL_44;
        }

LABEL_41:
        *(v4 - 224) = xmmword_1D4B4B4C0;
        __asm { BRAA            X9, X17 }
      }

      if (v1 == -38210748)
      {
        goto LABEL_41;
      }

      v6 = 955245453;
LABEL_40:
      if (v1 != v6)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    if (v1 <= 1661455580)
    {
      if (v1 == 1309372088)
      {
        goto LABEL_41;
      }

      v6 = 1543978474;
      goto LABEL_40;
    }

    if (v1 == 1899944550)
    {
      goto LABEL_41;
    }

    v5 = 1661455581;
  }

LABEL_44:
  if (v1 == v5)
  {
LABEL_45:
    *(v4 - 224) = xmmword_1D4B4B4D0;
    __asm { BRAA            X9, X17 }
  }

LABEL_46:
  *(v7 + 24) = a1;
}

uint64_t sub_1D48E6F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = STACK[0x358];
  v77 = v72 - 670966098;
  v78 = 435584651 * ((-318319008 - ((v74 - 192) | 0xED06D660) + ((v74 - 192) | 0x12F9299F)) ^ 0x7FCB33C9);
  *(v74 - 192) = &STACK[0x2D4];
  *(v74 - 152) = &STACK[0x27C];
  *(v74 - 144) = &STACK[0x3F8];
  *(v74 - 180) = v78 + v73 + 1717;
  *(v74 - 160) = v77 ^ v78;
  *(v74 - 176) = v76;
  *(v74 - 168) = &a72;
  v79 = (*(v75 + 8 * (v73 ^ 0xE53)))(v74 - 192);
  return (*(a62 + 8 * (((*(v74 - 184) == (v73 ^ 0x2805956E)) * ((15 * (v73 ^ 0xEE)) ^ 0x44)) ^ v73)))(v79, 49, 0);
}

uint64_t sub_1D48E7028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, int *a21, unsigned int a22)
{
  a19 = a15;
  a21 = &a17;
  a22 = (v22 + 172) ^ (843532609 * ((((2 * &a19) | 0x9DFF63A0) - &a19 + 822103600) ^ 0x92B2E555));
  v24 = (*(v23 + 8 * (v22 + 1837)))(&a19);
  return (*(v23 + 8 * ((3976 * (a17 == (((v22 + 981729006) | 0x520990C) ^ ((v22 + 679477488) | 0x1724970A)))) ^ v22)))(v24);
}

uint64_t sub_1D48E70F4(uint64_t a1, int a2)
{
  v6 = (a1 + v4 - 16);
  v7 = (v2 + v4 - 16);
  v8.i64[0] = 0x8282828282828282;
  v8.i64[1] = 0x8282828282828282;
  v9 = veorq_s8(*v7, v8);
  v6[-1] = veorq_s8(v7[-1], v8);
  *v6 = v9;
  return (*(v5 + 8 * ((((v4 & 0xFFFFFFE0) == 32) * ((v3 + a2 + 1798) ^ 0x4FA)) ^ (v3 + a2 + 2253))))();
}

void sub_1D48E7150(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) - 143681137 * ((665376400 - (a1 | 0x27A8D690) + (a1 | 0xD857296F)) ^ 0x3EFF857F);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *a1;
  v5 = *(a1 + 8);
  v9[0] = 0x63B831A700000082;
  v9[1] = &v11;
  v8[0] = 0x63B831A700000082;
  v8[1] = &v10;
  v13 = v2[1];
  v14 = v9;
  v12[0] = (1564307779 * (((v12 | 0x1150B8AD) - (v12 & 0x1150B8AD)) ^ 0x865D74BE)) ^ (v1 + 578);
  v15 = v4;
  v16 = v2;
  v17 = v5;
  v6 = *(&off_1F5033D40 + v1 - 2698);
  (*(v6 + 8 * (v1 ^ 0x42D)))(v12);
  v7 = *v2;
  v12[0] = v1 - 435584651 * (v12 ^ 0x6D321A56) - 742;
  v13 = v8;
  v14 = v7;
  (*(v6 + 8 * (v1 ^ 0x487)))(v12);
  v12[0] = (1785193651 * ((v12 + 770796338 - 2 * (v12 & 0x2DF16B32)) ^ 0xDBD0CF1E)) ^ (v1 + 545);
  v13 = v3;
  (*(v6 + 8 * (v1 ^ 0x417)))(v12);
  __asm { BRAA            X8, X17 }
}

void sub_1D48E73D4(uint64_t a1)
{
  v1 = 742307843 * ((2 * (a1 & 0x782C26B9) - a1 + 131324230) ^ 0x19F15413);
  v2 = *(a1 + 4) - v1;
  if (*(a1 + 24))
  {
    v3 = *(a1 + 8) - v1 == 1442767301;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48E748C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, unsigned int a18, char *a19, int a20)
{
  v23 = v20 - 23;
  a19 = &a16;
  a18 = (v23 + 1313) ^ (50899313 * (((&a18 | 0x50B26449) + (~&a18 | 0xAF4D9BB6)) ^ 0x7A794E32));
  v24 = (*(v21 + 8 * (v23 ^ 0xC6E)))(&a18);
  return (*(v21 + 8 * ((41 * (((v23 + 118) ^ (a20 == v22)) & 1)) ^ v23)))(v24);
}

uint64_t sub_1D48E75B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  a15 = (1037613739 * ((((2 * &a14) | 0x53DFAD0C) - &a14 + 1443899770) ^ 0x78EDFBF9)) ^ 0x86F54BA0;
  v16 = (*(v15 + 29168))(&a14);
  return (*(v15 + 8 * ((1121 * (a14 == 671454635)) ^ 0x825u)))(v16);
}

uint64_t sub_1D48E76CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

void sub_1D48E76E4(uint64_t a1)
{
  (*(v1 + 30488))();
  (*(v1 + 29592))(a1);
  JUMPOUT(0x1D48E7750);
}

uint64_t sub_1D48E77C0@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 1442767302;
  v10 = a2 - 1;
  v11 = *(v4 + v9);
  if (v11 == 130)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 2)
  {
    v12 = 671454635;
    v13 = *v2;
    v14 = (*(v2 + 16) + v3);
    *result = v4;
    *(result + 8) = v5;
    *(result + 12) = v10;
    if (v14 == 77)
    {
      v15 = 1564913145;
    }

    else
    {
      v15 = 1564913144;
    }

    *(result + 16) = 1438290795;
    *(result + 20) = v15;
    *(result + 24) = 671454635;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 ^ 0x8F4)))();
    v12 = 671412612;
  }

  *(v2 + 12) = v12;
  return result;
}

void sub_1D48E7A08(uint64_t a1)
{
  v1 = *a1 - 1564307779 * (((a1 | 0x67BE492F) - (a1 & 0x67BE492F)) ^ 0xF0B3853C);
  v2 = *(a1 + 8);
  v3 = *(&off_1F5033D40 + v1 - 160);
  (*(v3 + 8 * (v1 ^ 0xE31)))(*(&off_1F5033D40 + v1 - 88) - 12, sub_1D4933538);
  __asm { BRAA            X9, X17 }
}

void NY6eB6()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E21B8) ^ 0x82)) ^ byte_1D4B46C70[byte_1D4B43C80[(-35 * ((qword_1EC7E2160 - dword_1EC7E21B8) ^ 0x82))] ^ 0x60]) + 126);
  v1 = *(v0 - 4);
  v2 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + (-35 * ((qword_1EC7E2160 + v1) ^ 0x82)) - 4) ^ 0xF5u)) ^ (-35 * ((qword_1EC7E2160 + v1) ^ 0x82))) - 71);
  v3 = &v5[*v2 - v1];
  *(v0 - 4) = 1228258013 * v3 + 0x5804E9A2B9663D3ALL;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * ((((2 * v6) | 0x4B28454A) - v6 + 1517018459) ^ 0x74960FDA)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * ((*v2 + *(v0 - 4)) ^ 0x82);
  v4 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E21B8) ^ 0x82)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * ((qword_1EC7E2160 - dword_1EC7E21B8) ^ 0x82))] ^ 0x60]) + 4);
  (*(v4 + 8 * ((*(off_1F5034348 + (*(off_1F5033F78 + v2 - 4) ^ 0xF4u) - 12) ^ v2) + 3613)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48E7D44(int8x8_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = v8 + 8;
  *(a4 + (a6 ^ v12) + v7) = veor_s8(*(v10 + (a6 ^ v12) + v7), a1);
  return (*(v11 + 8 * (((a5 == v12) * a7) ^ v9)))();
}

uint64_t sub_1D48E7D4C@<X0>(int a1@<W6>, uint64_t a2@<X7>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int8x16_t *a42)
{
  v49 = (a2 + a3);
  v50 = veorq_s8(a42[-1], *v49);
  v51 = veorq_s8(*a42, v49[1]);
  return (*(v44 + 8 * ((((a1 & 0xFFFFFFE0) == 32) * (6 * (v43 ^ 0x5E6) - 1164)) ^ v43)))(vorrq_s8(vqtbl1q_s8(v50, v45), v42), vorrq_s8(vqtbl1q_s8(v50, v46), 0), vorrq_s8(vqtbl1q_s8(v50, v47), 0), vorrq_s8(vqtbl1q_s8(v50, v48), 0), vorrq_s8(vqtbl1q_s8(v51, v45), 0), vorrq_s8(vqtbl1q_s8(v51, v47), 0), vorrq_s8(vqtbl1q_s8(v51, v46), 0), vorrq_s8(vqtbl1q_s8(v51, v48), 0));
}

uint64_t sub_1D48E8008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  a15 = (1037613739 * ((2 * (&a14 & 0x3FF578B0) - &a14 - 1073051830) ^ 0x1108AA35)) ^ 0x86F54BA0;
  v17 = (*(v15 + 29168))(&a14);
  return (*(v15 + 8 * (((a14 == 671454635) * ((v16 ^ 0x54597A00) - 1415147479)) ^ v16)))(v17);
}

uint64_t sub_1D48E80B8@<X0>(uint64_t a1@<X8>)
{
  v5 = (&v7 ^ 0xE6A8AC10) * v2;
  v8 = v1;
  v9 = v5 + v4 + 797;
  v7 = (v3 ^ ((v3 ^ 0x36BF08DB) - 624607527) ^ ((v3 ^ 0x7EA95B80) - 1831637628) ^ ((v3 ^ 0x37FFBEFF) - 612005635) ^ ((v3 ^ 0x6C6C2458) - 2146039012 + v4) ^ 0x7DA840F2) - v5;
  return (*(a1 + 8 * (v4 ^ 0x92Au)))(&v7);
}

uint64_t sub_1D48E8180@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 2659));

  return v3(v1);
}

uint64_t sub_1D48E85C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

uint64_t sub_1D48E8624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22)
{
  v27 = 1564307779 * ((-2 - ((&a17 ^ 0x961840A | 0xF40A33F1) + (&a17 ^ 0xB00012A0 | 0xBF5CC0E))) ^ 0xD193A546);
  a17 = v27 ^ 0x434;
  a19 = a12;
  a21 = v25 - v27 - ((2 * v25) & 0xFBF408DA) + 2113537133;
  (*(v26 + 29720))(&a17);
  v28 = 742307843 * ((2 * (&a17 & 0x5F83F5D0) - &a17 - 1602483672) ^ 0xBE5E877D);
  a20 = v28 ^ ((v24 ^ 0x39BDF37E) - 698458880 + ((2 * v24) & 0x737BE6FC));
  a17 = v28 ^ 0x491;
  a19 = v23;
  a22 = a12;
  v29 = (*(v26 + 29560))(&a17);
  return (*(v26 + 8 * ((3850 * (a18 == v22)) ^ 0x548u)))(v29);
}

uint64_t sub_1D48E87A0(uint64_t a1)
{
  v5 = *(v3 + 352);
  v6 = (*(a1 + 16) ^ v1) - 1034564442;
  if (v5 > 0x2B354425 != v6 < 0xD4CABBDA)
  {
    v7 = v5 > 0x2B354425;
  }

  else
  {
    v7 = v5 - 724911142 > v6;
  }

  return (*(v2 + 8 * (((((v4 ^ 0x739 ^ v7) & 1) == 0) * (v4 - 928)) ^ v4)))();
}

uint64_t sub_1D48E8820()
{
  v3 = 49 * (v2 ^ 0x1FA);
  v9 = v6;
  v8 = v3 - ((-807791551 - (&v8 | 0xCFDA1441) + (&v8 | 0x3025EBBE)) ^ 0xD68D47AE) * v1 + 2032;
  (*(v0 + 8 * (v3 ^ 0xEA4)))(&v8);
  v9 = v7;
  v8 = v3 + 1706 - ((&v8 & 0xF9D8085A | ~(&v8 | 0xF9D8085A)) ^ 0xE08F5BB5) * v1 + 326;
  (*(v0 + 8 * ((v3 + 1706) ^ 0x90E)))(&v8);
  return (v5 ^ 0x6F8F97BB) - 1200226832 + ((v5 << (49 * (v2 ^ 0xFA) + 61)) & 0xDF1F2F76) - 671454635;
}

void ha0dkchaters6()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E21A0) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 - dword_1EC7E21A0) ^ 0x82))] ^ 0xB]) + 71);
  v1 = -35 * ((qword_1EC7E2160 - *v0) ^ 0x82);
  v2 = *(&off_1F5033D40 + (*(off_1F50342D8 + (*(off_1F5033F18 + v1 - 12) ^ 0x30u) - 12) ^ v1) - 25);
  v3 = &v5[*v2 ^ *v0];
  *v0 = 1228258013 * (v3 - 0xC891BCBEBCEAD82);
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * (((v6 | 0xA369CBD4) - (v6 & 0xA369CBD4)) ^ 0x726BE6AB)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * (*v0 ^ 0x82 ^ *v2);
  v4 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E21A0 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46C70[byte_1D4B43C80[(-35 * (dword_1EC7E21A0 ^ 0x82 ^ qword_1EC7E2160))] ^ 0x9E]) - 160);
  (*(v4 + 8 * ((*(off_1F5034330 + (*(off_1F5034390 + v2 - 4) ^ 0xCDu)) ^ v2) + 3449)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48E8BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, unint64_t a15, unint64_t a16, unsigned int a17, unsigned int a18, unint64_t a19)
{
  v26 = 1564307779 * ((&a15 & 0x2E194A90 | ~(&a15 | 0x2E194A90)) ^ 0x46EB797C);
  a16 = a13;
  LODWORD(a15) = (v25 - 280) ^ v26;
  a18 = v23 - ((2 * v23) & 0xFBF408DA) + 2113537133 - v26;
  (*(v24 + 8 * (v25 ^ 0xBCF)))(&a15);
  v27 = 1785193651 * ((((2 * &a15) | 0x786DCC70C61416CCLL) - &a15 - 0x3C36E638630A0B66) ^ 0x63AE5B00952BAF4ALL);
  a18 = v25 - v27 + 2257;
  a15 = a13;
  a16 = v27 ^ (v22 - ((2 * v22) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL);
  (*(v24 + 8 * (v25 ^ 0xB29)))(&a15);
  v28 = 1564307779 * ((&a15 & 0x353BC4EA | ~(&a15 | 0x353BC4EA)) ^ 0x5DC9F706);
  a18 = v21 - v28 + 2113537133 - ((v25 ^ 0xFBF40D96) & (2 * v21));
  a16 = a13;
  LODWORD(a15) = (v25 - 280) ^ v28;
  (*(v24 + 8 * (v25 ^ 0xBCF)))(&a15);
  v29 = 742307843 * (((&a15 | 0x44CBBC2A) - (&a15 & 0x44CBBC2A)) ^ 0x5AE9317F);
  a19 = a13;
  a17 = v29 ^ ((v20 ^ 0x90FE7E7F) + 2132660735 + ((2 * v20) & 0x21FCFCFE));
  LODWORD(a15) = (v25 - 187) ^ v29;
  a16 = v19;
  v30 = (*(v24 + 8 * (v25 + 2339)))(&a15);
  return (*(v24 + 8 * ((3538 * (HIDWORD(a15) == 671454635)) ^ v25)))(v30);
}

uint64_t sub_1D48E8E34()
{
  v6 = v0 - v5 - 2519;
  v15 = (v0 + v2) ^ (1504884919 * (((&v15 | 0xAA76BA95) - &v15 + (&v15 & 0x55894568)) ^ 0x51B50D8E));
  v17 = v13;
  (*(v1 + 8 * (v0 + v2 + 1926)))(&v15);
  if (v16 == v3 + v6 - 1097)
  {
    v7 = -1450199633;
  }

  else
  {
    v7 = -1379026945;
  }

  if (v16 == v3 + v6 - 1097)
  {
    v8 = 1394568030;
  }

  else
  {
    v8 = 1536913406;
  }

  if (v16 == v3 + v6 - 1097)
  {
    v9 = 2121654268;
  }

  else
  {
    v9 = 2050481580;
  }

  v10 = (v7 ^ v14) + v9 + (v8 & (2 * v14));
  v15 = v2 - ((&v15 & 0xA86BDCB8 | ~(&v15 | 0xA86BDCB8)) ^ 0xB13C8F57) * v4 + v0 + 433;
  v17 = v13;
  (*(v1 + 8 * (v0 ^ v5)))(&v15);
  v15 = v6 - ((1533462347 - (&v15 | 0x5B66C74B) + (&v15 | 0xA49938B4)) ^ 0x423194A4) * v4 + 1131;
  v17 = v12;
  (*(v1 + 8 * (v6 ^ 0xA29)))(&v15);
  return (v10 - 671454635);
}

uint64_t sub_1D48E9170@<X0>(int a1@<W8>)
{
  v4 = 1361651671 * ((((v6 | 0xE8199B44) ^ 0xFFFFFFFE) - (~v6 | 0x17E664BB)) ^ 0x5C8DA8C5);
  v7 = v2;
  v8 = v4 ^ 0xEAF47C4E;
  v6[0] = v4 + 1487458214;
  v6[1] = (a1 - 726) ^ v4;
  v9 = 0;
  result = (*(v3 + 8 * (a1 + 1907)))(v6);
  *(v1 + 8) = *(v2 + 24);
  return result;
}

uint64_t sub_1D48E923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, int a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44, unint64_t a45)
{
  v49 = *(v47 + 24);
  a44 = 0x8282828282828282;
  a45 = 0x8282828282828282;
  v50 = 1037613739 * (((((v48 - 168) | 0xE9519772) ^ 0xFFFFFFFE) - (~(v48 - 168) | 0x16AE688D)) ^ 0xC7AC45F2);
  STACK[0x318] = v49;
  *(v48 - 136) = (v45 + 2601) ^ v50;
  *(v48 - 168) = v50 + 1865131115;
  STACK[0x310] = &a44;
  STACK[0x330] = &a29;
  STACK[0x320] = &a26;
  v51 = (*(v46 + 8 * (v45 + 3673)))(v48 - 168);
  return (*(v46 + 8 * (((*(v48 - 132) == 671454635) * (((v45 - 70) ^ 0xD3A) + 102)) ^ v45)))(v51);
}

uint64_t sub_1D48E93A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, char a14, _BYTE *a15, int a16, char a17, _BYTE *a18, char *a19, char *a20, _BYTE *a21, char *a22)
{
  LODWORD(a20) = v22 + 1037613739 * ((((2 * &a18) | 0xE833A08A) - &a18 - 1947848773) ^ 0xA51BFD3A) + 3428;
  a19 = &a11;
  a21 = a15;
  a22 = &a17;
  (*(v23 + 8 * (v22 + 3628)))(&a18);
  LODWORD(a21) = (v22 + 2004) ^ (843532609 * ((&a18 & 0x7600855E | ~(&a18 | 0x7600855E)) ^ 0xD5B22E24));
  a20 = &a14;
  a18 = a15;
  (*(v23 + 8 * (v22 + 3669)))(&a18);
  LODWORD(a18) = (v22 + 1751) ^ (1504884919 * (((&a18 | 0x6B95D672) - (&a18 & 0x6B95D672)) ^ 0x90566169));
  a19 = a15;
  v25 = (*(v23 + 8 * (v22 ^ 0xEA5)))(&a18);
  return (*(v23 + 8 * (((HIDWORD(a18) == v24) * (((v22 + 989) | 0x12) + 2398)) ^ v22)))(v25);
}

uint64_t sub_1D48E955C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v10 = ~v6 + v3;
  v11 = *(v2 + v10 - 15);
  v12 = *(v2 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((v7 + v6 == v4) * v8) ^ (a2 + v5 + 1145))))();
}

uint64_t sub_1D48E95A4@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, int a7, int a8)
{
  *a5 = a1;
  *a6 = a2;
  return (*(v10 + 8 * (((a8 == (v8 ^ 0x254 ^ (v9 + 1364))) * ((v8 + 2814) ^ 0xCC3)) ^ v8)))();
}

void YMQGEcsGvUj()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E2150 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46D70[byte_1D4B43D80[(-35 * (dword_1EC7E2150 ^ 0x82 ^ qword_1EC7E2160))] ^ 0xB5]) + 94);
  v1 = *(v0 - 4);
  v2 = *(&off_1F5033D40 + ((-35 * (v1 ^ qword_1EC7E2160 ^ 0x82)) ^ byte_1D4B46970[byte_1D4B43980[(-35 * (v1 ^ qword_1EC7E2160 ^ 0x82))] ^ 0x60]) + 34);
  v3 = (*v2 + v1) ^ &v5;
  *(v0 - 4) = 1228258013 * v3 + 0xC891BCBEBCEAD82;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * ((v6 + 1306370632 - 2 * (v6 & 0x4DDDA248)) ^ 0x9CDF8F37)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * ((*v2 + *(v0 - 4)) ^ 0x82);
  v4 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 - dword_1EC7E2150) ^ 0x82)) ^ byte_1D4B43B80[byte_1D4B3E180[(-35 * ((qword_1EC7E2160 - dword_1EC7E2150) ^ 0x82))] ^ 0x30]) - 55);
  (*(v4 + 8 * ((*(off_1F50340B8 + (*(off_1F5033FC0 + v2 - 8) ^ 0x8Eu) - 4) ^ v2) + 3508)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48E9800()
{
  v7 = (v9 ^ 0xEF37D5AB) + ((2 * v9) & 0xDE6FAB56) + ((v0 + v5 + 1363) ^ 0xC44670CA);
  *(v6 - 136) = (v0 + v5 + 1270411033) ^ ((((v6 - 136) & 0x5ACE4222 | ~((v6 - 136) | 0x5ACE4222)) ^ 0x531019F1) * v1);
  *(v2 + 8) = v3;
  (*(v4 + 8 * (v0 + v5 + 57959173)))(v6 - 136);
  return v7 - 671454635;
}

uint64_t sub_1D48E995C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *v19 = a19;
  *(v24 - 112) = (v23 + 1850) ^ (843532609 * ((((2 * (v24 - 136)) | 0x2C43FAE4) - (v24 - 136) + 1776157326) ^ 0xCA6CA9F7));
  v19[2] = &a12;
  (*(v21 + 8 * (v23 + 3515)))(v24 - 136);
  v25 = a19;
  *(v24 - 136) = (v23 + 1597) ^ ((((((v24 - 136) | 0x269C579E) ^ 0xFFFFFFFE) - (~(v24 - 136) | 0xD963A861)) ^ 0x22A01F7A) * v22);
  v19[1] = v25;
  v26 = (*(v21 + 8 * (v23 ^ 0xE4F)))(v24 - 136);
  return (*(v21 + 8 * (((*(v24 - 132) == v20) * (((v23 + 411107322) | 0xE40AB00A) ^ 0xFC8BB2F9)) ^ v23)))(v26);
}

uint64_t sub_1D48E9A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, unsigned int a17, int a18, uint64_t a19)
{
  v24 = 1785193651 * (v23 ^ 0x5F98BD38F621A42CLL);
  a18 = 3613 - v24;
  a15 = a10;
  a16 = v24 ^ (v21 - ((2 * v21) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL);
  (*(v22 + 29480))(&a15);
  v25 = 742307843 * (((v23 | 0x6E7E7F0D) - v23 + (v23 & 0x918180F0)) ^ 0x705CF258);
  a19 = a10;
  LODWORD(a15) = v25 ^ 0x491;
  a16 = v19;
  a17 = ((v20 ^ 0x9BDC7FFE) + 1950339200 + ((2 * v20) & 0x37B8FFFD)) ^ v25;
  v26 = (*(v22 + 29560))(&a15);
  return (*(v22 + 8 * ((427 * (HIDWORD(a15) == 671454635)) ^ 0x2E3u)))(v26);
}

uint64_t sub_1D48E9BBC(int a1)
{
  v9 = (v5 - v6 - 1) & ((a1 + 153) ^ 0x4B8);
  v11.val[0].i64[0] = v9;
  v11.val[0].i64[1] = (v5 - v6 + 14) & 0xF;
  v11.val[1].i64[0] = (v5 - v6 + 13) & 0xF;
  v11.val[1].i64[1] = (v5 - v6 + 12) & 0xF;
  v11.val[2].i64[0] = (v5 - v6 + 11) & 0xF;
  v11.val[2].i64[1] = (v5 - v6 + 10) & 0xF;
  v11.val[3].i64[0] = (v5 - v6 + 9) & 0xF;
  v11.val[3].i64[1] = (v5 - v6) & 0xFLL ^ 8;
  *(v7 + -8 - v6 + v5) = veor_s8(veor_s8(veor_s8(*(v2 + v9 - 7), *(v1 + -8 - v6 + v5)), veor_s8(*(v4 + v9 - 7), *(v3 + v9 - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v11, xmmword_1D4B4B4F0), 0x7575757575757575)));
  return (*(v8 + 8 * ((83 * (8 - (v5 & 0x18) == -v6)) ^ a1)))(xmmword_1D4B4B4F0);
}

uint64_t sub_1D48E9CF8(uint64_t a1, int a2, unsigned int a3)
{
  v7 = a2 + v4 + (((v6 ^ 0x3D051EE9) - 1023745769) ^ ((v6 ^ 0xC685F5F0) + 964299280) ^ (((a3 + 759462262) & 0x52BB8BDF) + 2006530935 + (v6 ^ (a3 - 1091383682) & 0x410D2FDF ^ 0x8866B96D))) - 67654100;
  v8 = v5 - 72130614;
  v9 = (v8 < 0x51B2418F) ^ (v7 < 0x51B2418F);
  v10 = v7 > v8;
  if (v9)
  {
    v10 = v7 < 0x51B2418F;
  }

  return (*(v3 + 8 * ((7 * !v10) ^ a3)))();
}

uint64_t sub_1D48E9DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, int a16, char a17, __int16 a18, char a19, char *a20, int a21, int a22, uint64_t a23, int *a24, int a25, char *a26, char *a27)
{
  a16 = 783852075;
  v29 = *(a2 + 8);
  v30 = *(a2 + 4) + ((v27 - 471) ^ 0xD801DF2F);
  v31 = 435584651 * ((-1558645434 - (&a20 | 0xA318F546) + (&a20 | 0x5CE70AB9)) ^ 0x31D510EF);
  a22 = v31 + v27 + 1058;
  a20 = &a17;
  a23 = v29;
  a24 = &a16;
  a27 = &a19;
  a26 = &a15;
  a25 = v30 ^ v31;
  v33 = (*(v28 + 8 * (v27 + 2878)))(&a20);
  return (*(v28 + 8 * ((1138 * (a21 == ((v27 - 2) ^ 0x280596FD))) ^ v27)))(v33, a2);
}

void sub_1D48E9EF4(_DWORD *a1)
{
  v1 = *a1 ^ (742307843 * (((a1 | 0x209D4273) - (a1 | 0xDF62BD8C) - 547177076) ^ 0x3EBFCF26));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48EA198()
{
  STACK[0x428] = -v0;
  v2 = STACK[0x300];
  STACK[0x2F0] = v1 - 112;
  return v2();
}

uint64_t sub_1D48EA204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, int a14, unsigned int a15)
{
  v19 = 1564307779 * (((&a12 | 0x82B37DED) - &a12 + (&a12 & 0x7D4C8210)) ^ 0x15BEB1FE);
  a15 = *(v15 + 8) - v19 - ((2 * *(v15 + 8)) & 0xFBF408DA) + 2113537133;
  a12 = (v18 - 1476) ^ v19;
  a13 = a10;
  v20 = (*(v16 + 8 * (v18 + 1163)))(&a12);
  return (*(v16 + 8 * ((621 * (a14 == v17 + ((v18 - 90) ^ 0x66) - 2552)) ^ (v18 - 90))))(v20);
}

void sub_1D48EA418(char a1@<W8>)
{
  v3 = ((((*v4 ^ 0x82u) << 56) | ((v4[1] ^ 0x82u) << 48) | ((v4[2] ^ 0x82u) << 40)) + ((v4[3] ^ 0x82) << ((a1 - 29) ^ 0x44u)) + ((v4[4] ^ 0x82) << 24) + ((v4[5] ^ 0x82) << 16) + ((v4[6] ^ 0x82) << 8)) | v4[7] ^ 0x82;
  **v1 = (v3 - ((2 * v3) & 0x9E73A667CF559ECALL) - 0x30C62CCC1855309BLL) ^ 0xCF39D333E7AACF65;
  *(v1 + 12) = *(v2 + 24);
}

uint64_t sub_1D48EA508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, unsigned int a13, char *a14, int a15)
{
  a13 = (50899313 * ((2 * (&a13 & 0x25B705E0) - &a13 + 1514732061) ^ 0x7083D067)) ^ 0x72E;
  a14 = &a11;
  v17 = (*(v15 + 29464))(&a13);
  return (*(v15 + 8 * ((774 * (a15 == v16)) ^ 0x90Bu)))(v17);
}

void sub_1D48EA5D0(_DWORD *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *a1 + 1504884919 * ((~a1 & 0xD6F739C2 | a1 & 0x2908C63D) ^ 0x2D348ED9);
  v5 = 552;
  v2 = 1785193651 * (((&v6 | 0xCE5055CD) - &v6 + (&v6 & 0x31AFAA30)) ^ 0x3871F1E1);
  v7 = v1 - v2 - 2014;
  v6 = &v4;
  v8 = 2634 - v2;
  v3 = *(&off_1F5033D40 + (v1 - 3667));
  (*(v3 + 8 * (v1 + 143)))(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48EA760()
{
  v0.n128_u64[0] = 0x8282828282828282;
  v0.n128_u64[1] = 0x8282828282828282;
  return sub_1D48EA784(465, v0);
}

uint64_t sub_1D48EA784(int a1, int8x16_t a2)
{
  v10 = ~v6 + v4;
  v11 = *(v3 + v10 - 15);
  v12 = *(v3 + v10 - 31);
  v13 = v2 + v10;
  *(v13 - 15) = veorq_s8(v11, a2);
  *(v13 - 31) = veorq_s8(v12, a2);
  return (*(v9 + 8 * (((v8 + v6 == v5) * a1) ^ v7)))();
}

uint64_t sub_1D48EA7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v20 - 120) = &a13;
  *(v20 - 112) = v17;
  *(v20 - 104) = v16;
  *(v20 - 136) = &a11;
  *(v20 - 128) = &a11;
  *(v20 - 144) = (v14 + 1131) ^ (((v20 - 144) ^ v15) * v13);
  v21 = (*(v18 + 8 * (v14 + 1612)))(v20 - 144);
  return (*(v18 + 8 * (v14 ^ 0x2F9 | (8 * (((((v14 ^ 0x2F9) - 553) ^ ((v19 - 265678218) < 0x7FFFFFFF)) & 1) == 0)))))(v21);
}

uint64_t sub_1D48EA8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, int a18, int a19, int a20, unsigned int a21, char *a22)
{
  v24 = 675097751 * (((&a17 | 0xDF2E72BB) - (&a17 & 0xDF2E72BB)) ^ 0x9C6E572D);
  a21 = v24 ^ 0xA33F4F7D;
  a22 = &a15;
  a17 = a13;
  a18 = (v23 + 1421511303) ^ v24;
  a19 = v24 ^ 0x27714AA7;
  v25 = (*(v22 + 8 * (v23 ^ 0xAE1)))(&a17);
  return (*(v22 + 8 * (((a20 == (((v23 - 408) | 0x91) ^ 0x28059618)) * (((v23 + 73) | 0x54) ^ 0x52C)) ^ v23)))(v25);
}

uint64_t sub_1D48EA9EC@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  v8 = (v7 + v5) ^ v6;
  v9 = v4 - 98;
  *(*(a2 + 8) + 4 * (v3 + a1 + v4 + 414 + 1581)) = v8;
  v10 = v4 + 1438;
  *(a2 + 4) = a1 + 1;
  v11 = v3 + a1 + 1;
  v12 = v11 + 3355;
  if (v11 + 3355 < 0)
  {
    v12 = -3355 - v11;
  }

  return (*(v2 + 8 * (((((v12 ^ 0xE7BAB1BF) + ((v12 << (v9 + 19)) & 0xCF75637E) + 407195200) >= 0) * ((v10 - 2261) ^ 0x5A4)) ^ v10)))();
}

uint64_t sub_1D48EADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _BYTE *a14, int a15, char a16, uint64_t a17, char a18, __int16 a19, char a20, __int16 a21, char a22, int a23, char a24, uint64_t a25, _BYTE *a26, char *a27, char *a28, _BYTE *a29, char *a30)
{
  LODWORD(a28) = v31 + 2940 + 1037613739 * (((&a26 | 0x1CCA6CE6) - (&a26 & 0x1CCA6CE6)) ^ 0xCDC84199);
  a29 = a14;
  a30 = &a20;
  a27 = &a24;
  (*(v32 + 8 * (v31 + 3140)))(&a26);
  a27 = &a22;
  LODWORD(a28) = v31 + 2940 + 1037613739 * (&a26 ^ 0xD1022D7F);
  a29 = a14;
  a30 = &a18;
  (*(v32 + 8 * (v31 ^ 0xC4C)))(&a26);
  LODWORD(a29) = (v31 + 1516) ^ (843532609 * (((&a26 | 0x78DD12F6) - (&a26 & 0x78DD12F6)) ^ 0x24904673));
  a28 = &a16;
  a26 = a14;
  (*(v32 + 8 * (v31 ^ 0xC95)))(&a26);
  a27 = a14;
  LODWORD(a26) = (v31 + 1263) ^ (1504884919 * ((&a26 & 0xBA1C48C0 | ~(&a26 | 0xBA1C48C0)) ^ 0xBE200024));
  v33 = (*(v32 + 8 * (v31 + 3189)))(&a26);
  return (*(v32 + 8 * ((2169 * (HIDWORD(a26) == v30 + v31 + 1650 - 2182)) ^ v31)))(v33);
}

uint64_t sub_1D48EAF3C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = a2 + 335 - v2;
  v6 = *(v5 - 31);
  v7 = a1 + 335 - v2;
  v8.i64[0] = 0x404040404040404;
  v8.i64[1] = 0x404040404040404;
  v9.i64[0] = 0x8282828282828282;
  v9.i64[1] = 0x8282828282828282;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v4 + 8 * (((v2 == 288) * (((v3 - 526) | 0x408) + 100)) ^ v3)))();
}

uint64_t sub_1D48EB068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, unint64_t a20, int a21, unsigned int a22)
{
  v28 = 1564307779 * ((2 * (&a19 & 0x41F585B8) - &a19 + 1040874053) ^ 0xA907B656);
  a20 = a14;
  a22 = v25 - ((2 * v25) & 0xFBF408DA) + 2113537133 - v28;
  LODWORD(a19) = (v22 - 482533111) ^ v28;
  (*(v26 + 8 * (v22 - 482530472)))(&a19);
  v29 = 1564307779 * ((((2 * &a19) | 0xD3279EE4) - &a19 + 376189070) ^ 0x7E9E0361);
  a20 = a14;
  LODWORD(a19) = (v22 - 482533111) ^ v29;
  a22 = v24 - ((2 * v24) & 0xFBF408DA) + 2113537133 - v29;
  (*(v26 + 8 * (v22 ^ 0x1CC2EDA8u)))(&a19);
  v30 = *v23;
  if (*v23 == 3)
  {
    v37 = 1564307779 * ((&a19 & 0xEC266D71 | ~(&a19 | 0xEC266D71)) ^ 0x84D45E9D);
    LODWORD(a19) = v37 ^ 0x434;
    a22 = 2113537134 - v37;
    a20 = a14;
    (*(v26 + 29720))(&a19);
    goto LABEL_7;
  }

  if (v30 == 2)
  {
    v35 = 1564307779 * ((&a19 & 0x21DCE400 | ~(&a19 | 0x21DCE400)) ^ 0x492ED7EC);
    a20 = a14;
    LODWORD(a19) = v35 ^ 0x434;
    a22 = 2113537135 - v35;
    (*(v26 + 29720))(&a19);
    v36 = 1564307779 * ((-671285883 - (&a19 | 0xD7FCFD85) + (&a19 | 0x2803027A)) ^ 0xBF0ECE69);
    a22 = 2113537133 - v36 + v23[1] - ((2 * v23[1]) & 0xFBF408DA);
    a20 = a14;
    LODWORD(a19) = v36 ^ 0x434;
    (*(v26 + 29720))(&a19);
LABEL_7:
    v38 = *(v23 + 1) - ((2 * *(v23 + 1)) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL;
    v39 = 1785193651 * (((&a19 | 0xD72BB0F354107F9CLL) - (&a19 | 0x28D44F0CABEF8063) + 0x28D44F0CABEF8063) ^ 0x88B30DCBA231DBB0);
    a22 = 3613 - v39;
    a19 = a14;
    a20 = v38 ^ v39;
    v40 = (*(v26 + 29480))(&a19);
    return (*(v26 + 8 * ((2024 * (a21 == ((v27 + 151) ^ 0x1CC2E32B))) ^ 0x115)))(v40);
  }

  if (v30 != 1)
  {
    JUMPOUT(0x1D48DFCC4);
  }

  v31 = 1564307779 * (&a19 ^ 0x970DCC13);
  LODWORD(a19) = v31 ^ 0x434;
  a22 = 2113537132 - v31;
  a20 = a14;
  (*(v26 + 29720))(&a19);
  v32 = 1564307779 * (((&a19 | 0x16E1B047) - (&a19 & 0x16E1B047)) ^ 0x81EC7C54);
  a22 = 2113537133 - v32 + v23[4] - ((2 * v23[4]) & 0xFBF408DA);
  a20 = a14;
  LODWORD(a19) = v32 ^ 0x434;
  v33 = (*(v26 + 29720))(&a19);
  return (*(v26 + 8 * (32 * (v23[4] != 0) + 860)))(v33);
}

uint64_t sub_1D48EB524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = v12 - 394;
  v17 = ((((v15 - 2152) | 0x91) + 2002719156) ^ (v13 + 2002719301)) > 7 && (a12 - a1) > 0x1F;
  return (*(v14 + 8 * ((27 * v17) ^ v15)))();
}

uint64_t sub_1D48EB59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  HIDWORD(v65) = 108 * (a62 ^ 0x5DE);
  LODWORD(v65) = 4 * (a62 ^ 0x47E);
  LODWORD(a43) = a62 - 1898147545;
  LODWORD(a40) = (a62 ^ 0x5D5) << 6;
  LODWORD(a37) = a62 - 1342899763;
  LODWORD(a28) = a62 - 1239483279;
  return (*(v63 + 8 * (v62 - 1439)))(a1, 2792, a3, a4, a5, a6, a44, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, v65, a59 + 9, a57 + 9);
}

uint64_t sub_1D48EB80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24)
{
  v26 = (a22 ^ 0x73E6502Bu) + a23;
  v27 = a19 < 0xF68E9705;
  if (v27 == v26 > 0x97168FA)
  {
    v27 = v26 - 158427387 < a19;
  }

  return (*(v25 + 8 * (a18 ^ (!v27 << 6))))(a1, ((a18 + 1944472191) ^ v24) + a24, a3, a4, a5, v26, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D48EB8B4(uint64_t a1, int a2)
{
  v8 = (v3 - 32);
  v9 = (v4 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((v2 == 32) * (((v5 + 568) | v6) ^ a2)) ^ (v5 + 1658))))();
}

uint64_t sub_1D48EB978(uint64_t a1, int a2)
{
  v8 = (v5 - 32);
  v9 = (v6 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((v4 != 32) * a2) ^ (v2 + v3 - 3173))))();
}

uint64_t sub_1D48EBA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, unsigned int a22)
{
  a21 = &a15;
  a19 = a17;
  a22 = (v22 + 1853) ^ (843532609 * ((-1484865849 - (&a19 | 0xA77EBEC7) + (&a19 | 0x58814138)) ^ 0x4CC15BD));
  (*(v24 + 8 * (v22 + 3518)))(&a19);
  LODWORD(a19) = (v22 + 1600) ^ (1504884919 * (((&a19 | 0xEB9344F1) + (~&a19 | 0x146CBB0E)) ^ 0x1050F3EB));
  a20 = a17;
  v25 = (*(v24 + 8 * (v22 ^ 0xE4A)))(&a19);
  return (*(v24 + 8 * ((1441 * (HIDWORD(a19) == v23 + 578 * (v22 ^ 0xC1) - 1156)) ^ v22)))(v25);
}

void sub_1D48EBD80(uint64_t a1)
{
  v1 = *(a1 + 24) + 210068311 * (a1 ^ 0x576F9AD7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48EBE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t a15)
{
  a14 = v15 - (((&a14 | 0x9AF2EE78) - &a14 + (&a14 & 0x650D1180)) ^ 0x7C5A4268) * v17 + 2019;
  a15 = a12;
  v18 = (*(v16 + 8 * (v15 ^ 0xEB1)))(&a14);
  return sub_1D48EBE8C(v18);
}

uint64_t sub_1D48EBE8C()
{
  v7 = v5;
  v6 = v2 - (((&v6 | 0x3FBA69BE) - (&v6 & 0x3FBA69BE)) ^ 0xD912C5AE) * v1 + 590;
  (*(v0 + 8 * (v2 + 2042)))(&v6);
  return (v3 - 671454635);
}

uint64_t sub_1D48EC030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, unsigned int a20, char *a21, int a22)
{
  v24 = 1361651671 * (((&a19 | 0xC2EDBDEB) - (&a19 & 0xC2EDBDEB)) ^ 0x89867195);
  HIDWORD(a21) = 1118497177 - v24;
  a22 = v24 ^ 0x1274EF34;
  a19 = v24 + 690;
  a20 = 980532356 - v24;
  (*(v23 + 29072))(&a19);
  a21 = &a15;
  a19 = (50899313 * (&a19 ^ 0x2ACB2A7A)) ^ 0x72E;
  v25 = (*(v23 + 29464))(&a19);
  return (*(v23 + 8 * ((3026 * (a22 == 671454635)) ^ v22)))(v25);
}

uint64_t sub_1D48EC124@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  *v12 = 0;
  v14 = (v11 + a1 + 1452) | 0x206;
  v15 = v11 + a1 + 1965;
  a11 = (a1 + 1594756842) ^ (1037613739 * (((&a10 | 0xDC6FA207) - (&a10 & 0xDC6FA207)) ^ 0xD6D8F78));
  v16 = (*(v13 + 8 * (v11 + a1 + 3050)))(&a10);
  return (*(v13 + 8 * ((7 * (a10 != v14 + 671452069)) ^ v15)))(v16);
}

uint64_t sub_1D48EC1D4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7.i64[0] = 0x8282828282828282;
  v7.i64[1] = 0x8282828282828282;
  v8 = a1 + v4 - 1;
  v9 = veorq_s8(*(v2 + v4 - 1 - 31), v7);
  *(v8 - 15) = veorq_s8(*(v2 + v4 - 1 - 15), v7);
  *(v8 - 31) = v9;
  return (*(v6 + 8 * ((3290 * (((v5 - a2 - 1073) ^ 0x2B5) == (v4 & 0xFFFFFFE0))) ^ (v3 + v5 + 1271))))();
}

uint64_t sub_1D48EC2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, _BYTE *a15, char a16, int a17, int a18, char a19, __int16 a20, char a21, __int16 a22, char a23, _BYTE *a24, char *a25, char *a26, _BYTE *a27, char *a28)
{
  a25 = &a14;
  LODWORD(a26) = v28 + 1861 + 1037613739 * ((&a24 + 2094754345 - 2 * (&a24 & 0x7CDB6A29)) ^ 0xADD94756);
  a27 = a15;
  a28 = &a23;
  (*(v29 + 8 * (v28 + 2061)))(&a24);
  LODWORD(a26) = v28 + 1861 + 1037613739 * (((&a24 ^ 0xC44958FF) + 1069966276 - 2 * ((&a24 ^ 0xC44958FF) & 0x3FC663C4)) ^ 0x2A8D1644);
  a25 = &a16;
  a27 = a15;
  a28 = &a19;
  (*(v29 + 8 * (v28 + 2061)))(&a24);
  LODWORD(a27) = (v28 + 437) ^ (843532609 * ((-109098901 - (&a24 | 0xF97F486B) + (&a24 | 0x680B794)) ^ 0x5ACDE311));
  a24 = a15;
  a26 = &a21;
  (*(v29 + 8 * (v28 ^ 0x8CA)))(&a24);
  LODWORD(a24) = (v28 + 184) ^ (1504884919 * ((1256948630 - (&a24 | 0x4AEB8396) + (&a24 | 0xB5147C69)) ^ 0x4ED7CB72));
  a25 = a15;
  v30 = (*(v29 + 8 * (v28 ^ 0x8C2)))(&a24);
  return (*(v29 + 8 * ((2120 * (HIDWORD(a24) == ((v28 - 936) ^ 0x28059708))) ^ v28)))(v30);
}

uint64_t sub_1D48EC49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFE99 ^ (179 * (v4 ^ 0x572u))) + v2;
  *(a1 - 7 + v6) = veor_s8(*(a2 - 7 + v6), 0x8282828282828282);
  return (*(v5 + 8 * ((1009 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

void sub_1D48EC684(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (843532609 * ((a1 + 1971512249 - 2 * (a1 & 0x7582E3B9)) ^ 0x29CFB73C));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48EC758@<X0>(int a1@<W8>)
{
  STACK[0x400] = &STACK[0x4B0] + v2 + 2048;
  STACK[0x320] = &STACK[0x4B0] + v2 + 2176;
  STACK[0x2A0] = &STACK[0x4B0] + v2 + 2304;
  STACK[0x2F0] = v2 + ((a1 + 1200191966) & 0xB87682DD) + 1716;
  LODWORD(STACK[0x38C]) = 671454635;
  return (*(v3 + 8 * ((4 * (*v1 != 0)) | (8 * (*v1 != 0)) | a1)))();
}

uint64_t sub_1D48EC7D4(void *a1)
{
  if (a1[4])
  {
    v3 = (a1[6] | a1[2]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * (((v1 + 459379707) & 0xE49E67DF) + (v1 ^ 0xFFFFF049))) ^ v1)))();
}

void sub_1D48EC898(uint64_t a1)
{
  v1 = *(a1 + 32) - 1564307779 * ((a1 - 427373151 - 2 * (a1 & 0xE686CDA1)) ^ 0x718B01B2);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1D48EC98C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v8 = a1;
  *v7 = v2;
  v5 = a2 + 72;
  v11 = a2 + 543 - ((((&v11 ^ 0x8C848430 | 0x437B73CC) ^ 0xFFFFFFFE) - (&v11 ^ 0x31624C | 0xBC848C33)) ^ 0x95E2B593) * v3 + 849;
  v12 = v10;
  (*(v4 + 8 * ((a2 + 543) ^ 0xB03)))(&v11);
  v12 = v9;
  v11 = v5 - (&v11 ^ 0xE6A8AC10) * v3 + 1320;
  (*(v4 + 8 * (v5 + 2772)))(&v11);
  return 0;
}

uint64_t sub_1D48EC994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v34 - 112) = v33 + ((((2 * (v34 - 144)) | 0xBCCBED30) - (v34 - 144) + 563743080) ^ 0x49683A8B) * v31 + 1807;
  *(v34 - 128) = &a28;
  *(v34 - 120) = v32;
  *(v34 - 144) = &a28;
  *(v34 - 136) = a14;
  (*(v29 + 8 * (v33 ^ 0xE12)))(v34 - 144);
  v35 = (((v30 | (v34 - 144)) - ((v34 - 144) & v30)) ^ 0x7E0D8E6) * v31;
  *(v34 - 136) = a15;
  *(v34 - 128) = (36955955 * ((((v33 + 20) | 0x211) ^ 0xFFFFFD2C) + v28) - 1370890675) ^ v35;
  *(v34 - 124) = v33 - v35 + 976;
  v36 = (*(v29 + 8 * (v33 + 3563)))(v34 - 144);
  return (*(v29 + 8 * ((103 * (((-35 * (v33 ^ 0xBE) + 1) ^ (*(v34 - 144) == 1641169738)) & 1)) ^ v33)))(v36);
}

uint64_t sub_1D48ECB60@<X0>(int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  HIDWORD(a2) = (v54 + v56 + 2623 + 401) & v55;
  *a3 = a1;
  v61 = (*(v59 + 48 * v57 + 8))(a4);
  return (*(v58 + 8 * ((1124 * ((v61 ^ (HIDWORD(a2) - 826260726)) + 2089145856 + ((2 * v61) & 0x56FF7F56) == 671454635)) ^ v56)))(v61, v60, 1538174538, v62, 609309109, 2795647129, 2756789425, 2738914147, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_1D48ECC60(uint64_t a1)
{
  v7 = a1 - 1;
  *(v6 + v7) ^= *(v2 + (v7 & 0xF)) ^ *(v3 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 1);
  return (*(v5 + 8 * ((v4 - 1071) | (2 * (v7 != 0)))))();
}

uint64_t sub_1D48ECE10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = (a1 + a2);
  *v6 = v5;
  v6[1] = v5;
  LODWORD(v6) = ((v2 + 68) ^ 0x23FLL) == (v3 & 0xFFFFFFFFFFFFFFF0);
  return (*(v4 + 8 * (((2 * v6) | (16 * v6)) ^ v2)))(575);
}

uint64_t sub_1D48ECE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v5 + v6);
  return (*(a3 + 8 * ((3693 * (v6 == ((v4 - 1469) | 0x282u) - 659)) ^ (v4 - 98))))();
}

uint64_t sub_1D48ECE98()
{
  v7 = *(v2 + 8 * (v3 - 2441));
  v8 = *v0;
  v9 = v5 + 678311820;
  *(*v0 + v9) = (v6 ^ 0xA3) - ((2 * (v6 ^ 0xA3)) & 4) - 126;
  *(v8 + v9 + 1) = (v1 ^ 0xB) - ((2 * (v1 ^ 0xB)) & 4) - 126;
  *(v8 + (v5 + 678311822)) = (v4 ^ 0x46) - ((2 * (v4 ^ 0x46)) & 4) - 126;
  *(v8 + v9 + 3) = -122;
  return v7();
}

uint64_t sub_1D48ECF68@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v37 = *(v35 + 4 * (v33 - 1));
  *(v35 + 4 * v33) = ((1566083941 * (v37 ^ (v37 >> 30))) ^ *(v35 + 4 * v33)) - v33;
  v38 = a1 - 1268925087 + a27;
  *(v36 - 136) = (a1 + v34) ^ a27;
  *(v36 - 132) = v38;
  *(v36 - 144) = 1 - a27;
  *(v36 - 140) = v38 + 30;
  *(v36 - 104) = ((a1 - 1268925087) ^ 0x73) - a27;
  *(v36 - 120) = a27 ^ 0x26F;
  *(v36 - 112) = v33 + 1 + a27;
  v39 = (*(v31 + 8 * (a1 ^ v32)))(v36 - 144);
  return (*(a31 + 8 * *(v36 - 128)))(v39);
}

void sub_1D48ED014(int a1@<W8>)
{
  v4 = (v3 + 65) | 0xA4;
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((v2 << (v4 ^ 0xB6)) & 0xA5C686) - 2142051517;
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_1D48ED0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 128) = &a15;
  *(v18 - 120) = a14;
  *(v18 - 112) = (v15 - 2135) ^ (1361651671 * ((((v18 - 136) | 0x96B18ED4) - ((v18 - 136) & 0x96B18ED4)) ^ 0xDDDA42AA));
  v19 = (*(v16 + 8 * (v15 ^ 0x4C1)))(v18 - 136);
  return (*(v16 + 8 * (((*(v18 - 136) > (v17 + 1)) * (v15 - 681)) ^ v15)))(v19);
}

uint64_t sub_1D48ED13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, unint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v64 = STACK[0x3A8];
  STACK[0x230] = *(v63 + 8 * (a62 - 1486));
  STACK[0x488] = v64;
  LODWORD(STACK[0x494]) = 1920750827;
  STACK[0x350] = a49;
  return (*(v63 + 8 * ((((*(v64 + 68) & (((a62 ^ 0x30E) + 846) ^ 0xA31u)) - 44 < 0xFFFFFFC0) * (a62 ^ 0xA66)) ^ a62 ^ 0x30E)))();
}

uint64_t sub_1D48ED274@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((271 * (v7 == (v5 ^ (a2 + 2377) ^ 0x498))) ^ (v3 + v5 + 1526))))();
}

uint64_t sub_1D48ED378@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = (a1 + v4 - 220 + 16);
  *&v6 = 0x8282828282828282;
  *(&v6 + 1) = 0x8282828282828282;
  *(v5 - 1) = v6;
  *v5 = v6;
  return (*(v3 + 8 * ((((a2 & 0xFFFFFFFFFFFFFFE0) == 32) * ((45 * (v2 ^ 0x804)) ^ 0x360)) ^ v2)))();
}

void mm0Euuzhc()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + (*(off_1F5034348 + (*(off_1F5033F78 + (-35 * (dword_1EC7E1FC8 ^ 0x82 ^ qword_1EC7E2160)) - 4) ^ 0xF4u) - 12) ^ (-35 * (dword_1EC7E1FC8 ^ 0x82 ^ qword_1EC7E2160))) + 168);
  v1 = *(v0 - 4);
  v2 = *(&off_1F5033D40 + (*(off_1F5034330 + (*(off_1F5034390 + (-35 * (v1 ^ qword_1EC7E2160 ^ 0x82)) - 4) ^ 0xC7u)) ^ (-35 * (v1 ^ qword_1EC7E2160 ^ 0x82))) - 202);
  v3 = (*v2 - v1) ^ &v5;
  *(v0 - 4) = 1228258013 * v3 + 0x5804E9A2B9663D3ALL;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * ((-1049237991 - (v6 | 0xC175E619) + (v6 | 0x3E8A19E6)) ^ 0xEF883499)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * (*(v0 - 4) ^ 0x82 ^ *v2);
  v4 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E1FC8 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * (dword_1EC7E1FC8 ^ 0x82 ^ qword_1EC7E2160))] ^ 0xB]) - 81);
  (*(v4 + 8 * ((*(off_1F50340B8 + (*(off_1F5033FC0 + v2 - 8) ^ 0x60u) - 4) ^ v2) + 3639)))(v6);
  __asm { BRAA            X8, X17 }
}

void sub_1D48ED618()
{
  v9 = *(v6 + 8);
  v10 = (*(v9 + 4 * (v8 - 1)) ^ v1) >> v2;
  *(v9 + 4 * v4) = v1 + v10 + (v3 & (2 * v10) ^ (((v5 + 985900092) & 0xC53C5FD7) - 1299)) + 1;
  if (*(*(v6 + 8) + 4 * v4) == v1)
  {
    v11 = -201556553;
  }

  else
  {
    v11 = -201556552;
  }

  v12 = v11 + v0;
  if ((*(v6 + 4) + v7) >= 0x7FFFFFFF)
  {
    v12 = -948935858 - v12;
  }

  *(v6 + 4) = v12;
}

uint64_t sub_1D48ED6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v33 = 52 * (v28 & 0x9D7E82AF ^ 0xEA);
  *(v32 - 144) = ((v28 & 0x9D7E82AF) + 3113) ^ (((((2 * (v32 - 144)) | 0x9E3EB8A8) - (v32 - 144) - 1327455316) ^ 0xD8129047) * v31);
  *(v32 - 136) = &a28;
  *(v32 - 128) = &a28;
  *(v32 - 120) = &a24;
  *(v32 - 112) = a14;
  *(v32 - 104) = a13;
  v34 = (*(v30 + 8 * (v28 & 0x9D7E82AF ^ 0xE16)))(v32 - 144);
  return (*(v30 + 8 * (((v29 - 265678217 < ((v33 + 587705834) & 0xDCF84CED ^ 0x7FFFF757)) * ((v33 - 3362) ^ 0x28)) ^ (v33 - 3235))))(v34);
}

void sub_1D48ED870(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = 675097751 * ((-2 - ((~a1 | 0xDD669912) + (a1 | 0x229966ED))) ^ 0x9E26BC84);
  v2 = *(a1 + 36) - v1;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 24);
  v6 = 843532609 * ((((2 * &v9) | 0x12A2A572) - &v9 - 156324537) ^ 0x551C063C);
  v7 = (*(a1 + 8) ^ v1) - v6;
  v10 = (-1469850605 * (*(a1 + 52) + v1) + 1339977516) ^ v6;
  v11 = v2 - v6 - 542397953;
  v15 = v4;
  v16 = v5;
  v13 = v3;
  v12 = v7 - 122552795;
  v9 = v5;
  v8 = *(&off_1F5033D40 + v2 - 1416);
  (*(v8 + 8 * (v2 + 2339)))(&v9);
  __asm { BRAA            X8, X17 }
}

void sub_1D48EDA48(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 32) == 0;
  v1 = *(a1 + 8) + 1564307779 * ((~a1 & 0x3E4CD371 | a1 & 0xC1B32C8E) ^ 0xA9411F62);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1D48EDB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, int a16, int a17)
{
  v22 = 1785193651 * (v21 ^ 0x5F98BD38F621A42CLL);
  a17 = v20 - v22 + 2529;
  a14 = a10;
  a15 = (v17 - ((v17 << (v20 - 59)) & 0xC66594A08297EBC4) - 0x1CCD35AFBEB40A1ELL) ^ v22;
  v23 = (*(v18 + 8 * (v20 + 2601)))(&a14);
  return (*(v18 + 8 * ((824 * (a16 == v19)) ^ v20)))(v23);
}

uint64_t sub_1D48EDC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v8 = v6 - 1;
  *(a1 + v8) = (v5 - 50) ^ *(a2 + v8) ^ *(v3 + (v8 & 0xF)) ^ *((v8 & 0xF) + a3 + 2) ^ (125 * (v8 & 0xF)) ^ *(v4 + (v8 & 0xF)) ^ 0xBD;
  return (*(v7 + 8 * ((846 * (v8 == 0)) ^ v5)))();
}

uint64_t sub_1D48EDCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  STACK[0x308] = *(v65 + 8 * v62);
  STACK[0x498] = v63;
  STACK[0x4A0] = v63;
  v96 = STACK[0x2F0];
  STACK[0x4A8] = &STACK[0x4B0] + STACK[0x2F0];
  STACK[0x2F0] = v96 + 320;
  v97 = *(v63 + 72);
  LODWORD(STACK[0x264]) = v97;
  v98 = *(v63 + 76);
  v99 = *(v63 + 80);
  LODWORD(STACK[0x3F0]) = v99;
  v100 = *(v63 + 84);
  LODWORD(STACK[0x290]) = v100;
  v101 = (*(v63 + 96) + (~(2 * *(v63 + 96)) | 0x51) + 88);
  if (v101 == 85)
  {
    LODWORD(STACK[0x3A4]) = *(v63 + 88);
    return (*(v65 + 8 * ((122 * ((a62 ^ 0x5C5) + 108 != 5 * (a62 ^ 0x5C5))) ^ a62 ^ 0x675)))(3807895388, 2792, 4290691385, 90, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else if (v101 == 86)
  {
    return sub_1D491B214(v100, v99, a3, 3888947286, 8521854, 3807893611, 3807895388, 3117660022, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else
  {
    v66 = (((v97 ^ 0xECAED45A) + 324086694) ^ ((v97 ^ 0x80539519) + 2142005991) ^ ((v97 ^ 0x2AD109CA) - 718342602)) - 1740377526 + (((*(v63 + 72) ^ 0xCF3291D9) + 818769447) ^ ((*(v63 + 72) ^ 0x393900DA) - 960037082) ^ ((*(v63 + 72) ^ 0xB027D98A) + 1339565686));
    v67 = (((v98 ^ 0x269B57D7) - 647714775) ^ ((v98 ^ 0x832C8578) + 2094234248) ^ ((v98 ^ 0xE39B9A26) + 476341722)) + (((*(v63 + 76) ^ 0x6769476) - 108434550) ^ ((*(v63 + 76) ^ 0xA66C9296) + 1502834026) ^ ((*(v63 + 76) ^ 0xE6364E69) + 432648599)) - 549114141;
    v68 = (v67 ^ 0xA9DA400F) & (2 * (v67 & 0xAD13622F)) ^ v67 & 0xAD13622F;
    v69 = ((2 * (v67 ^ 0xB3FC0403)) ^ 0x3DDECC58) & (v67 ^ 0xB3FC0403) ^ (2 * (v67 ^ 0xB3FC0403)) & 0x1EEF662C;
    v70 = v69 ^ 0x2212224;
    v71 = (v69 ^ 0x1CCE0008) & (4 * v68) ^ v68;
    v72 = ((4 * v70) ^ 0x7BBD98B0) & v70 ^ (4 * v70) & 0x1EEF662C;
    v73 = (v72 ^ 0x1AAD0020) & (16 * v71) ^ v71;
    v74 = ((16 * (v72 ^ 0x442660C)) ^ 0xEEF662C0) & (v72 ^ 0x442660C) ^ (16 * (v72 ^ 0x442660C)) & 0x1EEF6620;
    v75 = v73 ^ 0x1EEF662C ^ (v74 ^ 0xEE66200) & (v73 << 8);
    *(v63 + 72) = v66 ^ ((v66 ^ 0xD80AA0FD) + 740179515) ^ ((v66 ^ 0x381BC958) - 871409760) ^ ((v66 ^ 0x1005F742) - 468620922) ^ ((v66 ^ 0xFBFFFFDF) + 267084057) ^ 0x4DC729B1;
    *(v63 + 76) = v67 ^ (2 * ((v75 << 16) & 0x1EEF0000 ^ v75 ^ ((v75 << 16) ^ 0x662C0000) & (((v74 ^ 0x1009042C) << 8) & 0x1EEF0000 ^ 0x10890000 ^ (((v74 ^ 0x1009042C) << 8) ^ 0x6F660000) & (v74 ^ 0x1009042C)))) ^ 0xDAB9E6FE;
    v76 = STACK[0x498];
    v77 = (((LODWORD(STACK[0x3F0]) ^ 0x12F2167D) - 317855357) ^ ((LODWORD(STACK[0x3F0]) ^ 0x40A11050) - 1084297296) ^ ((LODWORD(STACK[0x3F0]) ^ 0x147F4EA4) - 343887524)) - 1608748612 + (((*(STACK[0x498] + 80) ^ 0xDC4BEECD) + 599003443) ^ ((*(STACK[0x498] + 80) ^ 0x880F37AA) + 2012268630) ^ ((*(STACK[0x498] + 80) ^ 0x126891EE) - 308842990));
    v78 = (v77 ^ 0xE9385F46) & (2 * (v77 & 0xEC3C1F56)) ^ v77 & 0xEC3C1F56;
    v79 = ((2 * (v77 ^ 0xB1384D4A)) ^ 0xBA08A438) & (v77 ^ 0xB1384D4A) ^ (2 * (v77 ^ 0xB1384D4A)) & 0x5D04521C;
    v80 = v79 ^ 0x45045204;
    v81 = (v79 ^ 0x10000018) & (4 * v78) ^ v78;
    v82 = ((4 * v80) ^ 0x74114870) & v80 ^ (4 * v80) & 0x5D04521C;
    v83 = (v82 ^ 0x54004000) & (16 * v81) ^ v81;
    v84 = ((16 * (v82 ^ 0x904120C)) ^ 0xD04521C0) & (v82 ^ 0x904120C) ^ (16 * (v82 ^ 0x904120C)) & 0x5D045210;
    v85 = v83 ^ 0x5D04521C ^ (v84 ^ 0x50040000) & (v83 << 8);
    v86 = v77 ^ (2 * (((v85 << 16) ^ 0x521C0000) & (((v84 ^ 0xD00521C) << 8) & 0x5D040000 ^ v64 ^ (((v84 ^ 0xD00521C) << 8) ^ 0x4520000) & (v84 ^ 0xD00521C)) ^ v85 ^ ((v85 << 16) & 0x5D040000 | 0x18)));
    v87 = (((LODWORD(STACK[0x290]) ^ 0xBBFDF3C4) + 1140984892) ^ ((LODWORD(STACK[0x290]) ^ 0xEF324395) + 281918571) ^ ((LODWORD(STACK[0x290]) ^ 0x12E3F8D8) - 316930264)) - 297223759 + (((*(STACK[0x498] + 84) ^ 0xDBB018FF) + 609216257) ^ ((*(STACK[0x498] + 84) ^ 0x116B2E33) - 292236851) ^ ((*(STACK[0x498] + 84) ^ 0x8CF77E45) + 1929937339));
    v88 = (v87 ^ 0x5DAF9665) & (2 * (v87 & 0x9E0FD761)) ^ v87 & 0x9E0FD761;
    v89 = ((2 * (v87 ^ 0x59AA34A5)) ^ 0x8F4BC788) & (v87 ^ 0x59AA34A5) ^ (2 * (v87 ^ 0x59AA34A5)) & 0xC7A5E3C4;
    v90 = v89 ^ 0x40A42044;
    v91 = (v89 ^ 0x8001C380) & (4 * v88) ^ v88;
    v92 = ((4 * v90) ^ 0x1E978F10) & v90 ^ (4 * v90) & 0xC7A5E3C4;
    v93 = (v92 ^ 0x6858300) & (16 * v91) ^ v91;
    v94 = ((16 * (v92 ^ 0xC12060C4)) ^ 0x7A5E3C40) & (v92 ^ 0xC12060C4) ^ (16 * (v92 ^ 0xC12060C4)) & 0xC7A5E3C0;
    v95 = v93 ^ 0xC7A5E3C4 ^ (v94 ^ 0x42042000) & (v93 << 8);
    *(v76 + 80) = v86 ^ 0xB010F3D7;
    *(v76 + 84) = v87 ^ (2 * ((v95 << 16) & 0x47A50000 ^ v95 ^ ((v95 << 16) ^ 0x63C40000) & (((v94 ^ 0x85A1C384) << 8) & 0x47A50000 ^ 0x42040000 ^ (((v94 ^ 0x85A1C384) << 8) ^ 0x25E30000) & (v94 ^ 0x85A1C384)))) ^ 0xD0605860;
    STACK[0x2F0] -= 320;
    return (STACK[0x308])(v100, v99, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }
}

uint64_t sub_1D48EDF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, unsigned int a18, char *a19)
{
  v21 = 675097751 * (((&a14 | 0x7A21E151) - &a14 + (&a14 & 0x85DE1EA8)) ^ 0x3961C4C7);
  a19 = &a11;
  a18 = v21 ^ 0xA33F4F7D;
  a14 = a12;
  a15 = v21 ^ 0x54BA8F41;
  a16 = v21 ^ 0xD106CADF;
  v22 = (*(v19 + 29400))(&a14);
  return (*(v19 + 8 * ((1717 * (a17 == v20)) ^ 0x147u)))(v22);
}

uint64_t sub_1D48EE074@<X0>(unint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = v4 < a1;
  if (v6 == v3 + 1 > (((a2 ^ 0x460u) + 1554) ^ 0xFFFFFFFFB12F0F2ALL))
  {
    v6 = a3 + v3 + 667 < v4;
  }

  return (*(v5 + 8 * (((4 * !v6) | (!v6 << 6)) ^ a2)))();
}

uint64_t sub_1D48EE258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, unsigned int a16)
{
  a16 = (v16 + 303) ^ (843532609 * ((((&a13 ^ 0x294316A4) & 0x39E317BC) + (&a13 ^ 0x12B42959) - ((&a13 ^ 0x12B42959) & 0x39E317BC)) ^ 0x771A6A60));
  a13 = a11;
  a15 = &a10;
  (*(v18 + 8 * (v16 ^ 0x850)))(&a13);
  LODWORD(a13) = (v16 + 50) ^ (1504884919 * ((&a13 + 1831669241 - 2 * (&a13 & 0x6D2D0DF9)) ^ 0x96EEBAE2));
  a14 = a11;
  v19 = (*(v18 + 8 * (v16 ^ 0x858)))(&a13);
  return (*(v18 + 8 * ((45 * (HIDWORD(a13) != v17)) ^ v16)))(v19);
}

uint64_t sub_1D48EE36C()
{
  v7 = v3 - 1;
  *(v5 + v7) ^= *(v0 + (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 5) ^ 0x82;
  return (*(v6 + 8 * ((2643 * (v7 == 0)) ^ (v4 - 49))))();
}

void sub_1D48EE430()
{
  *(v4 - 128) = v3;
  *(v4 - 144) = v2;
  *(v4 - 136) = v1 - 1037613739 * ((((v4 - 144) | 0x604BD089) - ((v4 - 144) & 0x604BD089)) ^ 0xB149FDF6) + 1133;
  (*(v0 + 8 * (v1 + 2086)))(v4 - 144);
  JUMPOUT(0x1D48EE490);
}

uint64_t sub_1D48EE6F4()
{
  v6 = *(v2 + 4 * (v3 - 1));
  *(v2 + 4 * v3) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v2 + 4 * v3)) - v3;
  v7 = v0 - 74925514 + v4;
  *(v5 - 144) = v4 ^ 0x26F;
  *(v5 - 136) = v3 + 1 + v4;
  *(v5 - 168) = 1 - v4;
  *(v5 - 164) = v7 + 1;
  *(v5 - 160) = (v0 + 55966260) ^ v4;
  *(v5 - 156) = v7;
  *(v5 - 128) = v0 - 74925514 - v4 - 98;
  v8 = (*(v1 + 8 * (v0 ^ 0x2F)))(v5 - 168);
  return (*(v1 + 8 * *(v5 - 152)))(v8);
}

uint64_t sub_1D48EE95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v23 = 1564307779 * ((2 * (&a12 & 0x60112DE0) - &a12 - 1611738600) ^ 0x8E31E0B);
  LODWORD(a12) = (v22 - 915) ^ v23;
  HIDWORD(a14) = v20 - ((2 * v20) & 0xFBF408DA) - v23 + ((v22 + 178731011) ^ 0x775D3BA7);
  a13 = a11;
  (*(v21 + 8 * (v22 + 1724)))(&a12);
  v24 = 1564307779 * ((-2058113478 - (&a12 | 0x8553AE3A) + (&a12 | 0x7AAC51C5)) ^ 0xEDA19DD6);
  HIDWORD(a14) = HIDWORD(v19) - ((2 * HIDWORD(v19)) & 0xFBF408DA) + 2113537133 - v24;
  a13 = a11;
  LODWORD(a12) = (v22 - 915) ^ v24;
  (*(v21 + 8 * (v22 + 1724)))(&a12);
  v25 = 1564307779 * ((-5604192 - (&a12 | 0xFFAA7CA0) + (&a12 | 0x55835F)) ^ 0x97584F4C);
  a13 = a11;
  LODWORD(a12) = (v22 - 915) ^ v25;
  HIDWORD(a14) = v19 - ((2 * v19) & 0xFBF408DA) + 2113537133 - v25;
  (*(v21 + 8 * (v22 ^ 0x944)))(&a12);
  LODWORD(a15) = (v22 - 136) ^ (435584651 * ((&a12 - 1008470922 - 2 * (&a12 & 0xC3E3F476)) ^ 0xAED1EE20));
  a12 = v18;
  a14 = a11;
  (*(v21 + 8 * (v22 ^ 0x958)))(&a12);
  v26 = 1564307779 * (&a12 ^ 0x970DCC13);
  LODWORD(a12) = (v22 - 915) ^ v26;
  HIDWORD(a14) = v17 - ((2 * v17) & 0xFBF408DA) + 2113537133 - v26;
  a13 = a11;
  (*(v21 + 8 * (v22 ^ 0x944)))(&a12);
  v27 = 742307843 * ((2 * (&a12 & 0x2B073B00) - &a12 - 721894145) ^ 0xCADA49AA);
  a13 = v15;
  a15 = a11;
  LODWORD(a12) = (v22 - 822) ^ v27;
  LODWORD(a14) = v27 ^ ((v16 ^ 0x18DFF77E) - 147040000 + ((2 * v16) & 0x31BFEEFC));
  v28 = (*(v21 + 8 * (v22 + 1704)))(&a12);
  return (*(v21 + 8 * (((4 * (HIDWORD(a12) == 671454635)) | (16 * (HIDWORD(a12) == 671454635))) ^ v22)))(v28);
}

uint64_t sub_1D48EEC98()
{
  v5 = (*(v4 + 8 * (v2 ^ 0x6BF)))(v0 ^ (v3 + 1371) ^ ((v2 ^ 0x8FBu) + 1250));
  *v1 = v5;
  return (*(v4 + 8 * ((116 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_1D48EECF0(uint64_t a1)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * ((28 * (v6 == ((v2 + v4 - 2063) ^ 0x5B5))) ^ (v2 + v4 - 1505))))();
}

void sub_1D48EEE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v17 = (((a7 ^ 0x22DFE67C) - 585098876) ^ ((a7 ^ 0xCAC9D114) + 892743404) ^ ((a7 ^ 0xAE3A7FE1) + 1371897887)) - 819760162 + (((a15 ^ 0xE974B3D) - 244796221) ^ ((a15 ^ 0x64227F7C) - 1679982460) ^ (((v15 - 2058575591) ^ 0x562A27A5) + (a15 ^ 0x2C997CC8)));
  *(v16 - 132) = v17 ^ ((v17 ^ 0x9A185C69) + 657277275) ^ ((v17 ^ 0x509E784E) - 307534466) ^ ((v17 ^ 0xF7D3B854) + 1256629608) ^ ((v17 ^ 0x7F9F7EBF) - 1029020787) ^ 0x4E6AA45;
  JUMPOUT(0x1D48FC784);
}

uint64_t sub_1D48EEFAC@<X0>(int a1@<W8>)
{
  v5 = (a1 - 163421651) & 0x9BD9FEF;
  *(v3 + 8) = v2;
  *(v4 - 132) = v5 + 435584651 * ((((2 * (v4 - 136)) | 0xA14EAB22) - (v4 - 136) - 1353143697) ^ 0x3D954FC7) + 484;
  v6 = (*(v1 + 8 * (v5 + 2057)))(v4 - 136);
  return (*(v1 + 8 * (((*(v4 - 136) != 671454635) * (v5 - 280829597 + ((v5 + 8917457) | 0x10350004))) ^ v5)))(v6);
}

void PjPfaWZz()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5033D40 + ((-35 * ((qword_1EC7E2160 + dword_1EC7E1FF8) ^ 0x82)) ^ byte_1D4B46A70[byte_1D4B43A80[(-35 * ((qword_1EC7E2160 + dword_1EC7E1FF8) ^ 0x82))] ^ 0xC7]) - 124);
  v1 = *(&off_1F5033D40 + (*(off_1F5034198 + (*(off_1F5034218 + (-35 * (*v0 ^ qword_1EC7E2160 ^ 0x82))) ^ 0xB5u) - 8) ^ (-35 * (*v0 ^ qword_1EC7E2160 ^ 0x82))) + 21);
  v2 = &v4[*v1 - *v0];
  *v0 = 1228258013 * v2 + 0x5804E9A2B9663D3ALL;
  *v1 = 1228258013 * (v2 ^ 0xC891BCBEBCEAD82);
  v5[1] = (1037613739 * ((2 * (v5 & 0x3C244678) - v5 - 1009010304) ^ 0x12D994FF)) ^ 0x86F54BA0;
  LOBYTE(v1) = -35 * ((*v1 + *v0) ^ 0x82);
  v3 = *(&off_1F5033D40 + ((-35 * (dword_1EC7E1FF8 ^ 0x82 ^ qword_1EC7E2160)) ^ byte_1D4B4B3C0[byte_1D4B46B70[(-35 * (dword_1EC7E1FF8 ^ 0x82 ^ qword_1EC7E2160))] ^ 3]) - 206);
  (*(v3 + 8 * ((*(off_1F50343C8 + (*(off_1F50340C8 + v1 - 8) ^ 0x9Eu) - 8) ^ v1) + 3475)))(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D48EF42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, char *a15, unsigned int a16)
{
  a16 = (v19 + 684) ^ (843532609 * ((((&a13 | 0xC6C41E54) ^ 0xFFFFFFFE) - (~&a13 | 0x393BE1AB)) ^ 0x6576B52E));
  a13 = a9;
  a15 = &a12;
  (*(v16 + 8 * (v19 ^ 0xBD5)))(&a13);
  a14 = a9;
  LODWORD(a13) = (v19 + 431) ^ ((((&a13 | 0xABF86012) - (&a13 & 0xABF86012)) ^ 0x503BD709) * v18);
  v20 = (*(v16 + 8 * (v19 ^ 0xBDD)))(&a13);
  return (*(v16 + 8 * (((HIDWORD(a13) == v17) * (((2 * v19) ^ 0x336) + 1600)) ^ v19)))(v20);
}

uint64_t sub_1D48EF570(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *(v7 + 48 * v4 + 36);
  v11 = v9 == a3 || v9 + v5 + ((v3 - 591397641) & 0xFFFF7DB9) >= ((v3 - 1595948305) & 0x5F203F6F ^ (v8 + 1095));
  return (*(v6 + 8 * ((13 * v11) ^ v3)))();
}

void TmMyt2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D48EF64C@<X0>(int a1@<W8>, uint64_t a2, int a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v11 = (-63 * (a1 ^ 0x44)) ^ 0xCF;
  v12 = a1 - 377;
  *(v10 - 120) = v8;
  *(v10 - 112) = a8;
  *(v10 - 136) = v8;
  *(v10 - 128) = a5;
  *(v10 - 104) = a1 + 1564307779 * (((a3 | 0xC2D03C01) - (a3 & 0xC2D03C01)) ^ 0xE78DD7A4) + 637;
  v13 = (*(v9 + 8 * (a1 + 2428)))(v10 - 136);
  v14 = ((a6 >> (v11 + 54)) & a4) == 0;
  return (*(v9 + 8 * (((4 * v14) | (8 * v14)) ^ v12)))(v13);
}

uint64_t sub_1D48EF654@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X7>, int a3@<W8>)
{
  *v8 = a1;
  *a2 = a3;
  v6 = v3 - 1325;
  v11 = v3 - 737 - 143681137 * ((503882434 - (&v11 | 0x1E08A2C2) + (&v11 | 0xE1F75D3D)) ^ 0x75FF12D) + 876;
  v12 = v10;
  (*(v4 + 8 * ((v3 - 737) ^ 0xB28)))(&v11);
  v11 = v6 - 143681137 * ((1566507929 - (&v11 | 0x5D5F0399) + (&v11 | 0xA2A0FC66)) ^ 0x44085076) + 1464;
  v12 = v9;
  (*(v4 + 8 * (v6 ^ 0xC9C)))(&v11);
  return (v5 - 671454635);
}

uint64_t sub_1D48EF788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (v18 + 1752) ^ (843532609 * (((&a15 | 0x7B471D92) - &a15 + (&a15 & 0x84B8E268)) ^ 0x270A4917));
  a17 = &a13;
  a15 = a11;
  (*(v20 + 8 * (v18 ^ 0xFA9)))(&a15);
  a16 = a11;
  LODWORD(a15) = (v18 + 1499) ^ (1504884919 * ((2 * (&a15 & 0x739B7448) - &a15 + 207915952) ^ 0xF7A73CAB));
  v21 = (*(v20 + 8 * (v18 + 3425)))(&a15);
  return (*(v20 + 8 * ((3124 * (HIDWORD(a15) == (v18 ^ 0x31E ^ (v19 + 498)))) ^ v18)))(v21);
}

uint64_t sub_1D48EF88C@<X0>(int8x8_t *a1@<X2>, int8x8_t *a2@<X8>)
{
  a1[1] = vadd_s8(vsub_s8(a2[1], vand_s8(vadd_s8(a2[1], a2[1]), 0x404040404040404)), 0x8282828282828282);
  v4 = ((v2 - 1714317055) & 0x662E6BBF ^ 0xBDFLL) == 328;
  return (*(v3 + 8 * ((v4 | (v4 << 7)) ^ (v2 - 175))))();
}