void pl_dispatch_group_async(NSObject *a1, NSObject *a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pl_dispatch_group_async_block_invoke;
  block[3] = &unk_1E79324A0;
  v8 = v5;
  v6 = v5;
  dispatch_group_async(a1, a2, block);
}

void __pl_dispatch_group_async_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void pl_dispatch_async_without_boost(dispatch_block_t block)
{
  v1 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_BACKGROUND, 0, block);
  v2 = dispatch_get_global_queue(9, 0);
  blocka[0] = MEMORY[0x1E69E9820];
  blocka[1] = 3221225472;
  blocka[2] = __pl_dispatch_async_without_boost_block_invoke;
  blocka[3] = &unk_1E79324A0;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, blocka);
}

void __pl_dispatch_async_without_boost_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void pl_dispatch_async_without_boost_on_queue(void *a1, void *a2)
{
  v3 = a1;
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_BACKGROUND, 0, a2);
  dispatch_async(v3, v4);
}

void pl_dispatch_group_notify(NSObject *a1, NSObject *a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pl_dispatch_group_notify_block_invoke;
  block[3] = &unk_1E79324A0;
  v8 = v5;
  v6 = v5;
  dispatch_group_notify(a1, a2, block);
}

void __pl_dispatch_group_notify_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void pl_dispatch_barrier_async(NSObject *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pl_dispatch_barrier_async_block_invoke;
  block[3] = &unk_1E79324A0;
  v6 = v3;
  v4 = v3;
  dispatch_barrier_async(a1, block);
}

void __pl_dispatch_barrier_async_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void pl_dispatch_after(dispatch_time_t a1, NSObject *a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pl_dispatch_after_block_invoke;
  block[3] = &unk_1E79324A0;
  v8 = v5;
  v6 = v5;
  dispatch_after(a1, a2, block);
}

void __pl_dispatch_after_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void pl_dispatch_on_main_queue(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void pl_dispatch_on_main_queue_after(void *a1, double a2)
{
  v3 = a1;
  v4 = dispatch_time(0, (a2 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pl_dispatch_on_main_queue_after_block_invoke;
  block[3] = &unk_1E79324A0;
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

void __pl_dispatch_on_main_queue_after_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void pl_notify_disable_for_shutdown()
{
  v0 = PLBackendGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AA9BD000, v0, OS_LOG_TYPE_DEFAULT, "Disabling libnotify calls due to shutdown", v1, 2u);
  }

  atomic_store(1u, sNotifyIsDisabledForShutdown);
}

uint64_t pl_notify_post_with_retry(char *name, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(sNotifyIsDisabledForShutdown);
  if (v2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    if (v6)
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v11 = 1000000;
        v12 = 2080;
        v13 = name;
        v14 = 1024;
        v15 = v7 - 1;
        v16 = 1024;
        v17 = a2;
        _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Error %d occurred while trying to call notify_post for: %s. (attempt number: %d of %d)", buf, 0x1Eu);
      }

      usleep(0x186A0u);
    }

    result = notify_post(name);
    if (result != 1000000)
    {
      break;
    }

    v6 = 1;
  }

  while (v7++ < a2);
  return result;
}

NSObject *pl_dispatch_queue_create_with_qos_and_fallback_qos(const char *a1, dispatch_queue_attr_t attr)
{
  v3 = dispatch_queue_attr_make_initially_inactive(attr);
  v4 = dispatch_queue_create(a1, v3);
  dispatch_set_qos_class();
  dispatch_set_qos_class_fallback();
  dispatch_activate(v4);

  return v4;
}

id pathKeyForLibraryURL(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 path];
  v9 = 0;
  v3 = [PLFileUtilities realPathForPath:v2 error:&v9];
  v4 = v9;

  if (v3)
  {
    if (![v3 hasSuffix:@"/"])
    {
      goto LABEL_10;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *pathKeyForLibraryURL(NSURL *__strong)"];
    [v5 handleFailureInFunction:v6 file:@"PLLibraryBookmarkManager.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"![path hasSuffix:@/]"}];

    goto LABEL_8;
  }

  if (v1)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v1;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_DEFAULT, "Unable to determine realpath for URL %@ error: %@", buf, 0x16u);
    }

    v5 = [v1 URLByStandardizingPath];
    v3 = [v5 path];
LABEL_8:

    goto LABEL_10;
  }

  v3 = 0;
LABEL_10:

  return v3;
}

void sub_1AAA12104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3186(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA124E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ALGetPhotosAndVideosCount(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = ALSharedAssetsdClient();
    v3 = [v2 libraryInternalClient];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __ALGetPhotosAndVideosCount_block_invoke;
    v4[3] = &unk_1E7930110;
    v5 = v1;
    [v3 getAssetCountsWithReply:v4];
  }
}

id ALSharedAssetsdClient()
{
  if (ALSharedAssetsdClient_onceToken != -1)
  {
    dispatch_once(&ALSharedAssetsdClient_onceToken, &__block_literal_global_3321);
  }

  v1 = ALSharedAssetsdClient_assetsdClient;

  return v1;
}

void __ALGetPhotosAndVideosCount_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a4)
  {
    v5 = *(v4 + 16);
    v6 = *(a1 + 32);

    v5(v6, 0, 0);
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    (*(v4 + 16))(v4, v9, v8);
  }
}

uint64_t __ALSharedAssetsdClient_block_invoke()
{
  ALSharedAssetsdClient_assetsdClient = +[PLAssetsdClient sharedSystemLibraryAssetsdClient];

  return MEMORY[0x1EEE66BB8]();
}

id ALRegisterForPhotosAndVideosCount(void *a1, NSObject *a2)
{
  v3 = a1;
  out_token = 0;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __ALRegisterForPhotosAndVideosCount_block_invoke;
  handler[3] = &unk_1E7930138;
  v4 = v3;
  v9 = v4;
  v5 = notify_register_dispatch("ALPhotosAndVideosCount", &out_token, a2, handler);
  if (v5)
  {
    NSLog(@"notify_register_dispatch() failed for ALRegisterForPhotosAndVideosCount(). (%d)", v5);
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
  }

  return v6;
}

uint64_t ALUnregisterForPhotosAndVideosCount(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v4 = v1;
    v2 = notify_cancel([v1 intValue]);
    if (v2)
    {
      NSLog(@"notify_cancel() failed for ALUnregisterForPhotosAndVideosCount(). (%d)", v4, v2);
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ALSecondsNeededToMigrateStore(void *a1)
{
  v1 = PLGenericAssetCountInDatabaseWithPath([a1 fileSystemRepresentation]);
  if (v1 == -1)
  {
    return 30;
  }

  if (v1 >= 100)
  {
    return (v1 / 0x53uLL);
  }

  return 1;
}

void ALGetLibrarySizes(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = ALSharedAssetsdClient();
  v8 = [v7 libraryInternalClient];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __ALGetLibrarySizes_block_invoke;
  v11[3] = &unk_1E79301D8;
  v13 = v6;
  v14 = a2;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v8 getLibrarySizesFromDB:0 completionHandler:v11];
}

void __ALGetLibrarySizes_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = *(a1 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __ALGetLibrarySizes_block_invoke_2;
  v17[3] = &unk_1E7930188;
  v20 = &v21;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  [v6 enumerateKeysAndObjectsUsingBlock:v17];
  v8 = v22;
  v9 = v22[3];
  if (v9)
  {
    v10 = 1;
    do
    {
      if ((v9 & v10) != 0)
      {
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __ALGetLibrarySizes_block_invoke_4;
        block[3] = &unk_1E79301B0;
        v15 = v11;
        v16 = v10;
        dispatch_async(v12, block);

        v8 = v22;
      }

      v9 = v8[3] & ~v10;
      v8[3] = v9;
      if (v9)
      {
        v13 = v10 >= 8;
      }

      else
      {
        v13 = 1;
      }

      v10 *= 2;
    }

    while (!v13);
  }

  _Block_object_dispose(&v21, 8);
}

void sub_1AAA13A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ALGetLibrarySizes_block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [a2 integerValue];
  v9 = *(*(*(a1 + 48) + 8) + 24);
  if ((v8 & ~v9) == 0)
  {
    v10 = v8;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __ALGetLibrarySizes_block_invoke_3;
    block[3] = &unk_1E7930160;
    v11 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = v10;
    v13 = v7;
    dispatch_async(v11, block);
    *(*(*(a1 + 48) + 8) + 24) &= ~v10;

    v9 = *(*(*(a1 + 48) + 8) + 24);
  }

  if (!v9)
  {
    *a4 = 1;
  }
}

uint64_t __ALGetLibrarySizes_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = [*(a1 + 32) unsignedLongLongValue];
  v4 = *(v2 + 16);

  return v4(v2, v1, v3);
}

void sub_1AAA14630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3390(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3555(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA1B618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *a26, os_signpost_id_t a27, os_activity_scope_state_s a28, SEL sel)
{
  if (a25 == 1)
  {
    os_activity_scope_leave(&a28);
  }

  if (a27)
  {
    v32 = PLRequestGetLog();
    v33 = v32;
    if (a27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      Name = sel_getName(sel);
      *(v30 - 144) = 136446210;
      *(v29 + 52) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v33, OS_SIGNPOST_INTERVAL_END, a27, "PLXPC Sync", "%{public}s", (v30 - 144), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA1E9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *a26, os_signpost_id_t a27, os_activity_scope_state_s a28, SEL sel)
{
  if (a25 == 1)
  {
    os_activity_scope_leave(&a28);
  }

  if (a27)
  {
    v32 = PLRequestGetLog();
    v33 = v32;
    if (a27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      Name = sel_getName(sel);
      *(v30 - 144) = 136446210;
      *(v29 + 52) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v33, OS_SIGNPOST_INTERVAL_END, a27, "PLXPC Sync", "%{public}s", (v30 - 144), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA1F7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, os_signpost_id_t a23, os_activity_scope_state_s a24, SEL sel, int buf)
{
  if (a21 == 1)
  {
    os_activity_scope_leave(&a24);
  }

  if (a23)
  {
    v28 = PLRequestGetLog();
    v29 = v28;
    if (a23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      Name = sel_getName(sel);
      buf = 136446210;
      *(v26 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v29, OS_SIGNPOST_INTERVAL_END, a23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA2029C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, void *a32, os_signpost_id_t a33, os_activity_scope_state_s a34, SEL sel)
{
  if (a31 == 1)
  {
    os_activity_scope_leave(&a34);
  }

  if (a33)
  {
    v38 = PLRequestGetLog();
    v39 = v38;
    if (a33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      Name = sel_getName(sel);
      *(v36 - 144) = 136446210;
      *(v35 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v39, OS_SIGNPOST_INTERVAL_END, a33, "PLXPC Sync", "%{public}s", (v36 - 144), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA21880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3762(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA21C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *build_error_event_string(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696AEC0];
    v2 = a1;
    v3 = [v2 domain];
    v4 = [v1 stringWithFormat:@"%@_%ld", v3, objc_msgSend(v2, "code")];

    v5 = [v2 userInfo];

    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v6)
    {
      v7 = build_error_event_string(v6);
      v8 = [(__CFString *)v4 stringByAppendingFormat:@":%@", v7];

      v4 = v8;
    }
  }

  else
  {
    v4 = @"unknown";
  }

  return v4;
}

id PLUUIDDataFromString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_opt_class();
    if (v2 == objc_opt_class())
    {
      v4 = [v1 UUIDData];
    }

    else
    {
      v7[0] = PLUUIDBytesFromString(v1);
      v7[1] = v3;
      v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:16];
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t PLUUIDBytesFromString(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v22 = [(__CFString *)v1 UUIDBytes];
    goto LABEL_19;
  }

  v3 = [(__CFString *)v1 length];
  [(__CFString *)v1 getCharacters:v26 range:0, v3];
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = 0;
  v5 = v26;
  v6 = 1;
  do
  {
    v7 = *v5++;
    v8 = v7;
    if (v7 - 48 >= 0xA && ((v8 - 65) > 0x25 || ((1 << (v8 - 65)) & 0x3F0000003FLL) == 0))
    {
      goto LABEL_11;
    }

    v27[v4++] = v8;
LABEL_11:
    if (v6 >= v3)
    {
      break;
    }

    ++v6;
  }

  while (v4 < 0x20);
  if (v4 != 32)
  {
LABEL_15:
    v23 = CFUUIDCreateFromString(0, v1);
    if (v23)
    {
      v24 = v23;
      v22 = *&CFUUIDGetUUIDBytes(v23);
      CFAutorelease(v24);
      goto LABEL_19;
    }

LABEL_17:
    v22 = 0;
    goto LABEL_19;
  }

  v10 = v27;
  v29 = vld2q_s8(v10);
  v11.i64[0] = 0xD0D0D0D0D0D0D0D0;
  v11.i64[1] = 0xD0D0D0D0D0D0D0D0;
  v12 = vaddq_s8(v29.val[0], v11);
  v13.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v13.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  v14 = vcgtq_u8(v13, v12);
  v15.i64[0] = 0x9F9F9F9F9F9F9F9FLL;
  v15.i64[1] = 0x9F9F9F9F9F9F9F9FLL;
  v16.i64[0] = 0x606060606060606;
  v16.i64[1] = 0x606060606060606;
  v17.i64[0] = 0xBFBFBFBFBFBFBFBFLL;
  v17.i64[1] = 0xBFBFBFBFBFBFBFBFLL;
  v18.i64[0] = 0xC9C9C9C9C9C9C9C9;
  v18.i64[1] = 0xC9C9C9C9C9C9C9C9;
  v19.i64[0] = 0xA9A9A9A9A9A9A9A9;
  v19.i64[1] = 0xA9A9A9A9A9A9A9A9;
  v20 = vaddq_s8(v29.val[1], v11);
  v21 = vcgtq_u8(v13, v20);
  v22 = vaddq_s8(vbslq_s8(v21, v20, vbslq_s8(vorrq_s8(v21, vcgtq_u8(v16, vaddq_s8(v29.val[1], v15))), vaddq_s8(v29.val[1], v19), vandq_s8(vaddq_s8(v29.val[1], v18), vcgtq_u8(v16, vaddq_s8(v29.val[1], v17))))), vshlq_n_s8(vbslq_s8(v14, v12, vbslq_s8(vorrq_s8(v14, vcgtq_u8(v16, vaddq_s8(v29.val[0], v15))), vaddq_s8(v29.val[0], v19), vandq_s8(vaddq_s8(v29.val[0], v18), vcgtq_u8(v16, vaddq_s8(v29.val[0], v17))))), 4uLL)).u64[0];
LABEL_19:

  return v22;
}

PLUUIDString *PLStringFromUUIDData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [[PLUUIDString alloc] initWithUUIDData:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PLStringFromUUID(const unsigned __int8 *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  uuid_unparse(a1, v3);
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];

  return v1;
}

BOOL PLIsMercuryBase64String(void *a1)
{
  v1 = a1;
  v2 = [v1 length] == 22 && strspn(objc_msgSend(v1, "UTF8String"), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+%") == 22;

  return v2;
}

BOOL PLIsCanonicalUUIDString(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = [v1 length] == 36 && (memset(uu, 0, sizeof(uu)), v2 = objc_msgSend(v1, "UTF8String"), strspn(v2, "-01234567890abcdefABCDEF") == 36) && uuid_parse(v2, uu) == 0;

  return v3;
}

id PLConvertMercuryUUIDString(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_9;
  }

  if (PLIsCanonicalUUIDString(v1))
  {
    v2 = v2;
    v3 = v2;
    goto LABEL_12;
  }

  if (PLIsMercuryBase64String(v2))
  {
    v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"%"];
    v5 = [v2 rangeOfCharacterFromSet:v4 options:0];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v2 stringByReplacingOccurrencesOfString:@"%" withString:@"/" options:0 range:{v5, v6}];

      v2 = v7;
    }

    v8 = [v2 stringByAppendingString:@"=="];

    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
    v10 = v9;
    if (v9)
    {
      memset(v12, 0, 37);
      uuid_unparse_upper([v9 bytes], v12);
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v12];
    }

    else
    {
      v3 = 0;
    }

    v2 = v8;
  }

  else
  {
LABEL_9:
    v3 = 0;
  }

LABEL_12:

  return v3;
}

id PLUUIDFromLocalMercuryLocalIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if (v2 == 22)
  {
    v5 = v1;
  }

  else
  {
    if (v2 != 29 || (v3 = [v1 rangeOfString:@"/L0/"], !v4))
    {
      v6 = 0;
      goto LABEL_8;
    }

    v5 = [v1 substringToIndex:v3];
  }

  v6 = v5;
LABEL_8:

  return v6;
}

BOOL PLIsContentPrivacyEnabled()
{
  v5 = *MEMORY[0x1E69E9840];
  if (PFProcessIsLaunchedToExecuteTests())
  {
    return 0;
  }

  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"ContentPrivacyEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v1 = PLPreferencesGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v4 = @"com.apple.mobileslideshow";
      _os_log_impl(&dword_1AA9BD000, v1, OS_LOG_TYPE_DEBUG, "Content privacy default not set in domain %@. Defaulting to YES", buf, 0xCu);
    }

    return 1;
  }

  return result;
}

void PLSetContentPrivacyEnabled(uint64_t a1)
{
  value = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  CFPreferencesSetAppValue(@"ContentPrivacyEnabled", value, @"com.apple.mobileslideshow");
}

void PLSetFeaturedContentAllowed(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesSetAppValue(@"FeaturedContentAllowed", v1, @"com.apple.mobileslideshow");
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
}

BOOL PLShouldExcludeLocationWhenSharing()
{
  v5 = *MEMORY[0x1E69E9840];
  if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
  {
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    keyExistsAndHasValidFormat = 0;
    result = CFPreferencesGetAppBooleanValue(@"ExcludeLocationWhenSharing", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
    if (keyExistsAndHasValidFormat)
    {
      return result;
    }

    v1 = PLPreferencesGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v4 = @"com.apple.mobileslideshow";
      _os_log_impl(&dword_1AA9BD000, v1, OS_LOG_TYPE_DEBUG, "Default for excluding location when sharing is not set in domain %@. Defaulting to NO", buf, 0xCu);
    }
  }

  return 0;
}

void PLSetShouldExcludeLocationWhenSharing(uint64_t a1)
{
  value = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  CFPreferencesSetAppValue(@"ExcludeLocationWhenSharing", value, @"com.apple.mobileslideshow");
}

char *PLIsConfiguredForUnitTesting()
{
  result = getenv("CONFIGURE_FOR_UNIT_TESTING");
  if (result)
  {
    return (*result == 49);
  }

  return result;
}

BOOL PLXCTestAllowsProhibitedSystemLibraryAccess()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];
  v2 = [v1 objectForKeyedSubscript:@"PHOTOS_TEST_PLAN_ALLOW_SYSTEM_LIBRARY_DESTRUCTIVE_ACTION"];

  return v2 != 0;
}

void __PLIsSpringboard_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"SpringBoard"];
  PLIsSpringboard_isSpringBoard = v0;
}

BOOL PLIsAlchemistAllowed()
{
  v5 = *MEMORY[0x1E69E9840];
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"EnableAlchemizeButton", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v1 = PLPreferencesGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v4 = @"com.apple.mobileslideshow";
      _os_log_impl(&dword_1AA9BD000, v1, OS_LOG_TYPE_DEBUG, "Alchemist allowed default not set in domain %@. Defaulting to YES", buf, 0xCu);
    }

    return 1;
  }

  return result;
}

void __PLIsPeopleViewService_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"PeopleViewService"];
  PLIsPeopleViewService_isPeopleViewService = v0;
}

