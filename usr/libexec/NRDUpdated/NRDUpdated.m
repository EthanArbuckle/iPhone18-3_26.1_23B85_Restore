uint64_t edt_supports_recoveryos(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (edt_supports_recoveryos_onceToken != -1)
  {
    edt_supports_recoveryos_cold_1();
  }

  v9 = edt_supports_recoveryos_supports;
  if ((edt_supports_recoveryos_supports & 1) == 0 && a1)
  {
    v9 = 1;
    logfunction(&unk_10000FA0E, 1, @"supports-recoveryos is false, but returning true on internal\n", a4, a5, a6, a7, a8, v11);
  }

  return v9;
}

void __edt_supports_recoveryos_block_invoke(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/product");
  if (v1)
  {
    v7 = v1;
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"supports-recoveryos", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v14 = CFProperty;
      v15 = CFGetTypeID(CFProperty);
      if (v15 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(v14);
        Length = CFDataGetLength(v14);
        if (!Length || Length <= 4 && memcmp(BytePtr, &_block_invoke_kZeroBytes, Length))
        {
          edt_supports_recoveryos_supports = 1;
        }

        logfunction(&unk_10000FA0E, 1, @"supports-recoveryos is %d in EDT\n", v23, v24, v25, v26, v27, edt_supports_recoveryos_supports);
      }

      else
      {
        logfunction(&unk_10000FA0E, 1, @"Expected supports-recoveryos to be of data type\n", v16, v17, v18, v19, v20, v28);
      }

      CFRelease(v14);
    }

    else
    {
      logfunction(&unk_10000FA0E, 1, @"Did not find supports-recoveryos property for product\n", v9, v10, v11, v12, v13, v28);
    }

    IOObjectRelease(v7);
  }

  else
  {

    logfunction(&unk_10000FA0E, 1, @"Failed to find product entry in EDT\n", v2, v3, v4, v5, v6, v30);
  }
}

void logfunction(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a3, &a9);
  NSLog(@"%s: %@", a1, v10);
  CFRelease(v10);
}

id nrdSharedLogger()
{
  if (nrdSharedLogger_pred != -1)
  {
    nrdSharedLogger_cold_1();
  }

  v1 = nrdSharedLogger___instance;

  return v1;
}

void __nrdSharedLogger_block_invoke(id a1)
{
  nrdSharedLogger___instance = os_log_create("com.apple.MobileSoftwareUpdate", "NRD");

  _objc_release_x1();
}

uint64_t load_trust_cache_at_path(const char *a1, NSError **a2)
{
  v3 = a1;
  memset(&v66, 0, sizeof(v66));
  connect = 0;
  v4 = open(a1, 0);
  if (v4 < 0)
  {
    v16 = *__error();
    v78 = NSDebugDescriptionErrorKey;
    v17 = __error();
    v79 = [NSString stringWithFormat:@"open() failed: %s", strerror(*v17)];
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v16 userInfo:[NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1]];
    v18 = __error();
    strerror(*v18);
    logfunction(&unk_10000FA0E, 1, @"Could not open trust cache at path %s: %s.\n", v19, v20, v21, v22, v23, v3);
    v24 = MGCopyAnswer();
    if (v24 == kCFBooleanFalse && (bzero(__s1, 0x400uLL), v64 = 1024, !sysctlbyname("kern.bootargs", __s1, &v64, 0, 0)) && strstr(__s1, "msu_eng_brain=1"))
    {
      v15 = 1;
      logfunction(&unk_10000FA0E, 1, @"System policy for update brain is in effect.\n", v53, v54, v55, v56, v57, outputStructa);
      v8 = 0;
    }

    else
    {
      v15 = 0;
    }

    CFRelease(v24);
    goto LABEL_9;
  }

  v5 = v4;
  if (fstat(v4, &v66))
  {
    v6 = *__error();
    v75 = NSDebugDescriptionErrorKey;
    v7 = __error();
    v76 = [NSString stringWithFormat:@"fstat() failed: %s", strerror(*v7)];
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:[NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1]];
    v9 = __error();
    outputStructb = strerror(*v9);
    logfunction(&unk_10000FA0E, 1, @"Could not fstat trust cache: %s\n", v10, v11, v12, v13, v14, outputStructb);
