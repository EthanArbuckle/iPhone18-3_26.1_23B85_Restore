id SDError(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDB9FA0];
  v4 = a2;
  v5 = [v3 alloc];
  v10 = @"description";
  v11[0] = v4;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 initWithDomain:@"SpotlightDiagnosticErrorDomain" code:a1 userInfo:v6];
  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

uint64_t SDIsAppleInternalInstall()
{
  if (SDIsAppleInternalInstall_onceToken != -1)
  {
    SDIsAppleInternalInstall_cold_1();
  }

  return SDIsAppleInternalInstall_isInternalInstall;
}

void __SDIsAppleInternalInstall_block_invoke()
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = [v1 isEqualToString:@"Internal"];
  }

  else
  {
    v0 = 0;
  }

  SDIsAppleInternalInstall_isInternalInstall = v0;
}

uint64_t SDGetActiveUID()
{
  v0 = getpwnam("mobile");
  if (v0)
  {
    return v0->pw_uid;
  }

  else
  {
    return 501;
  }
}

void sub_29EC16BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint8_t buf)
{
  if (a2 == 1)
  {
    v58 = objc_begin_catch(exception_object);
    v59 = [v58 reason];
    v60 = SDError(-5001, v59);

    v64 = [v58 reason];
    NSLog(&cfstr_Error.isa);

    v61 = SDLogCategoryClient();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = [v58 reason];
      __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_cold_1(v62, &buf, v61);
    }

    v63 = *(v57 + 48);
    if (v63)
    {
      (*(v63 + 16))(v63, 0, v60);
    }

    objc_end_catch();
    JUMPOUT(0x29EC16B88);
  }

  _Unwind_Resume(exception_object);
}

id SDLogCategoryClient()
{
  if (SDLogCategoryClient_onceToken != -1)
  {
    SDLogCategoryClient_cold_1();
  }

  v1 = SDLogCategoryClient_clientLog;

  return v1;
}

uint64_t __SDLogCategoryClient_block_invoke()
{
  SDLogCategoryClient_clientLog = os_log_create("com.apple.spotlight.diagnostic", "Client");

  return MEMORY[0x2A1C71028]();
}

id SDLogCategoryExtension()
{
  if (SDLogCategoryExtension_onceToken != -1)
  {
    SDLogCategoryExtension_cold_1();
  }

  v1 = SDLogCategoryExtension_extensionLog;

  return v1;
}

uint64_t __SDLogCategoryExtension_block_invoke()
{
  SDLogCategoryExtension_extensionLog = os_log_create("com.apple.spotlight.diagnostic", "Extension");

  return MEMORY[0x2A1C71028]();
}

id SDLogCategoryHelper()
{
  if (SDLogCategoryHelper_onceToken != -1)
  {
    SDLogCategoryHelper_cold_1();
  }

  v1 = SDLogCategoryHelper_helperLog;

  return v1;
}

uint64_t __SDLogCategoryHelper_block_invoke()
{
  SDLogCategoryHelper_helperLog = os_log_create("com.apple.spotlight.diagnostic", "Helper");

  return MEMORY[0x2A1C71028]();
}

id SDLogCategoryUserHelper()
{
  if (SDLogCategoryUserHelper_onceToken != -1)
  {
    SDLogCategoryUserHelper_cold_1();
  }

  v1 = SDLogCategoryUserHelper_userHelperLog;

  return v1;
}

uint64_t __SDLogCategoryUserHelper_block_invoke()
{
  SDLogCategoryUserHelper_userHelperLog = os_log_create("com.apple.spotlight.diagnostic", "UserHelper");

  return MEMORY[0x2A1C71028]();
}