void __PLIsPhotoanalysisd_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"photoanalysisd"];
  PLIsPhotoanalysisd_isPhotoanalysisd = v0;
}

void __PLIsNebulad_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"nebulad"];
  PLIsNebulad_isNebulad = v0;
}

void __PLIsImagePlaygroundApp_block_invoke()
{
  v0 = PLBundleIdentifier();
  PLIsImagePlaygroundApp_isImagePlayground = [v0 isEqualToString:@"com.apple.GenerativePlaygroundApp"];
}

void __PLIsDemod_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"demod"];
  PLIsDemod_isDemod = v0;
}

void __PLIsProcessWithAppleBundleIdentifier_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  PLIsProcessWithAppleBundleIdentifier_isAppleBundleIdentifier = [v0 hasPrefix:@"com.apple."];
}

uint64_t PLShouldPreventAutomaticLimitedAccessAlert()
{
  if (PLShouldPreventAutomaticLimitedAccessAlert_onceToken != -1)
  {
    dispatch_once(&PLShouldPreventAutomaticLimitedAccessAlert_onceToken, &__block_literal_global_197);
  }

  return PLShouldPreventAutomaticLimitedAccessAlert_shouldPreventAlert;
}

void __PLShouldPreventAutomaticLimitedAccessAlert_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];

  v2 = [v1 objectForKeyedSubscript:@"PHPhotoLibraryPreventAutomaticLimitedAccessAlert"];
  if (!v2)
  {
    v2 = [v1 objectForKeyedSubscript:@"NSPhotoLibraryLimitedAccessAPISupport"];
  }

  v3 = [v2 BOOLValue];
  PLShouldPreventAutomaticLimitedAccessAlert_shouldPreventAlert = v3;
  if (v3)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_DEFAULT, "Preventing automatic limited access alert based on info.plist configuration", buf, 2u);
    }
  }

  if (!v2)
  {
    v5 = [v1 objectForKeyedSubscript:@"NSExtension"];
    v6 = [v5 objectForKeyedSubscript:@"NSExtensionPointIdentifier"];

    if (v6 && [@"com.apple.widgetkit-extension" isEqual:v6])
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_DEFAULT, "Preventing automatic limited access alert for widget extension", v8, 2u);
      }

      PLShouldPreventAutomaticLimitedAccessAlert_shouldPreventAlert = 1;
    }
  }
}

uint64_t PLHasPhotoLibraryAddUsageDescription()
{
  if (PLHasPhotoLibraryAddUsageDescription_onceToken != -1)
  {
    dispatch_once(&PLHasPhotoLibraryAddUsageDescription_onceToken, &__block_literal_global_214);
  }

  return PLHasPhotoLibraryAddUsageDescription_hasUsageDescription;
}

void __PLHasPhotoLibraryAddUsageDescription_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 infoDictionary];

  v1 = [v2 objectForKeyedSubscript:@"NSPhotoLibraryAddUsageDescription"];
  PLHasPhotoLibraryAddUsageDescription_hasUsageDescription = v1 != 0;
}

uint64_t PLHasPhotoLibraryUsageDescription()
{
  if (PLHasPhotoLibraryUsageDescription_onceToken != -1)
  {
    dispatch_once(&PLHasPhotoLibraryUsageDescription_onceToken, &__block_literal_global_219_4023);
  }

  return PLHasPhotoLibraryUsageDescription_hasUsageDescription;
}

void __PLHasPhotoLibraryUsageDescription_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 infoDictionary];

  v1 = [v2 objectForKeyedSubscript:@"NSPhotoLibraryUsageDescription"];
  PLHasPhotoLibraryUsageDescription_hasUsageDescription = v1 != 0;
}

void __PLIsPhotosReliveWidget_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"PhotosReliveWidget"];
  if (v0)
  {
    v2 = 1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 processName];

    v2 = [v4 isEqualToString:@"PhotosReliveWidgetIntents"];
  }

  PLIsPhotosReliveWidget_isPhotosReliveWidget = v2;
}

uint64_t PLIsDeveloperMode()
{
  if (PLIsDeveloperMode_onceToken != -1)
  {
    dispatch_once(&PLIsDeveloperMode_onceToken, &__block_literal_global_233);
  }

  return PLIsDeveloperMode_isDeveloperMode;
}

void __PLIsDeveloperMode_block_invoke()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAMFIIsDeveloperModeEnabledSymbolLoc_ptr;
  v7 = getAMFIIsDeveloperModeEnabledSymbolLoc_ptr;
  if (!getAMFIIsDeveloperModeEnabledSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAMFIIsDeveloperModeEnabledSymbolLoc_block_invoke;
    v3[3] = &unk_1E7932D68;
    v3[4] = &v4;
    __getAMFIIsDeveloperModeEnabledSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    PLIsDeveloperMode_isDeveloperMode = v0();
  }

  else
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL PLAMFIIsDeveloperModeEnabled(void)"];
    [v1 handleFailureInFunction:v2 file:@"PLHelper.m" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1AAA24878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAMFIIsDeveloperModeEnabledSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppleMobileFileIntegrityLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppleMobileFileIntegrityLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7930490;
    v7 = 0;
    AppleMobileFileIntegrityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AppleMobileFileIntegrityLibraryCore_frameworkLibrary;
  if (!AppleMobileFileIntegrityLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppleMobileFileIntegrityLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"PLHelper.m" lineNumber:47 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "AMFIIsDeveloperModeEnabled");
  *(*(a1[4] + 8) + 24) = result;
  getAMFIIsDeveloperModeEnabledSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __AppleMobileFileIntegrityLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMobileFileIntegrityLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __LockdownModeLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LockdownModeLibraryCore_frameworkLibrary = result;
  return result;
}

void __PLIsTallScreen_block_invoke()
{
  v0 = [NSClassFromString(@"UIScreen") mainScreen];
  v4 = [v0 currentMode];

  v1 = v4;
  if (v4)
  {
    [v4 size];
    v1 = v4;
  }

  else
  {
    v2 = *MEMORY[0x1E695F060];
    v3 = *(MEMORY[0x1E695F060] + 8);
  }

  PLIsTallScreen_isTallScreen = v3 / v2 >= 1.70000005;
}

uint64_t PLIsPadMini()
{
  if (PLIsPadMini_onceToken != -1)
  {
    dispatch_once(&PLIsPadMini_onceToken, &__block_literal_global_253);
  }

  return PLIsPadMini_isIpadMini;
}

uint64_t __PLIsPadMini_block_invoke()
{
  result = MGGetSInt32Answer();
  if (result == 28)
  {
    PLIsPadMini_isIpadMini = 1;
  }

  return result;
}

uint64_t PLHasHomeButton()
{
  if (PLHasHomeButton_onceToken != -1)
  {
    dispatch_once(&PLHasHomeButton_onceToken, &__block_literal_global_258_4049);
  }

  return PLHasHomeButton_hasHomeButton;
}

uint64_t __PLHasHomeButton_block_invoke()
{
  result = MGGetSInt32Answer();
  PLHasHomeButton_hasHomeButton = result != 2;
  return result;
}

id PLPhotoLibraryFrameworkBundle()
{
  v0 = __PLPhotoLibraryFrameworkBundle;
  if (!__PLPhotoLibraryFrameworkBundle)
  {
    v1 = NSClassFromString(@"PLPhotoTileViewController");
    if (v1)
    {
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:v1];
      v3 = __PLPhotoLibraryFrameworkBundle;
      __PLPhotoLibraryFrameworkBundle = v2;
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PhotoLibrary.framework" isDirectory:1];
      v4 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v3];
      v5 = __PLPhotoLibraryFrameworkBundle;
      __PLPhotoLibraryFrameworkBundle = v4;
    }

    v0 = __PLPhotoLibraryFrameworkBundle;
  }

  return v0;
}

id PLPhotoLibraryServicesFrameworkBundle()
{
  v0 = __PLPhotoLibraryServicesFrameworkBundle;
  if (!__PLPhotoLibraryServicesFrameworkBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:NSClassFromString(@"PLPhotoLibrary")];
    v2 = __PLPhotoLibraryServicesFrameworkBundle;
    __PLPhotoLibraryServicesFrameworkBundle = v1;

    v0 = __PLPhotoLibraryServicesFrameworkBundle;
  }

  return v0;
}

void PLDebugEnableCoreDataMultithreadedAsserts()
{
  if (!PFOSVariantHasInternalDiagnostics())
  {
    return;
  }

  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 arguments];

  v3 = [v2 indexOfObjectPassingTest:&__block_literal_global_277];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || [v2 count] <= (v3 + 1))
  {
    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v7 removeObjectForKey:@"com.apple.CoreData.ConcurrencyDebug"];
  }

  else
  {
    v4 = [v2 objectAtIndexedSubscript:?];
    v5 = [v4 intValue];

    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v6 removeObjectForKey:@"com.apple.CoreData.ConcurrencyDebug"];

    if (!v5)
    {
      goto LABEL_9;
    }
  }

  PLEnableCoreDataMultithreadedAsserts();
LABEL_9:

  objc_autoreleasePoolPop(v0);
}

void PLEnableCoreDataMultithreadedAsserts()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = @"com.apple.CoreData.ConcurrencyDebug";
  v3[0] = MEMORY[0x1E695E118];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  [v0 registerDefaults:v1];
}

uint64_t __PLDebugEnableCoreDataMultithreadedAsserts_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"-"])
  {
    v3 = [v2 hasSuffix:@"com.apple.CoreData.ConcurrencyDebug"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PLRelativePrettyDateForDate(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (PLRelativePrettyDateForDate___relativeDateFormatter)
  {
    if (v1)
    {
LABEL_3:
      v3 = [PLRelativePrettyDateForDate___relativeDateFormatter stringFromDate:v2];
      goto LABEL_6;
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = PLRelativePrettyDateForDate___relativeDateFormatter;
    PLRelativePrettyDateForDate___relativeDateFormatter = v4;

    [PLRelativePrettyDateForDate___relativeDateFormatter setDateStyle:2];
    [PLRelativePrettyDateForDate___relativeDateFormatter setTimeStyle:1];
    v6 = PLRelativePrettyDateForDate___relativeDateFormatter;
    v7 = [MEMORY[0x1E695DF58] currentLocale];
    [v6 setLocale:v7];

    [PLRelativePrettyDateForDate___relativeDateFormatter setDoesRelativeDateFormatting:1];
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

id PLMillisecondDateFormatter()
{
  if (PLMillisecondDateFormatter_onceToken != -1)
  {
    dispatch_once(&PLMillisecondDateFormatter_onceToken, &__block_literal_global_285_4060);
  }

  v1 = PLMillisecondDateFormatter_dateFormatter;

  return v1;
}

void __PLMillisecondDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = PLMillisecondDateFormatter_dateFormatter;
  PLMillisecondDateFormatter_dateFormatter = v0;

  [PLMillisecondDateFormatter_dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss.SS"];
  v2 = PLMillisecondDateFormatter_dateFormatter;
  v3 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v2 setTimeZone:v3];
}

id PLCompleteDateFormatter()
{
  if (PLCompleteDateFormatter_onceToken != -1)
  {
    dispatch_once(&PLCompleteDateFormatter_onceToken, &__block_literal_global_294_4065);
  }

  v1 = PLCompleteDateFormatter_formatter;

  return v1;
}

uint64_t __PLCompleteDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = PLCompleteDateFormatter_formatter;
  PLCompleteDateFormatter_formatter = v0;

  v2 = PLCompleteDateFormatter_formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SS ZZZZZ"];
}

id _localizedStringFromTableInBundle(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = __PLPreferredLanguage;
  if (!__PLPreferredLanguage)
  {
    _UpdatePreferredLanguage();
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, 0, _UpdatePreferredLanguage, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDrop);
    v8 = __PLPreferredLanguage;
  }

  v10 = v8;
  if (![v5 length])
  {
    goto LABEL_15;
  }

  if (![v6 length])
  {
    goto LABEL_15;
  }

  v11 = [v10 length];
  if (!v7 || !v11)
  {
    goto LABEL_15;
  }

  v12 = [v7 localizations];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObject:v10];
  v14 = [v12 count] ? CFBundleCopyLocalizationsForPreferences(v12, v13) : 0;
  if (-[__CFArray count](v14, "count") && (-[__CFArray objectAtIndex:](v14, "objectAtIndex:", 0), v15 = objc_claimAutoreleasedReturnValue(), [v7 pathForResource:v6 ofType:@"strings" inDirectory:0 forLocalization:v15], v16 = objc_claimAutoreleasedReturnValue(), v15, v16))
  {
    v17 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v16];
    v18 = [v17 objectForKey:v5];
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
LABEL_15:
    v18 = [v7 localizedStringForKey:v5 value:&stru_1F1F75560 table:v6];
  }

  return v18;
}

void _UpdatePreferredLanguage()
{
  v0 = *MEMORY[0x1E695E890];
  CFPreferencesAppSynchronize(*MEMORY[0x1E695E890]);
  v6 = CFPreferencesCopyValue(@"AppleLanguages", v0, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v1 = [v6 objectAtIndex:0];
  v2 = __PLPreferredLanguage;
  __PLPreferredLanguage = v1;

  if (!__PLPreferredLanguage)
  {
    v3 = [MEMORY[0x1E695DF58] currentLocale];
    v4 = [v3 objectForKey:*MEMORY[0x1E695D9B0]];
    v5 = __PLPreferredLanguage;
    __PLPreferredLanguage = v4;

    if (!__PLPreferredLanguage)
    {
      __PLPreferredLanguage = @"en";
    }
  }
}

id PLServicesLocalizedFrameworkStringForAssetsd(void *a1)
{
  v1 = a1;
  v2 = PLPhotoLibraryServicesFrameworkBundle();
  v3 = _localizedStringFromTableInBundle(v1, @"PhotoLibraryServices", v2);

  return v3;
}

id PLServicesLivePortraitLocalizedFrameworkString(void *a1)
{
  v1 = a1;
  v2 = PLPhotoLibraryServicesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F1F75560 table:@"PhotoLibraryServicesLivePortrait"];

  return v3;
}

id PLServicesLocalizedFrameworkString(void *a1)
{
  v1 = a1;
  v2 = PLPhotoLibraryServicesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F1F75560 table:@"PhotoLibraryServices"];

  return v3;
}

id PLServicesFRSVLocalizedFrameworkString(void *a1)
{
  v1 = a1;
  v2 = PLPhotoLibraryServicesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F1F75560 table:@"PhotoLibraryServicesFRSV"];

  return v3;
}

BOOL _PLIsNotificationTypeEnabledForKey(void *a1, _BOOL8 a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    a2 = AppBooleanValue != 0;
  }

  else
  {
    v5 = PLPreferencesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543874;
      v9 = v3;
      v10 = 2114;
      v11 = @"com.apple.mobileslideshow";
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEBUG, "Photos notifications default %{public}@ not set in domain %{public}@. Defaulting to %d", buf, 0x1Cu);
    }
  }

  return a2;
}

void PLSetNotificationTypeEnabledForKey(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  value = [v3 numberWithBool:a2];
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  CFPreferencesSetAppValue(v4, value, @"com.apple.mobileslideshow");
}

void _PLResetNotificationTypeEnabledKey(void *a1)
{
  key = a1;
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  CFPreferencesSetAppValue(key, 0, @"com.apple.mobileslideshow");
}

id PLServicesSharedLibraryLocalizedFrameworkString(void *a1)
{
  v1 = a1;
  v2 = PLPhotoLibraryServicesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F1F75560 table:@"PhotoLibraryServicesSharedLibrary"];

  return v3;
}

BOOL PLIsSharedLibrarySuggestionsEnabled()
{
  v5 = *MEMORY[0x1E69E9840];
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"SharedLibrarySuggestionsEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v1 = PLPreferencesGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v4 = @"com.apple.mobileslideshow";
      _os_log_impl(&dword_1AA9BD000, v1, OS_LOG_TYPE_DEBUG, "Shared Library suggestions default not set in domain %@. Defaulting to YES", buf, 0xCu);
    }

    return 1;
  }

  return result;
}

void PLSetSharedLibrarySuggestionsEnabled(uint64_t a1)
{
  value = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  CFPreferencesSetAppValue(@"SharedLibrarySuggestionsEnabled", value, @"com.apple.mobileslideshow");
}

id PLLocalizedFrameworkString(void *a1)
{
  v1 = a1;
  v2 = PLPhotoLibraryFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F1F75560 table:@"PhotoLibrary"];
  if ([v3 isEqualToString:v1])
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_1F1F75560 table:@"PhotoLibrary-GM"];

    v3 = v4;
  }

  if ([v3 isEqualToString:v1])
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_1F1F75560 table:@"PhotoLibrary-bravo"];

    v3 = v5;
  }

  return v3;
}

uint64_t PLAssetTypeForItems(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    v5 = 3;
    v6 = 1;
LABEL_3:
    v7 = 0;
    v8 = v5;
    while (1)
    {
      if (*v12 != v4)
      {
        objc_enumerationMutation(v1);
      }

      v9 = [*(*(&v11 + 1) + 8 * v7) kind];
      v5 = v9;
      if ((v6 & 1) == 0)
      {
        v5 = v8;
        if (v8 != v9)
        {
          break;
        }
      }

      v6 = 0;
      ++v7;
      v8 = v5;
      if (v3 == v7)
      {
        v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v6 = 0;
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  LOWORD(v5) = 3;
LABEL_12:

  return v5;
}

id PLAssetsLibraryLocalizedFrameworkString(void *a1)
{
  v1 = _AssetsLibraryServicesFrameworkBundle_predicate;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_AssetsLibraryServicesFrameworkBundle_predicate, &__block_literal_global_641);
  }

  v3 = [_AssetsLibraryServicesFrameworkBundle__AssetsLibraryServicesFrameworkBundle localizedStringForKey:v2 value:&stru_1F1F75560 table:@"AssetsLibraryServices"];

  return v3;
}

