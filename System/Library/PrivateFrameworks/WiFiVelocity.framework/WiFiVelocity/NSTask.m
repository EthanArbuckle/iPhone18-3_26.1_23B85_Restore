@interface NSTask
@end

@implementation NSTask

uint64_t __62__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __73__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_outputData_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __105__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputData_errorData_launchHandler_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = *(a1 + 32);
    if (result)
    {
      return (*(result + 16))(result, a3, 0);
    }
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t __105__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputData_errorData_launchHandler_reply___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    result = [*(result + 32) appendData:?];
  }

  if (a4)
  {
    v6 = *(v5 + 40);

    return [v6 appendData:a4];
  }

  return result;
}

uint64_t __105__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputData_errorData_launchHandler_reply___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, 1);
  }

  return result;
}

uint64_t __77__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_outputFilePath_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __135__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFilePath_errorFilePath_redirectErrorToOutput_launchHandler_reply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) closeFile];
  [*(a1 + 40) closeFile];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __79__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_outputFileHandle_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __117__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFileHandle_errorFileHandle_launchHandler_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = *(a1 + 32);
    if (result)
    {
      return (*(result + 16))(result, a3, 0);
    }
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void *__117__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFileHandle_errorFileHandle_launchHandler_reply___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  if (v7)
  {
    [v7 writeData:?];
  }

  result = *(a1 + 40);
  if (result)
  {
    result = [result writeData:a4];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __117__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFileHandle_errorFileHandle_launchHandler_reply___block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, 1);
  }

  return result;
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = read(*(a1 + 64), v9, 0x1000uLL);
  if (v3 >= 1)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:v3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_2;
    block[3] = &unk_279ECD2A0;
    v8 = *(a1 + 48);
    v5 = *(a1 + 32);
    block[4] = *(a1 + 40);
    block[5] = v4;
    dispatch_async(v5, block);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_2(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v3 = a1[6];
    if (v3)
    {
      (*(v3 + 16))(v3, a1[4], a1[5], 0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);

  dispatch_release(v2);
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = read(*(a1 + 64), v9, 0x1000uLL);
  if (v3 >= 1)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:v3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_5;
    block[3] = &unk_279ECD2A0;
    v8 = *(a1 + 48);
    v5 = *(a1 + 32);
    block[4] = *(a1 + 40);
    block[5] = v4;
    dispatch_async(v5, block);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_5(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v3 = a1[6];
    if (v3)
    {
      (*(v3 + 16))(v3, a1[4], 0, a1[5]);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 48);

  dispatch_release(v2);
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_7(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_8;
  block[3] = &unk_279ECD318;
  block[4] = *(a1 + 96);
  dispatch_async(v2, block);
  if (*(*(*(a1 + 104) + 8) + 24) == 1)
  {
    v17 = *MEMORY[0x277CCA470];
    v18[0] = @"W5TimeoutErr";
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifivelocity.error" code:3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v18, &v17, 1)}];
  }

  else
  {
    v4 = [*(a1 + 40) terminationStatus];
    if (v4)
    {
      v5 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA470];
      v16 = @"terminationStatus";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v3 = [v5 errorWithDomain:*MEMORY[0x277CCA5B8] code:v4 userInfo:v6];
    }

    else
    {
      v3 = 0;
    }
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_51;
  v13[3] = &unk_279ECD368;
  v9 = *(a1 + 56);
  v13[4] = *(a1 + 48);
  v13[5] = v3;
  v10 = *(a1 + 80);
  v13[6] = v9;
  v13[7] = v8;
  v11 = *(a1 + 112);
  v13[8] = v10;
  v13[9] = v11;
  dispatch_async(v7, v13);
  dispatch_source_cancel(*(a1 + 64));
  dispatch_source_cancel(*(a1 + 72));
  dispatch_release(*(a1 + 32));

  v12 = *MEMORY[0x277D85DE8];
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = 1;

  objc_autoreleasePoolPop(v2);
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_51(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  OSLog = W5GetOSLog();
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) lastPathComponent];
    if (*(a1 + 40))
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@" (error=%@)", *(a1 + 40)];
    }

    else
    {
      v5 = &stru_288333B30;
    }

    v6 = *(a1 + 32);
    v7 = [*(a1 + 48) componentsJoinedByString:@" "];
    v12 = 136316674;
    v13 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:startBlock:updateBlock:endBlock:]_block_invoke";
    v14 = 2080;
    v15 = "W5TaskUtil.m";
    v16 = 1024;
    v17 = 451;
    v18 = 2114;
    v19 = v4;
    v20 = 2114;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v7;
    LODWORD(v11) = 68;
    v10 = &v12;
    _os_log_send_and_compose_impl();
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, *(a1 + 56), *(a1 + 40));
  }

  [+[W5ActivityManager sharedActivityManager](W5ActivityManager sharedActivityManager];

  *(*(*(a1 + 72) + 8) + 40) = 0;
  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_62(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) launch];
  v3 = *(a1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_64;
  block[3] = &unk_279ECD390;
  v4 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v12 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
  v5 = *(a1 + 88);
  v13 = v4;
  v14 = v5;
  dispatch_async(v3, block);
  v6 = *(a1 + 112);
  if (v6 > 0.0)
  {
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_65;
    v10[3] = &unk_279ECD3B8;
    v8 = *(a1 + 104);
    v10[4] = *(a1 + 32);
    v10[5] = v8;
    dispatch_after(v7, MEMORY[0x277D85CD0], v10);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_63(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  OSLog = W5GetOSLog();
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) lastPathComponent];
    v10 = *MEMORY[0x277CCA470];
    v11 = @"W5ResourceErr";
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifivelocity.error" code:7 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v11, &v10, 1)}];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) componentsJoinedByString:@" "];
    v12 = 136316674;
    v13 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:startBlock:updateBlock:endBlock:]_block_invoke";
    v14 = 2080;
    v15 = "W5TaskUtil.m";
    v16 = 1024;
    v17 = 486;
    v18 = 2114;
    v19 = v4;
    v20 = 2114;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v7;
    _os_log_send_and_compose_impl();
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, *(a1 + 48), *(a1 + 56));
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_64(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  OSLog = W5GetOSLog();
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) lastPathComponent];
    if (*(a1 + 40))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@" (error=%@)", *(a1 + 40)];
    }

    v6 = *(a1 + 32);
    [*(a1 + 48) componentsJoinedByString:@" "];
    _os_log_send_and_compose_impl();
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 56), *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_65(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v1 = [*(a1 + 32) processIdentifier];

  return kill(v1, 9);
}

void __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_2_66(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  OSLog = W5GetOSLog();
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) lastPathComponent];
    if (*(a1 + 40))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@" (error=%@)", *(a1 + 40)];
    }

    v6 = *(a1 + 32);
    [*(a1 + 48) componentsJoinedByString:@" "];
    _os_log_send_and_compose_impl();
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 56), *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x277D85DE8];
}

intptr_t __115__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputData_errorData_launchHandler_didLaunch_error___block_invoke(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 24) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t __145__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFilePath_errorFilePath_redirectErrorToOutput_launchHandler_didLaunch_error___block_invoke(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 24) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t __127__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFileHandle_errorFileHandle_launchHandler_didLaunch_error___block_invoke(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 24) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

@end