LABEL_4:
    close(v5);
    v15 = 0;
    goto LABEL_9;
  }

  v26 = mmap(0, v66.st_size, 1, 1026, v5, 0);
  if (v26 == -1)
  {
    v39 = *__error();
    v73 = NSDebugDescriptionErrorKey;
    v40 = __error();
    v74 = [NSString stringWithFormat:@"mmap() failed: %s", strerror(*v40)];
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v39 userInfo:[NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1]];
    v41 = __error();
    strerror(*v41);
    logfunction(&unk_10000FA0E, 1, @"Could not map file %s: %s\n", v42, v43, v44, v45, v46, v3);
    goto LABEL_4;
  }

  v27 = v26;
  v28 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v28);
  v30 = MatchingService;
  if (!MatchingService)
  {
    v71 = NSDebugDescriptionErrorKey;
    v72 = @"Could not find AppleMobileFileIntegrity service";
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:3 userInfo:[NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1]];
    v52 = @"Could not find AppleMobileFileIntegrity service\n";
LABEL_22:
    logfunction(&unk_10000FA0E, 1, v52, v47, v48, v49, v50, v51, outputStruct);
    goto LABEL_23;
  }

  v31 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
  if (!v31)
  {
    v58 = IOConnectCallMethod(connect, 2u, 0, 0, v27, v66.st_size, 0, 0, 0, 0);
    if (!v58)
    {
      v8 = 0;
      v15 = 1;
      goto LABEL_24;
    }

    v59 = v58;
    v60 = v58;
    v67 = NSDebugDescriptionErrorKey;
    v68 = [NSString stringWithFormat:@"IOConnectCallMethod() failed: 0x%x", v58];
    v8 = [NSError errorWithDomain:@"IOKitErrorDomain" code:v60 userInfo:[NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1]];
    outputStruct = v59;
    v52 = @"Unable to load trust cache: 0x%x\n";
    goto LABEL_22;
  }

  v32 = v31;
  v33 = v31;
  v69 = NSDebugDescriptionErrorKey;
  v70 = [NSString stringWithFormat:@"IOServiceOpen() failed: 0x%x", v31];
  v8 = [NSError errorWithDomain:@"IOKitErrorDomain" code:v33 userInfo:[NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1]];
  logfunction(&unk_10000FA0E, 1, @"Unable to open user client: 0x%x\n", v34, v35, v36, v37, v38, v32);
LABEL_23:
  v15 = 0;
LABEL_24:
  close(v5);
  munmap(v27, v66.st_size);
  if (connect)
  {
    IOServiceClose(connect);
  }

  if (v30)
  {
    IOObjectRelease(v30);
  }

LABEL_9:
  if (a2)
  {
    *a2 = v8;
  }

  return v15;
}

void sub_100001A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSErrorUserInfoKey a10, const __CFString *a11, const __CFString *a12, id a13)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    a10 = NSDebugDescriptionErrorKey;
    a11 = @"ExceptionDescription";
    a12 = @"Exception invoking NRDUpdateBrain";
    a13 = [v14 description];
    (*(v13 + 16))(v13, [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:113 userInfo:[NSDictionary dictionaryWithObjects:&a12 forKeys:&a10 count:2]]);
    objc_end_catch();
    JUMPOUT(0x100001A38);
  }

  _Unwind_Resume(exception_object);
}

void sub_100001EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100004860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000066D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose((v9 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = nrdSharedLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "Oct 11 2025";
    *&buf[12] = 2082;
    *&buf[14] = "00:17:07";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting NRDUpdated built %{public}s %{public}s", buf, 0x16u);
  }

  v4 = dispatch_get_global_queue(21, 0);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v4);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = __setupSignalHandlers_block_invoke;
  v13 = &__block_descriptor_36_e5_v8__0l;
  v14 = 15;
  dispatch_source_set_event_handler(v5, buf);
  dispatch_resume(v5);
  v6 = setupSignalHandlers_signalSources_0;
  setupSignalHandlers_signalSources_0 = v5;

  signal(15, 1);
  v7 = nrdSharedLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = 15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[SIGNAL_HANDLER] signal handler has been registered for signal: %d", v11, 8u);
  }

  v8 = +[NRDUpdateDaemonServerImpl sharedInstance];
  [v8 runUntilExit];

  v9 = nrdSharedLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Exiting NRDUpdated", buf, 2u);
  }

  return 0;
}

void __setupSignalHandlers_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrdSharedLogger();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v1 == 15)
  {
    if (v3)
    {
      LOWORD(v4[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[SIGNAL_HANDLER] received SIGTERM, exiting", v4, 2u);
    }

    exit(1);
  }

  if (v3)
  {
    v4[0] = 67109120;
    v4[1] = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[SIGNAL_HANDLER] unhandled signal: %d (ignored)", v4, 8u);
  }
}