__CFString *PLLocalizedCountDescription(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (a2)
    {
      if (a3)
      {
        v14 = @"PLLocalizedCountDescriptionVideosCommaItems";
        if (a4)
        {
          v14 = @"PLLocalizedCountDescriptionVideosCommaItemsTitleCase";
        }

        v15 = @"PLLocalizedCountDescriptionVideosAndItemsTitleCase";
        if (!a4)
        {
          v15 = @"PLLocalizedCountDescriptionVideosAndItems";
        }

        if (a5)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        v17 = PLAssetsLibraryLocalizedFrameworkString(v16);
        v37 = 0;
        v12 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v17 validFormatSpecifiers:@"%lu %lu" error:&v37, a2, a3];
        v18 = v37;
      }

      else
      {
        if (a4)
        {
          v26 = @"PLLocalizedCountDescriptionVideosTitleCase";
        }

        else
        {
          v26 = @"PLLocalizedCountDescriptionVideos";
        }

        v17 = PLAssetsLibraryLocalizedFrameworkString(v26);
        v40 = 0;
        v12 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v17 validFormatSpecifiers:@"%lu" error:&v40, a2];
        v18 = v40;
      }
    }

    else
    {
      if (!a3)
      {
        if (a4)
        {
          v34 = @"PLLocalizedCountDescriptionNoItemsTitleCase";
        }

        else
        {
          v34 = @"PLLocalizedCountDescriptionNoItems";
        }

        v12 = PLAssetsLibraryLocalizedFrameworkString(v34);
        v27 = 0;
        goto LABEL_54;
      }

      if (a4)
      {
        v25 = @"PLLocalizedCountDescriptionItemsTitleCase";
      }

      else
      {
        v25 = @"PLLocalizedCountDescriptionItems";
      }

      v17 = PLAssetsLibraryLocalizedFrameworkString(v25);
      v39 = 0;
      v12 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v17 validFormatSpecifiers:@"%lu" error:&v39, a3];
      v18 = v39;
    }

    v27 = v18;

    goto LABEL_54;
  }

  if (a2)
  {
    if (a3)
    {
      v8 = @"PLLocalizedCountDescriptionPhotosCommaVideosCommaItems";
      if (a4)
      {
        v8 = @"PLLocalizedCountDescriptionPhotosCommaVideosCommaItemsTitleCase";
      }

      v9 = @"PLLocalizedCountDescriptionPhotosAndVideosAndItemsTitleCase";
      if (!a4)
      {
        v9 = @"PLLocalizedCountDescriptionPhotosAndVideosAndItems";
      }

      if (a5)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = PLAssetsLibraryLocalizedFrameworkString(v10);
      v35 = 0;
      v12 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%lu %lu %lu" error:&v35, a1, a2, a3];
      v13 = v35;
    }

    else
    {
      v22 = @"PLLocalizedCountDescriptionPhotosCommaVideos";
      if (a4)
      {
        v22 = @"PLLocalizedCountDescriptionPhotosCommaVideosTitleCase";
      }

      v23 = @"PLLocalizedCountDescriptionPhotosAndVideosTitleCase";
      if (!a4)
      {
        v23 = @"PLLocalizedCountDescriptionPhotosAndVideos";
      }

      if (a5)
      {
        v24 = v23;
      }

      else
      {
        v24 = v22;
      }

      v11 = PLAssetsLibraryLocalizedFrameworkString(v24);
      v38 = 0;
      v12 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%lu %lu" error:&v38, a1, a2];
      v13 = v38;
    }
  }

  else if (a3)
  {
    v19 = @"PLLocalizedCountDescriptionPhotosCommaItems";
    if (a4)
    {
      v19 = @"PLLocalizedCountDescriptionPhotosCommaItemsTitleCase";
    }

    v20 = @"PLLocalizedCountDescriptionPhotosAndItemsTitleCase";
    if (!a4)
    {
      v20 = @"PLLocalizedCountDescriptionPhotosAndItems";
    }

    if (a5)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v11 = PLAssetsLibraryLocalizedFrameworkString(v21);
    v36 = 0;
    v12 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%lu %lu" error:&v36, a1, a3];
    v13 = v36;
  }

  else
  {
    if (a4)
    {
      v28 = @"PLLocalizedCountDescriptionPhotosTitleCase";
    }

    else
    {
      v28 = @"PLLocalizedCountDescriptionPhotos";
    }

    v11 = PLAssetsLibraryLocalizedFrameworkString(v28);
    v41 = 0;
    v12 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%lu" error:&v41, a1];
    v13 = v41;
  }

  v27 = v13;

LABEL_54:
  v29 = v12;
  v30 = v27;
  v31 = v29;
  if (!v29)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v43 = "PLLocalizedCountDescription";
      v44 = 2112;
      v45 = v30;
      _os_log_error_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "error making validated localized string in %s: %@", buf, 0x16u);
    }

    v31 = &stru_1F1F75560;
  }

  v32 = v31;
  return v31;
}

__CFString *PLSuffixForItems(void *a1)
{
  v1 = PLAssetTypeForItems(a1);
  v2 = @"ITEM";
  if (v1 == 1)
  {
    v2 = @"VIDEO";
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"PHOTO";
  }

  return v3;
}

__CFString *PLLocalizedKeyForAssetType(int a1)
{
  v1 = @"ITEM";
  if (a1 == 1)
  {
    v1 = @"VIDEO";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"PHOTO";
  }
}

id PLLocalizedSelectionMessageForItems(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = PLAssetTypeForItems(v1);
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E79304E0[v2];
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = PLServicesLocalizedFrameworkString(v3);
  v12 = 0;
  v6 = [v1 count];

  v7 = [v4 localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%ld" error:&v12, v6];
  v8 = v12;

  v9 = v7;
  v10 = v8;
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "PLLocalizedSelectionMessageForItems";
    v15 = 2112;
    v16 = v10;
    _os_log_error_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "error making validated localized string in %s: %@", buf, 0x16u);
  }

  return v9;
}

id PLLocalizedAddPhotosPickerPromptForItemsAndLimit(void *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = [v5 count];
  if (!v7)
  {
    if (!v6)
    {
      v11 = PLLocalizedFrameworkString(@"ADD_ITEMS_PICKER_PROMPT_0_NO_ALBUM");
      v17 = 0;
      goto LABEL_14;
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = PLLocalizedFrameworkString(@"ADD_ITEMS_PICKER_PROMPT_0");
    v27 = 0;
    v11 = [v13 localizedStringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:&v27, v6];
    v15 = v27;
    goto LABEL_13;
  }

  v8 = v7;
  if (!v6)
  {
    if (a2)
    {
      v16 = _PLKeyWithSuffixForItems(@"ADD_ITEMS_PICKER_PROMPT_LIMIT_NO_ALBUM_", v5);
      v10 = PLLocalizedFrameworkString(v16);

      v24 = 0;
      v11 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v10 validFormatSpecifiers:@"%lu %lu" error:&v24, v8, a2];
      v12 = v24;
      goto LABEL_9;
    }

    v19 = _PLKeyWithSuffixForItems(@"ADD_ITEMS_PICKER_PROMPT_NO_ALBUM_", v5);
    v14 = PLLocalizedFrameworkString(v19);

    v23 = 0;
    v11 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v14 validFormatSpecifiers:@"%lu" error:&v23, v8];
    v15 = v23;
LABEL_13:
    v17 = v15;

    goto LABEL_14;
  }

  if (!a2)
  {
    v18 = _PLKeyWithSuffixForItems(@"ADD_ITEMS_PICKER_PROMPT_", v5);
    v14 = PLLocalizedFrameworkString(v18);

    v25 = 0;
    v11 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v14 validFormatSpecifiers:@"%lu %@" error:&v25, v8, v6];
    v15 = v25;
    goto LABEL_13;
  }

  v9 = _PLKeyWithSuffixForItems(@"ADD_ITEMS_PICKER_PROMPT_LIMIT_", v5);
  v10 = PLLocalizedFrameworkString(v9);

  v26 = 0;
  v11 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v10 validFormatSpecifiers:@"%lu %lu %@" error:&v26, v8, a2, v6];
  v12 = v26;
LABEL_9:
  v17 = v12;

LABEL_14:
  v20 = v11;
  v21 = v17;
  if (!v20 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "PLLocalizedAddPhotosPickerPromptForItemsAndLimit";
    v30 = 2112;
    v31 = v21;
    _os_log_error_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "error making validated localized string in %s: %@", buf, 0x16u);
  }

  return v20;
}

id _PLKeyWithSuffixForItems(void *a1, void *a2)
{
  v3 = a1;
  v4 = PLSuffixForItems(a2);
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

id PLConvertPathToSRGBPath(void *a1)
{
  v1 = a1;
  v2 = [v1 pathExtension];
  v3 = [v1 stringByDeletingPathExtension];

  v4 = [v3 stringByAppendingString:@"_sRGB"];
  v5 = [v4 stringByAppendingPathExtension:v2];

  return v5;
}

id PLLocalizedStringForAction(void *a1, void *a2, void (*a3)(void))
{
  v5 = a1;
  v6 = a2;
  v7 = a3();
  v8 = [v6 count];

  if (!v8)
  {
    v9 = 0;
    goto LABEL_11;
  }

  if (v8 != 1)
  {
    if (v7)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@S", v5, v7];
      goto LABEL_8;
    }

LABEL_9:
    v10 = v5;
    goto LABEL_10;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v5, v7];
  v10 = LABEL_8:;
LABEL_10:
  v11 = v10;
  v9 = PLLocalizedFrameworkString(v10);

LABEL_11:

  return v9;
}

id PLLocalizedHidePhotosEverywhereWarning(void *a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = @"N_ALBUMS";
  if (a2 == 1)
  {
    v4 = @"1_ALBUM";
  }

  v5 = v4;
  v6 = [a1 count];
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = @"HIDE_EVERYWHERE_CONF_TITLE_1_PHOTO_%@";
    }

    else
    {
      v7 = @"HIDE_EVERYWHERE_CONF_TITLE_N_PHOTOS_%@";
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:v7, v5];
    v9 = v8;
    if (a2 < 2)
    {
      v14 = PLLocalizedFrameworkString(v8);
    }

    else
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = PLLocalizedFrameworkString(v8);
      v17 = 0;
      v12 = [v10 localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%lu" error:&v17, a2];
      v13 = v17;

      v14 = v12;
      v15 = v13;
      if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "PLLocalizedHidePhotosEverywhereWarning";
        v20 = 2112;
        v21 = v15;
        _os_log_error_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "error making validated localized string in %s: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void PLAssetCountsByType(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a1;
  *a5 = 0;
  *a4 = 0;
  *a3 = 0;
  *a2 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * i) kind];
        if (v14 > 1)
        {
          v15 = a4;
          if (v14 != 2)
          {
            if (v14 != 3)
            {
              continue;
            }

            v15 = a5;
          }
        }

        else
        {
          v15 = a2;
          if (v14)
          {
            v15 = a3;
          }
        }

        ++*v15;
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

id PLSharedCountFormatter()
{
  pl_dispatch_once(&PLSharedCountFormatter_onceToken, &__block_literal_global_486);
  v0 = PLSharedCountFormatter_sharedCountFormatter;

  return v0;
}

uint64_t __PLSharedCountFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = PLSharedCountFormatter_sharedCountFormatter;
  PLSharedCountFormatter_sharedCountFormatter = v0;

  v2 = PLSharedCountFormatter_sharedCountFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  [PLSharedCountFormatter_sharedCountFormatter setGeneratesDecimalNumbers:1];
  v4 = PLSharedCountFormatter_sharedCountFormatter;

  return [v4 setNumberStyle:1];
}

id PLPersonNameComponentsWithFirstAndLastName(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696ADF0];
  v4 = a2;
  v5 = a1;
  v6 = objc_alloc_init(v3);
  [v6 setGivenName:v5];

  [v6 setFamilyName:v4];

  return v6;
}

id PLLocalizedNameWithFirstAndLastName(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696ADF8];
  v4 = a2;
  v5 = a1;
  v6 = objc_alloc_init(v3);
  v7 = PLPersonNameComponentsWithFirstAndLastName(v5, v4);

  v8 = [v6 stringFromPersonNameComponents:v7];

  return v8;
}

uint64_t PLPIDForProcessNamed(const char *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *v9 = xmmword_1AAA8F4A0;
  v10 = 0;
  size = 0;
  v2 = sysctl(v9, 3u, 0, &size, 0, 0);
  if (!v2)
  {
    v3 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
    v4 = sysctl(v9, 3u, v3, &size, 0, 0);
    if (v4)
    {
      v2 = v4;
    }

    else
    {
      if (size < 0x288)
      {
LABEL_10:
        free(v3);
        return 0xFFFFFFFFLL;
      }

      v5 = size / 0x288;
      v6 = v3 + 243;
      while (1)
      {
        v2 = *(v6 - 203);
        if (v2 >= 1 && !strncmp(a1, v6, 0x10uLL))
        {
          break;
        }

        v6 += 648;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }
    }

    free(v3);
  }

  return v2;
}

void PLSimulateCrash(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = dlopen([@"/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport" fileSystemRepresentation], 1);
  v5 = dlsym(v4, "SimulateCrash");
  if (v5)
  {
    v6 = v5;
    v7 = getpid();
    v6(v7, a1, v3);
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 134218242;
      v10 = a1;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Simulating crash with exception code: 0x%08lx, description %@", &v9, 0x16u);
    }
  }
}

sqlite3_int64 PLAbortWithReason(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446210;
    v6 = a1;
    _os_log_impl(&dword_1AA9BD000, v2, OS_LOG_TYPE_ERROR, "ABORT: %{public}s", &v5, 0xCu);
  }

  v3 = abort_with_reason();
  return PLGenericAssetCountInDatabaseWithPath(v3);
}

sqlite3_int64 PLGenericAssetCountInDatabaseWithPath(const char *a1)
{
  ppDb = 0;
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v3 = [PLSQLiteDatabase dataProtectionOpenFlagForPath:v2];

  v4 = sqlite3_open_v2(a1, &ppDb, v3 | 2, 0);
  if (v4)
  {
    v5 = -1;
  }

  else
  {
    *&ppStmt.st_dev = 0;
    v6 = sqlite3_prepare_v2(ppDb, "SELECT count(*) FROM zasset;", -1, &ppStmt, 0);
    if (v6)
    {
      v7 = v6;
      v5 = -1;
    }

    else
    {
      v5 = -1;
      while (sqlite3_step(*&ppStmt.st_dev) == 100)
      {
        v8 = objc_autoreleasePoolPush();
        v5 = sqlite3_column_int64(*&ppStmt.st_dev, 0);
        objc_autoreleasePoolPop(v8);
      }

      v9 = sqlite3_finalize(*&ppStmt.st_dev);
      if (!v9)
      {
        goto LABEL_12;
      }

      v7 = v9;
    }

    v10 = sqlite3_errmsg(ppDb);
    syslog(3, "Failed to %s %d %s", "fetch asset count", v7, v10);
  }

LABEL_12:
  if (v4)
  {
    v11 = v5 == -1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_23;
  }

  memset(&ppStmt, 0, sizeof(ppStmt));
  if (stat(a1, &ppStmt))
  {
    v12 = *__error();
    if (v12 == 2)
    {
      v5 = 0;
      goto LABEL_23;
    }

    strerror(v12);
    syslog(3, "Failed to %s, can't stat %s error=%s");
  }

  else
  {
    syslog(3, "Failed to %s on %s (uid %d, size %d)");
  }

  v5 = -1;
LABEL_23:
  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  return v5;
}

id indexSetForManagedObjectsMatchingIDs(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696AD50] indexSet];
  if ([v3 count] && objc_msgSend(v4, "count"))
  {
    v35 = v5;
    v6 = [v4 objectAtIndex:0];
    v34 = v4;
    v7 = [v4 count];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = v3;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v13 = *v41;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = [*(*(&v40 + 1) + 8 * i) objectID];
          if ([v15 isEqual:v6])
          {
            [v35 addIndex:v11];
            if (++v12 >= v7)
            {
              v5 = v35;
              v29 = v35;

              goto LABEL_26;
            }

            v16 = [v34 objectAtIndex:v12];

            v6 = v16;
          }

          ++v11;
        }

        v10 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    [v35 removeAllIndexes];
    v17 = [v34 mutableCopy];
    v18 = [v17 count];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v8;
    v19 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v37;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [*(*(&v36 + 1) + 8 * j) objectID];
          v25 = [v17 indexOfObject:v24 inRange:{0, v18}];
          if (v25 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v26 = v25;
            [v35 addIndex:v21];
            [v17 removeObjectAtIndex:v26];
            if (!--v18)
            {
              v5 = v35;
              v30 = v35;

              goto LABEL_26;
            }
          }

          ++v21;
        }

        v20 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v5 = v35;
    v27 = v35;
LABEL_26:

    v3 = v32;
    v4 = v34;
  }

  else
  {
    v28 = v5;
  }

  return v5;
}

double PLSplitToDoubleFromInt64(uint64_t a1, double *a2, double *a3, double *a4, double *a5)
{
  *a2 = (a1 >> 48) / 100.0;
  *a3 = ((a1 >> 16) >> 16) / 100.0;
  *a4 = (a1 >> 16) / 100.0;
  result = a1 / 100.0;
  *a5 = result;
  return result;
}

double PLSplitToCGRectFromInt64(uint64_t a1, double *a2)
{
  *a2 = (a1 >> 48) / 100.0;
  a2[1] = ((a1 >> 16) >> 16) / 100.0;
  result = a1 / 100.0;
  a2[2] = (a1 >> 16) / 100.0;
  a2[3] = result;
  return result;
}

BOOL PLCGRectIsNormalized(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  result = 0;
  if (CGRectGetMinX(*&a1) >= 0.0)
  {
    v9.origin.x = a1;
    v9.origin.y = a2;
    v9.size.width = a3;
    v9.size.height = a4;
    if (CGRectGetMinX(v9) <= 1.0)
    {
      v10.origin.x = a1;
      v10.origin.y = a2;
      v10.size.width = a3;
      v10.size.height = a4;
      if (CGRectGetMinY(v10) >= 0.0)
      {
        v11.origin.x = a1;
        v11.origin.y = a2;
        v11.size.width = a3;
        v11.size.height = a4;
        if (CGRectGetMinY(v11) <= 1.0)
        {
          v12.origin.x = a1;
          v12.origin.y = a2;
          v12.size.width = a3;
          v12.size.height = a4;
          if (CGRectGetMaxX(v12) >= 0.0)
          {
            v13.origin.x = a1;
            v13.origin.y = a2;
            v13.size.width = a3;
            v13.size.height = a4;
            if (CGRectGetMaxX(v13) <= 1.0)
            {
              v14.origin.x = a1;
              v14.origin.y = a2;
              v14.size.width = a3;
              v14.size.height = a4;
              if (CGRectGetMaxY(v14) >= 0.0)
              {
                v15.origin.x = a1;
                v15.origin.y = a2;
                v15.size.width = a3;
                v15.size.height = a4;
                if (CGRectGetMaxY(v15) <= 1.0)
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL PLCopySQLiteDatabase(void *a1, void *a2, int a3, void *a4)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v29 = 0;
  ppDb = 0;
  if (sqlite3_open_v2([v7 UTF8String], &ppDb, 1, 0))
  {
    if (ppDb)
    {
      sqlite3_close(ppDb);
    }

    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:0];
    v10 = [v9 absoluteString];
    v11 = [v10 stringByAppendingString:@"?readonly_shm=1"];
    v12 = sqlite3_open_v2([v11 UTF8String], &ppDb, 1, 0);

    if (v12)
    {
      if (ppDb)
      {
        sqlite3_close(ppDb);
      }

      NSLog(@"couldn't open source database readonly, trying read/write mode");
      v13 = sqlite3_open_v2([v7 UTF8String], &ppDb, 2, 0);
      if (v13)
      {
        v14 = v13;
        if (ppDb)
        {
          sqlite3_close(ppDb);
        }

        if (!a4)
        {
          goto LABEL_23;
        }

        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to open src db %@: sqlite error %d\n", v7, v14];
        v16 = MEMORY[0x1E696ABC0];
        v35 = *MEMORY[0x1E696AA08];
        v36[0] = v15;
        v17 = MEMORY[0x1E695DF20];
        v18 = v36;
        v19 = &v35;
        goto LABEL_22;
      }
    }
  }

  v20 = sqlite3_open_v2([v8 UTF8String], &v29, 6, 0);
  v21 = v20 == 0;
  if (v20)
  {
    v22 = v20;
    if (ppDb)
    {
      sqlite3_close(ppDb);
    }

    if (v29)
    {
      sqlite3_close(v29);
    }

    if (a4)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to open dst db %@: sqlite error %d\n", v8, v22];
      v24 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696AA08];
      v34 = v23;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *a4 = [v24 errorWithDomain:@"PLHelperErrorDomain" code:0 userInfo:v25];
    }
  }

  v26 = sqlite3_file_control(v29, 0, 102, ppDb);
  if (v26)
  {
    if (!a4)
    {
LABEL_23:
      v21 = 0;
      goto LABEL_27;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to replace %@ with %@: sqlite error %d\n", v8, v7, v26];
    v16 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696AA08];
    v32 = v15;
    v17 = MEMORY[0x1E695DF20];
    v18 = &v32;
    v19 = &v31;
LABEL_22:
    v27 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    *a4 = [v16 errorWithDomain:@"PLHelperErrorDomain" code:0 userInfo:v27];

    goto LABEL_23;
  }

  if (a3)
  {
    sqlite3_exec(v29, "pragma journal_mode=delete", 0, 0, 0);
  }

  sqlite3_exec(v29, "pragma vacuum", 0, 0, 0);
LABEL_27:
  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  if (v29)
  {
    sqlite3_close(v29);
  }

  return v21;
}

id PLRenderableImageUniformTypeIdentifiers()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = [*MEMORY[0x1E6982E58] identifier];
  v1 = [*MEMORY[0x1E6982F28] identifier];
  v7[1] = v1;
  v2 = [*MEMORY[0x1E6983008] identifier];
  v7[2] = v2;
  v3 = [*MEMORY[0x1E6982CE0] identifier];
  v7[3] = v3;
  v4 = [*MEMORY[0x1E6982F88] identifier];
  v7[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];

  return v5;
}

uint64_t PLUniformTypeIdentifierIsRenderableImage(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E6982C40] typeWithIdentifier:v1];
  }

  else
  {
    v2 = 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = PLRenderableImageUniformTypeIdentifiers();
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:{*(*(&v10 + 1) + 8 * i), v10}];
        v8 = [v2 conformsToType:v7];

        if (v8)
        {
          v4 = 1;
          goto LABEL_14;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v4;
}

uint64_t PLSleepUntilNotification()
{
  v17 = *MEMORY[0x1E69E9840];
  PLSleepUntilNotificationWithName_waiting = 1;
  out_token = 0;
  v0 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __PLSleepUntilNotificationWithName_block_invoke;
  handler[3] = &__block_descriptor_40_e8_v12__0i8l;
  handler[4] = "com.apple.photos.debug.go";
  notify_register_dispatch("com.apple.photos.debug.go", &out_token, v0, handler);

  v1 = MEMORY[0x1E69E9848];
  if (PLSleepUntilNotificationWithName_waiting == 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      if (!(v2 + 5 * (v3 / 5)))
      {
        v4 = *v1;
        v5 = getpid();
        fprintf(v4, "PID %d: Waiting for: notifyutil -p %s\n", v5, "com.apple.photos.debug.go");
        v6 = PLBackendGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = getpid();
          *buf = 67109378;
          v14 = v7;
          v15 = 2080;
          v16 = "com.apple.photos.debug.go";
          _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_DEFAULT, "PID %d: Waiting for: notifyutil -p %s\n", buf, 0x12u);
        }
      }

      sleep(1u);
      ++v3;
      --v2;
    }

    while ((PLSleepUntilNotificationWithName_waiting & 1) != 0);
  }

  v8 = *v1;
  v9 = getpid();
  return fprintf(v8, "PID %d: Running\n", v9);
}

