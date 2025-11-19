@interface NSTask(WiFiVelocity)
+ (BOOL)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputData:errorData:launchHandler:didLaunch:error:;
+ (BOOL)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFileHandle:errorFileHandle:launchHandler:didLaunch:error:;
+ (BOOL)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:didLaunch:error:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:outputData:reply:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:outputFileHandle:reply:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:outputFilePath:reply:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:reply:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputData:errorData:launchHandler:reply:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFileHandle:errorFileHandle:launchHandler:reply:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:reply:;
+ (void)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:startBlock:updateBlock:endBlock:;
@end

@implementation NSTask(WiFiVelocity)

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:reply:
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_reply___block_invoke;
  v6[3] = &unk_279ECD1D8;
  v6[4] = a5;
  return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a3 arguments:a4 timeout:0 outputData:0 errorData:0 launchHandler:v6 reply:10.0];
}

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:outputData:reply:
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_outputData_reply___block_invoke;
  v7[3] = &unk_279ECD1D8;
  v7[4] = a6;
  return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a3 arguments:a4 timeout:a5 outputData:0 errorData:0 launchHandler:v7 reply:10.0];
}

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputData:errorData:launchHandler:reply:
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputData_errorData_launchHandler_reply___block_invoke;
  v11[3] = &unk_279ECD200;
  v11[4] = a8;
  v11[5] = a7;
  v9[4] = a8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __105__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputData_errorData_launchHandler_reply___block_invoke_2;
  v10[3] = &unk_279ECD228;
  v10[4] = a5;
  v10[5] = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __105__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputData_errorData_launchHandler_reply___block_invoke_3;
  v9[3] = &unk_279ECD250;
  return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a3 arguments:a4 timeout:v11 startBlock:v10 updateBlock:v9 endBlock:?];
}

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:outputFilePath:reply:
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_outputFilePath_reply___block_invoke;
  v7[3] = &unk_279ECD1D8;
  v7[4] = a6;
  return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a3 arguments:a4 timeout:a5 outputFilePath:0 errorFilePath:0 redirectErrorToOutput:0 launchHandler:10.0 reply:v7];
}

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:reply:
{
  v45 = *MEMORY[0x277D85DE8];
  if (a6 | a7)
  {
    v16 = a6;
    if (a6)
    {
      [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v17 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingAtPath:v16];
      if (v17)
      {
        v18 = v17;
        v16 = 0;
        if (!a7)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }

      OSLog = W5GetOSLog();
      if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136316162;
        v36 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:reply:]";
        v37 = 2080;
        v38 = "W5TaskUtil.m";
        v39 = 1024;
        v40 = 146;
        v41 = 2114;
        v42 = [a4 lastPathComponent];
        v43 = 2114;
        v44 = v16;
        LODWORD(v29) = 48;
        v28 = &v35;
        _os_log_send_and_compose_impl();
      }

      v33 = *MEMORY[0x277CCA470];
      v34 = @"W5ResourceErr";
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifivelocity.error" code:7 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v34, &v33, 1, v28, v29)}];
    }

    v18 = 0;
    if (!a7)
    {
      goto LABEL_20;
    }

