id pp_default_log_handle()
{
  if (pp_default_log_handle__pasOnceToken2 != -1)
  {
    dispatch_once(&pp_default_log_handle__pasOnceToken2, &__block_literal_global_7511);
  }

  v1 = pp_default_log_handle__pasExprOnceResult;

  return v1;
}

uint64_t __Block_byref_object_copy__1852(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1AC568040](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __pp_social_highlights_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "SocialHighlights");
  v2 = pp_social_highlights_log_handle__pasExprOnceResult;
  pp_social_highlights_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __pp_xpc_client_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "XPCClient");
  v2 = pp_xpc_client_log_handle__pasExprOnceResult;
  pp_xpc_client_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __pp_default_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "Default");
  v2 = pp_default_log_handle__pasExprOnceResult;
  pp_default_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_1A7FD4D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4757(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7FD4FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id pp_xpc_server_log_handle()
{
  if (pp_xpc_server_log_handle__pasOnceToken11 != -1)
  {
    dispatch_once(&pp_xpc_server_log_handle__pasOnceToken11, &__block_literal_global_33);
  }

  v1 = pp_xpc_server_log_handle__pasExprOnceResult;

  return v1;
}

id pp_xpc_client_log_handle()
{
  if (pp_xpc_client_log_handle__pasOnceToken12 != -1)
  {
    dispatch_once(&pp_xpc_client_log_handle__pasOnceToken12, &__block_literal_global_36);
  }

  v1 = pp_xpc_client_log_handle__pasExprOnceResult;

  return v1;
}

id pp_social_highlights_log_handle()
{
  if (pp_social_highlights_log_handle__pasOnceToken15 != -1)
  {
    dispatch_once(&pp_social_highlights_log_handle__pasOnceToken15, &__block_literal_global_45);
  }

  v1 = pp_social_highlights_log_handle__pasExprOnceResult;

  return v1;
}

void sub_1A7FD59C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PPNewEKEventStore()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getEKEventStoreClass_softClass;
  v8 = getEKEventStoreClass_softClass;
  if (!getEKEventStoreClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getEKEventStoreClass_block_invoke;
    v4[3] = &unk_1E77F78F0;
    v4[4] = &v5;
    __getEKEventStoreClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [[v0 alloc] initWithEKOptions:128 path:0 changeTrackingClientId:0 enablePropertyModificationLogging:1 allowDelegateSources:0];

  return v2;
}

void sub_1A7FD5B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id pp_events_log_handle()
{
  if (pp_events_log_handle__pasOnceToken7 != -1)
  {
    dispatch_once(&pp_events_log_handle__pasOnceToken7, &__block_literal_global_21);
  }

  v1 = pp_events_log_handle__pasExprOnceResult;

  return v1;
}

void __pp_events_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "Events");
  v2 = pp_events_log_handle__pasExprOnceResult;
  pp_events_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id PPGetStringInternPool()
{
  if (PPGetStringInternPool__pasOnceToken8 != -1)
  {
    dispatch_once(&PPGetStringInternPool__pasOnceToken8, &__block_literal_global_138);
  }

  v1 = PPGetStringInternPool__pasExprOnceResult;

  return v1;
}

id pp_quicktype_log_handle()
{
  if (pp_quicktype_log_handle__pasOnceToken3 != -1)
  {
    dispatch_once(&pp_quicktype_log_handle__pasOnceToken3, &__block_literal_global_9);
  }

  v1 = pp_quicktype_log_handle__pasExprOnceResult;

  return v1;
}

id pp_topics_log_handle()
{
  if (pp_topics_log_handle__pasOnceToken5 != -1)
  {
    dispatch_once(&pp_topics_log_handle__pasOnceToken5, &__block_literal_global_15);
  }

  v1 = pp_topics_log_handle__pasExprOnceResult;

  return v1;
}

void sub_1A7FD6878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id pp_contacts_log_handle()
{
  if (pp_contacts_log_handle__pasOnceToken6 != -1)
  {
    dispatch_once(&pp_contacts_log_handle__pasOnceToken6, &__block_literal_global_18_7525);
  }

  v1 = pp_contacts_log_handle__pasExprOnceResult;

  return v1;
}