uint64_t __PLSleepUntilNotificationWithName_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9848];
  v3 = getpid();
  result = fprintf(v2, "PID %d: Got %s\n", v3, *(a1 + 32));
  PLSleepUntilNotificationWithName_waiting = 0;
  return result;
}

id PLDeviceRegionCode()
{
  if (PLDeviceRegionCode_onceToken != -1)
  {
    dispatch_once(&PLDeviceRegionCode_onceToken, &__block_literal_global_523);
  }

  v1 = PLDeviceRegionCode_regionCode;

  return v1;
}

uint64_t __PLDeviceRegionCode_block_invoke()
{
  PLDeviceRegionCode_regionCode = MGCopyAnswer();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PLIsDeviceClassiPhone()
{
  v0 = MGCopyAnswer();
  v1 = [v0 isEqualToString:@"iPhone"];

  return v1;
}

uint64_t PLDeviceSupportsASTC()
{
  if (PLDeviceSupportsASTC_s_onceToken != -1)
  {
    dispatch_once(&PLDeviceSupportsASTC_s_onceToken, &__block_literal_global_539);
  }

  return PLDeviceSupportsASTC_s_hasSupport;
}

BOOL PLDeviceSupportsEnhancedVisualSearch()
{
  if (PLIsChinaSKU_onceToken != -1)
  {
    dispatch_once(&PLIsChinaSKU_onceToken, &__block_literal_global_528);
  }

  return (PLIsChinaSKU_isChinaSKU & 1) == 0;
}

uint64_t PLIsSecureCaptureExtension()
{
  v0 = [MEMORY[0x1E6963668] extensionPointRecordForCurrentProcess];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 identifier];
    v3 = [@"com.apple.securecapture" isEqualToString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PLCameraBundleIdentifiers()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.camera";
  v2[1] = @"com.apple.camera.lockscreen";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];

  return v0;
}

uint64_t PLIsCameraBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = PLCameraBundleIdentifiers();
  v3 = [v2 containsObject:v1];

  return v3;
}

id _MetadataFileExtensions()
{
  pl_dispatch_once(&_InitializeFileExtensions_onceToken, &__block_literal_global_4176);
  v0 = __metadataFileExtensions;

  return v0;
}

id _ObsoleteFileExtensions()
{
  pl_dispatch_once(&_InitializeFileExtensions_onceToken, &__block_literal_global_4176);
  v0 = __obsoleteFileExtensions;

  return v0;
}

__CFString *PLStringFromLibraryServicesState(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        v2 = @"prep-post-migration";
      }

      else
      {
        v2 = @"prep-accessible";
      }
    }

    else
    {
      switch(a1)
      {
        case 7:
          v2 = @"running";

          break;
        case 8:
          v2 = @"terminating";

          break;
        case 99:
          v2 = @"error";

          break;
        default:
LABEL_42:
          v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%ld)", a1];

          return v2;
      }
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v2 = @"unobtainable";
      }

      else if (a1 == 3)
      {
        v2 = @"prep-pre-migration";
      }

      else
      {
        v2 = @"prep-migration";
      }

      return v2;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v2 = @"initializing";

        return v2;
      }

      goto LABEL_42;
    }

    v2 = @"none";
  }

  return v2;
}

void sub_1AAA2A3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PLRunWithLock(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = v8;
  if (!v8)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PLRunWithLock(__strong id<NSLocking> _Nonnull, void (^__strong _Nonnull)(void))"}];
    [v6 handleFailureInFunction:v7 file:@"PLLockHelpers.m" lineNumber:10 description:@"lock cannot be nil"];

    v4 = 0;
  }

  [v4 lock];
  v5 = objc_autoreleasePoolPush();
  v3[2](v3);
  objc_autoreleasePoolPop(v5);
  [v8 unlock];
}

uint64_t PLIntegerResultWithUnfairLock(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v4 = v3[2](v3);

  os_unfair_lock_unlock(a1);
  return v4;
}

BOOL PLPresentLimitedLibraryPickerRepromptForApplication(void *a1, void *a2)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E696AEC0];
  v6 = PLAssetsLibraryLocalizedFrameworkString(@"PLLocalizedLimitedLibraryRepromptTitle");
  v7 = [v5 localizedStringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, v3];

  v8 = PLAssetsLibraryLocalizedFrameworkString(@"PLLocalizedLimitedLibraryRepromptSelectLabel");
  v9 = PLAssetsLibraryLocalizedFrameworkString(@"PLLocalizedLimitedLibraryRepromptKeepLabel");
  v10 = MEMORY[0x1E695DF90];
  v11 = *MEMORY[0x1E695EE70];
  v27[0] = *MEMORY[0x1E695EE58];
  v27[1] = v11;
  v28[0] = v7;
  v28[1] = v8;
  v12 = *MEMORY[0x1E695EE68];
  v27[2] = *MEMORY[0x1E695EE98];
  v27[3] = v12;
  v28[2] = v9;
  v28[3] = MEMORY[0x1E695E118];
  v27[4] = @"DismissOnLock";
  v27[5] = @"SBUserNotificationDontDismissOnUnlock";
  v28[4] = MEMORY[0x1E695E118];
  v28[5] = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:6];
  v14 = [v10 dictionaryWithDictionary:v13];

  if ([v4 length])
  {
    [v14 setObject:v4 forKey:*MEMORY[0x1E695EE60]];
  }

  v15 = PLBackendGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v3;
    _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_DEFAULT, "Presenting library picker alert on behalf of %{public}@", buf, 0xCu);
  }

  v16 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0x20uLL, 0, v14);
  if (v16)
  {
    v17 = v16;
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v16, 0.0, &responseFlags);
    v18 = responseFlags & 3;
    v19 = v18 == 1;
    CFRelease(v17);
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (v18 == 1)
      {
        v21 = v8;
      }

      else
      {
        v21 = v9;
      }

      *buf = 138543362;
      v26 = v21;
      _os_log_impl(&dword_1AA9BD000, v20, OS_LOG_TYPE_DEFAULT, "User selected: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v22 = PLBackendGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v3;
      _os_log_impl(&dword_1AA9BD000, v22, OS_LOG_TYPE_ERROR, "Failed to present library picker alert on behalf of '%{public}@'", buf, 0xCu);
    }

    v19 = 0;
  }

  return v19;
}

void PLPresentLimitedLibraryPicker(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getPHLimitedLibraryPickerClass_softClass;
  v10 = getPHLimitedLibraryPickerClass_softClass;
  if (!getPHLimitedLibraryPickerClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v12 = __getPHLimitedLibraryPickerClass_block_invoke;
    v13 = &unk_1E7932D68;
    v14 = &v7;
    __getPHLimitedLibraryPickerClass_block_invoke(&buf);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = PLBackendGetLog();
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"async";
      if (a1)
      {
        v6 = @"sync";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Presenting limited library picker (%@)", &buf, 0xCu);
    }

    [v2 presentLimitedLibraryPicker:&stru_1F1F75560 waitForDismissal:{a1, v7}];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "Failed to register limited library picker", &buf, 2u);
    }
  }
}

Class __getPHLimitedLibraryPickerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PhotosUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PhotosUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7930590;
    v8 = 0;
    PhotosUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLPrivacyUserInteraction.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PHLimitedLibraryPicker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHLimitedLibraryPickerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLPrivacyUserInteraction.m" lineNumber:19 description:{@"Unable to find class %s", "PHLimitedLibraryPicker"}];

LABEL_10:
    __break(1u);
  }

  getPHLimitedLibraryPickerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotosUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t PLIsClientApplicationStateReadyForLimitedLibraryPickerReprompt()
{
  v0 = NSClassFromString(@"UIApplication");
  if (!v0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v1 = [(objc_class *)v0 sharedApplication];
  v2 = [v1 applicationState] == 0;

  return v2;
}

void sub_1AAA2B828(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(a1);
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 138543362;
      *(&a9 + 4) = v9;
      _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "Encountered exception attempting to determine application state for limited library picker reprompt: %{public}@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1AAA2B7F8);
  }

  _Unwind_Resume(a1);
}

__CFString *PLValidatedSavedAssetTypeDescription(int a1)
{
  v4 = @"PhotoBooth";
  switch(a1)
  {
    case 0:
      v4 = @"Unknown";

      return v4;
    case 1:
      goto LABEL_10;
    case 2:
      v4 = @"PhotoStream";

      return v4;
    case 3:
      v4 = @"Camera";

      return v4;
    case 4:
      v4 = @"CloudShared";

      return v4;
    case 5:
      v4 = @"CameraConnectionKit";

      return v4;
    case 6:
      v4 = @"CloudPhotoLibrary";

      return v4;
    case 7:
      v4 = @"Wallpaper";

      return v4;
    case 8:
      v4 = @"MomentShared";

      return v4;
    case 9:
      v4 = @"Placeholder";

      return v4;
    case 10:
      v4 = @"Referenced";

      return v4;
    case 11:
      v4 = @"Alternate";

      return v4;
    case 12:
      v4 = @"Guest";

      return v4;
    case 13:
      v4 = @"CompanionSynced";

      return v4;
    case 14:
      v4 = @"Recovered";

      return v4;
    case 15:
      goto LABEL_9;
    case 16:
      v4 = @"CollectionShare";

      return v4;
    default:
      if (a1 == 256)
      {
        v4 = @"LegacyImport";
      }

      else
      {
LABEL_9:
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unrecognized savedAssetType %d", a1];
LABEL_10:
      }

      return v4;
  }
}

void sub_1AAA2DF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4869(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PLUnderlyingPOSIXError(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E696A798];
  v3 = *MEMORY[0x1E696AA08];
  v4 = v1;
  do
  {
    v5 = [v4 domain];
    v6 = [v5 isEqual:v2];

    if (v6)
    {
      break;
    }

    v7 = [v4 userInfo];
    v8 = [v7 objectForKey:v3];

    v4 = v8;
  }

  while (v8);

  return v4;
}

void PLMakeIndicatorFileExistAtPath(void *a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 fileSystemRepresentation];
  if (a2)
  {
    v5 = open(v4, 513, 438);
    if ((v5 & 0x80000000) == 0)
    {
      close(v5);
      goto LABEL_21;
    }

    if (*__error() == 2)
    {
      v6 = [v3 stringByDeletingLastPathComponent];
      v10 = [MEMORY[0x1E696AC08] defaultManager];
      v20 = 0;
      v11 = [v10 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v20];
      v12 = v20;

      v13 = open([v3 fileSystemRepresentation], 513, 438);
      if (v13 < 0)
      {
        v16 = PLBackendGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = __error();
          v18 = strerror(*v17);
          v19 = @"succeeded";
          *buf = 138543874;
          v22 = v3;
          if (!v11)
          {
            v19 = v12;
          }

          v23 = 2082;
          v24 = v18;
          v25 = 2114;
          v26 = v19;
          _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_ERROR, "%{public}@ could not be created, error: %{public}s, dir creation %{public}@", buf, 0x20u);
        }
      }

      else
      {
        close(v13);
      }

      goto LABEL_20;
    }

    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = __error();
      v15 = strerror(*v14);
      *buf = 138543618;
      v22 = v3;
      v23 = 2082;
      v24 = v15;
      v9 = "%{public}@ could not be created, error: %{public}s";
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (unlink(v4) && *__error() != 2)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 138543618;
      v22 = v3;
      v23 = 2082;
      v24 = v8;
      v9 = "%{public}@ could not be removed, error: %{public}s";
LABEL_13:
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, v9, buf, 0x16u);
    }

LABEL_20:
  }

LABEL_21:
}

uint64_t PLQualityOfServiceFromQoSClass(int a1)
{
  if (a1 <= 20)
  {
    if (a1 && a1 != 17)
    {
      return 9;
    }

    return 17;
  }

  switch(a1)
  {
    case 21:
      return 17;
    case 25:
      return 25;
    case 33:
      return 33;
  }

  return 9;
}

__CFString *PLStringFromQoSClass(int a1)
{
  if (a1 <= 16)
  {
    if (!a1)
    {
      return @"QOS_CLASS_UNSPECIFIED";
    }

    if (a1 != 5)
    {
      if (a1 == 9)
      {
        return @"QOS_CLASS_BACKGROUND";
      }

      return @"UNKNOWN";
    }

    return @"QOS_CLASS_MAINTENANCE";
  }

  else if (a1 > 24)
  {
    if (a1 != 33)
    {
      if (a1 == 25)
      {
        return @"QOS_CLASS_USER_INITIATED";
      }

      return @"UNKNOWN";
    }

    return @"QOS_CLASS_USER_INTERACTIVE";
  }

  else
  {
    if (a1 != 17)
    {
      if (a1 == 21)
      {
        return @"QOS_CLASS_DEFAULT";
      }

      return @"UNKNOWN";
    }

    return @"QOS_CLASS_UTILITY";
  }
}

__CFString *PLShortStringFromQoSClass(int a1)
{
  if (a1 <= 16)
  {
    if (!a1)
    {
      return @"UN";
    }

    if (a1 != 5)
    {
      if (a1 == 9)
      {
        return @"BG";
      }

      return @"UNKNOWN";
    }

    return @"MAINTENANCE";
  }

  else if (a1 > 24)
  {
    if (a1 != 33)
    {
      if (a1 == 25)
      {
        return @"IN";
      }

      return @"UNKNOWN";
    }

    return @"UI";
  }

  else
  {
    if (a1 != 17)
    {
      if (a1 == 21)
      {
        return @"DEF";
      }

      return @"UNKNOWN";
    }

    return @"UT";
  }
}

__CFString *PLStringFromQualityOfService(uint64_t a1)
{
  if (a1 <= 16)
  {
    if (a1 == -1)
    {
      return @"NSQualityOfServiceDefault";
    }

    if (a1 == 9)
    {
      return @"NSQualityOfServiceBackground";
    }
  }

  else
  {
    switch(a1)
    {
      case 17:
        return @"NSQualityOfServiceUtility";
      case 33:
        return @"NSQualityOfServiceUserInteractive";
      case 25:
        return @"NSQualityOfServiceUserInitiated";
    }
  }

  return @"Unknown";
}

id stringFromData(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [[v1 alloc] initWithData:v2 encoding:4];

  return v3;
}

id dateFromData(void *a1)
{
  v5 = 0.0;
  [a1 getBytes:&v5 length:8];
  v1 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v5];
  v3 = [v1 startOfDayForDate:v2];

  return v3;
}

id circularRegionFromData(void *a1)
{
  v1 = MEMORY[0x1E696ACD0];
  v2 = a1;
  v3 = [v1 unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

id convertToData(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = dataFromDate(v1);
LABEL_8:
    v3 = v2;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 dataUsingEncoding:4];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:0];
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSData * _Nullable convertToData(NSObject * _Nullable __strong)"];
    [v8 handleFailureInFunction:v9 file:@"PLSingleQuery+Utilities.m" lineNumber:96 description:{@"Object value must be either date, string, or number but is: <%@:%p>", objc_opt_class(), v1}];

LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  v4 = v1;
  Type = CFNumberGetType(v4);
  if (Type <= kCFNumberCGFloatType && ((1 << Type) & 0x13060) != 0)
  {
    [(__CFNumber *)v4 doubleValue];
    v7 = dataFromDouble(v6);
  }

  else
  {
    v7 = dataFromInteger([(__CFNumber *)v4 integerValue]);
  }

  v3 = v7;

LABEL_16:

  return v3;
}

id dataFromDate(void *a1)
{
  [a1 timeIntervalSinceReferenceDate];
  v4 = v1;
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:&v4 length:8];

  return v2;
}

id dataFromDouble(double a1)
{
  v3 = a1;
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:&v3 length:8];

  return v1;
}

id dataFromInteger(uint64_t a1)
{
  v3 = a1;
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:&v3 length:8];

  return v1;
}

uint64_t integerFromData(void *a1)
{
  v2 = 0;
  [a1 getBytes:&v2 length:8];
  return v2;
}

double doubleFromData(void *a1)
{
  v2 = 0.0;
  [a1 getBytes:&v2 length:8];
  return v2;
}

void sub_1AAA361BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLVoidResultFromResultAndError(int a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PLVoidResult * _Nonnull PLVoidResultFromResultAndError(BOOL, NSError * _Nullable __strong)"}];
      [v8 handleFailureInFunction:v9 file:@"PLResult.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"error == nil"}];
    }

    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [PLResult successWithResult:v5];
  }

  else
  {
    v6 = [PLResult failureWithError:v3];
  }

  return v6;
}