LABEL_13:
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v23 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingAtPath:a7];
    if (v23)
    {
      if (!v16)
      {
LABEL_21:
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __135__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFilePath_errorFilePath_redirectErrorToOutput_launchHandler_reply___block_invoke;
        v30[3] = &unk_279ECD278;
        if (a8)
        {
          v26 = v18;
        }

        else
        {
          v26 = v23;
        }

        v30[4] = v18;
        v30[5] = v23;
        v30[6] = a10;
        result = [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a4 arguments:a5 timeout:v18 outputFileHandle:v26 errorFileHandle:a9 launchHandler:v30 reply:a1];
LABEL_25:
        v27 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_15:
      [v18 closeFile];
      result = [v23 closeFile];
      if (a10)
      {
        result = (*(a10 + 16))(a10, v16, 0);
      }

      goto LABEL_25;
    }

    v24 = W5GetOSLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [a4 lastPathComponent];
      v35 = 136316162;
      v36 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:reply:]";
      v37 = 2080;
      v38 = "W5TaskUtil.m";
      v39 = 1024;
      v40 = 160;
      v41 = 2114;
      v42 = v25;
      v43 = 2114;
      v44 = a7;
      LODWORD(v29) = 48;
      v28 = &v35;
      _os_log_send_and_compose_impl();
    }

    v31 = *MEMORY[0x277CCA470];
    v32 = @"W5ResourceErr";
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifivelocity.error" code:7 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v32, &v31, 1, v28, v29)}];
LABEL_20:
    v23 = 0;
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v19 = MEMORY[0x277CCACB0];
  v20 = *MEMORY[0x277D85DE8];

  return [v19 runTaskWithLaunchPath:a4 arguments:a5 timeout:0 outputData:0 errorData:a9 launchHandler:a10 reply:?];
}

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:outputFileHandle:reply:
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_outputFileHandle_reply___block_invoke;
  v7[3] = &unk_279ECD1D8;
  v7[4] = a6;
  return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a3 arguments:a4 timeout:a5 outputFileHandle:0 errorFileHandle:0 launchHandler:v7 reply:10.0];
}

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFileHandle:errorFileHandle:launchHandler:reply:
{
  if (a6 | a7)
  {
    [a6 seekToEndOfFile];
    [a7 seekToEndOfFile];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __117__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFileHandle_errorFileHandle_launchHandler_reply___block_invoke;
    v20[3] = &unk_279ECD200;
    v20[4] = a9;
    v20[5] = a8;
    v18[4] = a9;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __117__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFileHandle_errorFileHandle_launchHandler_reply___block_invoke_2;
    v19[3] = &unk_279ECD228;
    v19[4] = a6;
    v19[5] = a7;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __117__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFileHandle_errorFileHandle_launchHandler_reply___block_invoke_13;
    v18[3] = &unk_279ECD250;
    return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a4 arguments:a5 timeout:v20 startBlock:v19 updateBlock:v18 endBlock:a1];
  }

  else
  {
    v17 = MEMORY[0x277CCACB0];

    return [v17 runTaskWithLaunchPath:a4 arguments:a5 timeout:0 outputData:0 errorData:? launchHandler:? reply:?];
  }
}

+ (void)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:startBlock:updateBlock:endBlock:
{
  v99[1] = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.wifivelocity.task.%@", objc_msgSend(a4, "lastPathComponent")];
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3052000000;
  v76[3] = __Block_byref_object_copy_;
  v76[4] = __Block_byref_object_dispose_;
  [v13 UTF8String];
  v14 = os_transaction_create();
  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
  v76[5] = v14;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x2020000000;
  v75 = 0;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3052000000;
  v69 = __Block_byref_object_copy_;
  v70 = __Block_byref_object_dispose_;
  v71 = 0;
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = "op Discoverable Mode: %@\n";
  identifier = dispatch_queue_create(0, v15);
  if (!identifier)
  {
    v37 = MEMORY[0x277CCA9B8];
    v98 = *MEMORY[0x277CCA470];
    v99[0] = @"W5NoMemErr";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:&v98 count:1];
    v38 = 2;
LABEL_33:
    v42 = [v37 errorWithDomain:@"com.apple.wifivelocity.error" code:v38 userInfo:v39];
    v26 = 0;
    v24 = 0;
    v52 = 0;
    v21 = 0;
    v30 = 0;
    v55 = 0;
    goto LABEL_34;
  }

  v17 = a4;
  if ([a4 isEqualToString:@"/bin/sh"])
  {
    v17 = [a5 firstObject];
  }

  if ((([v17 hasPrefix:@"/usr/local/"] & 1) != 0 || objc_msgSend(v17, "hasPrefix:", @"/AppleInternal/")) && (os_variant_allows_internal_security_policies() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v51 = [v17 UTF8String];
      *buf = 136446210;
      v84 = v51;
      _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] '%{public}s' not allowed on non-internal install variants, will not run task", buf, 0xCu);
    }

    v37 = MEMORY[0x277CCA9B8];
    v96 = *MEMORY[0x277CCA470];
    v97 = @"W5NotPermittedErr";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    v38 = 5;
    goto LABEL_33;
  }

  if (!a4 || ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v50 = [a4 UTF8String];
      *buf = 136446210;
      v84 = v50;
      _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] '%{public}s' does not exist, will not run task", buf, 0xCu);
    }

    v37 = MEMORY[0x277CCA9B8];
    v94 = *MEMORY[0x277CCA470];
    v95 = @"W5ParamErr";
    v38 = 1;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
    goto LABEL_33;
  }

  v55 = objc_alloc_init(MEMORY[0x277CCACB0]);
  [v55 setLaunchPath:a4];
  if (a5)
  {
    [v55 setArguments:a5];
  }

  *v65 = 0;
  handle = 0;
  memset(&v93, 0, sizeof(v93));
  v18 = openpty(&v65[1], v65, 0, &v93, 0);
  if (v18)
  {
    v40 = MEMORY[0x277CCA9B8];
    v91 = *MEMORY[0x277CCA470];
    v92 = @"err";
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    v42 = [v40 errorWithDomain:*MEMORY[0x277CCA5B8] code:v18 userInfo:v41];
    OSLog = W5GetOSLog();
    if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *__error();
      *buf = 136315906;
      v84 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:startBlock:updateBlock:endBlock:]";
      v85 = 2080;
      v86 = "W5TaskUtil.m";
      v87 = 1024;
      v88 = 335;
      v89 = 1024;
      v90 = v44;