void sub_1A7FD6F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7FDD744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__347(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7FDD9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FDDCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FDE154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__407(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7FE05A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__514(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7FE08A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A7FE0BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__574(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PPEncodeCalendarColor(void *a1, CGColor *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (a2)
  {
    ColorSpace = CGColorGetColorSpace(a2);
    v5 = CGColorSpaceCopyPropertyList(ColorSpace);
    error = 0;
    v6 = CFPropertyListCreateData(0, v5, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    CFRelease(v5);
    if (!v6 || error)
    {
      if (error)
      {
        v8 = CFErrorCopyDescription(error);
      }

      else
      {
        v8 = @"Unknown reason";
      }

      v9 = pp_events_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v8;
        _os_log_error_impl(&dword_1A7FD3000, v9, OS_LOG_TYPE_ERROR, "failed to create space plist data from plist: %@", buf, 0xCu);
      }

      if (error)
      {
        CFRelease(error);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      [v3 encodeBool:0 forKey:@"sup_hcc"];
    }

    else
    {
      Components = CGColorGetComponents(a2);
      [v3 encodeDouble:@"sup_cc0" forKey:*Components];
      [v3 encodeDouble:@"sup_cc1" forKey:Components[1]];
      [v3 encodeDouble:@"sup_cc2" forKey:Components[2]];
      [v3 encodeDouble:@"sup_cc3" forKey:Components[3]];
      [v3 encodeBool:1 forKey:@"sup_hcc"];
      [v3 encodeObject:v6 forKey:@"sup_csd"];
      v8 = v6;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

CGColorRef PPCreateCalendarColorWithDecoder(void *a1)
{
  components[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([(__CFString *)v1 decodeBoolForKey:@"sup_hcc"])
  {
    [(__CFString *)v1 decodeDoubleForKey:@"sup_cc0"];
    components[0] = v2;
    [(__CFString *)v1 decodeDoubleForKey:@"sup_cc1"];
    components[1] = v3;
    [(__CFString *)v1 decodeDoubleForKey:@"sup_cc2"];
    components[2] = v4;
    [(__CFString *)v1 decodeDoubleForKey:@"sup_cc3"];
    components[3] = v5;
    v6 = [(__CFString *)v1 decodeObjectOfClass:objc_opt_class() forKey:@"sup_csd"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      error = 0;
      v9 = CFPropertyListCreateWithData(0, v8, 0, 0, &error);
      CFRelease(v8);
      if (!v9 || error)
      {
        if (error)
        {
          v16 = CFErrorCopyDescription(error);
        }

        else
        {
          v16 = @"Unknown reason";
        }

        v17 = pp_events_log_handle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v16;
          _os_log_error_impl(&dword_1A7FD3000, v17, OS_LOG_TYPE_ERROR, "failed to create space plist from data: %@", buf, 0xCu);
        }

        if (error)
        {
          CFRelease(error);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        goto LABEL_24;
      }

      v10 = CGColorSpaceCreateWithPropertyList(v9);
      CFRelease(v9);
      if (v10)
      {
        v11 = CGColorCreate(v10, components);
        CGColorSpaceRelease(v10);
LABEL_25:

        goto LABEL_26;
      }

      v12 = pp_events_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v13 = "failed to create color space from property list";
        v14 = v12;
        v15 = 2;
        goto LABEL_22;
      }
    }

    else
    {
      v12 = pp_events_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v1;
        v13 = "failed to get space data from decoder %@";
        v14 = v12;
        v15 = 12;
LABEL_22:
        _os_log_error_impl(&dword_1A7FD3000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      }
    }

LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  v11 = 0;
LABEL_26:

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1A7FE24F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FE2ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FE66CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A7FE6838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_1A7FE6B94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A7FE73D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1207(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7FE7720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FE81D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FE880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getEKObjectIDClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEKObjectIDClass_softClass;
  v7 = getEKObjectIDClass_softClass;
  if (!getEKObjectIDClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getEKObjectIDClass_block_invoke;
    v3[3] = &unk_1E77F78F0;
    v3[4] = &v4;
    __getEKObjectIDClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A7FEA2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getEKObjectIDClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __EventKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E77F66A8;
    v9 = 0;
    EventKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!EventKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EventKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"PPEvent.m" lineNumber:22 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("EKObjectID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEKObjectIDClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"PPEvent.m" lineNumber:23 description:{@"Unable to find class %s", "EKObjectID"}];

LABEL_10:
    __break(1u);
  }

  getEKObjectIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __EventKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

PPAttendee *internUsingSet(void *a1, void *a2)
{
  v55[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3 || !malloc_size(v3))
  {
    v5 = v3;
    goto LABEL_8;
  }

  v5 = [v4 member:v3];
  if (v5)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
    v55[0] = 0;
    v7 = [v6 _pas_fastUTF8StringPtrWithOptions:0 encodedLength:v55];
    if (v7)
    {
      v8 = v7;
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = v55[0];
      v11 = v8;
      v12 = 4;
    }

    else
    {
      v19 = [v6 lengthOfBytesUsingEncoding:2483028224];
      v20 = [v6 _fastCharacterContents];
      if (!v20)
      {
        v29 = v19 + 1;
        memptr = 0;
        v54 = 0;
        if (v19 + 1 > 0x4000)
        {
          v41 = malloc_type_posix_memalign(&memptr, 8uLL, v19, 0x68D1538DuLL);
          LOBYTE(v54) = 0;
          if (v41)
          {
            v42 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
            objc_exception_throw(v42);
          }

          v30 = memptr;
        }

        else
        {
          MEMORY[0x1EEE9AC00]();
          v30 = &v47 - ((v19 + 16) & 0xFFFFFFFFFFFFFFF0);
          bzero(v30, v19 + 1);
        }

        [v6 getCharacters:v30];
        v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v30 length:v19 encoding:2483028224];
        if (v29 > 0x4000)
        {
          free(v30);
        }

        goto LABEL_31;
      }

      v21 = v20;
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = v21;
      v10 = v19;
      v12 = 2483028224;
    }

    v5 = [v9 initWithBytes:v11 length:v10 encoding:v12];
LABEL_31:

    goto LABEL_32;
  }

  getEKObjectIDClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
    v15 = [v6 isTemporary];
    v16 = objc_autoreleasePoolPush();
    if (v15)
    {
      v17 = v6;
    }

    else
    {
      v17 = [getEKObjectIDClass() objectIDWithEntityType:objc_msgSend(v6 rowID:"entityType") databaseID:{objc_msgSend(v6, "rowID"), objc_msgSend(v6, "databaseID")}];
    }

    v5 = v17;
    objc_autoreleasePoolPop(v16);
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = objc_alloc(MEMORY[0x1E695DF00]);
    [v3 timeIntervalSinceReferenceDate];
    v5 = [v18 initWithTimeIntervalSinceReferenceDate:?];
LABEL_32:
    [v4 addObject:v5];
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v3;
      v48 = [PPAttendee alloc];
      v50 = [v31 name];
      v32 = internUsingSet(v50, v4);
      v49 = [v31 emailAddress];
      v33 = internUsingSet(v49, v4);
      v34 = [(PPAttendee *)v31 _plist];
      v35 = [v34 objectForKeyedSubscript:@"url"];
      v36 = internUsingSet(v35, v4);
      v37 = [v31 isCurrentUser];
      v38 = [v31 status];

      v5 = [(PPAttendee *)v48 initWithName:v32 emailAddress:v33 urlString:v36 isCurrentUser:v37 status:v38];
    }

    else
    {
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nonnull internUsingSet(NSObject * _Nonnull __strong, NSMutableSet * _Nonnull __strong)"}];
      [v39 handleFailureInFunction:v40 file:@"PPEvent.m" lineNumber:319 description:{@"unexpected type %@", objc_opt_class()}];

      v5 = 0;
    }

    goto LABEL_32;
  }

  v22 = objc_autoreleasePoolPush();
  v52 = 0;
  v23 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v52];
  v24 = v52;
  if (!v23)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nonnull internUsingSet(NSObject * _Nonnull __strong, NSMutableSet * _Nonnull __strong)"}];
    [v43 handleFailureInFunction:v44 file:@"PPEvent.m" lineNumber:305 description:{@"failed to archive: %@", v24}];
  }

  v25 = MEMORY[0x1E696ACD0];
  v26 = objc_autoreleasePoolPush();
  v27 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v26);
  v51 = v24;
  v5 = [v25 unarchivedObjectOfClasses:v27 fromData:v23 error:&v51];
  v28 = v51;

  if (!v5)
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nonnull internUsingSet(NSObject * _Nonnull __strong, NSMutableSet * _Nonnull __strong)"}];
    [v45 handleFailureInFunction:v46 file:@"PPEvent.m" lineNumber:309 description:{@"failed to unarchive: %@", v28}];
  }

  objc_autoreleasePoolPop(v22);
LABEL_8:

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

id PPNewCNContactStore()
{
  v0 = objc_alloc(MEMORY[0x1E695CE18]);
  v1 = objc_opt_new();
  [v1 setIncludeDonatedContacts:1];
  v2 = [v0 initWithConfiguration:v1];

  return v2;
}

id PPSharedCNContactStore()
{
  if (PPSharedCNContactStore__pasOnceToken3 != -1)
  {
    dispatch_once(&PPSharedCNContactStore__pasOnceToken3, &__block_literal_global_1624);
  }

  v1 = PPSharedCNContactStore__pasExprOnceResult;

  return v1;
}

void __PPSharedCNContactStore_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = PPNewCNContactStore();
  v2 = PPSharedCNContactStore__pasExprOnceResult;
  PPSharedCNContactStore__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id PPSharedSuggestionsContactService()
{
  if (PPSharedSuggestionsContactService__pasOnceToken4 != -1)
  {
    dispatch_once(&PPSharedSuggestionsContactService__pasOnceToken4, &__block_literal_global_10);
  }

  v1 = PPSharedSuggestionsContactService__pasExprOnceResult;

  return v1;
}

void __PPSharedSuggestionsContactService_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E69992A0] serviceForContacts];
  v2 = PPSharedSuggestionsContactService__pasExprOnceResult;
  PPSharedSuggestionsContactService__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

Class __getEKEventStoreClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary_1632)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __EventKitLibraryCore_block_invoke_1633;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E77F6728;
    v9 = 0;
    EventKitLibraryCore_frameworkLibrary_1632 = _sl_dlopen();
  }

  if (!EventKitLibraryCore_frameworkLibrary_1632)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EventKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"PPEventsSupport.m" lineNumber:20 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("EKEventStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEKEventStoreClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"PPEventsSupport.m" lineNumber:21 description:{@"Unable to find class %s", "EKEventStore"}];

LABEL_10:
    __break(1u);
  }

  getEKEventStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __EventKitLibraryCore_block_invoke_1633(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary_1632 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id PPNextMidnight()
{
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  v1 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:86400.0];
  v2 = [v0 startOfDayForDate:v1];

  return v2;
}

id PPPreviousMidnight()
{
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  v1 = objc_opt_new();
  v2 = [v0 startOfDayForDate:v1];

  return v2;
}

void sub_1A7FEF6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FF04AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FF1514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1A7FF16E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7FF768C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t PPIsServerContext()
{
  if (PPIsServerContext__pasOnceToken7 != -1)
  {
    dispatch_once(&PPIsServerContext__pasOnceToken7, &__block_literal_global_132);
  }

  return PPIsServerContext__pasExprOnceResult;
}

void __PPIsServerContext_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.suggestd"];

  objc_autoreleasePoolPop(v1);
  PPIsServerContext__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
}