uint64_t __Block_byref_object_copy__5492(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA39584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1AAA39904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

id PLProgressPercentGroupCheck(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [v1 allValues];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PLProgressPercentGroupCheck_block_invoke;
  v4[3] = &unk_1E7930980;
  v4[4] = &v5;
  [v2 enumerateObjectsUsingBlock:v4];

  if (v6[3] >= 101)
  {
    __assert_rtn("PLProgressPercentGroupCheck", "PLLibraryServicesOperationProgress.m", 82, "totalPercent <= 100");
  }

  _Block_object_dispose(&v5, 8);

  return v1;
}

void sub_1AAA3A3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PLProgressPercentGroupCheck_block_invoke(uint64_t a1, void *a2)
{
  result = [a2 integerValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

id PLProgressPercentGroupForLaunchStateMachine()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v6[0] = @"Wait for data migration checkpoint";
  v6[1] = @"Prepare for OTA restore if necessary";
  v7[0] = &unk_1F1F90B90;
  v7[1] = &unk_1F1F90BA8;
  v6[2] = @"Wait for first unlock";
  v6[3] = @"Migrate or rebuild library if necessary";
  v7[2] = &unk_1F1F90B90;
  v7[3] = &unk_1F1F90BC0;
  v6[4] = @"Initialize CPL manager";
  v7[4] = &unk_1F1F90B90;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];
  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v1 addEntriesFromDictionary:v0];
  v4[0] = @"Create constraints director";
  v4[1] = @"Notify library availability";
  v5[0] = &unk_1F1F90BD8;
  v5[1] = &unk_1F1F90B90;
  v4[2] = @"Activate TCC";
  v4[3] = @"Initialize change handling";
  v5[2] = &unk_1F1F90BD8;
  v5[3] = &unk_1F1F90B90;
  v4[4] = @"Detect and enqueue outstanding transaction crash recovery operations";
  v4[5] = @"CrashRecovery: Rebuild all moments";
  v5[4] = &unk_1F1F90B90;
  v5[5] = &unk_1F1F90B90;
  v4[6] = @"CrashRecovery: Recalculate album counts";
  v4[7] = @"CrashRecovery: Process asset album associativity";
  v5[6] = &unk_1F1F90BD8;
  v5[7] = &unk_1F1F90BD8;
  v4[8] = @"CrashRecovery: Cloud feed rebuild";
  v4[9] = @"CrashRecovery: Import from file system";
  v5[8] = &unk_1F1F90BD8;
  v5[9] = &unk_1F1F90BD8;
  v4[10] = @"CrashRecovery: Reset search index";
  v4[11] = @"CrashRecovery: Restart pending placeholder assets";
  v5[10] = &unk_1F1F90BD8;
  v5[11] = &unk_1F1F90BD8;
  v4[12] = @"File System Import Notify Enter";
  v4[13] = @"Create singleton albums if required";
  v5[12] = &unk_1F1F90BD8;
  v5[13] = &unk_1F1F90BD8;
  v4[14] = @"Create singleton albums if required";
  v5[14] = &unk_1F1F90BD8;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:15];
  [v1 addEntriesFromDictionary:v2];

  return v1;
}

id PLProgressPercentGroupForRunningStateMachine()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v6[0] = @"Camera ingest recovery";
  v6[1] = @"Build quick action items";
  v7[0] = &unk_1F1F90BD8;
  v7[1] = &unk_1F1F90BD8;
  v6[2] = @"Asset creation recovery";
  v6[3] = @"Register background job service on library";
  v7[2] = &unk_1F1F90BD8;
  v7[3] = &unk_1F1F90BD8;
  v6[4] = @"Recovery from Duplicate Merge crash recovery";
  v7[4] = &unk_1F1F90BD8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];
  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v1 addEntriesFromDictionary:v0];
  v4[0] = @"Tell photoanalysisd about a newly opened library";
  v4[1] = @"Handle thumbnail rebuild request";
  v5[0] = &unk_1F1F90BD8;
  v5[1] = &unk_1F1F90BD8;
  v4[2] = @"Start Journal Manager";
  v4[3] = @"Handle locale change if necessary";
  v5[2] = &unk_1F1F90BD8;
  v5[3] = &unk_1F1F90BD8;
  v4[4] = @"Handle green tea contacts authorization change if necessary";
  v4[5] = @"File System Import";
  v5[4] = &unk_1F1F90BD8;
  v5[5] = &unk_1F1F90BF0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:6];
  [v1 addEntriesFromDictionary:v2];

  return v1;
}

void PLProgressPercentForOperationAddMap(void *a1, void *a2)
{
  v4 = a2;
  v3 = a1;
  PLProgressPercentGroupCheck(v4);
  objc_claimAutoreleasedReturnValue();
  [v3 addEntriesFromDictionary:v4];
}

uint64_t PLProgressPercentForOperationName(void *a1)
{
  v1 = PLProgressPercentForOperationName_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&PLProgressPercentForOperationName_onceToken, &__block_literal_global_5703);
  }

  v3 = [PLProgressPercentForOperationName_progressPercentMap objectForKeyedSubscript:v2];

  v4 = [v3 intValue];
  return v4;
}

void __PLProgressPercentForOperationName_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = PLProgressPercentGroupForLaunchStateMachine();
  PLProgressPercentForOperationAddMap(v0, v1);

  v2 = PLProgressPercentGroupForRunningStateMachine();
  PLProgressPercentForOperationAddMap(v0, v2);

  v3 = PLProgressPercentForOperationName_progressPercentMap;
  PLProgressPercentForOperationName_progressPercentMap = v0;
}