LABEL_25:
      _os_log_send_and_compose_impl();
    }

LABEL_26:
    v26 = 0;
    v24 = 0;
    v52 = 0;
    v21 = 0;
LABEL_28:
    v30 = 0;
    goto LABEL_34;
  }

  memset(&v93, 0, sizeof(v93));
  v19 = openpty(&handle + 1, &handle, 0, &v93, 0);
  if (v19)
  {
    v45 = MEMORY[0x277CCA9B8];
    v81 = *MEMORY[0x277CCA470];
    v82 = @"err";
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v42 = [v45 errorWithDomain:*MEMORY[0x277CCA5B8] code:v19 userInfo:v46];
    v47 = W5GetOSLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *__error();
      *buf = 136315906;
      v84 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:startBlock:updateBlock:endBlock:]";
      v85 = 2080;
      v86 = "W5TaskUtil.m";
      v87 = 1024;
      v88 = 339;
      v89 = 1024;
      v90 = v48;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v20 = objc_alloc(MEMORY[0x277CCA9F8]);
  v21 = [v20 initWithFileDescriptor:v65[1] closeOnDealloc:1];
  v22 = objc_alloc(MEMORY[0x277CCA9F8]);
  v52 = [v22 initWithFileDescriptor:v65[0] closeOnDealloc:1];
  v23 = objc_alloc(MEMORY[0x277CCA9F8]);
  v24 = [v23 initWithFileDescriptor:HIDWORD(handle) closeOnDealloc:1];
  v25 = objc_alloc(MEMORY[0x277CCA9F8]);
  v26 = [v25 initWithFileDescriptor:handle closeOnDealloc:1];
  [v55 setStandardOutput:v52];
  [v55 setStandardError:v26];
  [v55 setStandardInput:0];
  fcntl(v65[1], 4, 4);
  fcntl(SHIDWORD(handle), 4, 4);
  v27 = v65[1];
  global_queue = dispatch_get_global_queue(0, 0);
  v29 = dispatch_source_create(MEMORY[0x277D85D28], v27, 0, global_queue);
  if (!v29)
  {
    v79 = *MEMORY[0x277CCA470];
    v80 = @"W5NoMemErr";
    v42 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifivelocity.error" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v80, &v79, 1)}];
    goto LABEL_28;
  }

  v30 = v29;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke;
  handler[3] = &unk_279ECD2C8;
  v63 = v65[1];
  handler[7] = v72;
  handler[6] = a7;
  handler[4] = identifier;
  handler[5] = v55;
  dispatch_source_set_event_handler(v29, handler);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_3;
  v61[3] = &unk_279ECD2F0;
  v61[4] = v52;
  v61[5] = v21;
  v61[6] = v30;
  dispatch_source_set_cancel_handler(v30, v61);
  dispatch_resume(v30);
  v31 = dispatch_source_create(MEMORY[0x277D85D28], SHIDWORD(handle), 0, global_queue);
  if (v31)
  {
    v32 = v31;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_4;
    v59[3] = &unk_279ECD2C8;
    v60 = HIDWORD(handle);
    v59[6] = a7;
    v59[7] = v72;
    v59[4] = identifier;
    v59[5] = v55;
    dispatch_source_set_event_handler(v31, v59);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_6;
    v58[3] = &unk_279ECD2F0;
    v58[4] = v26;
    v58[5] = v24;
    v58[6] = v32;
    dispatch_source_set_cancel_handler(v32, v58);
    dispatch_resume(v32);
    v33 = [MEMORY[0x277CCAB98] defaultCenter];
    [MEMORY[0x277CCABD8] mainQueue];
    v34 = *MEMORY[0x277CCA6A0];
    block[15] = MEMORY[0x277D85DD0];
    block[16] = 3221225472;
    block[17] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_7;
    block[18] = &unk_279ECD340;
    block[27] = v72;
    block[28] = v74;
    block[19] = identifier;
    block[20] = v55;
    block[21] = a4;
    block[22] = a5;
    block[25] = a8;
    block[26] = &v66;
    block[29] = v76;
    block[23] = v32;
    block[24] = v30;
    v35 = [v33 addObserverForName:v34 object:? queue:? usingBlock:?];
    v67[5] = v35;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_62;
    block[3] = &unk_279ECD3E0;
    block[4] = v55;
    block[5] = a4;
    block[6] = v32;
    block[7] = v30;
    block[8] = identifier;
    block[9] = a5;
    block[10] = 0;
    block[11] = a6;
    *&block[14] = a1;
    block[12] = v76;
    block[13] = v74;
    dispatch_async(MEMORY[0x277D85CD0], block);
    goto LABEL_16;
  }

  v77 = *MEMORY[0x277CCA470];
  v78 = @"W5NoMemErr";
  v16 = "AirDrop Discoverable Mode: %@\n" + 5;
  v42 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifivelocity.error" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v78, &v77, 1)}];