void __PPGetStringInternPool_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  if (PPIsServerContext__pasOnceToken7 != -1)
  {
    dispatch_once(&PPIsServerContext__pasOnceToken7, &__block_literal_global_132);
  }

  v1 = PPIsServerContext__pasExprOnceResult;
  v2 = objc_alloc(MEMORY[0x1E69C5D30]);
  if (v1 == 1)
  {
    v3 = &__block_literal_global_142;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithBehavior:0 copyWithZone:v3];
  v5 = PPGetStringInternPool__pasExprOnceResult;
  PPGetStringInternPool__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
}

id __PPGetStringInternPool_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [MEMORY[0x1E69C5DB8] copyString:a2 toZone:a3];

  return v3;
}

id PPGetSourceInternPool()
{
  if (PPGetSourceInternPool__pasOnceToken9 != -1)
  {
    dispatch_once(&PPGetSourceInternPool__pasOnceToken9, &__block_literal_global_145);
  }

  v1 = PPGetSourceInternPool__pasExprOnceResult;

  return v1;
}

void __PPGetSourceInternPool_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x1E69C5D30]) initWithBehavior:0 copyWithZone:0];
  v2 = PPGetSourceInternPool__pasExprOnceResult;
  PPGetSourceInternPool__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_1A7FF90AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2862(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7FF9D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1A7FFB0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A7FFB560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3147(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7FFF35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3458(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7FFF658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A7FFF904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A8000EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3706(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A80050D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8006698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4321(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A80069B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A8006DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A8007E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8009038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A80097A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4492(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t qidStringToNumeric(void *a1)
{
  v1 = a1;
  if (([v1 hasPrefix:@"Q"] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint32_t qidStringToNumeric(NSString *__strong)"];
    [v5 handleFailureInFunction:v6 file:@"PPSpotlightScoringFeatureVector.m" lineNumber:95 description:{@"Invalid Qid: %@", v1}];
  }

  v2 = [v1 substringFromIndex:1];
  v3 = [v2 intValue];

  return v3;
}

void sub_1A800B840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  objc_sync_exit(v20);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose((v21 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1A800E7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A800F518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A80103BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5367(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A801105C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5433(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8011418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A8011700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A801334C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5759(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A80136D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80137D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A80142B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6130(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8014C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8015598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8016004(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1A8016284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6340(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A80164D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v15 - 80), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getEKCalendarVisibilityManagerClass_block_invoke(uint64_t a1)
{
  EventKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKCalendarVisibilityManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKCalendarVisibilityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEKCalendarVisibilityManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PPNotificationManager.m" lineNumber:41 description:{@"Unable to find class %s", "EKCalendarVisibilityManager"}];

    __break(1u);
  }
}

void *EventKitLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary_6348)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __EventKitLibraryCore_block_invoke_6349;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E77F7910;
    v7 = 0;
    EventKitLibraryCore_frameworkLibrary_6348 = _sl_dlopen();
  }

  v0 = EventKitLibraryCore_frameworkLibrary_6348;
  if (!EventKitLibraryCore_frameworkLibrary_6348)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EventKitLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"PPNotificationManager.m" lineNumber:37 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __EventKitLibraryCore_block_invoke_6349(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary_6348 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A8016DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  _Block_object_dispose(&a17, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getEKEventStoreChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EventKitLibrary();
  result = dlsym(v2, "EKEventStoreChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEKEventStoreChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A8017384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  objc_destroyWeak((v13 + 64));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v14 - 144), 8);
  _Unwind_Resume(a1);
}

void *__getEKEventStoreCalendarDataChangedUserInfoKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EventKitLibrary();
  result = dlsym(v2, "EKEventStoreCalendarDataChangedUserInfoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEKEventStoreCalendarDataChangedUserInfoKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A80176C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getEKObjectChangeClass_block_invoke(uint64_t a1)
{
  EventKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKObjectChange");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKObjectChangeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEKObjectChangeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PPNotificationManager.m" lineNumber:43 description:{@"Unable to find class %s", "EKObjectChange"}];

    __break(1u);
  }
}

void sub_1A8017E6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1A80181C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1A80185F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A8018B04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1A8019610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getEKCalendarItemChangeClass_block_invoke(uint64_t a1)
{
  EventKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKCalendarItemChange");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKCalendarItemChangeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEKCalendarItemChangeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PPNotificationManager.m" lineNumber:45 description:{@"Unable to find class %s", "EKCalendarItemChange"}];

    __break(1u);
  }
}

void __getEKExceptionDateChangeClass_block_invoke(uint64_t a1)
{
  EventKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKExceptionDateChange");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKExceptionDateChangeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEKExceptionDateChangeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PPNotificationManager.m" lineNumber:46 description:{@"Unable to find class %s", "EKExceptionDateChange"}];

    __break(1u);
  }
}

void __getEKRecurrenceChangeClass_block_invoke(uint64_t a1)
{
  EventKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKRecurrenceChange");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKRecurrenceChangeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEKRecurrenceChangeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PPNotificationManager.m" lineNumber:47 description:{@"Unable to find class %s", "EKRecurrenceChange"}];

    __break(1u);
  }
}

void __getEKEventChangeClass_block_invoke(uint64_t a1)
{
  EventKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKEventChange");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKEventChangeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEKEventChangeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PPNotificationManager.m" lineNumber:48 description:{@"Unable to find class %s", "EKEventChange"}];

    __break(1u);
  }
}

void __getEKAttendeeChangeClass_block_invoke(uint64_t a1)
{
  EventKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKAttendeeChange");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKAttendeeChangeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEKAttendeeChangeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PPNotificationManager.m" lineNumber:49 description:{@"Unable to find class %s", "EKAttendeeChange"}];

    __break(1u);
  }
}

void __getEKOrganizerChangeClass_block_invoke(uint64_t a1)
{
  EventKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKOrganizerChange");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKOrganizerChangeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEKOrganizerChangeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PPNotificationManager.m" lineNumber:50 description:{@"Unable to find class %s", "EKOrganizerChange"}];

    __break(1u);
  }
}