uint64_t __Block_byref_object_copy__5757(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA3B770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *a26, os_signpost_id_t a27, os_activity_scope_state_s a28, SEL sel)
{
  _Block_object_dispose((v30 - 160), 8);
  if (a25 == 1)
  {
    os_activity_scope_leave(&a28);
  }

  if (a27)
  {
    v32 = PLRequestGetLog();
    v33 = v32;
    if (a27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      Name = sel_getName(sel);
      *(v30 - 160) = 136446210;
      *(v29 + 116) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v33, OS_SIGNPOST_INTERVAL_END, a27, "PLXPC Sync", "%{public}s", (v30 - 160), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6044(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6375(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PLAssetFormatsAllKnownFormatIDs()
{
  if (PLAssetFormatsAllKnownFormatIDs_onceToken != -1)
  {
    dispatch_once(&PLAssetFormatsAllKnownFormatIDs_onceToken, &__block_literal_global_6492);
  }

  v1 = PLAssetFormatsAllKnownFormatIDs_formatIDs;

  return v1;
}

void __PLAssetFormatsAllKnownFormatIDs_block_invoke()
{
  v0 = PLAssetFormatsAllKnownFormatIDs_formatIDs;
  PLAssetFormatsAllKnownFormatIDs_formatIDs = &unk_1F1F91298;
}

uint64_t __Block_byref_object_copy__6564(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA55820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7063(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PLPhotosPickerLogDateFormatter()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v0 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZZZZZ"];
  v1 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v0 setLocale:v1];

  return v0;
}

__CFString *PLStringFromPhotosAccessScope(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"add-only";
  }

  else if ((a1 & 7) != 0)
  {
    v1 = @"read-write";
  }

  else
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = MEMORY[0x1E696AEC0];
    v4 = [v2 componentsJoinedByString:@"|"];
    v1 = [v3 stringWithFormat:@"read-write (%@)", v4];
  }

  return v1;
}

uint64_t TCCLibraryCore()
{
  if (!TCCLibraryCore_frameworkLibrary)
  {
    TCCLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return TCCLibraryCore_frameworkLibrary;
}

uint64_t gettcc_authorization_audit_token_report_useSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = gettcc_authorization_audit_token_report_useSymbolLoc_ptr;
  v6 = gettcc_authorization_audit_token_report_useSymbolLoc_ptr;
  if (!gettcc_authorization_audit_token_report_useSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __gettcc_authorization_audit_token_report_useSymbolLoc_block_invoke;
    v2[3] = &unk_1E7932D68;
    v2[4] = &v3;
    __gettcc_authorization_audit_token_report_useSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AAA57948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__gettcc_authorization_audit_token_report_useSymbolLoc_block_invoke(void *a1)
{
  v2 = TCCLibraryCore();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TCCLibrary(void)"];
    [a1 handleFailureInFunction:v3 file:@"PLPrivacy.m" lineNumber:31 description:{@"%s", 0}];

    __break(1u);
    free(v5);
  }

  result = dlsym(v3, "tcc_authorization_audit_token_report_use");
  *(*(a1[4] + 8) + 24) = result;
  gettcc_authorization_audit_token_report_useSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __TCCLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TCCLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1AAA583EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAA584C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAA58768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAA58BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _ValidatedClientLogFromDictionary(void *a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v3 = [v1 objectForKeyedSubscript:@"bundleIdentifier"];
  v4 = [v2 objectForKeyedSubscript:@"timestamp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v2 objectForKeyedSubscript:@"timestamp"];
    v6 = PLPhotosPickerLogDateFormatter();
    v7 = [v6 dateFromString:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = 0;
  if (![v3 length] || !v7)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13[0] = @"bundleIdentifier";
    v13[1] = @"timestamp";
    v14[0] = v3;
    v14[1] = v7;
    v13[2] = @"pickerUsesOptions";
    v9 = MEMORY[0x1E696AD98];
    v10 = [v2 objectForKeyedSubscript:?];
    v11 = [v9 numberWithBool:{objc_msgSend(v10, "BOOLValue")}];
    v14[2] = v11;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  else
  {
LABEL_13:
    v8 = 0;
  }

LABEL_14:

LABEL_15:

  return v8;
}

uint64_t PLPhotosAccessAllowedResultForClientAuditToken()
{
  v0 = tcc_authorization_check_audit_token();
  if (v0 >= 5)
  {
    v1 = 1;
  }

  else
  {
    v1 = v0;
  }

  return qword_1AAA8F588[v1];
}

uint64_t __Block_byref_object_copy__7914(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PLStringFromPLPhotoLibraryPathManagerLibraryFormatShort(int a1)
{
  v2 = [@"PLPhotoLibraryPathManagerLibraryFormat" length];
  v3 = @"PLPhotoLibraryPathManagerLibraryFormatDefault";
  if (a1 == 1)
  {
    v3 = @"PLPhotoLibraryPathManagerLibraryFormatDCIM";
  }

  if (a1 == 2)
  {
    v3 = @"PLPhotoLibraryPathManagerLibraryFormatUBF";
  }

  v4 = v3;
  if ([(__CFString *)v4 length]> v2)
  {
    v5 = [(__CFString *)v4 substringFromIndex:v2];

    v4 = v5;
  }

  return v4;
}

__CFString *PLStringFromPLPhotoLibraryPathManagerLibraryFormat(int a1)
{
  v1 = @"PLPhotoLibraryPathManagerLibraryFormatDefault";
  if (a1 == 1)
  {
    v1 = @"PLPhotoLibraryPathManagerLibraryFormatDCIM";
  }

  if (a1 == 2)
  {
    return @"PLPhotoLibraryPathManagerLibraryFormatUBF";
  }

  else
  {
    return v1;
  }
}

void PLSendCoreAnalyticEvent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PLSendCoreAnalyticEvent_block_invoke;
  v7[3] = &unk_1E7932A28;
  v8 = v3;
  v9 = v4;
  v5 = v4;
  v6 = v3;
  pl_dispatch_async_without_boost(v7);
}

id PLUnarchiveUUIDStringsSetFromData(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 length];
  v3 = v2 >> 4;
  v4 = [v1 bytes];
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:v2 >> 4];
  if (v2 >= 0x10)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      memset(v12, 0, sizeof(v12));
      uuid_unparse((v4 + 16 * v6), v12);
      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
      [v5 addObject:v8];

      v6 = v7;
    }

    while (v3 > v7++);
  }

  v10 = [MEMORY[0x1E695DFD8] setWithSet:v5];

  return v10;
}

id PLArchiveDataFromUUIDStringsSet(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = 16 * v2;
    v4 = malloc_type_malloc(16 * v2, 0x267CD0C4uLL);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v1;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v8 += [PLUUIDString parseUUIDString:*(*(&v13 + 1) + 8 * i) uuidBuffer:&v4[16 * v8], v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v4 length:v3 freeWhenDone:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __Block_byref_object_copy__8959(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PLAdjustmentBaseVersionDescription(uint64_t a1)
{
  v1 = @"unadjusted";
  if (a1 == 2)
  {
    v1 = @"current";
  }

  if (a1 == 1)
  {
    return @"penultimate";
  }

  else
  {
    return v1;
  }
}

__CFString *PLStringFromPLQueryConjunction(int a1)
{
  v1 = @"kPLQueryConjunction_OR";
  if (a1 == 1)
  {
    v1 = @"kPLQueryConjunction_AND";
  }

  if (a1 == 2)
  {
    return @"kPLQueryConjunction_NOT";
  }

  else
  {
    return v1;
  }
}

__CFString *PLStringFromPLQueryKey(int a1)
{
  result = @"kPLQueryKey_unknown";
  if (a1 <= 299)
  {
    if (a1 > 6)
    {
      v3 = @"kPLQueryKey_inAlbum";
      v14 = @"kPLQueryKey_dateCaptured";
      v15 = @"kPLQueryKey_dateAdded";
      if (a1 != 201)
      {
        v15 = @"kPLQueryKey_unknown";
      }

      if (a1 != 200)
      {
        v14 = v15;
      }

      if (a1 != 100)
      {
        v3 = v14;
      }

      v6 = @"kPLQueryKey_isOnline";
      v16 = @"kPLQueryKey_isMissing";
      v17 = @"kPLQueryKey_isProRes";
      if (a1 != 9)
      {
        v17 = @"kPLQueryKey_unknown";
      }

      if (a1 != 8)
      {
        v16 = v17;
      }

      if (a1 != 7)
      {
        v6 = v16;
      }

      v9 = a1 <= 99;
    }

    else
    {
      v3 = @"kPLQueryKey_isRAW";
      v4 = @"kPLQueryKey_assetType";
      v5 = @"kPLQueryKey_isReferenced";
      if (a1 != 6)
      {
        v5 = @"kPLQueryKey_unknown";
      }

      if (a1 != 5)
      {
        v4 = v5;
      }

      if (a1 != 4)
      {
        v3 = v4;
      }

      v6 = @"kPLQueryKey_isFavorite";
      v7 = @"kPLQueryKey_isHidden";
      v8 = @"kPLQueryKey_isAdjusted";
      if (a1 != 3)
      {
        v8 = @"kPLQueryKey_unknown";
      }

      if (a1 != 2)
      {
        v7 = v8;
      }

      if (a1 != 1)
      {
        v6 = v7;
      }

      v9 = a1 <= 3;
    }
  }

  else
  {
    if (a1 <= 399)
    {
      switch(a1)
      {
        case 300:
          result = @"kPLQueryKey_aperture";
          break;
        case 301:
          result = @"kPLQueryKey_cameraModel";
          break;
        case 302:
          result = @"kPLQueryKey_flash";
          break;
        case 303:
          result = @"kPLQueryKey_focalLength";
          break;
        case 304:
          result = @"kPLQueryKey_iso";
          break;
        case 305:
          result = @"kPLQueryKey_lensModel";
          break;
        case 306:
          result = @"kPLQueryKey_shutterSpeed";
          break;
        case 309:
          result = @"kPLQueryKey_bitrate";
          break;
        case 310:
          result = @"kPLQueryKey_cameraMake";
          break;
        case 311:
          result = @"kPLQueryKey_codec";
          break;
        case 312:
          result = @"kPLQueryKey_duration";
          break;
        case 313:
          result = @"kPLQueryKey_exposureBias";
          break;
        case 314:
          result = @"kPLQueryKey_fps";
          break;
        case 315:
          result = @"kPLQueryKey_meteringMode";
          break;
        case 316:
          result = @"kPLQueryKey_sampleRate";
          break;
        case 317:
          result = @"kPLQueryKey_trackFormat";
          break;
        case 318:
          result = @"kPLQueryKey_whiteBalance";
          break;
        case 319:
          result = @"kPLQueryKey_hasLocation";
          break;
        default:
          return result;
      }

      return result;
    }

    if (a1 > 550)
    {
      v3 = @"kPLQueryKey_inCircularRegion";
      v18 = @"kPLQueryKey_notAbleToCPLUpload";
      v19 = @"kPLQueryKey_isCPLQuarantine";
      if (a1 != 1001)
      {
        v19 = @"kPLQueryKey_unknown";
      }

      if (a1 != 1000)
      {
        v18 = v19;
      }

      if (a1 != 600)
      {
        v3 = v18;
      }

      v6 = @"kPLQueryKey_personUUID";
      v20 = @"kPLQueryKey_personUUIDInProximity_unused";
      v21 = @"kPLQueryKey_personUUIDInMomentForSharedLibrary";
      if (a1 != 553)
      {
        v21 = @"kPLQueryKey_unknown";
      }

      if (a1 != 552)
      {
        v20 = v21;
      }

      if (a1 != 551)
      {
        v6 = v20;
      }

      v9 = a1 <= 599;
    }

    else
    {
      v3 = @"kPLQueryKey_description";
      v10 = @"kPLQueryKey_keyword";
      v11 = @"kPLQueryKey_personName";
      if (a1 != 550)
      {
        v11 = @"kPLQueryKey_unknown";
      }

      if (a1 != 500)
      {
        v10 = v11;
      }

      if (a1 != 403)
      {
        v3 = v10;
      }

      v6 = @"kPLQueryKey_filename";
      v12 = @"kPLQueryKey_title";
      v13 = @"kPLQueryKey_text";
      if (a1 != 402)
      {
        v13 = @"kPLQueryKey_unknown";
      }

      if (a1 != 401)
      {
        v12 = v13;
      }

      if (a1 != 400)
      {
        v6 = v12;
      }

      v9 = a1 <= 402;
    }
  }

  if (v9)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

__CFString *PLStringFromPLQueryValueType(int a1)
{
  if ((a1 - 1) > 4)
  {
    return @"kPLQueryValueType_unknown";
  }

  else
  {
    return *(&off_1E7931F00 + (a1 - 1));
  }
}

__CFString *PLStringFromPLQueryComparatorType(int a1)
{
  result = @"kPLQueryComparatorType_unknown";
  switch(a1)
  {
    case 1:
      result = @"kPLQueryComparatorType_isEqual";
      break;
    case 2:
      result = @"kPLQueryComparatorType_isNotEqual";
      break;
    case 3:
      result = @"kPLQueryComparatorType_isGreaterThan";
      break;
    case 4:
      result = @"kPLQueryComparatorType_isLessThan";
      break;
    case 5:
      result = @"kPLQueryComparatorType_isGreaterOrEqualThan";
      break;
    case 6:
      result = @"kPLQueryComparatorType_isLessOrEqualThan";
      break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 26:
    case 27:
    case 28:
    case 29:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
      return result;
    case 20:
      result = @"kPLQueryComparatorType_textIncludes";
      break;
    case 21:
      result = @"kPLQueryComparatorType_textNotIncludes";
      break;
    case 22:
      result = @"kPLQueryComparatorType_textIs";
      break;
    case 23:
      result = @"kPLQueryComparatorType_textIsNot";
      break;
    case 24:
      result = @"kPLQueryComparatorType_textStartsWith";
      break;
    case 25:
      result = @"kPLQueryComparatorType_textEndsWith";
      break;
    case 30:
      result = @"kPLQueryComparatorType_isInRange";
      break;
    case 31:
      result = @"kPLQueryComparatorType_isIn";
      break;
    case 32:
      result = @"kPLQueryComparatorType_isNotIn";
      break;
    case 40:
      result = @"kPLQueryComparatorType_isInTheLast";
      break;
    case 41:
      result = @"kPLQueryComparatorType_isNotInTheLast";
      break;
    default:
      v3 = @"kPLQueryComparatorType_isAny";
      if (a1 != 51)
      {
        v3 = @"kPLQueryComparatorType_unknown";
      }

      if (a1 == 50)
      {
        result = @"kPLQueryComparatorType_isEmpty";
      }

      else
      {
        result = v3;
      }

      break;
  }

  return result;
}

__CFString *PLStringFromPLQueryUnit(int a1)
{
  if ((a1 - 1) > 4)
  {
    return @"kPLQueryUnit_unused";
  }

  else
  {
    return *(&off_1E7931F28 + (a1 - 1));
  }
}

__CFString *PLStringFromPLQueryValue(int a1)
{
  if ((a1 - 1) > 0x10)
  {
    return @"kPLQueryValue_unknown";
  }

  else
  {
    return *(&off_1E7931F50 + (a1 - 1));
  }
}

void PLUpdateSizeUnit(double *a1, void *a2, double a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [&unk_1F1F912C8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = a3 * 1000.0;
    v9 = *v14;
    v10 = 1.0;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(&unk_1F1F912C8);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (v8 < 1000.0 || [*(*(&v13 + 1) + 8 * i) isEqualToString:@"TB"])
        {
          if (a1)
          {
            *a1 = v10 * 1000.0;
          }

          if (a2)
          {
            *a2 = [v12 UTF8String];
          }

          return;
        }

        v10 = v10 / 1000.0;
        v8 = v8 / 1000.0;
      }

      v7 = [&unk_1F1F912C8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

id PLIndentToString(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  if (a1 >= 1)
  {
    do
    {
      [v2 appendString:PLIndent];
      --a1;
    }

    while (a1);
  }

  return v2;
}

id PLEmptyContainerDescription(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 stringWithFormat:@"<%@: %p> <empty>", objc_opt_class(), v2];

  return v3;
}

id PLAggregateComparator(void *a1)
{
  v1 = MEMORY[0x1E695DEC8];
  v2 = a1;
  v3 = [[v1 alloc] initWithArray:v2 copyItems:1];

  v4 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___PLAggregateComparatorFromArray_block_invoke;
  v8[3] = &unk_1E79320A0;
  v9 = v4;
  v5 = MEMORY[0x1AC5925C0](v8);
  v6 = [v5 copy];

  return v6;
}

id PLNullToNil(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DFB0] null];
  v3 = *MEMORY[0x1E695E738];

  if (v2 == v1 || v3 == v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v1;
  }

  return v5;
}

id PLFullMethodName(void *a1, const char *a2)
{
  v3 = a1;
  v4 = objc_opt_class();

  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v7 = 45;
  if (v4 == v3)
  {
    v7 = 43;
  }

  v8 = [v5 stringWithFormat:@"%c[%@ %@]", v7, v4, v6];

  return v8;
}

id PLAbstractMethodException(void *a1, const char *a2)
{
  v3 = a1;
  v4 = PLFullMethodName(v3, a2);
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: must override selector sent to %p", v4, v3];

  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];

  return v8;
}

id PLMethodNotImplementedException(void *a1, const char *a2)
{
  v3 = a1;
  v4 = PLFullMethodName(v3, a2);
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: method not implemented sent to %p", v4, v3];

  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];

  return v8;
}

uint64_t PLIsErrorEqualToCode(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (v5 && [v5 code] == a3)
  {
    v7 = [v5 domain];
    v8 = [v7 isEqualToString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

__CFString *NSStringFromPLErrorCode(uint64_t a1)
{
  if (a1 > 46700)
  {
    if (a1 > 50007)
    {
      if (a1 <= 61000)
      {
        if (a1 <= 51011)
        {
          if (a1 > 51005)
          {
            if (a1 > 51008)
            {
              if (a1 == 51009)
              {
                v2 = @"PLPhotosErrorJournalManagerNeedsSnapshot";
              }

              else if (a1 == 51010)
              {
                v2 = @"PLPhotosErrorJournalManagerHistoryIterate";
              }

              else
              {
                v2 = @"PLPhotosErrorJournalManagerHistoryIterateFromStart";
              }
            }

            else if (a1 == 51006)
            {
              v2 = @"PLPhotosErrorJournalDoesNotExist";
            }

            else if (a1 == 51007)
            {
              v2 = @"PLPhotosErrorJournalPayloadTooNew";
            }

            else
            {
              v2 = @"PLPhotosErrorJournalInvalidJournalManagerState";
            }

            goto LABEL_361;
          }

          if (a1 > 51002)
          {
            if (a1 == 51003)
            {
              v2 = @"PLPhotosErrorJournalFileRead";
            }

            else if (a1 == 51004)
            {
              v2 = @"PLPhotosErrorJournalFileWrite";
            }

            else
            {
              v2 = @"PLPhotosErrorJournalFileAtEOF";
            }

            goto LABEL_361;
          }

          switch(a1)
          {
            case 50008:
              v2 = @"PLPhotosErrorBackgroundJobWorkerFailure";
              goto LABEL_361;
            case 51001:
              v2 = @"PLPhotosErrorJournalEntryParse";
              goto LABEL_361;
            case 51002:
              v2 = @"PLPhotosErrorJournalEntryWrite";
              goto LABEL_361;
          }
        }

        else if (a1 <= 52005)
        {
          if (a1 > 52002)
          {
            if (a1 == 52003)
            {
              v2 = @"PLPhotosErrorComputeCacheTooManyRestoreAttempts";
            }

            else if (a1 == 52004)
            {
              v2 = @"PLPhotosErrorComputeCacheRestoreStateCompleted";
            }

            else
            {
              v2 = @"PLPhotosErrorComputeCacheRestoreStateNotPermitted";
            }

            goto LABEL_361;
          }

          switch(a1)
          {
            case 51012:
              v2 = @"PLPhotosErrorJournalSnapshotExists";
              goto LABEL_361;
            case 52001:
              v2 = @"PLPhotosErrorComputeCacheUnsupported";
              goto LABEL_361;
            case 52002:
              v2 = @"PLPhotosErrorComputeCacheRestoreCount";
              goto LABEL_361;
          }
        }

        else
        {
          if (a1 <= 52008)
          {
            if (a1 == 52006)
            {
              v2 = @"PLPhotosErrorComputeCacheRestoreDisabledByConfiguration";
            }

            else if (a1 == 52007)
            {
              v2 = @"PLPhotosErrorComputeCacheRestoreStateInProgress";
            }

            else
            {
              v2 = @"PLPhotosErrorComputeCacheBackupInvalidState";
            }

            goto LABEL_361;
          }

          if (a1 <= 52010)
          {
            if (a1 == 52009)
            {
              v2 = @"PLPhotosErrorComputeCacheBackupSnapshotMissing";
            }

            else
            {
              v2 = @"PLPhotosErrorComputeCacheRemove";
            }

            goto LABEL_361;
          }

          if (a1 == 52011)
          {
            v2 = @"PLPhotosErrorComputeCacheEncryptionNotInitialized";
            goto LABEL_361;
          }

          if (a1 == 53001)
          {
            v2 = @"PLPhotosErrorAnalysisCoordinatorCancelled";
            goto LABEL_361;
          }
        }
      }

      else if (a1 > 72006)
      {
        if (a1 <= 81002)
        {
          if (a1 > 73000)
          {
            switch(a1)
            {
              case 73001:
                v2 = @"PLPhotosErrorPersonMissingKeyFace";
                goto LABEL_361;
              case 81001:
                v2 = @"PLPhotosErrorLibraryScopeIsOwned";
                goto LABEL_361;
              case 81002:
                v2 = @"PLPhotosErrorLibraryAssetSuggestionStateInvalid";
                goto LABEL_361;
            }
          }

          else
          {
            switch(a1)
            {
              case 72007:
                v2 = @"PLPhotosErrorLibraryImportNeedsDisabledCPLCleanupCompletion";
                goto LABEL_361;
              case 72008:
                v2 = @"PLPhotosErrorLibraryImportProcessingError";
                goto LABEL_361;
              case 72009:
                v2 = @"PLPhotosErrorLibraryImportIsLegacyLibrary";
                goto LABEL_361;
            }
          }
        }

        else if (a1 <= 82002)
        {
          switch(a1)
          {
            case 81003:
              v2 = @"PLPhotosErrorLibraryScopeDoesNotHaveACurrentUser";
              goto LABEL_361;
            case 82001:
              v2 = @"PLPhotosErrorFeatureAvailabilityServiceNotAvailable";
              goto LABEL_361;
            case 82002:
              v2 = @"PLPhotosErrorFeatureAvailabilityInternalError";
              goto LABEL_361;
          }
        }

        else if (a1 > 499999)
        {
          if (a1 == 500000)
          {
            v2 = @"PLPhotosErrorReserved01";
            goto LABEL_361;
          }

          if (a1 == 599999)
          {
            v2 = @"PLPhotosErrorReserved02";
            goto LABEL_361;
          }
        }

        else
        {
          if (a1 == 82003)
          {
            v2 = @"PLPhotosErrorFeatureAvailabilityRequestFailed";
            goto LABEL_361;
          }

          if (a1 == 83001)
          {
            v2 = @"PLPhotosErrorGraphBitsetIndexOutOfBounds";
            goto LABEL_361;
          }
        }
      }

      else if (a1 <= 71000)
      {
        if (a1 <= 61003)
        {
          if (a1 == 61001)
          {
            v2 = @"PLPhotosErrorThumbnailFailedDownscale";
          }

          else if (a1 == 61002)
          {
            v2 = @"PLPhotosErrorThumbnailBadParameters";
          }

          else
          {
            v2 = @"PLPhotosErrorThumbnailFailedEncode";
          }

          goto LABEL_361;
        }

        switch(a1)
        {
          case 61004:
            v2 = @"PLPhotosErrorThumbnailGenericError";
            goto LABEL_361;
          case 70001:
            v2 = @"PLPhotosErrorTransferCopyObjectFailed";
            goto LABEL_361;
          case 70002:
            v2 = @"PLPhotosErrorTransferFileURLMissing";
            goto LABEL_361;
        }
      }

      else
      {
        if (a1 > 72002)
        {
          if (a1 > 72004)
          {
            if (a1 == 72005)
            {
              v2 = @"PLPhotosErrorLibraryImportNeedsTimeMachineRestore";
            }

            else
            {
              v2 = @"PLPhotosErrorLibraryImportNeedsDisableCPL";
            }
          }

          else if (a1 == 72003)
          {
            v2 = @"PLPhotosErrorLibraryImportNeedsMigration";
          }

          else
          {
            v2 = @"PLPhotosErrorLibraryImportNeedsForceRepair";
          }

          goto LABEL_361;
        }

        switch(a1)
        {
          case 71001:
            v2 = @"PLPhotosErrorManagedObjectConstraitsError";
            goto LABEL_361;
          case 72001:
            v2 = @"PLPhotosErrorLibraryImportUnknown";
            goto LABEL_361;
          case 72002:
            v2 = @"PLPhotosErrorLibraryImportInvalid";
            goto LABEL_361;
        }
      }

      goto LABEL_197;
    }

    if (a1 > 48000)
    {
      if (a1 > 49500)
      {
        if (a1 > 50001)
        {
          if (a1 > 50004)
          {
            if (a1 == 50005)
            {
              v2 = @"PLPhotosErrorBackgroundJobWorkerCancelled";
            }

            else if (a1 == 50006)
            {
              v2 = @"PLPhotosErrorBackgroundJobWorkerInvalidParameter";
            }

            else
            {
              v2 = @"PLPhotosErrorBackgroundJobWorkerIncorrectWorkItem";
            }
          }

          else if (a1 == 50002)
          {
            v2 = @"PLPhotosErrorBackgroundJobWorkerNoWorkNeeded";
          }

          else if (a1 == 50003)
          {
            v2 = @"PLPhotosErrorBackgroundJobWorkerStopRunningRemainingWorkItems";
          }

          else
          {
            v2 = @"PLPhotosErrorBackgroundJobWorkerRequestedDeferral";
          }

          goto LABEL_361;
        }

        if (a1 <= 49503)
        {
          if (a1 == 49501)
          {
            v2 = @"PLPhotosErrorSyndicationInvalidContentType";
          }

          else if (a1 == 49502)
          {
            v2 = @"PLPhotosErrorSyndicationIngestDataTooLarge";
          }

          else
          {
            v2 = @"PLPhotosErrorSyndicationIngestDataSizeInvalid";
          }

          goto LABEL_361;
        }

        switch(a1)
        {
          case 49504:
            v2 = @"PLPhotosErrorSyndicationIngestUnknownTypeIdentifier";
            goto LABEL_361;
          case 49505:
            v2 = @"PLPhotosErrorSyndicationIngestMutexUnavailable";
            goto LABEL_361;
          case 50001:
            v2 = @"PLPhotosErrorBackgroundJobWorkerCompletionHandlerForcefullyCalled";
            goto LABEL_361;
        }
      }

      else if (a1 > 49403)
      {
        if (a1 <= 49406)
        {
          if (a1 == 49404)
          {
            v2 = @"PLPhotosErrorDuplicateMissingAlbum";
          }

          else if (a1 == 49405)
          {
            v2 = @"PLPhotosErrorDuplicateNotMergeReady";
          }

          else
          {
            v2 = @"PLPhotosErrorDuplicateCancelled";
          }

          goto LABEL_361;
        }

        switch(a1)
        {
          case 49407:
            v2 = @"PLPhotosErrorDuplicateIncompatibleResource";
            goto LABEL_361;
          case 49408:
            v2 = @"PLPhotosErrorDuplicatePropertyMergeFailure";
            goto LABEL_361;
          case 49409:
            v2 = @"PLPhotosErrorDuplicateInvalidCPLState";
            goto LABEL_361;
        }
      }

      else
      {
        if (a1 > 49400)
        {
          if (a1 == 49401)
          {
            v2 = @"PLPhotosErrorDuplicateInvalidLibrary";
          }

          else if (a1 == 49402)
          {
            v2 = @"PLPhotosErrorDuplicateInvalidLibraryManager";
          }

          else
          {
            v2 = @"PLPhotosErrorDuplicateInvalidParameter";
          }

          goto LABEL_361;
        }

        switch(a1)
        {
          case 48001:
            v2 = @"PLPhotosErrorFailedToFinalizeDeferredPhotoGeneric";
            goto LABEL_361;
          case 48002:
            v2 = @"PLPhotosErrorDeferredProcessingInvalidated";
            goto LABEL_361;
          case 49001:
            v2 = @"PLPhotosErrorInsufficientResourcesForEdit";
            goto LABEL_361;
        }
      }

      goto LABEL_197;
    }

    if (a1 <= 46800)
    {
      switch(a1)
      {
        case 46701:
          v2 = @"PLPhotosErrorMigrationActionSoftAssetMissingParticipant";
          goto LABEL_361;
        case 46702:
          v2 = @"PLPhotosErrorMigrationActionSoftCommentMissingParticipant";
          goto LABEL_361;
        case 46800:
          v2 = @"PLPhotosErrorFailedToCreateDefaultDirectories";
          goto LABEL_361;
      }

      goto LABEL_197;
    }

    switch(a1)
    {
      case 47001:
        v2 = @"PLPhotosErrorFailedToGenerateLocalResourceGeneric";
        break;
      case 47002:
        v2 = @"PLPhotosErrorFailedToGenerateLocalResourcesCallerCancelledError";
        break;
      case 47003:
        v2 = @"PLPhotosErrorFailedToGenerateLocalResourcesMissingIngredients";
        break;
      case 47004:
        v2 = @"PLPhotosErrorFailedToGenerateLocalResourcesNoSupportedVersions";
        break;
      case 47005:
        v2 = @"PLPhotosErrorFailedToGenerateLocalResourcesRecipeNotSupported";
        break;
      case 47006:
        v2 = @"PLPhotosErrorFailedToGenerateLocalResourcesMissingURLsOrUTI";
        break;
      case 47007:
        v2 = @"PLPhotosErrorFailedToGenerateLocalResourcesMediaConversion";
        break;
      case 47008:
        v2 = @"PLPhotosErrorFailedToGenerateLocalResourcesThumbnailGenerationFailed";
        break;
      case 47009:
        v2 = @"PLPhotosErrorFailedToGenerateLocalResourcesStoreFailed";
        break;
      case 47010:
        v2 = @"PLPhotosErrorFailedToGenerateLocalResourcesStoreFailedCantCreateExternalResource";
        break;
      case 47011:
        v2 = @"PLPhotosErrorFailedToMoveResourceFile";
        break;
      case 47012:
        v2 = @"PLPhotosErrorFailedToObtainWritePathForResourceFile";
        break;
      case 47013:
        v2 = @"PLPhotosErrorResourceFileNotFound";
        break;
      case 47014:
        v2 = @"PLPhotosErrorResourceCannotResolveInode";
        break;
      case 47015:
        v2 = @"PLPhotosErrorFailedToGenerateLocalResourcesMissingAdjustmentData";
        break;
      case 47016:
        v2 = @"PLPhotosErrorInvalidAdjustmentData";
        break;
      case 47017:
        v2 = @"PLPhotosErrorResourceNotFound";
        break;
      case 47018:
        v2 = @"PLPhotosErrorNetworkAccessRequired";
        break;
      case 47019:
        v2 = @"PLPhotosErrorResourceNotPurgeable";
        break;
      case 47020:
        v2 = @"PLPhotosErrorInvalidMetadata";
        break;
      case 47021:
        v2 = @"PLPhotosErrorFailedToGenerateLocalResourcesGenerateAdjustmentFileNotFound";
        break;
      default:
        if (a1 == 46801)
        {
          v2 = @"PLPhotosErrorInvalidFileIdentifier";
        }

        else
        {
          if (a1 != 46802)
          {
            goto LABEL_197;
          }

          v2 = @"PLPhotosErrorMissingLibraryBundle";
        }

        break;
    }
  }

  else if (a1 > 46100)
  {
    if (a1 <= 46500)
    {
      if (a1 <= 46200)
      {
        if (a1 <= 46105)
        {
          if (a1 <= 46102)
          {
            if (a1 == 46101)
            {
              v2 = @"PLPhotosErrorDatabaseOpenError";
            }

            else
            {
              v2 = @"PLPhotosErrorInvalidURL";
            }
          }

          else if (a1 == 46103)
          {
            v2 = @"PLPhotosErrorLibraryInTrash";
          }

          else if (a1 == 46104)
          {
            v2 = @"PLPhotosErrorNoPermission";
          }

          else
          {
            v2 = @"PLPhotosErrorReadOnlyFilesystem";
          }

          goto LABEL_361;
        }

        if (a1 <= 46108)
        {
          if (a1 == 46106)
          {
            v2 = @"PLPhotosErrorSandboxNoPermission";
          }

          else if (a1 == 46107)
          {
            v2 = @"PLPhotosErrorUnsupportedFilesystem";
          }

          else
          {
            v2 = @"PLPhotosErrorSectionData";
          }

          goto LABEL_361;
        }

        switch(a1)
        {
          case 46109:
            v2 = @"PLPhotosErrorMismatchURL";
            goto LABEL_361;
          case 46110:
            v2 = @"PLPhotosErrorExistingIdentifier";
            goto LABEL_361;
          case 46111:
            v2 = @"PLPhotosErrorIdentifierNotFound";
            goto LABEL_361;
        }

        goto LABEL_197;
      }

      switch(a1)
      {
        case 46301:
          v2 = @"PLPhotosErrorCoreData";
          break;
        case 46302:
          v2 = @"PLPhotosErrorDirectoryCreation";
          break;
        case 46303:
          v2 = @"PLPhotosErrorDirectoryMove";
          break;
        case 46304:
          v2 = @"PLPhotosErrorFileClone";
          break;
        case 46305:
          v2 = @"PLPhotosErrorFileCloneUnsupported";
          break;
        case 46306:
          v2 = @"PLPhotosErrorFileMove";
          break;
        case 46307:
          v2 = @"PLPhotosErrorModelCreation";
          break;
        case 46308:
          v2 = @"PLPhotosErrorModelMigration";
          break;
        case 46309:
          v2 = @"PLPhotosErrorUnsupported";
          break;
        case 46310:
          v2 = @"PLPhotosErrorLibraryClone";
          break;
        case 46311:
          v2 = @"PLPhotosErrorPLMUUpgradeCompleted";
          break;
        case 46312:
          v2 = @"PLPhotosErrorMigrationCancelled";
          break;
        case 46313:
          v2 = @"PLPhotosErrorUnsupportedLegacyLibrary";
          break;
        default:
          if (a1 == 46201)
          {
            v2 = @"PLPhotosErrorUnsupportedIdentifier";
          }

          else
          {
            if (a1 != 46202)
            {
              goto LABEL_197;
            }

            v2 = @"PLPhotosErrorIdentifierReservationLimitExceeded";
          }

          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 46501:
          v2 = @"PLPhotosErrorFailedToOpenLibrary";
          break;
        case 46502:
          v2 = @"PLPhotosErrorInvalidState";
          break;
        case 46503:
          v2 = @"PLPhotosErrorMigrationPhase";
          break;
        case 46504:
          v2 = @"PLPhotosErrorNewerSchema";
          break;
        case 46505:
          v2 = @"PLPhotosErrorNoConnectionInterrupted";
          break;
        case 46506:
          v2 = @"PLPhotosErrorNoConnectionInvalidated";
          break;
        case 46507:
          v2 = @"PLPhotosErrorNoDelegate";
          break;
        case 46508:
          v2 = @"PLPhotosErrorNoURLBookmark";
          break;
        case 46509:
          v2 = @"PLPhotosErrorObtainPIDLockFail";
          break;
        case 46510:
          v2 = @"PLPhotosErrorPreMigrationPhase";
          break;
        case 46511:
          v2 = @"PLPhotosErrorResumeFailed";
          break;
        case 46512:
          v2 = @"PLPhotosErrorTimeout";
          break;
        case 46513:
          v2 = @"PLPhotosErrorValidationIssue";
          break;
        case 46514:
          v2 = @"PLPhotosErrorException";
          break;
        case 46515:
          v2 = @"PLPhotosErrorDeletionCheck";
          break;
        case 46516:
          v2 = @"PLPhotosErrorInsufficientDiskSpace";
          break;
        case 46517:
          v2 = @"PLPhotosErrorLegacyUpgradeFailed";
          break;
        case 46518:
          v2 = @"PLPhotosErrorMissingDatabaseFiles";
          break;
        case 46519:
          v2 = @"PLPhotosErrorMigrationInProgress";
          break;
        case 46520:
          v2 = @"PLPhotosErrorMigrationRebuild";
          break;
        case 46521:
          v2 = @"PLPhotosErrorMigrationAquireFSReservation";
          break;
        case 46522:
          v2 = @"PLPhotosErrorMigrationAquirePIDLock";
          break;
        case 46523:
          v2 = @"PLPhotosErrorMigrationPLMUInternal";
          break;
        case 46524:
          v2 = @"PLPhotosErrorMigrationLithiumInternal";
          break;
        case 46525:
          v2 = @"PLPhotosErrorMigrationUnknownLibraryType";
          break;
        case 46526:
          v2 = @"PLPhotosErrorMigrationDatabaseCorrupt";
          break;
        case 46527:
          v2 = @"PLPhotosErrorMigrationMissingRebuildData";
          break;
        default:
          goto LABEL_197;
      }
    }
  }

  else
  {
    if (a1 <= 43001)
    {
      if (a1 <= 42000)
      {
        v2 = @"PLAssetsdServiceErrorUnknown";
        switch(a1)
        {
          case 41001:
            goto LABEL_361;
          case 41002:
            v2 = @"PLAssetsdServiceErrorXPC";
            break;
          case 41003:
            v2 = @"PLAssetsdServiceErrorInternal";
            break;
          case 41004:
            v2 = @"PLAssetsdServiceErrorNotFound";
            break;
          case 41005:
            v2 = @"PLAssetsdServiceErrorForbidden";
            break;
          case 41006:
            v2 = @"PLAssetsdServiceErrorReadFailure";
            break;
          case 41007:
            v2 = @"PLAssetsdServiceErrorWriteFailure";
            break;
          case 41008:
            v2 = @"PLAssetsdServiceErrorInvalidParameter";
            break;
          case 41009:
            v2 = @"PLAssetsdServiceErrorMissingEntitlement";
            break;
          case 41010:
            v2 = @"PLAssetsdServiceErrorAuthorizationFailed";
            break;
          case 41011:
            v2 = @"PLAssetsdServiceErrorTCCAuthorizationDenied";
            break;
          case 41012:
            v2 = @"PLAssetsdServiceErrorRequiresOpenLibrary";
            break;
          case 41013:
            v2 = @"PLAssetsdServiceErrorRequiresLibraryUpgrade";
            break;
          case 41014:
            v2 = @"PLAssetsdServiceErrorBookmarkResolutionFailed";
            break;
          case 41015:
            v2 = @"PLAssetsdServiceErrorLibraryDirectoryNotFound";
            break;
          case 41017:
            v2 = @"PLAssetsdServiceErrorNoSSBAvailble";
            break;
          case 41018:
            v2 = @"PLAssetsdServiceErrorRelinquishingLibraryBundleToWriter";
            break;
          case 41019:
            v2 = @"PLAssetsdServiceErrorSwitchingSystemPhotoLibrary";
            break;
          case 41020:
            v2 = @"PLAssetsdServiceErrorRebuildRequested";
            break;
          case 41021:
            v2 = @"PLAssetsdServiceErrorShutdownRequested";
            break;
          case 41022:
            v2 = @"PLAssetsdServiceErrorNoCloudPhotoLibraryManager";
            break;
          case 41023:
            v2 = @"PLAssetsdServiceErrorClientNormalClose";
            break;
          case 41024:
            v2 = @"PLAssetsdServiceErrorClientDealloc";
            break;
          case 41025:
            v2 = @"PLAssetsdServiceErrorClientRequestedCloseAndDeleteLibrary";
            break;
          case 41026:
            v2 = @"PLAssetsdServiceErrorLibraryFilesystemDeleteFailed";
            break;
          case 41027:
            v2 = @"PLAssetsdServiceErrorSandboxExtensionConsumeFailed";
            break;
          case 41028:
            v2 = @"PLAssetsdServiceErrorSandboxExtensionCreateFailed";
            break;
          case 41029:
            v2 = @"PLAssetsdServiceErrorClientRequestedCloseLibrary";
            break;
          case 41030:
            v2 = @"PLAssetsdServiceErrorDataVaultRequiresClientSandboxOrEntitlement";
            break;
          case 41031:
            v2 = @"PLAssetsdServiceErrorOperationCancelled";
            break;
          case 41032:
            v2 = @"PLAssetsdServiceErrorUnsupportedDeviceLibraryConfigurationChange";
            break;
          case 41033:
            v2 = @"PLAssetsdServiceErrorRegisteringAppLibrary";
            break;
          default:
            goto LABEL_197;
        }

        goto LABEL_361;
      }

      switch(a1)
      {
        case 42001:
          v2 = @"PLAssetsdServiceErrorImageWriterNoData";
          goto LABEL_361;
        case 42002:
          v2 = @"PLAssetsdServiceErrorImageWriterJobQueueFull";
          goto LABEL_361;
        case 43001:
          v2 = @"PLLibraryServiceStateUnknownError";
          goto LABEL_361;
      }

LABEL_197:
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown PL error code %td", a1];
      goto LABEL_361;
    }

    if (a1 <= 45700)
    {
      if (a1 > 44003)
      {
        if (a1 <= 45001)
        {
          if (a1 == 44004)
          {
            v2 = @"PLAssetsdClientErrorSandboxExtensionCreateFailed";
            goto LABEL_361;
          }

          if (a1 == 45001)
          {
            v2 = @"PLPhotosDatabaseLoadFailed";
            goto LABEL_361;
          }
        }

        else
        {
          switch(a1)
          {
            case 45002:
              v2 = @"PLPhotosErrorLibraryAccessUserDenied";
              goto LABEL_361;
            case 45003:
              v2 = @"PLPhotosErrorLocaleChanged";
              goto LABEL_361;
            case 45700:
              v2 = @"PLPhotosErrorNilParameter";
              goto LABEL_361;
          }
        }
      }

      else
      {
        if (a1 > 44000)
        {
          if (a1 == 44001)
          {
            v2 = @"PLAssetsdClientErrorUnknown";
          }

          else if (a1 == 44002)
          {
            v2 = @"PLAssetsdClientErrorInvalidParameter";
          }

          else
          {
            v2 = @"PLAssetsdClientErrorSandboxExtensionConsumeFailed";
          }

          goto LABEL_361;
        }

        if (a1 == 43002)
        {
          v2 = @"PLLibraryServiceStateInvalidError";
          goto LABEL_361;
        }

        if (a1 == 43003)
        {
          v2 = @"PLLibraryServiceStateTerminatingError";
          goto LABEL_361;
        }
      }

      goto LABEL_197;
    }

    switch(a1)
    {
      case 45998:
        v2 = @"PLPhotosErrorFeatureDisabledServerSide";
        break;
      case 45999:
        v2 = @"PLPhotosErrorPlatformDisabled";
        break;
      case 46000:
        goto LABEL_197;
      case 46001:
        v2 = @"PLPhotosErrorLibraryUnsupported";
        break;
      case 46002:
        v2 = @"PLPhotosErrorUnknownLibraryState";
        break;
      case 46003:
        v2 = @"PLPhotosErrorPostMigration";
        break;
      case 46004:
        v2 = @"PLPhotosErrorLibraryBookmarkResolutionFailed";
        break;
      case 46005:
        v2 = @"PLPhotosErrorNoPersistentStores";
        break;
      case 46006:
        v2 = @"PLPhotosErrorLibraryTooNew";
        break;
      case 46007:
        v2 = @"PLPhotosErrorLibraryRequiresMigration";
        break;
      case 46008:
        v2 = @"PLPhotosErrorLightweightMigrationFailed";
        break;
      case 46009:
        v2 = @"PLPhotosErrorLibraryCannotOpen";
        break;
      case 46010:
        v2 = @"PLPhotosErrorExclusiveLockFailed";
        break;
      case 46011:
        v2 = @"PLPhotosErrorLibraryTooOld";
        break;
      case 46012:
        v2 = @"PLPhotosErrorLibraryVolumeUnmountRequested";
        break;
      case 46013:
        v2 = @"PLPhotosErrorStagedMigrationFailed";
        break;
      case 46014:
        v2 = @"PLPhotosErrorBackgroundMigrationFailed";
        break;
      case 46015:
        v2 = @"PLPhotosErrorLibraryInTimeMachineBackupLocation";
        break;
      case 46016:
        v2 = @"PLPhotosErrorUserPreventedRebuild";
        break;
      case 46017:
        v2 = @"PLPhotosErrorLibraryInFileProviderSyncRoot";
        break;
      case 46018:
        v2 = @"PLPhotosErrorLibraryCreationFailed";
        break;
      case 46019:
        v2 = @"PLPhotosErrorUnsafeLibraryShutdownRequested";
        break;
      case 46020:
        v2 = @"PLPhotosErrorLibraryClientsUninstalled";
        break;
      case 46021:
        v2 = @"PLPhotosErrorPreSchemaMigrationFailed";
        break;
      default:
        if (a1 == 45701)
        {
          v2 = @"PLPhotosErrorMissingData";
        }

        else
        {
          if (a1 != 45702)
          {
            goto LABEL_197;
          }

          v2 = @"PLPhotosErrorChangeNotSupported";
        }

        break;
    }
  }

LABEL_361:

  return v2;
}

BOOL PLIsLowDiskSpaceError(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E696A368]];

  if ([v2 length])
  {
    memset(&v12, 0, sizeof(v12));
    if (!statvfs([v2 fileSystemRepresentation], &v12))
    {
      v10 = v12.f_frsize * v12.f_bavail;
      v9 = v10 < +[PLFileSystemCapabilities minimumAvailableBytesRequiredForLibraryOpen];
      goto LABEL_8;
    }

    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 lastPathComponent];
      v5 = [v4 UTF8String];
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 136315650;
      v14 = v5;
      v15 = 1024;
      v16 = v6;
      v17 = 2080;
      v18 = v8;
      _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "failed to stat the filesytem for library: %s. Error (%d) %s", buf, 0x1Cu);
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

uint64_t PLPhotosErrorCodeFromUnderlyingError(void *a1, uint64_t a2)
{
  v3 = a1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = a2;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __PLPhotosErrorCodeFromUnderlyingError_block_invoke;
  v20[3] = &unk_1E79320E0;
  v20[4] = &v21;
  v20[5] = &v25;
  v4 = MEMORY[0x1AC5925C0](v20);
  v5 = [v3 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x1E696A250]];

  if (v6)
  {
    v7 = [v3 code];
    v8 = 46104;
    if (v7 == 257 || v7 == 513)
    {
      goto LABEL_11;
    }

    if (v7 != 640)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v9 = [v3 domain];
  v10 = [v9 isEqualToString:*MEMORY[0x1E696A798]];

  if (v10)
  {
    v11 = [v3 code];
    v8 = 46104;
    if (v11 == 1 || v11 == 13)
    {
      goto LABEL_11;
    }

    if (v11 != 28)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v17 = [v3 domain];
  v18 = [v17 isEqualToString:@"NSSQLiteErrorDomain"];

  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = [v3 code];
  if (v19 == 3)
  {
    v8 = 46104;
    goto LABEL_11;
  }

  if (v19 == 11)
  {
    v8 = 46526;
    goto LABEL_11;
  }

  if (v19 == 13 && PLIsLowDiskSpaceError(v3))
  {
LABEL_10:
    v8 = 46516;
LABEL_11:
    v4[2](v4, v8);
  }

LABEL_12:
  if ((v26[3] & 1) == 0)
  {
    v12 = [v3 userInfo];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v13)
    {
      v14 = PLPhotosErrorCodeFromUnderlyingError(v13, a2);
      v22[3] = v14;
    }
  }

  v15 = v22[3];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v15;
}

void sub_1AAA677D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __PLPhotosErrorCodeFromUnderlyingError_block_invoke(uint64_t result, uint64_t a2)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

uint64_t PLUnderlyingErrorHasOSDomain(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E696A250]])
  {
    goto LABEL_4;
  }

  v3 = [v1 domain];
  if ([v3 isEqualToString:*MEMORY[0x1E696A798]])
  {

LABEL_4:
    HasOSDomain = 1;
    goto LABEL_5;
  }

  v6 = [v1 domain];
  v7 = [v6 isEqualToString:@"NSSQLiteErrorDomain"];

  if (v7)
  {
    HasOSDomain = 1;
    goto LABEL_6;
  }

  v8 = [v1 userInfo];
  v2 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v2)
  {
    HasOSDomain = PLUnderlyingErrorHasOSDomain(v2);
  }

  else
  {
    HasOSDomain = 0;
  }

LABEL_5:

LABEL_6:
  return HasOSDomain;
}

uint64_t PLUnderlyingErrorCodeForDomain(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:v3];

  if (v6)
  {
    v7 = [v4 code];
  }

  else
  {
    v8 = [v4 userInfo];

    v4 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (!v4)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v7 = PLUnderlyingErrorCodeForDomain(v4, v3);
  }

  v9 = v7;
LABEL_6:

  return v9;
}