LABEL_34:

  if (v30)
  {
    dispatch_source_cancel(v30);
  }

  else
  {
  }

  v49 = identifier;
  if (!identifier)
  {
    v49 = dispatch_get_global_queue(0, 0);
  }

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = *(v16 + 44);
  v56[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_2_66;
  v56[3] = &unk_279ECD368;
  v56[4] = a4;
  v56[5] = v42;
  v56[6] = a5;
  v56[7] = v55;
  v56[8] = a6;
  v56[9] = v76;
  dispatch_async(v49, v56);
  if (identifier)
  {
    dispatch_release(identifier);
  }

LABEL_16:
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(v72, 8);
  _Block_object_dispose(v74, 8);
  _Block_object_dispose(v76, 8);
  v36 = *MEMORY[0x277D85DE8];
}

+ (BOOL)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputData:errorData:launchHandler:didLaunch:error:
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v17 = dispatch_semaphore_create(0);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __115__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputData_errorData_launchHandler_didLaunch_error___block_invoke;
  v25[3] = &unk_279ECD408;
  v25[5] = &v30;
  v25[6] = &v26;
  v25[4] = v17;
  [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a4 arguments:a5 timeout:a6 outputData:a7 errorData:a8 launchHandler:v25 reply:a1];
  v18 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v17, v18) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v37 = 0x4082C00000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v19 = v31[5];
  if (a9)
  {
    *a9 = *(v27 + 24);
  }

  v20 = v31;
  if (a10)
  {
    v21 = v31[5];
    if (v21)
    {
      *a10 = v21;
    }
  }

  v22 = v20[5] == 0;
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (BOOL)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:didLaunch:error:
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3052000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v18 = dispatch_semaphore_create(0);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __145__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFilePath_errorFilePath_redirectErrorToOutput_launchHandler_didLaunch_error___block_invoke;
  v26[3] = &unk_279ECD408;
  v26[5] = &v31;
  v26[6] = &v27;
  v26[4] = v18;
  [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a4 arguments:a5 timeout:a6 outputFilePath:a7 errorFilePath:a8 redirectErrorToOutput:a9 launchHandler:a1 reply:v26];
  v19 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v18, v19) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v38 = 0x4082C00000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v20 = v32[5];
  if (a10)
  {
    *a10 = *(v28 + 24);
  }

  v21 = v32;
  if (a11)
  {
    v22 = v32[5];
    if (v22)
    {
      *a11 = v22;
    }
  }

  v23 = v21[5] == 0;
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (BOOL)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFileHandle:errorFileHandle:launchHandler:didLaunch:error:
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v17 = dispatch_semaphore_create(0);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __127__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFileHandle_errorFileHandle_launchHandler_didLaunch_error___block_invoke;
  v25[3] = &unk_279ECD408;
  v25[5] = &v30;
  v25[6] = &v26;
  v25[4] = v17;
  [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a4 arguments:a5 timeout:a6 outputFileHandle:a7 errorFileHandle:a8 launchHandler:v25 reply:a1];
  v18 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v17, v18) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v37 = 0x4082C00000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v19 = v31[5];
  if (a9)
  {
    *a9 = *(v27 + 24);
  }

  v20 = v31;
  if (a10)
  {
    v21 = v31[5];
    if (v21)
    {
      *a10 = v21;
    }
  }

  v22 = v20[5] == 0;
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

@end