void sub_1A8019EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8019FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A801A29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A801AA7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_1A801B674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A801C164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6734(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A801C770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A801E05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __pp_quicktype_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "QuickType");
  v2 = pp_quicktype_log_handle__pasExprOnceResult;
  pp_quicktype_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_entities_log_handle()
{
  if (pp_entities_log_handle__pasOnceToken4 != -1)
  {
    dispatch_once(&pp_entities_log_handle__pasOnceToken4, &__block_literal_global_12);
  }

  v1 = pp_entities_log_handle__pasExprOnceResult;

  return v1;
}

void __pp_entities_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "Entities");
  v2 = pp_entities_log_handle__pasExprOnceResult;
  pp_entities_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __pp_topics_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "Topics");
  v2 = pp_topics_log_handle__pasExprOnceResult;
  pp_topics_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __pp_contacts_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "Contacts");
  v2 = pp_contacts_log_handle__pasExprOnceResult;
  pp_contacts_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_connections_log_handle()
{
  if (pp_connections_log_handle__pasOnceToken8 != -1)
  {
    dispatch_once(&pp_connections_log_handle__pasOnceToken8, &__block_literal_global_24);
  }

  v1 = pp_connections_log_handle__pasExprOnceResult;

  return v1;
}

void __pp_connections_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "Connections");
  v2 = pp_connections_log_handle__pasExprOnceResult;
  pp_connections_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_locations_log_handle()
{
  if (pp_locations_log_handle__pasOnceToken9 != -1)
  {
    dispatch_once(&pp_locations_log_handle__pasOnceToken9, &__block_literal_global_27_7532);
  }

  v1 = pp_locations_log_handle__pasExprOnceResult;

  return v1;
}