uint64_t PLIsErrorFileNotFound(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E696A250];
  if (PLIsErrorEqualToCode(v1, *MEMORY[0x1E696A250], 260) & 1) != 0 || (PLIsErrorEqualToCode(v1, v2, 4))
  {
    v3 = 1;
  }

  else
  {
    v3 = PLIsErrorEqualToCode(v1, *MEMORY[0x1E696A798], 2);
  }

  return v3;
}

uint64_t PLIsErrorEqualToXPCCode(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = *MEMORY[0x1E696A250];
  if (PLIsErrorEqualToCode(v3, *MEMORY[0x1E696A250], a2))
  {
    v5 = 1;
  }

  else if (PLIsErrorEqualToCode(v3, @"com.apple.photos.error", 41002))
  {
    v6 = [v3 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v5 = PLIsErrorEqualToCode(v7, v4, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t PLIsErrorEqualToSQLiteCode(void *a1, uint64_t a2)
{
  v3 = a1;
  if ((PLIsErrorEqualToCode(v3, @"NSSQLiteErrorDomain", a2) & 1) != 0 || ([v3 userInfo], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", @"NSSQLiteErrorDomain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "integerValue"), v5, v4, v6 == a2))
  {
    v7 = 1;
  }

  else
  {
    v8 = [v3 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v9)
    {
      v7 = PLIsErrorEqualToSQLiteCode(v9, a2);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

uint64_t PLErrorCreate(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A278]];

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.photos.error" code:a1 userInfo:v8];

  return v9;
}

id PLUnderlyingErrorWithDomain(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E696AA08];
    v9 = v5;
    while (1)
    {
      v10 = [v9 domain];
      v11 = [v10 isEqualToString:v4];

      if (v11)
      {
        break;
      }

      v12 = [v9 userInfo];
      v13 = [v12 objectForKeyedSubscript:v8];

      v14 = 0;
      if (v13)
      {
        v9 = v13;
        if (v7++ < 9)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    v14 = v9;
    v13 = v14;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

LABEL_10:

  return v14;
}

BOOL PLErrorOrUnderlyingErrorHasDomainAndCode(void *a1, void *a2, uint64_t a3)
{
  v3 = PLUnderlyingErrorThatHasDomainAndCode(a1, a2, a3);
  v4 = v3 != 0;

  return v4;
}

id PLTopLevelErrorAndAllUnderlyingErrors(void *a1)
{
  v1 = MEMORY[0x1E695DFA0];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 addObject:v2];
  PLRecursiveAddUnderlyingErrorsToOrderedSet(v2, v3);

  v4 = [v3 array];

  return v4;
}

void PLRecursiveAddUnderlyingErrorsToOrderedSet(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 underlyingErrors];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v3 containsObject:v9] & 1) == 0)
        {
          [v3 addObject:v9];
          PLRecursiveAddUnderlyingErrorsToOrderedSet(v9, v3);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

id PLErrorCodeStringOfTopLevelErrorAndAllUnderlyingErrors(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = PLTopLevelErrorAndAllUnderlyingErrors(v1);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ((v7 & 1) == 0)
        {
          [v2 appendFormat:@"_"];
        }

        [v2 appendFormat:@"%ld", objc_msgSend(v9, "code")];
        v7 = 0;
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = 0;
    }

    while (v5);
  }

  return v2;
}

uint64_t PLIsErrorOrUnderlyingErrorFileExists(void *a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E696A798];
  v7[0] = *MEMORY[0x1E696A250];
  v7[1] = v1;
  v8[0] = &unk_1F1F912E0;
  v8[1] = &unk_1F1F912F8;
  v2 = MEMORY[0x1E695DF20];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = PFErrorOrUnderlyingErrorMatchesCodesByDomain();

  return v5;
}