void __pp_locations_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "Locations");
  v2 = pp_locations_log_handle__pasExprOnceResult;
  pp_locations_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_reranker_log_handle()
{
  if (pp_reranker_log_handle__pasOnceToken10 != -1)
  {
    dispatch_once(&pp_reranker_log_handle__pasOnceToken10, &__block_literal_global_30);
  }

  v1 = pp_reranker_log_handle__pasExprOnceResult;

  return v1;
}

void __pp_reranker_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "Reranker");
  v2 = pp_reranker_log_handle__pasExprOnceResult;
  pp_reranker_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __pp_xpc_server_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "XPCServer");
  v2 = pp_xpc_server_log_handle__pasExprOnceResult;
  pp_xpc_server_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_asset_log_handle()
{
  if (pp_asset_log_handle__pasOnceToken13 != -1)
  {
    dispatch_once(&pp_asset_log_handle__pasOnceToken13, &__block_literal_global_39);
  }

  v1 = pp_asset_log_handle__pasExprOnceResult;

  return v1;
}

void __pp_asset_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "Asset");
  v2 = pp_asset_log_handle__pasExprOnceResult;
  pp_asset_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_score_interpreter_log_handle()
{
  if (pp_score_interpreter_log_handle__pasOnceToken14 != -1)
  {
    dispatch_once(&pp_score_interpreter_log_handle__pasOnceToken14, &__block_literal_global_42);
  }

  v1 = pp_score_interpreter_log_handle__pasExprOnceResult;

  return v1;
}

void __pp_score_interpreter_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "ScoreInterpreter");
  v2 = pp_score_interpreter_log_handle__pasExprOnceResult;
  pp_score_interpreter_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_temporal_clusters_log_handle()
{
  if (pp_temporal_clusters_log_handle__pasOnceToken16 != -1)
  {
    dispatch_once(&pp_temporal_clusters_log_handle__pasOnceToken16, &__block_literal_global_48);
  }

  v1 = pp_temporal_clusters_log_handle__pasExprOnceResult;

  return v1;
}

void __pp_temporal_clusters_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "TemporalClusters");
  v2 = pp_temporal_clusters_log_handle__pasExprOnceResult;
  pp_temporal_clusters_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_universal_search_log_handle()
{
  if (pp_universal_search_log_handle__pasOnceToken17 != -1)
  {
    dispatch_once(&pp_universal_search_log_handle__pasOnceToken17, &__block_literal_global_51);
  }

  v1 = pp_universal_search_log_handle__pasExprOnceResult;

  return v1;
}

void __pp_universal_search_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalizationPortrait", "UniversalSearch");
  v2 = pp_universal_search_log_handle__pasExprOnceResult;
  pp_universal_search_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_default_signpost_handle()
{
  if (pp_default_signpost_handle__pasOnceToken18 != -1)
  {
    dispatch_once(&pp_default_signpost_handle__pasOnceToken18, &__block_literal_global_54);
  }

  v1 = pp_default_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pp_default_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "Default");
  v2 = pp_default_signpost_handle__pasExprOnceResult;
  pp_default_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_maintenance_signpost_handle()
{
  if (pp_maintenance_signpost_handle__pasOnceToken19 != -1)
  {
    dispatch_once(&pp_maintenance_signpost_handle__pasOnceToken19, &__block_literal_global_56);
  }

  v1 = pp_maintenance_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pp_maintenance_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "Maintenance");
  v2 = pp_maintenance_signpost_handle__pasExprOnceResult;
  pp_maintenance_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_quicktype_signpost_handle()
{
  if (pp_quicktype_signpost_handle__pasOnceToken20 != -1)
  {
    dispatch_once(&pp_quicktype_signpost_handle__pasOnceToken20, &__block_literal_global_59);
  }

  v1 = pp_quicktype_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pp_quicktype_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "QuickType");
  v2 = pp_quicktype_signpost_handle__pasExprOnceResult;
  pp_quicktype_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_entities_signpost_handle()
{
  if (pp_entities_signpost_handle__pasOnceToken21 != -1)
  {
    dispatch_once(&pp_entities_signpost_handle__pasOnceToken21, &__block_literal_global_61);
  }

  v1 = pp_entities_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pp_entities_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "Entities");
  v2 = pp_entities_signpost_handle__pasExprOnceResult;
  pp_entities_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_topics_signpost_handle()
{
  if (pp_topics_signpost_handle__pasOnceToken22 != -1)
  {
    dispatch_once(&pp_topics_signpost_handle__pasOnceToken22, &__block_literal_global_63);
  }

  v1 = pp_topics_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pp_topics_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "Topics");
  v2 = pp_topics_signpost_handle__pasExprOnceResult;
  pp_topics_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_contacts_signpost_handle()
{
  if (pp_contacts_signpost_handle__pasOnceToken23 != -1)
  {
    dispatch_once(&pp_contacts_signpost_handle__pasOnceToken23, &__block_literal_global_65);
  }

  v1 = pp_contacts_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pp_contacts_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "Contacts");
  v2 = pp_contacts_signpost_handle__pasExprOnceResult;
  pp_contacts_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_events_signpost_handle()
{
  if (pp_events_signpost_handle__pasOnceToken24 != -1)
  {
    dispatch_once(&pp_events_signpost_handle__pasOnceToken24, &__block_literal_global_67);
  }

  v1 = pp_events_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pp_events_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "Events");
  v2 = pp_events_signpost_handle__pasExprOnceResult;
  pp_events_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_connections_signpost_handle()
{
  if (pp_connections_signpost_handle__pasOnceToken25 != -1)
  {
    dispatch_once(&pp_connections_signpost_handle__pasOnceToken25, &__block_literal_global_69_7559);
  }

  v1 = pp_connections_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pp_connections_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "Connections");
  v2 = pp_connections_signpost_handle__pasExprOnceResult;
  pp_connections_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_locations_signpost_handle()
{
  if (pp_locations_signpost_handle__pasOnceToken26 != -1)
  {
    dispatch_once(&pp_locations_signpost_handle__pasOnceToken26, &__block_literal_global_71);
  }

  v1 = pp_locations_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pp_locations_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "Locations");
  v2 = pp_locations_signpost_handle__pasExprOnceResult;
  pp_locations_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_reranker_signpost_handle()
{
  if (pp_reranker_signpost_handle__pasOnceToken27 != -1)
  {
    dispatch_once(&pp_reranker_signpost_handle__pasOnceToken27, &__block_literal_global_73_7563);
  }

  v1 = pp_reranker_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pp_reranker_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "Reranker");
  v2 = pp_reranker_signpost_handle__pasExprOnceResult;
  pp_reranker_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_social_highlights_signpost_handle()
{
  if (pp_social_highlights_signpost_handle__pasOnceToken28 != -1)
  {
    dispatch_once(&pp_social_highlights_signpost_handle__pasOnceToken28, &__block_literal_global_75);
  }

  v1 = pp_social_highlights_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pp_social_highlights_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "SocialHighlights");
  v2 = pp_social_highlights_signpost_handle__pasExprOnceResult;
  pp_social_highlights_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pp_temporal_clusters_signpost_handle()
{
  if (pp_temporal_clusters_signpost_handle__pasOnceToken29 != -1)
  {
    dispatch_once(&pp_temporal_clusters_signpost_handle__pasOnceToken29, &__block_literal_global_77);
  }

  v1 = pp_temporal_clusters_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pp_temporal_clusters_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "TemporalClusters");
  v2 = pp_temporal_clusters_signpost_handle__pasExprOnceResult;
  pp_temporal_clusters_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_1A80229A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7677(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8022CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

__CFString *PPCollapseWhitespaceAndStrip(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_70;
  }

  v2 = [(__CFString *)v1 length];
  if (v2)
  {
    v3 = v2;
    if (v2 <= 0x1FF)
    {
      MEMORY[0x1EEE9AC00]();
      v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v5, v4);
LABEL_7:
      v7 = v1;
      v1 = v7;
      if (v7)
      {
        memset(buffer, 0, sizeof(buffer));
        Length = CFStringGetLength(v7);
        v36 = v1;
        v39 = 0;
        v40 = Length;
        CharactersPtr = CFStringGetCharactersPtr(v1);
        CStringPtr = 0;
        v37 = CharactersPtr;
        if (!CharactersPtr)
        {
          CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
        }

        v34 = v3;
        v41 = 0;
        v42 = 0;
        v38 = CStringPtr;
        if (Length >= 1)
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 64;
          v17 = 1;
          while (1)
          {
            if (v13 >= 4)
            {
              v18 = 4;
            }

            else
            {
              v18 = v13;
            }

            v19 = v40;
            if (v40 <= v13)
            {
              v21 = 0;
              goto LABEL_24;
            }

            if (v37)
            {
              v20 = &v37[v39];
            }

            else
            {
              if (v38)
              {
                v21 = v38[v39 + v13];
                goto LABEL_22;
              }

              if (v42 <= v13 || v12 > v13)
              {
                v23 = v18 + v11;
                v24 = v16 - v18;
                v25 = v13 - v18;
                v26 = v25 + 64;
                if (v25 + 64 >= v40)
                {
                  v26 = v40;
                }

                v41 = v25;
                v42 = v26;
                if (v40 >= v24)
                {
                  v19 = v24;
                }

                v45.location = v25 + v39;
                v45.length = v19 + v23;
                CFStringGetCharacters(v36, v45, buffer);
                v12 = v41;
              }

              v20 = buffer - v12;
            }

            v21 = v20[v13];
LABEL_22:
            if (v21 == 10 || v21 == 32)
            {
              goto LABEL_49;
            }

LABEL_24:
            if ((v21 - 48) >= 0xAu && ((v21 & 0xFFDF) - 65) >= 0x1Au)
            {
              if (v21 > 0x9Fu)
              {
                if (v21 == 160 || v21 == 5760)
                {
                  goto LABEL_49;
                }
              }

              else if (v21 == 9 || v21 == 32)
              {
                goto LABEL_49;
              }

              if ((v21 - 0x2000) < 0xCu)
              {
                goto LABEL_49;
              }

              if (v21 > 0x2027u)
              {
                if (v21 - 8232 <= 0x37 && ((1 << (v21 - 40)) & 0x80000000000083) != 0 || v21 == 12288)
                {
LABEL_49:
                  if ((v17 & 1) == 0)
                  {
                    *&v5[2 * v14++] = 32;
                    v15 |= v21 != 32;
                  }

                  v17 = 1;
                  goto LABEL_54;
                }
              }

              else if (v21 - 10 < 4 || v21 == 133)
              {
                goto LABEL_49;
              }
            }

            v17 = 0;
            *&v5[2 * v14++] = v21;
LABEL_54:
            ++v13;
            --v11;
            ++v16;
            if (Length == v13)
            {
              goto LABEL_58;
            }
          }
        }

        v15 = 0;
        v14 = 0;
LABEL_58:
        v3 = v34;
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v27 = v14 - 1;
      while (v27 != -1)
      {
        v28 = *&v5[2 * v27--];
        if (v28 != 32)
        {
          v29 = v27 + 2;
          if (v15)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }
      }

      v29 = 0;
      if (v15)
      {
        goto LABEL_66;
      }

LABEL_65:
      if (v29 >= [(__CFString *)v1 length])
      {
        goto LABEL_67;
      }

LABEL_66:
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v5 length:v29];

      v1 = v30;
LABEL_67:
      if (v3 >= 0x200)
      {
        free(v5);
      }

      goto LABEL_69;
    }

    v5 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
    if (v5)
    {
      goto LABEL_7;
    }
  }