id PLSanitizedErrorForXPC(void *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v42 = v1;
    v2 = v1;
    v3 = [v2 userInfo];
    v4 = *MEMORY[0x1E696AA08];
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v41 = v5;
    if (v5)
    {
      v6 = PLSanitizedErrorForXPC(v5);
      if (v5 != v6)
      {
        v7 = [v2 userInfo];
        v8 = [v7 mutableCopy];

        [v8 setObject:v6 forKeyedSubscript:v4];
        v9 = MEMORY[0x1E696ABC0];
        v10 = [v2 domain];
        v11 = [v9 errorWithDomain:v10 code:objc_msgSend(v2 userInfo:{"code"), v8}];

        v2 = v11;
      }
    }

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v13 = [v2 userInfo];
    v14 = [v13 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v50;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v50 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v49 + 1) + 8 * i);
          if (([v18 isEqualToString:v4] & 1) == 0)
          {
            v19 = [v2 userInfo];
            v20 = [v19 objectForKeyedSubscript:v18];

            if (!_PLErrorUserInfoObjectIsSafeForXPC(v20) || [v20 conformsToProtocol:&unk_1F1FAE9F0] && (_PLErrorUserInfoContainerIsSafeForXPC(v20) & 1) == 0)
            {
              [v12 addObject:v18];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v15);
    }

    if ([v12 count])
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v22 = [v2 domain];
      v23 = [v22 isEqualToString:*MEMORY[0x1E696A250]];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v24 = [v2 userInfo];
      v44 = [v24 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v44)
      {
        v25 = *v46;
        v43 = *v46;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v46 != v25)
            {
              objc_enumerationMutation(v24);
            }

            v27 = *(*(&v45 + 1) + 8 * j);
            if ([v12 containsObject:v27])
            {
              if (v23)
              {
                v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_<stripped>", v27];
                [v21 setObject:@"<stripped>" forKeyedSubscript:v28];
              }

              else
              {
                v28 = [v2 userInfo];
                [v28 objectForKeyedSubscript:v27];
                v30 = v24;
                v31 = v12;
                v32 = v2;
                v34 = v33 = v23;
                v35 = [v34 description];
                v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_description", v27];
                [v21 setObject:v35 forKeyedSubscript:v36];

                v23 = v33;
                v2 = v32;
                v12 = v31;
                v24 = v30;
                v25 = v43;
              }
            }

            else
            {
              v28 = [v2 userInfo];
              v29 = [v28 objectForKeyedSubscript:v27];
              [v21 setObject:v29 forKeyedSubscript:v27];
            }
          }

          v44 = [v24 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v44);
      }

      v37 = MEMORY[0x1E696ABC0];
      v38 = [v2 domain];
      v39 = [v37 errorWithDomain:v38 code:objc_msgSend(v2 userInfo:{"code"), v21}];

      v2 = v39;
    }

    v1 = v42;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL _PLErrorUserInfoObjectIsSafeForXPC(void *a1)
{
  v1 = a1;
  v2 = v1;
  v8 = 1;
  if (v1)
  {
    if (![v1 conformsToProtocol:&unk_1F1F92CE8] || (v3 = MEMORY[0x1E695DFD8], v4 = v2, v5 = objc_msgSend([v3 alloc], "initWithArray:", &unk_1F1F91310), v6 = objc_opt_class(), v4, NSStringFromClass(v6), v7 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v5, "containsObject:", v7), v7, v5, v6))
    {
      v8 = 0;
    }
  }

  return v8;
}

uint64_t _PLErrorUserInfoContainerIsSafeForXPC(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (!___PLErrorUserInfoContainerIsSafeForXPC_block_invoke(v8) || !_PLErrorUserInfoObjectIsSafeForXPC(v8))
        {
          goto LABEL_16;
        }

        if (isKindOfClass)
        {
          v9 = [v3 objectForKeyedSubscript:{v8, v13}];
          if ((___PLErrorUserInfoContainerIsSafeForXPC_block_invoke(v9) & 1) == 0)
          {

LABEL_16:
            v11 = 0;
            goto LABEL_17;
          }

          IsSafeForXPC = _PLErrorUserInfoObjectIsSafeForXPC(v9);

          if (!IsSafeForXPC)
          {
            goto LABEL_16;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_17:

  return v11;
}

double DCIMScaledSizeForFormatCore(uint64_t a1, double a2, double a3)
{
  [PLAssetFormatsCore sizeForFormat:a1];

  return PLScaledSizeWithinSizeCore(a2, a3, v5, v6);
}

double PLScaledSizeWithinSizeCore(double a1, double a2, double a3, double a4)
{
  if (a2 == 0.0)
  {
    return *MEMORY[0x1E695F060];
  }

  if (a3 >= a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = a4;
  }

  v6 = a1 / a2;
  result = v5;
  v8 = v6;
  if (a1 <= a2)
  {
    return rint(v8 * result);
  }

  return result;
}

double PLScaleDimensionsForThumbnailCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a5 < 1 || a6 <= 0)
  {
    return *MEMORY[0x1E695F060];
  }

  if (a5 >= a6)
  {
    v6 = a6;
  }

  else
  {
    v6 = a5;
  }

  if (a5 <= a6)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (v7 > a1)
  {
    v8 = v6 * a1 / v7;
    if (v8 < a2)
    {
      v8 = v6;
      a1 = v7;
      if (v6 > a2)
      {
        a1 = v7 * a2 / v6;
        if (a1 <= a3)
        {
          v8 = a2;
          if (a4 > 1)
          {
            goto LABEL_20;
          }

          goto LABEL_27;
        }

        v8 = v6 * a3 / v7;
        if (v8 <= 1)
        {
          v8 = 1;
        }

        a1 = a3;
      }
    }

    v9 = a4 > 1;
    if (a4 >= 2 && v8 > a2)
    {
      v8 = v8 / a4 * a4;
      v9 = 1;
    }

    if (v9)
    {
LABEL_20:
      if (a1 > a2)
      {
        v10 = a4 - 1;
        if (v8 != a2)
        {
          v10 = 0;
        }

        v7 = (a1 + v10) / a4 * a4;
        goto LABEL_28;
      }
    }

LABEL_27:
    v7 = a1;
    goto LABEL_28;
  }

  v8 = v6;
LABEL_28:
  if (a5 >= a6)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

id stringWithoutTrailingSlashes(void *a1)
{
  v1 = a1;
  if ([v1 length] >= 2)
  {
    while ([v1 hasSuffix:@"/"])
    {
      v2 = [v1 substringToIndex:{objc_msgSend(v1, "length") - 1}];

      v1 = v2;
      if ([v2 length] <= 1)
      {
        goto LABEL_6;
      }
    }
  }

  v2 = v1;
LABEL_6:

  return v2;
}

__CFString *PLStringFromPLPhotoLibrarySubPathType(uint64_t a1)
{
  if (a1 < 0xB)
  {
    return off_1E79321B8[a1];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid type %d: %s", a1, "NSString * _Nonnull PLStringFromPLPhotoLibrarySubPathType(PLPhotoLibrarySubPathType)", v1, v2}];
  return @"PLPhotoLibrarySubPathTypeLast";
}

__CFString *PLStringFromPLPhotoLibrarySubPathLeafType(uint64_t a1)
{
  if (a1 < 4)
  {
    return off_1E7932210[a1];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid type %d: %s", a1, "NSString * _Nonnull PLStringFromPLPhotoLibrarySubPathLeafType(PLPhotoLibrarySubPathLeafType)", v1, v2}];
  return @"PLPhotoLibrarySubPathLeafTypeLast";
}

__CFString *PLStringFromPLPhotoLibraryCacheSubPathType(uint64_t a1)
{
  if (a1 < 0x11)
  {
    return off_1E7932230[a1];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid type %d: %s", a1, "NSString * _Nonnull PLStringFromPLPhotoLibraryCacheSubPathType(PLPhotoLibraryCacheSubPathType)", v1, v2}];
  return @"PLPhotoLibraryCacheSubPathTypeLast";
}

__CFString *PLStringFromPLPhotoLibraryExternalPathType(uint64_t a1)
{
  if (a1 < 4)
  {
    return off_1E79322B8[a1];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid type %d: %s", a1, "NSString * _Nonnull PLStringFromPLPhotoLibraryExternalPathType(PLPhotoLibraryExternalPathType)", v1, v2}];
  return @"PLPhotoLibraryExternalPathTypeLast";
}

__CFString *PLStringFromPLPhotoLibraryInternalPathType(uint64_t a1)
{
  if (a1 < 8)
  {
    return off_1E79322D8[a1];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid type %d: %s", a1, "NSString * _Nonnull PLStringFromPLPhotoLibraryInternalPathType(PLPhotoLibraryInternalPathType)", v1, v2}];
  return @"PLPhotoLibraryInternalPathTypeLast";
}

__CFString *PLStringFromWellKnownPhotoLibraryIdentifier(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"PLWellKnownPhotoLibraryIdentifierNone";
  }

  else
  {
    return off_1E7932318[a1 - 1];
  }
}

void sub_1AAA6CF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11029(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA6D7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1AAA6EC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

BOOL PLPositionalTableIsValidIndexForReading(unint64_t a1, uint64_t a2)
{
  if (*(a2 + 12) == 1)
  {
    return a1 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *(a2 + 32) > a1;
  }
}

uint64_t PLDebugAssert(uint64_t a1, _BYTE *a2, const char *a3, const char *a4, const char *a5, uint64_t a6, int a7)
{
  v12 = MEMORY[0x1E69E9848];
  if (a2 && *a2)
  {
    fprintf(*MEMORY[0x1E69E9848], "Assertion failed: %s: %s");
  }

  else
  {
    fprintf(*MEMORY[0x1E69E9848], "Check failed: %s:");
  }

  if (a3)
  {
    fprintf(*v12, " %s", a3);
  }

  if (a4)
  {
    fprintf(*v12, " %s", a4);
  }

  if (a5)
  {
    fprintf(*v12, " file: %s", a5);
    if (a6 >= 1)
    {
      fprintf(*v12, ":%ld", a6);
    }
  }

  if (a7)
  {
    fprintf(*v12, " error: %d", a7);
  }

  v13 = *v12;

  return fputc(10, v13);
}

char *PLPhotoBakedFormatInfoForFormat(int a1)
{
  if (a1 == 1095)
  {
    return &_borderedFormatInfos;
  }

  v2 = &_borderedFormatInfos;
  v3 = 39;
  while (--v3)
  {
    v1 = (v2 + 44);
    v4 = v2[44];
    v2 += 44;
    if (v4 == a1)
    {
      return v1;
    }
  }

  return 0;
}

BOOL PLPhotoBakedFormatIsDynamicallySized(int a1)
{
  if (a1 == 1095)
  {
    v1 = &_borderedFormatInfos;
    return CGRectIsEmpty(*(v1 + 24));
  }

  else
  {
    v2 = &_borderedFormatInfos;
    v3 = 39;
    while (--v3)
    {
      v1 = (v2 + 44);
      v4 = v2[44];
      v2 += 44;
      if (v4 == a1)
      {
        return CGRectIsEmpty(*(v1 + 24));
      }
    }

    return 0;
  }
}

void sub_1AAA71554(_Unwind_Exception *a1)
{
  if (*(v2 - 192) == 1)
  {
    os_activity_scope_leave((v2 - 168));
  }

  if (*(v2 - 176))
  {
    v4 = PLRequestGetLog();
    v5 = v4;
    v6 = *(v2 - 176);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      Name = sel_getName(*(v2 - 152));
      *(v2 - 144) = 136446210;
      *(v1 + 52) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PLXPC Sync", "%{public}s", (v2 - 144), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA72B5C(_Unwind_Exception *a1)
{
  if (*(v1 - 176) == 1)
  {
    os_activity_scope_leave((v1 - 152));
  }

  if (*(v1 - 160))
  {
    v3 = PLRequestGetLog();
    v4 = v3;
    v5 = *(v1 - 160);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      Name = sel_getName(*(v1 - 136));
      *(v1 - 128) = 136446210;
      *(v1 - 124) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PLXPC Sync", "%{public}s", (v1 - 128), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA737DC(_Unwind_Exception *a1)
{
  if (*(v2 - 144) == 1)
  {
    os_activity_scope_leave((v2 - 120));
  }

  if (*(v2 - 128))
  {
    v4 = PLRequestGetLog();
    v5 = v4;
    v6 = *(v2 - 128);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      Name = sel_getName(*(v2 - 104));
      *(v2 - 96) = 136446210;
      *(v1 + 52) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PLXPC Sync", "%{public}s", (v2 - 96), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void _freeCGImageDataProviderBuffer(uint64_t a1)
{
  if (a1)
  {
    free(*a1);
    v2 = *(a1 + 8);
    *(a1 + 8) = 0;

    free(a1);
  }
}

CGColorSpaceRef ___create5551BGRACGImageFromImageData_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  _create5551BGRACGImageFromImageData_s_colorSpace = result;
  return result;
}

void sub_1AAA746BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11570(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA75348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AAA75B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AAA76AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11727(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA76FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11779(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA779A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *a30, os_signpost_id_t a31, os_activity_scope_state_s a32, SEL sel)
{
  if (a29 == 1)
  {
    os_activity_scope_leave(&a32);
  }

  if (a31)
  {
    v36 = PLRequestGetLog();
    v37 = v36;
    if (a31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      Name = sel_getName(sel);
      *(v34 - 112) = 136446210;
      *(v33 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v37, OS_SIGNPOST_INTERVAL_END, a31, "PLXPC Sync", "%{public}s", (v34 - 112), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA781FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, os_signpost_id_t a29, os_activity_scope_state_s a30, SEL sel)
{
  if (a27 == 1)
  {
    os_activity_scope_leave(&a30);
  }

  if (a29)
  {
    v34 = PLRequestGetLog();
    v35 = v34;
    if (a29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      Name = sel_getName(sel);
      *(v32 - 144) = 136446210;
      *(v31 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v35, OS_SIGNPOST_INTERVAL_END, a29, "PLXPC Sync", "%{public}s", (v32 - 144), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11826(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA786BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18, os_signpost_id_t a19, os_activity_scope_state_s a20, SEL sel)
{
  if (a17 == 1)
  {
    os_activity_scope_leave(&a20);
  }

  if (a19)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    if (a19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel);
      *(v21 - 96) = 136446210;
      *(v21 - 92) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v24, OS_SIGNPOST_INTERVAL_END, a19, "PLXPC Sync", "%{public}s", (v21 - 96), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11880(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA78DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, os_signpost_id_t a23, os_activity_scope_state_s a24, SEL sel, uint64_t a26, uint64_t a27, int buf)
{
  if (a21 == 1)
  {
    os_activity_scope_leave(&a24);
  }

  if (a23)
  {
    v30 = PLRequestGetLog();
    v31 = v30;
    if (a23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      Name = sel_getName(sel);
      buf = 136446210;
      *(v28 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v31, OS_SIGNPOST_INTERVAL_END, a23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA7937C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, os_signpost_id_t a23, os_activity_scope_state_s a24, SEL sel)
{
  if (a21 == 1)
  {
    os_activity_scope_leave(&a24);
  }

  if (a23)
  {
    v28 = PLRequestGetLog();
    v29 = v28;
    if (a23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      Name = sel_getName(sel);
      *(v26 - 112) = 136446210;
      *(v25 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v29, OS_SIGNPOST_INTERVAL_END, a23, "PLXPC Sync", "%{public}s", (v26 - 112), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA79924(_Unwind_Exception *a1)
{
  if (*(v2 - 160) == 1)
  {
    os_activity_scope_leave((v2 - 136));
  }

  if (*(v2 - 144))
  {
    v4 = PLRequestGetLog();
    v5 = v4;
    v6 = *(v2 - 144);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      Name = sel_getName(*(v2 - 120));
      *(v2 - 112) = 136446210;
      *(v1 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PLXPC Sync", "%{public}s", (v2 - 112), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA7A1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *a26, os_signpost_id_t a27, os_activity_scope_state_s a28, SEL sel, __int128 buf)
{
  if (a25 == 1)
  {
    os_activity_scope_leave(&a28);
  }

  if (a27)
  {
    v31 = PLRequestGetLog();
    v32 = v31;
    if (a27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v32, OS_SIGNPOST_INTERVAL_END, a27, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA7A71C(_Unwind_Exception *a1)
{
  if (*(v2 - 144) == 1)
  {
    os_activity_scope_leave((v2 - 120));
  }

  if (*(v2 - 128))
  {
    v4 = PLRequestGetLog();
    v5 = v4;
    v6 = *(v2 - 128);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      Name = sel_getName(*(v2 - 104));
      *(v2 - 96) = 136446210;
      *(v1 + 52) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PLXPC Sync", "%{public}s", (v2 - 96), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

id dataWithMappedContentsOfFileDescriptor(int a1)
{
  memset(&v6, 0, sizeof(v6));
  if (fstat(a1, &v6))
  {
    st_size = 0;
  }

  else
  {
    st_size = v6.st_size;
  }

  if (st_size < 1 || (v3 = mmap(0, st_size, 1, 1, a1, 0), v3 == -1))
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v3 length:st_size deallocator:&__block_literal_global_164_11945];
  }

  return v4;
}

void sub_1AAA7B498(_Unwind_Exception *a1)
{
  if (*(v2 - 208) == 1)
  {
    os_activity_scope_leave((v2 - 184));
  }

  if (*(v2 - 192))
  {
    v4 = PLRequestGetLog();
    v5 = v4;
    v6 = *(v2 - 192);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      Name = sel_getName(*(v2 - 168));
      *(v2 - 160) = 136446210;
      *(v1 + 52) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PLXPC Sync", "%{public}s", (v2 - 160), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA7BBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *a34, os_signpost_id_t a35, os_activity_scope_state_s a36, SEL sel)
{
  if (a33 == 1)
  {
    os_activity_scope_leave(&a36);
  }

  if (a35)
  {
    v40 = PLRequestGetLog();
    v41 = v40;
    if (a35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      Name = sel_getName(sel);
      *(v38 - 160) = 136446210;
      *(v37 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v41, OS_SIGNPOST_INTERVAL_END, a35, "PLXPC Sync", "%{public}s", (v38 - 160), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA7D3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *a34, os_signpost_id_t a35, os_activity_scope_state_s a36, SEL sel)
{
  if (a33 == 1)
  {
    os_activity_scope_leave(&a36);
  }

  if (a35)
  {
    v40 = PLRequestGetLog();
    v41 = v40;
    if (a35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      Name = sel_getName(sel);
      *(v38 - 176) = 136446210;
      *(v37 + 52) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v41, OS_SIGNPOST_INTERVAL_END, a35, "PLXPC Sync", "%{public}s", (v38 - 176), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA7DB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *a34, os_signpost_id_t a35, os_activity_scope_state_s a36, SEL sel)
{
  if (a33 == 1)
  {
    os_activity_scope_leave(&a36);
  }

  if (a35)
  {
    v40 = PLRequestGetLog();
    v41 = v40;
    if (a35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      Name = sel_getName(sel);
      *(v38 - 160) = 136446210;
      *(v37 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v41, OS_SIGNPOST_INTERVAL_END, a35, "PLXPC Sync", "%{public}s", (v38 - 160), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA7E268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *a34, os_signpost_id_t a35, os_activity_scope_state_s a36, SEL sel)
{
  if (a33 == 1)
  {
    os_activity_scope_leave(&a36);
  }

  if (a35)
  {
    v40 = PLRequestGetLog();
    v41 = v40;
    if (a35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      Name = sel_getName(sel);
      *(v38 - 160) = 136446210;
      *(v37 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v41, OS_SIGNPOST_INTERVAL_END, a35, "PLXPC Sync", "%{public}s", (v38 - 160), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1AAA804A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1AAA80710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12105(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AAA816E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12793(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12846(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
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

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}