LABEL_69:
  v1 = v1;
  v6 = v1;
LABEL_70:

  v31 = *MEMORY[0x1E69E9840];

  return v6;
}

BOOL PPStringIsWellFormed(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (CFStringGetFastestEncoding(v1) == 1536)
    {
      v3 = 1;
    }

    else
    {
      v4 = [(__CFString *)v2 dataUsingEncoding:10 allowLossyConversion:0];
      v5 = v4;
      if (v4)
      {
        v3 = u_strIsWellFormed([v4 bytes], objc_msgSend(v4, "length") >> 1) != 0;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL PPStringAllWhiteSpace(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (PPStringAllWhiteSpace__pasOnceToken2 != -1)
    {
      dispatch_once(&PPStringAllWhiteSpace__pasOnceToken2, &__block_literal_global_7710);
    }

    v2 = [v1 rangeOfCharacterFromSet:PPStringAllWhiteSpace__pasExprOnceResult] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void __PPStringAllWhiteSpace_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v2 = [v1 invertedSet];
  v3 = PPStringAllWhiteSpace__pasExprOnceResult;
  PPStringAllWhiteSpace__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

uint64_t PPStringLooksLikeNumber(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    memset(v21, 0, sizeof(v21));
    Length = CFStringGetLength(v1);
    theString = v2;
    v25 = 0;
    v26 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v2);
    CStringPtr = 0;
    v23 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v2, 0x600u);
    }

    v27 = 0;
    v28 = 0;
    v24 = CStringPtr;
    if (Length >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 64;
      while (1)
      {
        if (v8 >= 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = v8;
        }

        v12 = v26;
        if (v26 <= v8)
        {
          break;
        }

        if (v23)
        {
          v13 = &v23[v25];
        }

        else
        {
          if (v24)
          {
            v14 = v24[v25 + v8];
            goto LABEL_15;
          }

          if (v28 <= v8 || v7 > v8)
          {
            v16 = v11 + v6;
            v17 = v10 - v11;
            v18 = v8 - v11;
            v19 = v18 + 64;
            if (v18 + 64 >= v26)
            {
              v19 = v26;
            }

            v27 = v18;
            v28 = v19;
            if (v26 >= v17)
            {
              v12 = v17;
            }

            v29.location = v18 + v25;
            v29.length = v12 + v16;
            CFStringGetCharacters(theString, v29, v21);
            v7 = v27;
          }

          v13 = v21 - v7;
        }

        v14 = v13[v8];
LABEL_15:
        if (v14 > 0x39u)
        {
          break;
        }

        if (((1 << v14) & 0x3FF000000000000) != 0)
        {
          v9 = 1;
        }

        else if (((1 << v14) & 0x7B0100000200) == 0)
        {
          break;
        }

        ++v8;
        --v6;
        ++v10;
        if (Length == v8)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v9 = 0;
LABEL_32:

  return v9 & 1;
}

id PPStringFirstNumber(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_38;
  }

  v3 = v1;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  Length = CFStringGetLength(v3);
  theString = v3;
  v40 = 0;
  v41 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v3);
  CStringPtr = 0;
  v38 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
  }

  v42 = 0;
  v43 = 0;
  v39 = CStringPtr;
  if (Length <= 0)
  {
LABEL_37:

LABEL_38:
    v27 = 0;
    goto LABEL_39;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0xFFFFFFFFLL;
  v11 = -1;
  do
  {
    v12 = -v9;
    v13 = v9 + 64;
    v14 = v8;
    while (1)
    {
      if (v9 >= 4)
      {
        v15 = 4;
      }

      else
      {
        v15 = v9;
      }

      v16 = v41;
      if (v41 <= v9)
      {
        ++v11;
        goto LABEL_18;
      }

      if (v38)
      {
        v17 = &v38[v40];
LABEL_13:
        v18 = v17[v9];
        goto LABEL_17;
      }

      if (!v39)
      {
        if (v43 <= v9 || v7 > v9)
        {
          v20 = v15 + v12;
          v21 = v13 - v15;
          v22 = v9 - v15;
          v23 = v10;
          v24 = v22 + 64;
          if (v22 + 64 >= v41)
          {
            v24 = v41;
          }

          v42 = v22;
          v43 = v24;
          if (v41 >= v21)
          {
            v16 = v21;
          }

          v45.location = v22 + v40;
          v45.length = v16 + v20;
          CFStringGetCharacters(theString, v45, &v29);
          v10 = v23;
          v7 = v42;
        }

        v17 = &v29 - v7;
        goto LABEL_13;
      }

      v18 = v39[v40 + v9];
LABEL_17:
      ++v11;
      if ((v18 - 48) < 0xAu)
      {
        break;
      }

LABEL_18:
      if (v14)
      {
        v27 = [(__CFString *)v3 substringWithRange:v10, v14, v29, v30, v31, v32, v33, v34, v35, v36];

        goto LABEL_39;
      }

      ++v9;
      --v12;
      ++v13;
      if (Length == v9)
      {
        goto LABEL_37;
      }
    }

    if (v10 >= 0)
    {
      v10 = v10;
    }

    else
    {
      v10 = v11;
    }

    v8 = v14 + 1;
    ++v9;
  }

  while (v9 != Length);
  v25 = v10;

  if (v14 < 0)
  {
    goto LABEL_38;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = [(__CFString *)v3 substringWithRange:v25, (v14 + 1), v29, v30, v31, v32, v33, v34, v35, v36];
  objc_autoreleasePoolPop(v26);
LABEL_39:

  return v27;
}