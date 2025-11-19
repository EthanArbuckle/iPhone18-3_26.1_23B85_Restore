void sub_2770D469C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2770D46C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v3 = *(v2 + 56);
    v4 = objc_autoreleasePoolPush();
    if (!v3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive copyToTemporaryLocationRelativeToURL:error:]_block_invoke"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileArchive.m"];
      [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:326 isFatal:0 description:"File should be opened."];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    [*(a1 + 32) createTemporaryDirectoryRelativeToURL:*(a1 + 40)];
    v7 = [*(*(a1 + 32) + 64) URLByAppendingPathComponent:@"Temp.zip"];
    if (v7)
    {
      v8 = [TSUFileIOChannel alloc];
      v9 = *(*(a1 + 48) + 8);
      v31 = *(v9 + 40);
      v10 = [(TSUFileIOChannel *)v8 initForStreamWritingURL:v7 error:&v31];
      objc_storeStrong((v9 + 40), v31);
    }

    else
    {
      v10 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v10 != 0;
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = sub_2770D3B14;
      v29 = sub_2770D3B24;
      v30 = 0;
      v11 = dispatch_group_create();
      dispatch_group_enter(v11);
      v12 = [v3 readChannel];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_2770D4A78;
      v21[3] = &unk_27A702BC8;
      v24 = &v25;
      v13 = v11;
      v22 = v13;
      v14 = v10;
      v23 = v14;
      [v12 readFromOffset:0 length:-1 handler:v21];

      dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      [v14 close];

      v15 = v26;
      *(*(*(a1 + 56) + 8) + 24) = v26[5] == 0;
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15[5]);
        if (TSUDefaultCat_init_token != -1)
        {
          sub_277114EDC();
        }
      }

      _Block_object_dispose(&v25, 8);
      v10 = 0;
    }

    else if (TSUDefaultCat_init_token != -1)
    {
      sub_277114EB4();
    }

    v16 = *(*(a1 + 56) + 8);
    if (*(v16 + 24) == 1)
    {
      v17 = *(a1 + 32);
      v18 = *(*(a1 + 48) + 8);
      obj = *(v18 + 40);
      v19 = [v17 reopenWithTemporaryURL:v7 error:&obj];
      objc_storeStrong((v18 + 40), obj);
      v16 = *(*(a1 + 56) + 8);
    }

    else
    {
      v19 = 0;
    }

    *(v16 + 24) = v19;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) removeTemporaryDirectory];
    }

    objc_autoreleasePoolPop(v4);
    [v3 waitForAccessToEnd];
  }
}

void sub_2770D4A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2770D4A78(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && !(v8 | *(*(*(a1 + 48) + 8) + 40)))
  {
    dispatch_group_enter(*(a1 + 32));
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2770D4B88;
    v14[3] = &unk_27A702FD8;
    v10 = *(a1 + 40);
    v16 = *(a1 + 48);
    v15 = *(a1 + 32);
    [v10 writeData:v7 handler:v14];
  }

  if (a2)
  {
    if (v9)
    {
      v11 = *(*(a1 + 48) + 8);
      v13 = *(v11 + 40);
      v12 = (v11 + 40);
      if (!v13)
      {
        objc_storeStrong(v12, a4);
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_2770D4B88(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v11 = v7;
    if (v7)
    {
      v8 = *(*(a1 + 40) + 8);
      v10 = *(v8 + 40);
      v9 = (v8 + 40);
      if (!v10)
      {
        objc_storeStrong(v9, a4);
      }
    }

    dispatch_group_leave(*(a1 + 32));
    v7 = v11;
  }
}

uint64_t sub_2770D4C04()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D4C48()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770D4E44(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = v2;
  if (v2)
  {
    v4 = dup([v2 fileDescriptor]);
    if ((v4 & 0x80000000) != 0)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_277114F04();
      }
    }

    else
    {
      v5 = v4;
      if (([*(a1 + 32) options] & 0x10) != 0 && fcntl(v5, 48, 1) == -1 && TSUDefaultCat_init_token != -1)
      {
        sub_277114F18();
      }

      [v3 beginAccess];
      v6 = [TSUFileIOChannel alloc];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_2770D5004;
      v10[3] = &unk_27A703028;
      v12 = v5;
      v11 = v3;
      v7 = [(TSUFileIOChannel *)v6 initForReadingDescriptor:v5 cleanupHandler:v10];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }

  else if (TSUDefaultCat_init_token != -1)
  {
    sub_277114F2C();
  }
}

uint64_t sub_2770D4FC0()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D5004(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);

  return MEMORY[0x2821F9670](v2, sel_endAccess);
}

uint64_t sub_2770D5040()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D5084()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

ssize_t sub_2770D517C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    result = [v2 fileDescriptor];
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(*(*(a1 + 40) + 8) + 24) = result >= 0;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = 0;
    result = read(result, &v4, 0);
    *(*(*(a1 + 40) + 8) + 24) = result == 0;
  }

  return result;
}

void sub_2770D59D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770D59EC(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    result = *(result + 32);
    if (result)
    {
      result = (*(result + 16))();
      v1 = *(*(v2 + 40) + 8);
    }

    *(v1 + 24) = 1;
  }

  return result;
}

uint64_t sub_2770D5A44(uint64_t a1, int a2)
{
  close(*(a1 + 40));
  if (a2 && TSUDefaultCat_init_token != -1)
  {
    sub_277114F68();
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t sub_2770D5AC0()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D5B04()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D5D44(uint64_t a1, int a2)
{
  if (a2 && TSUDefaultCat_init_token != -1)
  {
    sub_277114F7C();
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_2770D5DB8()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770D5FC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:a4 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2770D6220(void *a1, uint64_t a2, void *a3, int a4)
{
  size = a3;
  v10 = size;
  if (a4)
  {
    v8 = a1[4];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a4 userInfo:0];
    (*(v8 + 16))(v8, a2, 0, v9);
  }

  else
  {
    if (size)
    {
      size = dispatch_data_get_size(size);
    }

    atomic_exchange((*(a1[5] + 8) + 24), a1[6] - size);
    (*(a1[4] + 16))();
  }
}

intptr_t sub_2770D6480(uint64_t a1)
{
  descriptor = dispatch_io_get_descriptor(*(*(a1 + 32) + 16));
  if (descriptor == -1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel close]_block_invoke"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:278 isFatal:0 description:"Channel file descriptor is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  else if (fcntl(descriptor, 51, 0) == -1)
  {
    v3 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    if (TSUDefaultCat_init_token != -1)
    {
      v8 = v3;
      sub_277114F90();
      v3 = v8;
    }
  }

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

uint64_t sub_2770D65AC()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D68C4(uint64_t a1)
{
  descriptor = dispatch_io_get_descriptor(*(*(a1 + 32) + 16));
  if (descriptor == -1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel flushWithCompletion:]_block_invoke"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:317 isFatal:0 description:"Channel file descriptor is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  else if (fsync(descriptor) == -1)
  {
    v3 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    goto LABEL_6;
  }

  v3 = 0;
LABEL_6:
  v6 = *(a1 + 40);
  if (v6)
  {
    v8 = v3;
    v6 = (*(v6 + 16))();
    v3 = v8;
  }

  return MEMORY[0x2821F96F8](v6, v3);
}

uint64_t sub_2770D6B14(void *a1)
{
  descriptor = dispatch_io_get_descriptor(*(a1[4] + 16));
  if (descriptor == -1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel truncateToLength:completion:]_block_invoke"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:335 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  else if (ftruncate(descriptor, a1[6]) == -1)
  {
    v3 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    goto LABEL_6;
  }

  v3 = 0;
LABEL_6:
  v6 = a1[5];
  if (v6)
  {
    v8 = v3;
    v6 = (*(v6 + 16))();
    v3 = v8;
  }

  return MEMORY[0x2821F96F8](v6, v3);
}

id sub_2770D6CCC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v14 = v13;
  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v12)
  {
    [v14 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  v15 = [a1 errorWithDomain:v10 code:a4 userInfo:v14];

  return v15;
}

id sub_2770D6DB0(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = a4;
  if (a3 >= 3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSError(TSUAdditions) tsu_errorWithCode:userInfo:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSError_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:46 isFatal:0 description:"Bad error code"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v9 = [a1 errorWithDomain:@"com.apple.iWork.TSUtility" code:a3 userInfo:v6];

  return v9;
}

id sub_2770D6EA8(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v15, "count") + 4}];
  v17 = v16;
  if (v15)
  {
    [v16 addEntriesFromDictionary:v15];
  }

  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA450]];
    [v17 setObject:v13 forKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  }

  if (v14)
  {
    [v17 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCA498]];
    [v17 setObject:v14 forKeyedSubscript:@"TSULocalizedErrorAlertMessage"];
    [v17 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCA470]];
  }

  v18 = [a1 errorWithDomain:v12 code:a4 userInfo:v17];

  return v18;
}

id sub_2770D7004(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a6;
  v12 = MEMORY[0x277CBEB38];
  v13 = a5;
  v14 = [[v12 alloc] initWithCapacity:2];
  [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (v11)
  {
    [v14 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v15 = [a1 errorWithDomain:v10 code:a4 userInfo:v14];

  return v15;
}

id sub_2770D70EC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a6;
  if (a3)
  {
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = [v13 userInfo];
    v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v14, "count") + objc_msgSend(v10, "count") + 1}];
    v16 = v15;
    if (v14)
    {
      [v15 addEntriesFromDictionary:v14];
    }

    if (v10)
    {
      [v16 addEntriesFromDictionary:v10];
    }

    [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v17 = [v13 domain];
    v18 = [v13 code];

    v19 = [a1 tsu_errorWithDomain:v17 code:v18 alertTitle:v12 alertMessage:v11 userInfo:v16];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id sub_2770D7250(void *a1)
{
  v2 = [a1 userInfo];
  v3 = *MEMORY[0x277CCA450];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v2 objectForKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  v6 = v5;
  if (!v5 || [v5 isEqualToString:v4])
  {

LABEL_5:
    v7 = a1;
    goto LABEL_6;
  }

  v9 = [v2 mutableCopy];
  [v9 setObject:v6 forKeyedSubscript:v3];
  v10 = objc_opt_class();
  v11 = [a1 domain];
  v7 = [v10 errorWithDomain:v11 code:objc_msgSend(a1 userInfo:{"code"), v9}];

LABEL_6:

  return v7;
}

id sub_2770D7370(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 tsu_isCancelError])
  {
    if ([v1 code] == 3072)
    {
      v2 = [v1 domain];
      v3 = *MEMORY[0x277CCA050];
      v4 = [v2 isEqualToString:*MEMORY[0x277CCA050]];

      if (v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = *MEMORY[0x277CCA050];
    }

    v5 = objc_opt_class();
    v9 = *MEMORY[0x277CCA7E8];
    v10[0] = v1;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v5 errorWithDomain:v3 code:3072 userInfo:v6];

    v1 = v7;
  }

LABEL_7:

  return v1;
}

id sub_2770D74A0(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v5 = v4;

  return v5;
}

id sub_2770D7528(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"TSULocalizedErrorAlertMessage"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  v5 = v4;

  return v5;
}

uint64_t sub_2770D75BC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 2)
  {
    v9 = @"com.apple.iWork.TSUtility";
  }

  else
  {
    if (a3 == 28)
    {
      v8 = MEMORY[0x277CCA5B8];
    }

    else
    {
      if (a3 != 640)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v8 = MEMORY[0x277CCA050];
    }

    v9 = *v8;
  }

  v10 = [v6 isEqualToString:v9];
LABEL_10:

  return v10;
}

uint64_t sub_2770D7660(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == -999)
  {
    v8 = MEMORY[0x277CCA738];
  }

  else
  {
    if (a3 != 3072)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = MEMORY[0x277CCA050];
  }

  v9 = [v6 isEqualToString:*v8];
LABEL_7:

  return v9;
}

uint64_t sub_2770D76F0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 17)
  {
    v8 = MEMORY[0x277CCA5B8];
  }

  else
  {
    if (a3 != 516)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = MEMORY[0x277CCA050];
  }

  v9 = [v6 isEqualToString:*v8];
LABEL_7:

  return v9;
}

uint64_t sub_2770D7780(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 2)
  {
    v8 = MEMORY[0x277CCA5B8];
  }

  else
  {
    if (a3 != 260 && a3 != 4)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = MEMORY[0x277CCA050];
  }

  v9 = [v6 isEqualToString:*v8];
LABEL_8:

  return v9;
}

uint64_t sub_2770D7818(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = 0;
  if (a3 <= 512)
  {
    if (a3 != 1)
    {
      if (a3 != 257)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CCA5B8]])
    {
LABEL_12:
      v8 = 1;
      goto LABEL_14;
    }

    v9 = @"NSFileProviderInternalErrorDomain";
LABEL_11:
    if (([v6 isEqualToString:v9] & 1) == 0)
    {
      v8 = 0;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a3 == 513)
  {
    v9 = *MEMORY[0x277CCA050];
    goto LABEL_11;
  }

  if (a3 == 5124)
  {
LABEL_7:
    v8 = [v6 isEqualToString:*MEMORY[0x277CCA050]];
  }

LABEL_14:

  return v8;
}

uint64_t sub_2770D7904(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 == 3328)
  {
    return [a2 isEqualToString:*MEMORY[0x277CCA050]];
  }

  else
  {
    return 0;
  }
}

void sub_2770D7928(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = a1;
    v13 = 0;
    if (v5)
    {
      v6 = v5;
      v7 = *MEMORY[0x277CCA7E8];
      do
      {
        v8 = [v6 userInfo];
        v9 = [v6 domain];
        v4[2](v4, v9, [v6 code], v8, &v13);

        v10 = [v8 objectForKeyedSubscript:v7];
        v11 = v10;
        if (v10 != v6)
        {
          v12 = v10;

          v6 = v12;
        }
      }

      while (v6 && (v13 & 1) == 0);
    }
  }
}

uint64_t sub_2770D7A24(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2770D7B14;
    v8[3] = &unk_27A703188;
    v9 = v4;
    v10 = &v11;
    [a1 tsu_enumerateErrorUsingBlock:v8];

    v6 = *(v12 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

void sub_2770D7AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770D7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t sub_2770D81BC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 absoluteString];
  v6 = [v4 absoluteString];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_2770D8AF4(uint64_t a1, char a2, void *a3, void *a4)
{
  data = a3;
  v7 = a4;
  v8 = v7;
  v9 = *(a1 + 32);
  if ((*(v9 + 88) & 1) == 0)
  {
    if (v7)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _resetStreamReadChannelIfNeededForOffset:length:]_block_invoke"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v8 domain];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, v11, 196, 0, "Error reading from filter TSUStreamReadChannel: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v13, v14, [v8 code], v8);

      +[TSUAssertionHandler logBacktraceThrottled];
      a2 = 1;
    }

    else if (data)
    {
      *(v9 + 112) += dispatch_data_get_size(data);
      v15 = *(a1 + 32);
      v16 = *(v15 + 120);
      if (v16)
      {
        concat = dispatch_data_create_concat(v16, data);
        v18 = *(a1 + 32);
        v19 = *(v18 + 120);
        *(v18 + 120) = concat;
      }

      else
      {
        v20 = data;
        v19 = *(v15 + 120);
        *(v15 + 120) = v20;
      }
    }

    *(*(a1 + 32) + 88) = a2;
  }
}

void sub_2770D8D68(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 48))
  {
    v3 = [MEMORY[0x277CCACC8] currentThread];
    v4 = [v3 threadDictionary];
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];

    (*(a1[5] + 16))();
    v10 = [MEMORY[0x277CCACC8] currentThread];
    v5 = [v10 threadDictionary];
    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];
  }

  else
  {
    dispatch_suspend(*(v2 + 8));
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[4];
    v9 = a1[5];

    [v8 _readFromOffset:v6 length:v7 handler:v9];
  }
}

void sub_2770D9110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2770D9128(void *a1, int a2, void *a3, void *a4)
{
  data = a3;
  v7 = a4;
  v15 = v7;
  v16 = a1[4];
  if (*(v16 + 48))
  {
    goto LABEL_25;
  }

  if (!*(v16 + 80))
  {
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:283 isFatal:0 description:"The source handler for the stream read channel should not be nil"];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (!v15)
    {
      v15 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
      if (!v15)
      {
        goto LABEL_4;
      }
    }

LABEL_12:
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v15 domain];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v23, v24, 296, 0, "Error reading from source TSUReadChannel: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v26, v27, [v15 code], v15);

    +[TSUAssertionHandler logBacktraceThrottled];
    v28 = [MEMORY[0x277CCACC8] currentThread];
    v29 = [v28 threadDictionary];
    [v29 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];

    (*(a1[5] + 16))();
    v30 = [MEMORY[0x277CCACC8] currentThread];
    v31 = [v30 threadDictionary];
    [v31 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];

    objc_storeStrong((a1[4] + 48), v15);
    dispatch_resume(*(a1[4] + 8));
    goto LABEL_25;
  }

  if (v7)
  {
    goto LABEL_12;
  }

LABEL_4:
  size = data;
  if (data)
  {
    size = dispatch_data_get_size(data);
  }

  *(*(a1[6] + 8) + 24) += size;
  if (*(*(a1[6] + 8) + 24) > a1[7])
  {
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:305 isFatal:0 description:"Received more data than requested: %zu instead of %zu", *(*(a1[6] + 8) + 24), a1[7]];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (a2)
  {
    v20 = *(*(a1[6] + 8) + 24) < a1[7];
  }

  else
  {
    v20 = 0;
  }

  if (data || v20)
  {
    v32 = *(a1[4] + 80);
    if (!v32)
    {
      sub_277114FA4(0, v8, v9, v10, v11, v12, v13, v14);
    }

    (*(v32 + 16))(v32, v20, data, 0);
  }

  if (v20)
  {
    v33 = a1[4];
    v34 = *(v33 + 80);
    *(v33 + 80) = 0;
  }

  if (a2)
  {
    *(a1[4] + 32) += *(*(a1[6] + 8) + 24);
    v35 = a1[4];
    v36 = v35[5];
    if (v36 != -1)
    {
      v35[5] = v36 - *(*(a1[6] + 8) + 24);
      v35 = a1[4];
    }

    [v35 _readFromOffset:a1[8] length:a1[9] handler:a1[5]];
  }

  v15 = 0;
LABEL_25:
}

uint64_t TSUPreserveFlags::transpose(TSUPreserveFlags *this)
{
  v1 = *this;
  HIDWORD(v3) = (v1 >> 1) & 2 | (v1 >> 3) & 1;
  LODWORD(v3) = __rbit32(v1);
  return (v3 >> 30);
}

id sub_2770DD110(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count") + 1}];
  v7 = v6;
  if (v5)
  {
    [v6 addEntriesFromDictionary:v5];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v7 setObject:v8 forKeyedSubscript:@"TSUIOErrorType"];

  return v7;
}

id sub_2770DD1C0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v5 = [a1 tsu_userInfoWithErrorType:1 userInfo:a3];
  v6 = [v3 errorWithDomain:v4 code:256 userInfo:v5];

  return v6;
}

id sub_2770DD240(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v5 = [a1 tsu_userInfoWithErrorType:1 userInfo:a3];
  v6 = [v3 errorWithDomain:v4 code:259 userInfo:v5];

  return v6;
}

id sub_2770DD2C0(void *a1, uint64_t a2, int a3)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA5B8];
  v5 = a3;
  v6 = [a1 tsu_userInfoWithErrorType:1 userInfo:?];
  v7 = [v3 errorWithDomain:v4 code:v5 userInfo:v6];

  return v7;
}

id sub_2770DD340(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v5 = [a1 tsu_userInfoWithErrorType:2 userInfo:a3];
  v6 = [v3 errorWithDomain:v4 code:512 userInfo:v5];

  return v6;
}

id sub_2770DD3C0(void *a1, uint64_t a2, int a3, void *a4)
{
  v6 = MEMORY[0x277CCA9B8];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = *MEMORY[0x277CCA5B8];
  v10 = [a1 tsu_userInfoWithErrorType:2 userInfo:v7];

  v11 = [v8 initWithDomain:v9 code:a3 userInfo:v10];

  return v11;
}

uint64_t sub_2770DD478(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 256 && ([v6 isEqualToString:*MEMORY[0x277CCA050]] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v7 objectForKeyedSubscript:@"TSUIOErrorType"];
    v8 = [v9 isEqual:&unk_28864C688];
  }

  return v8;
}

uint64_t sub_2770DD520(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 == 259)
  {
    return [a2 isEqualToString:*MEMORY[0x277CCA050]];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2770DD550(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 512 && ([v6 isEqualToString:*MEMORY[0x277CCA050]] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v7 objectForKeyedSubscript:@"TSUIOErrorType"];
    v8 = [v9 isEqual:&unk_28864C6A0];
  }

  return v8;
}

uint64_t sub_2770DD7E8(uint64_t a1, void *a2, CFNumberFormatterStyle a3)
{
  v5 = a2;
  *a1 = &unk_28862B360;
  *(a1 + 8) = 0;
  v6 = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  if (!v6)
  {
    v7 = +[TSULocale currentLocale];
    v8 = *(a1 + 16);
    *(a1 + 16) = v7;
  }

  v9 = [v6 locale];
  *(a1 + 8) = CFNumberFormatterCreate(*MEMORY[0x277CBECE8], v9, a3);

  CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEF60], &unk_28864C6B8);
  return a1;
}

uint64_t sub_2770DD8E0(uint64_t a1)
{
  *a1 = &unk_28862B360;
  CFRelease(*(a1 + 8));

  return a1;
}

void sub_2770DD940(uint64_t a1)
{
  sub_2770DD8E0(a1);

  JUMPOUT(0x277CA5D00);
}

uint64_t sub_2770DD978(uint64_t a1)
{
  v1 = CFNumberFormatterCopyProperty(*(a1 + 8), *MEMORY[0x277CBEF40]);
  v2 = [v1 BOOLValue];

  return v2;
}

void sub_2770DD9CC(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBEF40];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  CFNumberFormatterSetProperty(*(a1 + 8), v3, v4);
}

uint64_t sub_2770DDA50(uint64_t a1)
{
  v1 = CFNumberFormatterCopyProperty(*(a1 + 8), *MEMORY[0x277CBEF58]);
  v2 = [v1 integerValue];

  return v2;
}

void sub_2770DDAA4(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBEF58];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  CFNumberFormatterSetProperty(*(a1 + 8), v3, v4);
}

uint64_t sub_2770DDB28(uint64_t a1)
{
  v1 = CFNumberFormatterCopyProperty(*(a1 + 8), *MEMORY[0x277CBEF48]);
  v2 = [v1 integerValue];

  return v2;
}

void sub_2770DDB7C(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBEF48];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  CFNumberFormatterSetProperty(*(a1 + 8), v3, v4);
}

uint64_t sub_2770DDC00(uint64_t a1)
{
  v1 = CFNumberFormatterCopyProperty(*(a1 + 8), *MEMORY[0x277CBEF68]);
  v2 = [v1 integerValue];

  return v2;
}

void sub_2770DDC54(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBEF68];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  CFNumberFormatterSetProperty(*(a1 + 8), v3, v4);
}

uint64_t sub_2770DDCD8(uint64_t a1)
{
  v1 = CFNumberFormatterCopyProperty(*(a1 + 8), *MEMORY[0x277CBEF50]);
  v2 = [v1 integerValue];

  return v2;
}

void sub_2770DDD2C(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBEF50];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  CFNumberFormatterSetProperty(*(a1 + 8), v3, v4);
}

uint64_t sub_2770DDDB0(uint64_t a1)
{
  v1 = CFNumberFormatterCopyProperty(*(a1 + 8), *MEMORY[0x277CBEFD8]);
  v2 = [v1 integerValue];

  return v2;
}

void sub_2770DDE04(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBEFD8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  CFNumberFormatterSetProperty(*(a1 + 8), v3, v4);
}

uint64_t sub_2770DDE88(uint64_t a1)
{
  v1 = CFNumberFormatterCopyProperty(*(a1 + 8), *MEMORY[0x277CBEFE8]);
  v2 = [v1 BOOLValue];

  return v2;
}

void sub_2770DDEDC(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBEFE8];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  CFNumberFormatterSetProperty(*(a1 + 8), v3, v4);
}

uint64_t sub_2770DDF60(uint64_t a1)
{
  v1 = CFNumberFormatterCopyProperty(*(a1 + 8), *MEMORY[0x277CBEF30]);
  v2 = [v1 integerValue];

  return v2;
}

void sub_2770DDFB4(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBEF30];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  CFNumberFormatterSetProperty(*(a1 + 8), v3, v4);
}

BOOL sub_2770DE088(uint64_t a1, void *a2, CFRange *a3, void *a4)
{
  v7 = a2;
  if (a3)
  {
    v11 = *a3;
    ValueFromString = CFNumberFormatterGetValueFromString(*(a1 + 8), v7, &v11, kCFNumberDoubleType, a4);
  }

  else
  {
    ValueFromString = CFNumberFormatterGetValueFromString(*(a1 + 8), v7, 0, kCFNumberDoubleType, a4);
  }

  v9 = ValueFromString != 0;

  return v9;
}

void sub_2770DE12C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  objc_storeStrong((a1 + 24), a2);
  if (v9)
  {
    v7 = [v6 currencySymbolForCurrencyCode:?];
    v8 = [v7 copy];

    CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEF10], v8);
    if ([v9 isEqualToString:@"CHF"])
    {
      CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEFD0], &unk_28864C6D0);
    }
  }
}

void sub_2770DE238(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a4;
  v6 = [v18 decimalSeparator];
  CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEF18], v6);

  v7 = [v18 groupingSeparator];
  CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEF28], v7);

  v8 = [v18 currencyDecimalSeparator];
  CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEF00], v8);

  v9 = [v18 currencyGroupingSeparator];
  CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEF08], v9);

  v10 = [v18 percentSymbol];
  CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEFB0], v10);

  v11 = [v18 plusSign];
  CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEFB8], v11);

  v12 = [v18 minusSign];
  CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEF70], v12);

  v13 = [v18 exponentialSymbol];
  CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEF20], v13);

  v14 = [v18 perMilleSymbol];
  CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEFA8], v14);

  v15 = [v18 infinitySymbol];
  CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEF38], v15);

  v16 = [v18 nanSymbol];
  CFNumberFormatterSetProperty(*(a1 + 8), *MEMORY[0x277CBEF80], v16);

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v17 = [v18 percentPattern];
      CFNumberFormatterSetFormat(*(a1 + 8), v17);
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_11;
      }

      v17 = [v18 scientificPattern];
      CFNumberFormatterSetFormat(*(a1 + 8), v17);
    }
  }

  else if (a3 >= 2)
  {
    if (a3 != 2)
    {
      goto LABEL_11;
    }

    v17 = [v18 currencyPattern];
    CFNumberFormatterSetFormat(*(a1 + 8), v17);
  }

  else
  {
    v17 = [v18 decimalPattern];
    CFNumberFormatterSetFormat(*(a1 + 8), v17);
  }

LABEL_11:
}

void sub_2770DE610(_Unwind_Exception *a1)
{
  MEMORY[0x277CA5D00](v3, 0xA1C40069AE433);

  _Unwind_Resume(a1);
}

void sub_2770DEB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_2770DEB58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[22];
    v6 = v2;
    if (v3)
    {
      (*(v3 + 16))();
      v2 = v6;
      v4 = v6[22];
    }

    else
    {
      v4 = 0;
    }

    v2[22] = 0;

    v2 = v6;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

void sub_2770DEF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770DEFA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2770DEFC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[22];
    v6 = v2;
    if (v3)
    {
      (*(v3 + 16))();
      v2 = v6;
      v4 = v6[22];
    }

    else
    {
      v4 = 0;
    }

    v2[22] = 0;

    v2 = v6;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

void sub_2770DF040(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2770DF354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2770DF370(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 addObject:v5];
  v6 = [v5 size];

  *(*(*(a1 + 40) + 8) + 24) += v6;
}

uint64_t sub_2770DF3D4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 offset];
  v6 = [v4 offset];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

uint64_t sub_2770DF6B4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v10 = v5;
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + objc_msgSend(*(a1 + 40), "size")}];
    v5 = [*(a1 + 48) copyRemainingEntries:*(a1 + 56) fromArchive:*(a1 + 64) progress:*(a1 + 32) completionHandler:*(a1 + 72)];
  }

  else
  {
    v7 = *(a1 + 72);
    if (!v7)
    {
      goto LABEL_8;
    }

    v10 = v5;
    if (v5)
    {
      v5 = (*(v7 + 16))(v7, v5);
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] tsu_fileWriteUnknownErrorWithUserInfo:0];
      (*(v7 + 16))(v7, v8);
    }
  }

  v6 = v10;
LABEL_8:

  return MEMORY[0x2821F96F8](v5, v6);
}

uint64_t sub_2770DF9DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  if (a2)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v7 == 0);
    }
  }

  return MEMORY[0x2821F9730]();
}

void sub_2770E03D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a68, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770E0480(void *a1, uint64_t a2, NSObject *a3, void *a4, _BYTE *a5)
{
  v13 = a4;
  if (a3)
  {
    *(*(a1[5] + 8) + 24) += dispatch_data_get_size(a3);
  }

  v8 = (*(a1[4] + 16))();
  v9 = v13;
  if (!v13 && (*a5 & 1) != 0)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    v9 = v8;
  }

  if (v9)
  {
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    v8 = (v10 + 40);
    if (!v11)
    {
      v14 = v9;
      objc_storeStrong(v8, v9);
      v9 = v14;
    }
  }

  return MEMORY[0x2821F96F8](v8, v9);
}

void sub_2770E0570(void *a1, uint64_t a2)
{
  v2 = a2;
  v7 = 0;
  v4 = a1[4];
  if (!a2)
  {
    v2 = *(*(a1[5] + 8) + 40);
  }

  (*(v4 + 16))(v4, 1, a1[6], a1[6], v2, &v7);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

uint64_t sub_2770E0638(void *a1)
{
  v2 = objc_opt_class();
  v3 = [a1 statusCode];

  return [v2 tsu_isSuccessStatusCode:v3];
}

uint64_t sub_2770E06EC(int *a1, int *a2, int *a3, _BOOL4 *a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unsigned int a11, int *a12)
{
  v16 = a10;
  v608 = *MEMORY[0x277D85DE8];
  v604 = xmmword_2771393C0;
  v603 = 0uLL;
  v602 = 0;
  v601 = 0;
  v600 = 0uLL;
  v599 = 0uLL;
  memset(v607, 0, sizeof(v607));
  v17 = a8 & 0x7C00000000000000;
  v597 = 0u;
  v598 = 0u;
  if ((a8 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((a8 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || (a8 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a7 > 0x38C15B09FFFFFFFFLL)
    {
      a7 = 0;
      a8 &= 0xFFFFC00000000000;
    }

    if ((~a8 & 0x7E00000000000000) == 0)
    {
      *a12 |= 1u;
      *&v604 = a7;
      *(&v604 + 1) = a8 & 0xFC003FFFFFFFFFFFLL;
LABEL_69:
      v21 = 0;
      goto LABEL_70;
    }

    *&v604 = a7;
    *(&v604 + 1) = a8 & 0xFC003FFFFFFFFFFFLL;
    if ((~a10 & 0x7E00000000000000) != 0 && (a6 & 0x7E00000000000000) != 0x7E00000000000000)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  v18 = a9;
  v19 = a10 & 0x7C00000000000000;
  if ((a10 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((a10 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || (a10 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a9 > 0x38C15B09FFFFFFFFLL)
    {
      v18 = 0;
      v16 = a10 & 0xFFFFC00000000000;
    }

    if ((~v16 & 0x7E00000000000000) == 0)
    {
      *a12 |= 1u;
      *&v604 = v18;
      *(&v604 + 1) = v16 & 0xFC003FFFFFFFFFFFLL;
      goto LABEL_69;
    }

    *&v604 = v18;
    *(&v604 + 1) = v16 & 0xFC003FFFFFFFFFFFLL;
    if ((~a6 & 0x7E00000000000000) != 0)
    {
      goto LABEL_69;
    }

LABEL_68:
    *a12 |= 1u;
    goto LABEL_69;
  }

  v20 = a6 & 0x7C00000000000000;
  if ((a6 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((a6 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || (a6 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a5 > 0x38C15B09FFFFFFFFLL)
    {
      a5 = 0;
      a6 &= 0xFFFFC00000000000;
    }

    if ((~a6 & 0x7E00000000000000) == 0)
    {
      *a12 |= 1u;
    }

    v21 = 0;
    *&v604 = a5;
    *(&v604 + 1) = a6 & 0xFC003FFFFFFFFFFFLL;
LABEL_70:
    *a1 = 0;
    *a2 = 0;
LABEL_71:
    *a3 = 0;
    goto LABEL_72;
  }

  v22 = a6 & 0x1FFFFFFFFFFFFLL;
  if (v20 == 0x7800000000000000)
  {
    v23 = 0;
  }

  else if ((~a6 & 0x6000000000000000) != 0)
  {
    v23 = a6 & 0x7FFE000000000000;
    if (v22 > 0x1ED09BEAD87C0 || v22 == 0x1ED09BEAD87C0 && a5 > 0x378D8E63FFFFFFFFLL)
    {
      v22 = 0;
      a5 = 0;
    }
  }

  else
  {
    v22 = 0;
    a5 = 0;
    v23 = (4 * a6) & 0x7FFE000000000000;
  }

  v24 = a8 & 0x1FFFFFFFFFFFFLL;
  if (v17 == 0x7800000000000000)
  {
    v25 = 0;
  }

  else if ((~a8 & 0x6000000000000000) != 0)
  {
    v25 = a8 & 0x7FFE000000000000;
    if (v24 > 0x1ED09BEAD87C0 || v24 == 0x1ED09BEAD87C0 && a7 > 0x378D8E63FFFFFFFFLL)
    {
      v24 = 0;
      a7 = 0;
    }
  }

  else
  {
    v24 = 0;
    a7 = 0;
    v25 = (4 * a8) & 0x7FFE000000000000;
  }

  v26 = a10 & 0x1FFFFFFFFFFFFLL;
  if (v19 == 0x7800000000000000)
  {
    v27 = 0;
LABEL_46:
    v28 = a9;
    goto LABEL_53;
  }

  if ((~a10 & 0x6000000000000000) != 0)
  {
    v27 = a10 & 0x7FFE000000000000;
    if (v26 <= 0x1ED09BEAD87C0 && (v26 != 0x1ED09BEAD87C0 || a9 <= 0x378D8E63FFFFFFFFLL))
    {
      goto LABEL_46;
    }

    v26 = 0;
    v28 = 0;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v27 = (4 * a10) & 0x7FFE000000000000;
  }

LABEL_53:
  v29 = a10 & 0x8000000000000000;
  v30 = (a8 ^ a6) & 0x8000000000000000;
  if (v20 == 0x7800000000000000)
  {
    if (v17 != 0x7800000000000000 && !(v24 | a7))
    {
      goto LABEL_67;
    }

    if (v19 == 0x7800000000000000)
    {
      if (v30 != v29)
      {
        goto LABEL_67;
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if (v17 == 0x7800000000000000)
  {
    if (v19 == 0x7800000000000000)
    {
      if (v30 != v29 || !(v22 | a5))
      {
        goto LABEL_67;
      }

LABEL_63:
      v31 = v29 | 0x7800000000000000;
      goto LABEL_74;
    }

    if (!(v22 | a5))
    {
LABEL_67:
      v604 = xmmword_277123880;
      goto LABEL_68;
    }

LABEL_73:
    v31 = v30 | 0x7800000000000000;
    goto LABEL_74;
  }

  if (v19 == 0x7800000000000000)
  {
    v21 = 0;
    *&v604 = 0;
    *(&v604 + 1) = v29 | 0x7800000000000000;
    goto LABEL_70;
  }

  v33 = a11;
  v34 = (v23 >> 49) - 6176;
  v35 = v34 + (v25 >> 49);
  if (v35 >= 0)
  {
    v36 = v35 << 49;
  }

  else
  {
    v36 = 0;
  }

  if (!(v22 | a5))
  {
    if (v26 | v28)
    {
      goto LABEL_90;
    }

LABEL_86:
    if (v36 >= v27)
    {
      v36 = v27;
    }

    *(&v604 + 1) = v36;
    if (v30 == v29)
    {
      v31 = v36 | v29;
    }

    else
    {
      if (a11 != 1)
      {
        goto LABEL_75;
      }

      v31 = v36 | 0x8000000000000000;
    }

LABEL_74:
    *(&v604 + 1) = v31;
LABEL_75:
    *&v604 = 0;
    goto LABEL_69;
  }

  if (!v24 && !a7 && !v26 && !v28)
  {
    goto LABEL_86;
  }

LABEL_90:
  v37 = v22 | a5;
  if (v22 | a5)
  {
    v38 = HIDWORD(a5);
    if (!(a5 >> 53))
    {
      v38 = a5;
    }

    v39 = -1022;
    if (a5 >> 53)
    {
      v39 = -990;
    }

    if (v22)
    {
      v38 = v22;
      v39 = -958;
    }

    v40 = &unk_280A5C3F0 + 32 * v39 + 32 * (COERCE_UNSIGNED_INT64(v38) >> 52);
    v42 = *(v40 - 8);
    v41 = v40 - 32;
    v37 = v42;
    if (!v42)
    {
      v37 = *(v41 + 6);
      v43 = *(v41 + 1);
      if (v22 > v43 || v22 == v43 && a5 >= *(v41 + 2))
      {
        ++v37;
      }
    }
  }

  v44 = v24 | a7;
  if (v24 | a7)
  {
    v45 = HIDWORD(a7);
    if (!(a7 >> 53))
    {
      v45 = a7;
    }

    v46 = -1022;
    if (a7 >> 53)
    {
      v46 = -990;
    }

    if (v24)
    {
      v45 = v24;
      v46 = -958;
    }

    v47 = &unk_280A5C3F0 + 32 * v46 + 32 * (COERCE_UNSIGNED_INT64(v45) >> 52);
    v49 = *(v47 - 8);
    v48 = v47 - 32;
    v44 = v49;
    if (!v49)
    {
      v44 = *(v48 + 6);
      v50 = *(v48 + 1);
      if (v24 > v50 || v24 == v50 && a7 >= *(v48 + 2))
      {
        ++v44;
      }
    }
  }

  if (v26 | v28)
  {
    v51 = HIDWORD(v28);
    if (!(v28 >> 53))
    {
      v51 = v28;
    }

    v52 = -1022;
    if (v28 >> 53)
    {
      v52 = -990;
    }

    if (v26)
    {
      v51 = v26;
      v52 = -958;
    }

    v53 = &unk_280A5C3F0 + 32 * v52 + 32 * (COERCE_UNSIGNED_INT64(v51) >> 52);
    v55 = *(v53 - 8);
    v54 = v53 - 32;
    v56 = v55;
    if (!v55)
    {
      v56 = *(v54 + 6);
      v57 = *(v54 + 1);
      if (v26 > v57 || v26 == v57 && v28 >= *(v54 + 2))
      {
        v56 = (v56 + 1);
      }
    }
  }

  else
  {
    v56 = 0;
  }

  if (!(v22 | a5) || !(v24 | a7))
  {
    v308 = v27 >= v36;
    v58 = v27 - v36;
    if (v58 != 0 && v308)
    {
      v59 = v58 >> 49;
      if (34 - v56 >= v59)
      {
        v59 = v59;
      }

      else
      {
        v59 = (34 - v56);
      }

      if (v59)
      {
        if (v56 > 19)
        {
          v74 = qword_280A5D8C0[v59];
          v75 = HIDWORD(v74) * v28;
          v76 = v74 * HIDWORD(v28) + v75 + ((v74 * v28) >> 32);
          *&v604 = (v74 * v28) | (v76 << 32);
          v16 = HIDWORD(v75) + HIDWORD(v74) * HIDWORD(v28) + HIDWORD(v76) + v74 * v26;
        }

        else if (v59 > 19)
        {
          v80 = *&xmmword_280A5D960[(v59 - 20)];
          v81 = *(&xmmword_280A5D960[(v59 - 20)] + 1);
          v82 = HIDWORD(v80);
          v83 = v80 * HIDWORD(v28);
          v84 = v80 * v28;
          v85 = v82 * v28 + v83 + HIDWORD(v84);
          *&v604 = v84 | (v85 << 32);
          v16 = HIDWORD(v83) + v82 * HIDWORD(v28) + HIDWORD(v85) + v81 * v28;
        }

        else
        {
          v60 = qword_280A5D8C0[v59];
          v61 = HIDWORD(v60);
          v62 = v60 * HIDWORD(v28);
          v63 = v60 * v28;
          v64 = v61 * v28 + v62 + HIDWORD(v63);
          v16 = HIDWORD(v62) + v61 * HIDWORD(v28) + HIDWORD(v64);
          *&v604 = v63 | (v64 << 32);
        }
      }

      else
      {
        *&v604 = a9;
      }

      *(&v604 + 1) = (v27 - (v59 << 49)) & 0x7FFE000000000000 | v16 | v29;
    }

    else
    {
      *&v604 = v28;
      *(&v604 + 1) = v26 | v29 | v27;
    }

    goto LABEL_69;
  }

  v65 = v27 >> 49;
  v589 = v34 + (v25 >> 49) - 6176;
  v66 = (v44 + v37);
  if (v66 <= 19)
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = a7 * a5;
    v71 = v66 - 1;
    if (a7 * a5 >= qword_280A5D8C0[v71])
    {
      v66 = v66;
    }

    else
    {
      v66 = v71;
    }

LABEL_157:
    v86 = v56;
    v87 = v589;
    goto LABEL_158;
  }

  if (v66 == 20)
  {
    v72 = a7 * HIDWORD(a5);
    v73 = HIDWORD(a7) * a5 + v72 + ((a7 * a5) >> 32);
    v69 = HIDWORD(v72) + HIDWORD(a7) * HIDWORD(a5) + HIDWORD(v73);
    v70 = (a7 * a5) | (v73 << 32);
    if (v69 || v70 >= qword_280A5D958)
    {
      v67 = 0;
      v68 = 0;
      v66 = 20;
    }

    else
    {
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v66 = 19;
    }

    goto LABEL_157;
  }

  if (v66 > 0x26)
  {
    if (v66 == 39)
    {
      v117 = HIDWORD(v24);
      v118 = v24 * HIDWORD(a5);
      v119 = HIDWORD(v118) + HIDWORD(v24) * HIDWORD(a5);
      v120 = HIDWORD(v24) * a5 + v118 + ((v24 * a5) >> 32);
      v121 = a7 * HIDWORD(a5);
      v122 = HIDWORD(a7) * a5 + v121 + ((a7 * a5) >> 32);
      v123 = (a7 * a5) | (v122 << 32);
      v124 = __PAIR128__(v119, (v24 * a5) | (v120 << 32)) + __PAIR128__(HIDWORD(v120), HIDWORD(v121) + HIDWORD(a7) * HIDWORD(a5) + HIDWORD(v122));
      v125 = HIDWORD(v22);
      v126 = v22;
      v127 = v24 * HIDWORD(v22);
      v128 = v24 * v22;
      v129 = v117 * v22;
      v130 = HIDWORD(v127) + v117 * HIDWORD(v22);
      v131 = v129 + v127 + HIDWORD(v128);
      v132 = HIDWORD(v131);
      v133 = v128 | (v131 << 32);
      v134 = a7 * HIDWORD(v22);
      v135 = a7 * v22;
      v136 = HIDWORD(v134) + HIDWORD(a7) * v125;
      v137 = HIDWORD(a7) * v126 + v134 + HIDWORD(v135);
      v138 = v135 | (v137 << 32);
      v139 = __PAIR128__(v130, v133) + __PAIR128__(v132, v136 + HIDWORD(v137));
      v69 = v124 + v138;
      v308 = __CFADD__(__CFADD__(v124, v138), v139);
      v140 = __CFADD__(v124, v138) + v139;
      v141 = v308;
      v68 = *(&v124 + 1) + v140;
      if (__CFADD__(*(&v124 + 1), v140))
      {
        v142 = 1;
      }

      else
      {
        v142 = v141;
      }

      v67 = *(&v139 + 1) + v142;
      if (v68)
      {
        goto LABEL_223;
      }

      if (v69 < qword_280A5DA88)
      {
        v68 = 0;
        v66 = 38;
        v70 = (a7 * a5) | (v122 << 32);
        v67 = *(&v139 + 1) + v142;
        goto LABEL_471;
      }

      v67 = *(&v139 + 1) + v142;
      if (v69 != qword_280A5DA88 || v123 >= qword_280A5DA80)
      {
LABEL_223:
        v66 = 39;
      }

      else
      {
        v68 = 0;
        v66 = 38;
      }

LABEL_224:
      v70 = v123;
LABEL_471:
      v86 = v56;
      v87 = v589;
      goto LABEL_158;
    }

    v587 = (v44 + v37);
    if (v66 > 0x39)
    {
      v204 = HIDWORD(v24);
      v205 = v24 * HIDWORD(a5);
      v206 = HIDWORD(v205) + HIDWORD(v24) * HIDWORD(a5);
      v207 = HIDWORD(v24) * a5 + v205 + ((v24 * a5) >> 32);
      v208 = a7 * HIDWORD(a5);
      v209 = HIDWORD(a7) * a5 + v208 + ((a7 * a5) >> 32);
      v123 = (a7 * a5) | (v209 << 32);
      v210 = __PAIR128__(v206, (v24 * a5) | (v207 << 32)) + __PAIR128__(HIDWORD(v207), HIDWORD(v208) + HIDWORD(a7) * HIDWORD(a5) + HIDWORD(v209));
      v211 = HIDWORD(v22);
      v212 = v22;
      v213 = v24 * HIDWORD(v22);
      v214 = v24 * v22;
      v215 = v204 * v22;
      v216 = HIDWORD(v213) + v204 * HIDWORD(v22);
      v217 = v215 + v213 + HIDWORD(v214);
      v218 = HIDWORD(v217);
      v219 = v214 | (v217 << 32);
      v220 = a7 * HIDWORD(v22);
      v221 = a7 * v22;
      v222 = HIDWORD(v220) + HIDWORD(a7) * v211;
      v223 = HIDWORD(a7) * v212 + v220 + HIDWORD(v221);
      v224 = v221 | (v223 << 32);
      v225 = __PAIR128__(v216, v219) + __PAIR128__(v218, v222 + HIDWORD(v223));
      v69 = v210 + v224;
      v308 = __CFADD__(__CFADD__(v210, v224), v225);
      v226 = __CFADD__(v210, v224) + v225;
      v227 = v308;
      v68 = *(&v210 + 1) + v226;
      if (__CFADD__(*(&v210 + 1), v226))
      {
        v228 = 1;
      }

      else
      {
        v228 = v227;
      }

      v229 = *(&v225 + 1) + v228;
      if (v587 == 58)
      {
        v67 = *(&v225 + 1) + v228;
        if (v229 || v68 >= qword_280A5DCE0 && (v68 != qword_280A5DCE0 || __PAIR128__(v69, v123) >= xmmword_280A5DCD0))
        {
          v66 = 58;
        }

        else
        {
          v67 = 0;
          v66 = 57;
        }
      }

      else
      {
        v285 = &xmmword_280A5DA90[2 * (v587 - 40)];
        v286 = *(v285 + 3);
        v67 = v229;
        if (v229 < v286 || v229 == v286 && ((v359 = *(v285 + 2), v68 < v359) || v68 == v359 && __PAIR128__(v69, v123) < *v285))
        {
          v66 = (v587 - 1);
        }

        else
        {
          v66 = v587;
        }
      }

      goto LABEL_224;
    }

    if (v22)
    {
      if (v24)
      {
        v167 = HIDWORD(v24);
        v168 = v24 * HIDWORD(a5);
        v169 = HIDWORD(v168) + HIDWORD(v24) * HIDWORD(a5);
        v170 = HIDWORD(v24) * a5 + v168 + ((v24 * a5) >> 32);
        v171 = a7 * HIDWORD(a5);
        v172 = HIDWORD(a7) * a5 + v171 + ((a7 * a5) >> 32);
        v173 = (a7 * a5) | (v172 << 32);
        v174 = __PAIR128__(v169, (v24 * a5) | (v170 << 32)) + __PAIR128__(HIDWORD(v170), HIDWORD(v171) + HIDWORD(a7) * HIDWORD(a5) + HIDWORD(v172));
        v175 = HIDWORD(v22);
        v176 = v22;
        v177 = v24 * HIDWORD(v22);
        v178 = v24 * v22;
        v179 = v167 * v22;
        v180 = HIDWORD(v177) + v167 * HIDWORD(v22);
        v181 = v179 + v177 + HIDWORD(v178);
        v182 = HIDWORD(v181);
        v183 = v178 | (v181 << 32);
        v184 = a7 * HIDWORD(v22);
        v185 = a7 * v22;
        v186 = HIDWORD(v184) + HIDWORD(a7) * v175;
        v187 = HIDWORD(a7) * v176 + v184 + HIDWORD(v185);
        v188 = v185 | (v187 << 32);
        v189 = __PAIR128__(v180, v183) + __PAIR128__(v182, v186 + HIDWORD(v187));
        v69 = v174 + v188;
        v308 = __CFADD__(__CFADD__(v174, v188), v189);
        v190 = __CFADD__(v174, v188) + v189;
        v191 = v308;
        v192 = *(&v174 + 1) + v190;
        if (__CFADD__(*(&v174 + 1), v190))
        {
          v193 = 1;
        }

        else
        {
          v193 = v191;
        }

        v194 = *(&v189 + 1) + v193;
LABEL_465:
        v369 = &xmmword_280A5DA90[2 * (v587 - 40)];
        v370 = *(v369 + 2);
        v68 = v192;
        if (v192 < v370 || v192 == v370 && __PAIR128__(v69, v173) < *v369)
        {
          v66 = (v587 - 1);
        }

        else
        {
          v66 = v587;
        }

        v70 = v173;
        v67 = v194;
        goto LABEL_471;
      }

      v194 = 0;
      v360 = HIDWORD(v22);
      v361 = HIDWORD(a7) * v22;
      v362 = a7 * v22;
      v363 = a7 * v360;
      v331 = HIDWORD(v361) + HIDWORD(a7) * v360;
      v364 = HIDWORD(a7) * a5;
      v365 = v363 + v361 + HIDWORD(v362);
      v366 = v362 | (v365 << 32);
      v335 = HIDWORD(v365);
      v367 = a7 * HIDWORD(a5) + v364 + ((a7 * a5) >> 32);
      v368 = HIDWORD(v364) + HIDWORD(a7) * HIDWORD(a5) + HIDWORD(v367);
      v173 = (a7 * a5) | (v367 << 32);
      v338 = __CFADD__(v366, v368);
      v69 = v366 + v368;
    }

    else
    {
      v194 = 0;
      v327 = HIDWORD(v24);
      v328 = v24 * HIDWORD(a5);
      v329 = v24 * a5;
      v330 = v327 * a5;
      v331 = HIDWORD(v328) + v327 * HIDWORD(a5);
      v332 = a7 * HIDWORD(a5);
      v333 = v330 + v328 + HIDWORD(v329);
      v334 = v329 | (v333 << 32);
      v335 = HIDWORD(v333);
      v336 = HIDWORD(a7) * a5 + v332 + ((a7 * a5) >> 32);
      v337 = HIDWORD(v332) + HIDWORD(a7) * HIDWORD(a5) + HIDWORD(v336);
      v173 = (a7 * a5) | (v336 << 32);
      v338 = __CFADD__(v334, v337);
      v69 = v334 + v337;
    }

    v192 = v335 + v338 + v331;
    goto LABEL_465;
  }

  if (v37 > 19)
  {
    v77 = HIDWORD(a7) * a5;
    v78 = a7 * HIDWORD(a5) + v77 + ((a7 * a5) >> 32);
    v70 = (a7 * a5) | (v78 << 32);
    v79 = a7 * v22 + HIDWORD(a7) * HIDWORD(a5);
  }

  else
  {
    v77 = a7 * HIDWORD(a5);
    v78 = HIDWORD(a7) * a5 + v77 + ((a7 * a5) >> 32);
    v70 = (a7 * a5) | (v78 << 32);
    v79 = v24 * a5 + HIDWORD(a7) * HIDWORD(a5);
  }

  v69 = v79 + HIDWORD(v77) + HIDWORD(v78);
  v86 = v56;
  v87 = v589;
  v67 = 0;
  v68 = 0;
  if (__PAIR128__(v69, v70) < xmmword_280A5D960[(v66 - 21)])
  {
    v66 = (v66 - 1);
  }

LABEL_158:
  v88 = v65 - 6176;
  if (!(v26 | v28))
  {
    v89 = *a12;
    *a12 = 0;
    v582 = v89;
    if (v66 < 35)
    {
      if (v87 < 6112 || v66 + v87 > 6145)
      {
        *&v604 = v70;
        *(&v604 + 1) = v69;
      }

      else
      {
        v94 = v87 - 6111;
        if (v66 > 19)
        {
          v195 = qword_280A5D8C0[v94];
          v196 = HIDWORD(v195) * v70;
          v197 = v195 * HIDWORD(v70) + v196 + ((v195 * v70) >> 32);
          *&v604 = (v195 * v70) | (v197 << 32);
          *(&v604 + 1) = HIDWORD(v196) + HIDWORD(v195) * HIDWORD(v70) + HIDWORD(v197) + v195 * v69;
        }

        else if (v87 > 0x17F2)
        {
          v230 = *&xmmword_280A5D960[v87 - 6131];
          v231 = HIDWORD(v230);
          v232 = v230 * HIDWORD(v70);
          v233 = v230 * v70;
          v234 = v231 * v70 + v232 + HIDWORD(v233);
          v235 = HIDWORD(v232) + v231 * HIDWORD(v70) + HIDWORD(v234) + *(&xmmword_280A5D960[v87 - 6131] + 1) * v70;
          *&v604 = v233 | (v234 << 32);
          *(&v604 + 1) = v235;
        }

        else
        {
          v95 = qword_280A5D8C0[v94];
          v96 = HIDWORD(v95);
          v97 = v95 * HIDWORD(v70);
          v98 = v95 * v70;
          v99 = v96 * v70 + v97 + HIDWORD(v98);
          *&v604 = v98 | (v99 << 32);
          *(&v604 + 1) = HIDWORD(v97) + v96 * HIDWORD(v70) + HIDWORD(v99);
        }

        v66 = (v66 + v94);
        v87 = 6111;
      }
    }

    else
    {
      v90 = v66 - 34;
      v91 = v65 - 6176;
      if (v66 > 0x26)
      {
        *&v605 = v70;
        *(&v605 + 1) = v69;
        if (v66 > 0x39)
        {
          *&v606 = v68;
          *(&v606 + 1) = v67;
          sub_277061970(v66, (v66 - 34), &v605, &v597, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
          v143 = v597;
        }

        else
        {
          v606 = v68;
          sub_277061154(v66, v66 - 34, &v605, v607, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
          v143 = v607[0];
        }

        v604 = v143;
      }

      else
      {
        *&v600 = v70;
        *(&v600 + 1) = v69;
        sub_277060DB0(v66, v66 - 34, v70, v69, &v604, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
      }

      v87 = v90 + v589;
      v33 = a11;
      v88 = v91;
      if (v602)
      {
        v89 = v582;
        if (v87 == -6177)
        {
          *a12 |= 0x30u;
          v66 = 34;
          v87 = -6176;
        }

        else
        {
          ++v87;
          v66 = 34;
        }
      }

      else
      {
        v66 = 34;
        v89 = v582;
      }
    }

    if (v66 + v87 >= 6146)
    {
      if (v33)
      {
        *(&v604 + 1) |= v30;
        v21 = v603;
        v236 = DWORD1(v603);
        v238 = DWORD2(v603);
        v237 = HIDWORD(v603);
        sub_2770E4D60(v33, SDWORD1(v603), v603, SHIDWORD(v603), SDWORD2(v603), v87, &v604, a12);
        v239 = *a12;
      }

      else
      {
        *&v604 = 0;
        *(&v604 + 1) = v30 | 0x7800000000000000;
        v239 = *a12 | 0x28;
        v238 = DWORD2(v603);
        v237 = HIDWORD(v603);
        v21 = v603;
        v236 = DWORD1(v603);
      }

      *a12 = v239 | v89;
      *a1 = v237;
      goto LABEL_320;
    }

    v577 = v30;
    if (v66 + v87 <= -6143)
    {
      if (v87 <= -6177)
      {
        v240 = -6176 - v87;
        v242 = v603;
        v241 = DWORD1(v603);
        v243 = DWORD2(v603);
        v244 = HIDWORD(v603);
        v603 = 0uLL;
        v245 = v66 - (-6176 - v87);
        v581 = v33;
        if (v66 > -6176 - v87)
        {
          if (v66 <= 0x12)
          {
            sub_277060C78(v66, v240, v604, &v601, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
            v246 = &qword_280A5D8C0[v245];
            if (!v602)
            {
              v246 = &v601;
            }

            v247 = *v246;
LABEL_377:
            *&v604 = v247;
            goto LABEL_536;
          }

          v600 = v604;
          sub_277060DB0(v66, v240, v604, *(&v604 + 1), &v604, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
          if (v602)
          {
            if (v245 > 19)
            {
              v604 = xmmword_280A5D960[v245 - 20];
              goto LABEL_536;
            }

            v247 = qword_280A5D8C0[v245];
            goto LABEL_377;
          }

LABEL_536:
          if (v242 | v244 && HIDWORD(v603))
          {
            v400 = v604;
            *&v604 = v604 - 1;
            if (!v400)
            {
              --*(&v604 + 1);
            }

            HIDWORD(v603) = 0;
          }

          else
          {
            if (v241 | v243 && DWORD2(v603))
            {
              v308 = __CFADD__(v604, 1);
              *&v604 = v604 + 1;
              if (v308)
              {
                ++*(&v604 + 1);
              }

              DWORD2(v603) = 0;
              LODWORD(v603) = 1;
              goto LABEL_560;
            }

            if (v603 != 0)
            {
              v401 = (v242 | v244) == 0;
              if (!DWORD2(v603))
              {
                v401 = 1;
              }

              if (v401)
              {
                v402 = (v241 | v243) == 0;
                if (!HIDWORD(v603))
                {
                  v402 = 1;
                }

                if (v402)
                {
                  goto LABEL_560;
                }

                *&v603 = 1;
              }

              else
              {
                *&v603 = 0x100000000;
              }

              *(&v603 + 1) = 0;
LABEL_560:
              v87 = -6176;
              v33 = v581;
              goto LABEL_561;
            }

            LODWORD(v603) = (v242 | v244) != 0;
            if (!(v241 | v243))
            {
              goto LABEL_560;
            }
          }

          DWORD1(v603) = 1;
          goto LABEL_560;
        }

        if (v66 != v240)
        {
          v604 = 0uLL;
          DWORD1(v603) = 1;
          goto LABEL_536;
        }

        if (v66 > 0x13)
        {
          v357 = &qword_280A5D2B0[2 * (v66 - 20)];
          v358 = v357[1];
          if (*(&v604 + 1) >= v358)
          {
            if (*(&v604 + 1) != v358)
            {
              goto LABEL_534;
            }

            v399 = *v357;
            if (v604 >= v399)
            {
              if (v604 == v399)
              {
                goto LABEL_346;
              }

              goto LABEL_534;
            }
          }
        }

        else
        {
          v271 = qword_280A5D210[(v66 - 1)];
          if (v604 >= v271)
          {
            if (v604 == v271)
            {
LABEL_346:
              v272 = 0;
              DWORD2(v603) = 1;
LABEL_535:
              v604 = v272;
              goto LABEL_536;
            }

LABEL_534:
            v272 = 1;
            LODWORD(v603) = 1;
            goto LABEL_535;
          }
        }

        v272 = 0;
        DWORD1(v603) = 1;
        goto LABEL_535;
      }

      v255 = v87 - v88;
      if (v87 <= v88)
      {
LABEL_561:
        v21 = v603;
        v236 = DWORD1(v603);
        v404 = DWORD2(v603);
        v403 = HIDWORD(v603);
        if (v603 != 0)
        {
          *a12 |= 0x30u;
        }

        *(&v604 + 1) |= ((v87 + 6176) << 49) | v577;
        if (v33)
        {
          sub_2770E4D60(v33, v236, v21, v403, v404, v87, &v604, a12);
        }

        *a12 |= v582;
        *a1 = v403;
        *a2 = v404;
        goto LABEL_566;
      }

      if (v255 >= 34 - v66)
      {
        v255 = 34 - v66;
      }

      if (v255)
      {
        if (v66 > 19)
        {
          v341 = qword_280A5D8C0[v255];
          v342 = v604 * HIDWORD(v341);
          v343 = DWORD1(v604) * v341 + v342 + ((v604 * v341) >> 32);
          v344 = (v604 * v341) | (v343 << 32);
          v345 = HIDWORD(v342) + DWORD1(v604) * HIDWORD(v341) + HIDWORD(v343) + *(&v604 + 1) * v341;
          *&v604 = v344;
        }

        else
        {
          if (v255 <= 19)
          {
            v256 = DWORD1(v604);
            v257 = qword_280A5D8C0[v255];
            v258 = v257 * DWORD1(v604);
            v259 = HIDWORD(v257) * v604 + v258 + ((v257 * v604) >> 32);
            *&v604 = (v257 * v604) | (v259 << 32);
            *(&v604 + 1) = HIDWORD(v258) + HIDWORD(v257) * v256 + HIDWORD(v259);
            goto LABEL_488;
          }

          v381 = *&xmmword_280A5D960[v255 - 20];
          v382 = HIDWORD(v381);
          v383 = v381 * DWORD1(v604);
          v384 = v381 * v604;
          v385 = v382 * v604 + v383 + HIDWORD(v384);
          v345 = HIDWORD(v383) + v382 * DWORD1(v604) + HIDWORD(v385) + *(&xmmword_280A5D960[v255 - 20] + 1) * v604;
          *&v604 = v384 | (v385 << 32);
        }

        *(&v604 + 1) = v345;
      }

LABEL_488:
      v87 -= v255;
      goto LABEL_561;
    }

    *(&v604 + 1) |= ((v87 + 6176) << 49) | v30;
    v21 = v603;
    v248 = DWORD1(v603);
    v250 = DWORD2(v603);
    v249 = HIDWORD(v603);
    if (!v33)
    {
      v254 = 32;
      goto LABEL_331;
    }

    v251 = v87;
    v588 = v66;
    v592 = DWORD1(v603);
    v252 = HIDWORD(v603);
    v253 = DWORD2(v603);
    sub_2770E4D60(v33, SDWORD1(v603), v603, SHIDWORD(v603), SDWORD2(v603), v87, &v604, a12);
    if (v251 == -6176)
    {
      LODWORD(v66) = v588;
      v248 = v592;
      v249 = v252;
      v250 = v253;
      if ((*(&v604 + 1) & 0x1FFFFFFFFFFFFuLL) < 0x314DC6448D93)
      {
        goto LABEL_317;
      }

      v254 = 32;
      if ((*(&v604 + 1) & 0x1FFFFFFFFFFFFLL) == 0x314DC6448D93)
      {
        LODWORD(v66) = v588;
        v248 = v592;
        v249 = v252;
        v250 = v253;
        if (v604 >= 0x38C15B0A00000000)
        {
LABEL_331:
          if (!(v248 | v21 | v249 | v250))
          {
            v254 = 0;
          }

          v260 = *a12 | v254;
          if ((v260 & 0x20) == 0 && (*(&v604 + 1) & 0x7FFE000000000000uLL) > v27)
          {
            v261 = ((*(&v604 + 1) & 0x7FFE000000000000) - v27) >> 49;
            if (34 - v66 < v261)
            {
              LODWORD(v261) = 34 - v66;
            }

            if (v261)
            {
              v262 = v261;
              v263 = *(&v604 + 1) - (v261 << 49);
              if (v66 > 19)
              {
                v346 = qword_280A5D8C0[v262];
                v347 = DWORD1(v604);
                v348 = HIDWORD(v346) * v604;
                v349 = v346 * DWORD1(v604) + v348 + ((v346 * v604) >> 32);
                *&v604 = (v346 * v604) | (v349 << 32);
                v269 = HIDWORD(v348) + HIDWORD(v346) * v347 + HIDWORD(v349) + v346 * (*(&v604 + 1) & 0x1FFFFFFFFFFFFLL);
              }

              else
              {
                if (v262 > 19)
                {
                  v386 = *&xmmword_280A5D960[(v262 - 20)];
                  v387 = HIDWORD(v386);
                  v388 = v386 * DWORD1(v604);
                  v389 = v386 * v604;
                  v390 = v387 * v604 + v388 + HIDWORD(v389);
                  v270 = v389 | (v390 << 32);
                  v269 = HIDWORD(v388) + v387 * DWORD1(v604) + HIDWORD(v390) + *(&xmmword_280A5D960[(v262 - 20)] + 1) * v604;
                }

                else
                {
                  v264 = qword_280A5D8C0[v262];
                  v265 = HIDWORD(v264);
                  v266 = v264 * DWORD1(v604);
                  v267 = v264 * v604;
                  v268 = v265 * v604 + v266 + HIDWORD(v267);
                  v269 = HIDWORD(v266) + v265 * DWORD1(v604) + HIDWORD(v268);
                  v270 = v267 | (v268 << 32);
                }

                *&v604 = v270;
              }

              *(&v604 + 1) = v263 & 0x7FFE000000000000 | v577 | v269;
            }
          }

          v391 = v260 | v582;
          goto LABEL_493;
        }

LABEL_317:
        v254 = 48;
        goto LABEL_331;
      }
    }

    else
    {
      v254 = 32;
    }

    LODWORD(v66) = v588;
    v248 = v592;
    v249 = v252;
    v250 = v253;
    goto LABEL_331;
  }

  v580 = v67;
  v92 = v88 + v86 - v87 - v66;
  if (v92 >= 0)
  {
    v93 = 0;
    goto LABEL_228;
  }

  v573 = v68;
  v100 = v28;
  v101 = v26;
  v102 = v86;
  v103 = v88 + v86 - v87 - v66;
  v88 = v87;
  v87 = v65 - 6176;
  v86 = v66;
  v66 = v102;
  v26 = v69;
  v28 = v70;
  v69 = v101;
  v27 = v36;
  v29 = v30;
  v30 = a10 & 0x8000000000000000;
  v92 = -v92;
  if (v86 >= 35 && v86 <= v92)
  {
    v586 = v102;
    v591 = v100;
    v584 = v101;
    v165 = v88;
    v576 = a10 & 0x8000000000000000;
    v166 = (v86 - 34);
    if (v86 > 0x26)
    {
      *&v605 = v70;
      *(&v605 + 1) = v26;
      if (v86 > 0x39)
      {
        *&v606 = v68;
        *(&v606 + 1) = v67;
        sub_277061970(v86, v166, &v605, &v597, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
        v198 = v597;
      }

      else
      {
        v606 = v68;
        sub_277061154(v86, v166, &v605, v607, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
        v198 = v607[0];
      }

      v604 = v198;
    }

    else
    {
      *&v600 = v70;
      *(&v600 + 1) = v26;
      sub_277060DB0(v86, v166, v70, v26, &v604, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
    }

    v276 = v166 + v165;
    v21 = v603;
    if (v602)
    {
      v277 = v276 + 1;
    }

    else
    {
      v277 = v276;
    }

    v278 = DWORD2(v603);
    v279 = DWORD1(v603);
    if (v603 == 0)
    {
      if (v29 == v576)
      {
        v278 = 0;
        v280 = 0;
        v21 = 0;
LABEL_359:
        v279 = 1;
        goto LABEL_498;
      }

      v278 = 0;
      v21 = 1;
      if (v604 != __PAIR128__(0x314DC6448D93, 0x38C15B0A00000000) || v103 < 0xFFFFFFDD)
      {
        v280 = 0;
        v279 = 0;
        goto LABEL_498;
      }

      if (v586 > 19)
      {
        v392 = &qword_280A5D2B0[2 * (v586 - 20)];
        v393 = v392[1];
        if (v584 < v393)
        {
LABEL_497:
          v278 = 0;
          v280 = 0;
          v279 = 0;
LABEL_498:
          if (a11 || v277 < 6112)
          {
            *(&v604 + 1) |= (((v277 + 6176) & 0x3FFF) << 49) | v29;
            if (a11)
            {
              sub_2770E4D60(a11, v279, v21, v280, v278, v277, &v604, a12);
            }
          }

          else
          {
            *&v604 = 0;
            *(&v604 + 1) = v29 | 0x7800000000000000;
            *a12 |= 0x28u;
          }

          if (v279 | v21)
          {
            v394 = 1;
          }

          else
          {
            v394 = v280;
          }

          if ((v394 & 1) != 0 || v278)
          {
            *a12 |= 0x20u;
          }

          *a1 = v280;
          *a2 = v278;
          goto LABEL_786;
        }

        if (v584 != v393)
        {
          goto LABEL_641;
        }

        v281 = *v392;
      }

      else
      {
        v281 = qword_280A5D210[v586 - 1];
      }

      if (v591 >= v281)
      {
        if (v591 == v281)
        {
          v278 = 0;
          v21 = 0;
          v279 = 0;
          v280 = 1;
          goto LABEL_498;
        }

LABEL_641:
        v278 = 0;
        v280 = 0;
        v21 = 0;
        v604 = xmmword_277139390;
        --v277;
        goto LABEL_359;
      }

      goto LABEL_497;
    }

    if (HIDWORD(v603))
    {
      if (v576 != v29)
      {
        v339 = v604;
        v340 = v604 - 1;
        *&v604 = v604 - 1;
        v280 = 0;
        if (v339)
        {
          v279 = 1;
          if (v340 == 0x38C15B09FFFFFFFFLL && *(&v339 + 1) == 0x314DC6448D93)
          {
            v280 = 0;
            v604 = xmmword_277139390;
            --v277;
          }

          goto LABEL_498;
        }

        *(&v604 + 1) = *(&v339 + 1) - 1;
        goto LABEL_359;
      }
    }

    else
    {
      if (!DWORD2(v603))
      {
        v280 = 0;
        goto LABEL_498;
      }

      if (v576 != v29)
      {
        v278 = 0;
        v280 = 0;
        goto LABEL_359;
      }

      v308 = __CFADD__(v604, 1);
      *&v604 = v604 + 1;
      v278 = 0;
      if (v308)
      {
        v280 = 0;
        ++*(&v604 + 1);
        goto LABEL_363;
      }
    }

    v280 = 0;
LABEL_363:
    v21 = 1;
    goto LABEL_498;
  }

  v104 = v100;
  if (v103 > 0xFFFFFFDE || v86 >= 35)
  {
    v105 = v102 - v103;
    if (v103 < 0xFFFFFFDF || v86 > v92 || v105 <= 34)
    {
      v106 = v105 < 35 && v86 <= v92;
      v107 = v86 <= v92 || v105 <= 34;
      v108 = !v107 && v86 < 35;
      v109 = v108;
      if (!v106 && !v109)
      {
        v110 = v86 < 35 && v105 < v86;
        v111 = v110;
        v112 = v105 < 35 && v86 <= v105;
        v113 = !v112 || v86 <= v92;
        if (v113 && !v111)
        {
          v114 = v69;
          v563 = v88;
          v578 = v29;
          v600 = 0uLL;
          v115 = v103 > 0xFFFFFFDE;
          if ((v103 > 0xFFFFFFDE || v86 <= v92 || v86 >= v105) && (v103 < 0xFFFFFFDF || v86 < 35 || v86 >= v105))
          {
            if (v86 < v105)
            {
              v115 = 1;
            }

            if (v115)
            {
              v395 = v86 >= 35 && v105 <= 34;
              v396 = !v395;
              v397 = v103 < 0xFFFFFFDF || v86 < v105;
              v398 = v397 || v105 < 35;
              if (v398 && v396)
              {
                goto LABEL_69;
              }
            }

            *&v605 = v70;
            *(&v605 + 1) = v26;
            *&v606 = v573;
            *(&v606 + 1) = v580;
            sub_2770E4F78(v102, v86, v88, v92, v30, v29, v104, v69, &v605, a11, &v603 + 3, &v603 + 2, &v603 + 1, &v603, a12, &v604);
LABEL_872:
            v516 = DWORD2(v603);
            *a1 = HIDWORD(v603);
LABEL_873:
            *a2 = v516;
            v21 = v603;
            *a3 = DWORD1(v603);
            goto LABEL_72;
          }

          v116 = v88 - (v65 - 6176);
          if (v102 > 18)
          {
            if (v102 <= 0x26)
            {
              sub_277060DB0(v102, v116, v104, v69, &v599, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
              v114 = *(&v599 + 1);
              v104 = v599;
            }
          }

          else
          {
            sub_277060C78(v102, v116, v104, &v601, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
            v104 = v601;
          }

          if (v602)
          {
            *&v600 = v104;
            *(&v600 + 1) = v114;
            v378 = HIDWORD(v104);
            v379 = HIDWORD(qword_280A5D8C8) * v104;
            v380 = qword_280A5D8C8 * HIDWORD(v104) + v379 + ((qword_280A5D8C8 * v104) >> 32);
            v104 = (qword_280A5D8C8 * v104) | (v380 << 32);
            v114 = qword_280A5D8C8 * v114 + HIDWORD(qword_280A5D8C8) * v378 + HIDWORD(v379) + HIDWORD(v380);
          }

          v598 = 0uLL;
          *&v597 = v104;
          *(&v597 + 1) = v114;
          if (v29 == v30)
          {
            *&v605 = v28;
            *(&v605 + 1) = v26;
            *&v606 = v573;
            *(&v606 + 1) = v580;
            v595 = v597;
            v596 = v598;
            sub_2770E5940(&v605, &v595, &v597);
            goto LABEL_625;
          }

          *&v605 = v28;
          *(&v605 + 1) = v26;
          *&v606 = v573;
          *(&v606 + 1) = v580;
          v595 = v597;
          v596 = v598;
          sub_2770E59E8(&v605, &v595, &v597);
          if (DWORD1(v603))
          {
            *&v603 = 1;
            goto LABEL_625;
          }

          if (v603)
          {
            *&v603 = 0x100000000;
            goto LABEL_625;
          }

          if ((v28 & 1) == 0)
          {
            if (HIDWORD(v603))
            {
              *(&v603 + 1) = 1;
            }

            else if (DWORD2(v603))
            {
              *(&v603 + 1) = 0x100000000;
            }

LABEL_625:
            v605 = v597;
            v606 = v598;
            v421 = sub_2770E5A8C(&v605);
            v422 = v421 - 34;
            if (v421 < 34)
            {
              goto LABEL_628;
            }

            if (v421 == 34)
            {
              v604 = v597;
              goto LABEL_628;
            }

            v431 = v603;
            v432 = DWORD1(v603);
            v434 = DWORD2(v603);
            v433 = HIDWORD(v603);
            v603 = 0uLL;
            if (v421 > 0x26)
            {
              v605 = v597;
              if (v421 > 0x39)
              {
                v606 = v598;
                sub_277061970(v421, (v421 - 34), &v605, &v597, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
                v435 = *(&v597 + 1);
                v436 = v597;
              }

              else
              {
                v606 = v598;
                sub_277061154(v421, v421 - 34, &v605, v607, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
                v435 = *(&v607[0] + 1);
                v436 = *&v607[0];
              }

              *&v599 = v436;
              *(&v599 + 1) = v435;
            }

            else
            {
              v600 = v597;
              sub_277060DB0(v421, v421 - 34, v597, *(&v597 + 1), &v599, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
              v435 = *(&v599 + 1);
              v436 = v599;
            }

            v563 += v422 + v602;
            *&v604 = v436;
            *(&v604 + 1) = v435;
            if (v431 | v433 && HIDWORD(v603))
            {
              *&v604 = v436 - 1;
              if (v436)
              {
                HIDWORD(v603) = 0;
                DWORD1(v603) = 1;
                if (v435 == 0x314DC6448D93 && v436 == 0x38C15B0A00000000)
                {
                  v604 = xmmword_277139390;
                  --v563;
                }

                goto LABEL_628;
              }

              *(&v604 + 1) = v435 - 1;
              HIDWORD(v603) = 0;
LABEL_853:
              DWORD1(v603) = 1;
              goto LABEL_628;
            }

            if (v432 | v434 && DWORD2(v603))
            {
              *&v604 = v436 + 1;
              if (v436 == -1)
              {
                *(&v604 + 1) = v435 + 1;
              }

              DWORD2(v603) = 0;
              LODWORD(v603) = 1;
              goto LABEL_628;
            }

            if (v603 == 0)
            {
              LODWORD(v603) = (v431 | v433) != 0;
              if (!(v432 | v434))
              {
                goto LABEL_628;
              }

              goto LABEL_853;
            }

            v519 = (v431 | v433) == 0;
            if (!DWORD2(v603))
            {
              v519 = 1;
            }

            if (v519)
            {
              v525 = (v432 | v434) == 0;
              if (!HIDWORD(v603))
              {
                v525 = 1;
              }

              if (v525)
              {
LABEL_628:
                v423 = *(&v604 + 1);
                v424 = v563;
                if (a11)
                {
                  *&v600 = v604;
                  *(&v600 + 1) = v29 | *(&v604 + 1) | 0x3040000000000000;
                  sub_2770E4D60(a11, SDWORD1(v603), v603, SHIDWORD(v603), SDWORD2(v603), 0, &v600, a12);
                  v424 = v563 - 6176 + ((*(&v600 + 1) >> 49) & 0x3FFF);
                }

                v425 = v424 < -6176;
                v426 = v423 | ((v563 + 6176) << 49) | v29;
                *(&v604 + 1) = v426;
                if (!a11 && v563 >= 6112)
                {
                  *&v604 = 0;
                  *(&v604 + 1) = v29 | 0x7800000000000000;
                  *a12 |= 0x28u;
                  goto LABEL_872;
                }

                if (v563 > -6177)
                {
                  v578 = v423 | ((v563 + 6176) << 49) | v29;
                  goto LABEL_900;
                }

                v427 = v603;
                v428 = DWORD1(v603);
                v430 = DWORD2(v603);
                v429 = HIDWORD(v603);
                v603 = 0uLL;
                if (v563 <= 0xFFFFE7BD)
                {
                  DWORD1(v603) = 1;
                  *&v604 = 0;
                  *(&v604 + 1) = v29;
                  goto LABEL_899;
                }

                v438 = v426 & 0x1FFFFFFFFFFFFLL;
                if (v563 != -6210)
                {
                  *&v600 = v604;
                  *(&v600 + 1) = v426 & 0x1FFFFFFFFFFFFLL;
                  sub_277060DB0(34, -6176 - v563, v604, v438, &v604, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
                  v510 = *(&v604 + 1);
                  if (v602)
                  {
                    v511 = DWORD1(v604);
                    v512 = HIDWORD(qword_280A5D8C8) * v604;
                    v513 = qword_280A5D8C8 * DWORD1(v604) + v512 + ((qword_280A5D8C8 * v604) >> 32);
                    *&v604 = (qword_280A5D8C8 * v604) | (v513 << 32);
                    v510 = qword_280A5D8C8 * DWORD2(v604) + HIDWORD(qword_280A5D8C8) * v511 + HIDWORD(v512) + ((qword_280A5D8C8 * (HIDWORD(v604) & 0x1FFFF) + HIDWORD(qword_280A5D8C8) * DWORD2(v604)) << 32) + HIDWORD(v513);
                  }

                  v578 = v510 & 0x1FFFFFFFFFFFFLL | v29;
                  *(&v604 + 1) = v578;
                  if (v427 | v429 && HIDWORD(v603))
                  {
                    v514 = v604;
                    *&v604 = v604 - 1;
                    if (!v514)
                    {
                      *(&v604 + 1) = --v578;
                    }

                    HIDWORD(v603) = 0;
                  }

                  else
                  {
                    if (v428 | v430 && DWORD2(v603))
                    {
                      v308 = __CFADD__(v604, 1);
                      *&v604 = v604 + 1;
                      if (v308)
                      {
                        *(&v604 + 1) = ++v578;
                      }

                      DWORD2(v603) = 0;
                      LODWORD(v603) = 1;
                      goto LABEL_899;
                    }

                    if (v603 != 0)
                    {
                      v557 = (v427 | v429) == 0;
                      if (!DWORD2(v603))
                      {
                        v557 = 1;
                      }

                      if (v557)
                      {
                        v558 = (v428 | v430) == 0;
                        if (!HIDWORD(v603))
                        {
                          v558 = 1;
                        }

                        if (v558)
                        {
                          goto LABEL_899;
                        }

                        *&v603 = 1;
                      }

                      else
                      {
                        *&v603 = 0x100000000;
                      }

                      *(&v603 + 1) = 0;
LABEL_899:
                      v563 = -6176;
LABEL_900:
                      if (a11)
                      {
                        sub_2770E4D60(a11, SDWORD1(v603), v603, SHIDWORD(v603), SDWORD2(v603), v563, &v604, a12);
                        v578 = *(&v604 + 1);
                      }

                      if ((v578 & 0x7FFFFFFFFFFFFFFFLL) != 0x314DC6448D93 || v604 != 0x38C15B0A00000000)
                      {
                        goto LABEL_922;
                      }

                      if (a11 > 1)
                      {
                        if (a11 == 2)
                        {
                          if (v578 < 0)
                          {
                            goto LABEL_922;
                          }

                          goto LABEL_918;
                        }

                        if (a11 != 4)
                        {
                          goto LABEL_922;
                        }
                      }

                      else if (a11)
                      {
                        if (a11 != 1 || (v578 & 0x8000000000000000) == 0)
                        {
                          goto LABEL_922;
                        }

                        goto LABEL_918;
                      }

                      if (HIDWORD(v603) | v603)
                      {
LABEL_921:
                        v425 = 1;
LABEL_922:
                        v522 = DWORD2(v603);
                        v521 = HIDWORD(v603);
                        v21 = v603;
                        v523 = DWORD1(v603);
                        if (v603 != 0)
                        {
                          v524 = *a12;
                          *a12 |= 0x20u;
                          if (v425)
                          {
                            *a12 = v524 | 0x30;
                          }
                        }

                        *a1 = v521;
                        *a2 = v522;
                        *a3 = v523;
                        goto LABEL_72;
                      }

                      if (v578 < 0)
                      {
                        v520 = 1;
                      }

                      else
                      {
                        v520 = 2;
                      }

                      if (v520 != a11)
                      {
                        goto LABEL_922;
                      }

LABEL_918:
                      if (!HIDWORD(v603) && !*(&v603 + 4) && !v603)
                      {
                        goto LABEL_922;
                      }

                      goto LABEL_921;
                    }

                    LODWORD(v603) = (v427 | v429) != 0;
                    if (!(v428 | v430))
                    {
                      goto LABEL_899;
                    }
                  }

                  DWORD1(v603) = 1;
                  goto LABEL_899;
                }

                if (v438 < qword_280A5D398)
                {
                  goto LABEL_659;
                }

                if (v438 == qword_280A5D398)
                {
                  if (v604 < qword_280A5D390)
                  {
LABEL_659:
                    v439 = 0;
                    DWORD1(v603) = 1;
LABEL_898:
                    *&v604 = v439;
                    *(&v604 + 1) = v29;
                    goto LABEL_899;
                  }

                  if (v604 == qword_280A5D390)
                  {
                    v439 = 0;
                    DWORD2(v603) = 1;
                    goto LABEL_898;
                  }
                }

                v439 = 1;
                LODWORD(v603) = 1;
                goto LABEL_898;
              }

              *&v603 = 1;
            }

            else
            {
              *&v603 = 0x100000000;
            }

            *(&v603 + 1) = 0;
            goto LABEL_628;
          }

          if (HIDWORD(v603))
          {
            v308 = __CFADD__(v597, 1);
            *&v597 = v597 + 1;
            if (!v308)
            {
              goto LABEL_625;
            }

            v308 = __CFADD__((*(&v597 + 1))++, 1);
            if (!v308)
            {
              goto LABEL_625;
            }

            v308 = __CFADD__(v598, 1);
            *&v598 = v598 + 1;
            if (!v308)
            {
              goto LABEL_625;
            }

            v517 = *(&v598 + 1) + 1;
          }

          else
          {
            if (!DWORD2(v603))
            {
              goto LABEL_625;
            }

            v554 = v597;
            *&v597 = v597 - 1;
            if (v554)
            {
              goto LABEL_625;
            }

            if ((*(&v597 + 1))--)
            {
              goto LABEL_625;
            }

            v556 = v598;
            *&v598 = v598 - 1;
            if (v556)
            {
              goto LABEL_625;
            }

            v517 = *(&v598 + 1) - 1;
          }

          *(&v598 + 1) = v517;
          goto LABEL_625;
        }
      }
    }
  }

  *(&v600 + 1) = v69;
  v93 = v104;
  v70 = v104;
  v68 = v573;
LABEL_228:
  *&v600 = v93;
  v585 = v66;
  v590 = v86;
  if (v92 > 0x22)
  {
    if (v86 + v88 >= 6146)
    {
      if (a11)
      {
        v482 = v30 == v29;
        v21 = v30 != v29;
        v162 = v482;
        v163 = 34 - v86;
        if (v86 == 34)
        {
          v164 = v29 | v26;
          *&v604 = v28;
        }

        else if (v86 > 19)
        {
          v282 = qword_280A5D8C0[v163];
          v283 = HIDWORD(v282) * v28;
          v284 = v282 * HIDWORD(v28) + v283 + ((v282 * v28) >> 32);
          *&v604 = (v282 * v28) | (v284 << 32);
          v164 = HIDWORD(v283) + HIDWORD(v282) * HIDWORD(v28) + HIDWORD(v284) + v282 * v26;
        }

        else if (v86 < 15)
        {
          v351 = *&xmmword_280A5D960[(14 - v86)];
          v352 = *(&xmmword_280A5D960[(14 - v86)] + 1);
          v353 = HIDWORD(v351);
          v354 = v351 * HIDWORD(v28);
          v355 = v351 * v28;
          v356 = v353 * v28 + v354 + HIDWORD(v355);
          *&v604 = v355 | (v356 << 32);
          v164 = HIDWORD(v354) + v353 * HIDWORD(v28) + HIDWORD(v356) + v352 * v28;
        }

        else
        {
          v199 = qword_280A5D8C0[v163];
          v200 = HIDWORD(v199);
          v201 = v199 * HIDWORD(v28);
          v202 = v199 * v28;
          v203 = v200 * v28 + v201 + HIDWORD(v202);
          v164 = HIDWORD(v201) + v200 * HIDWORD(v28) + HIDWORD(v203);
          *&v604 = v202 | (v203 << 32);
        }

        *(&v604 + 1) = v164 | v29;
        sub_2770E4D60(a11, v162, v21, 0, 0, v88 - v163, &v604, a12);
      }

      else
      {
        v21 = 0;
        v162 = 0;
        *&v604 = 0;
        *(&v604 + 1) = v29 | 0x7800000000000000;
        *a12 |= 0x28u;
      }

      *a1 = 0;
      *a2 = 0;
      goto LABEL_455;
    }

    goto LABEL_236;
  }

  if (v92 == 34)
  {
    v144 = 34 - v86;
    if (v88 + 6176 >= v144)
    {
      v145 = v68;
      v146 = v30;
      if (v86 != 34)
      {
        if (v86 > 19)
        {
          v298 = qword_280A5D8C0[v144];
          v299 = HIDWORD(v28);
          v300 = HIDWORD(v298) * v28;
          v301 = v298 * v28;
          v302 = v298 * v299 + v300 + HIDWORD(v301);
          v28 = v301 | (v302 << 32);
          v26 = HIDWORD(v300) + HIDWORD(v298) * v299 + HIDWORD(v302) + v298 * v26;
        }

        else
        {
          if (v86 < 15)
          {
            v371 = *&xmmword_280A5D960[(14 - v86)];
            v372 = HIDWORD(v371);
            v373 = v371 * HIDWORD(v28);
            v374 = v371 * v28;
            v375 = v372 * v28 + v373 + HIDWORD(v374);
            v26 = HIDWORD(v373) + v372 * HIDWORD(v28) + HIDWORD(v375) + *(&xmmword_280A5D960[(14 - v86)] + 1) * v28;
            *&v604 = v374 | (v375 << 32);
            *(&v604 + 1) = v26;
            v28 = v604;
LABEL_398:
            v303 = v27 - (v144 << 49);
            v304 = v88 - v144;
            if (v585 <= 19)
            {
              v305 = qword_280A5D210[v585 - 1];
              v306 = v70 == v305;
              v307 = v70 != v305;
              v308 = v70 >= v305;
              if (v70 >= v305)
              {
                v309 = v70 != v305;
              }

              else
              {
                v306 = 1;
                v309 = 0;
              }

              v310 = !v308 || v307;
              v311 = v308;
LABEL_577:
              if (v30 == v29)
              {
                if (v311)
                {
                  if (v310)
                  {
                    if (!v306)
                    {
LABEL_581:
                      *&v604 = v28 + 1;
                      if (v28 == -1)
                      {
                        ++v26;
                      }

                      else if (v28 == 0x378D8E63FFFFFFFFLL && (v26 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0)
                      {
                        v26 = 0x314DC6448D93;
                        v414 = (v304 + 6177);
                        ++v304;
                        v303 = v414 << 49;
                        *&v604 = 0x38C15B0A00000000;
                      }

                      v409 = v26 | v30 | v303 & 0x7FFE000000000000;
                      *(&v604 + 1) = v409;
                      v250 = 0;
                      if (v310)
                      {
                        v249 = 0;
                        v248 = 0;
                        v21 = 1;
                        LODWORD(v603) = 1;
                      }

                      else
                      {
                        v21 = 0;
                        v248 = 0;
                        v249 = 1;
                        HIDWORD(v603) = 1;
                      }

                      goto LABEL_611;
                    }
                  }

                  else if ((v309 | v28))
                  {
                    goto LABEL_581;
                  }

                  v249 = 0;
                  v21 = 0;
                  v248 = 0;
                  v409 = v303 & 0x7FFE000000000000 | v26 | v146;
                  *(&v604 + 1) = v409;
                  v250 = 1;
                  DWORD2(v603) = 1;
                }

                else
                {
                  v250 = 0;
                  v249 = 0;
                  v21 = 0;
                  v409 = v303 & 0x7FFE000000000000 | v26 | v146;
                  *(&v604 + 1) = v409;
                  v248 = 1;
                  DWORD1(v603) = 1;
                }

LABEL_611:
                v415 = *a12;
                *a12 |= 0x20u;
                if (!a11 && v304 >= 6112)
                {
                  *&v604 = 0;
                  *(&v604 + 1) = v146 | 0x7800000000000000;
                  v391 = v415 | 0x28;
LABEL_493:
                  *a12 = v391;
                  *a1 = v249;
                  *a2 = v250;
                  *a3 = v248;
                  goto LABEL_72;
                }

                if (!a11)
                {
                  goto LABEL_871;
                }

                v416 = a11;
                v417 = v21;
                goto LABEL_650;
              }

              if (v26 == 0x314DC6448D93 && v28 == 0x38C15B0A00000000)
              {
                v407 = v303 >> 49;
                if (!(v303 >> 49))
                {
                  if (v306)
                  {
                    v408 = 0x38C15B0A00000000;
                  }

                  else
                  {
                    v408 = 0x38C15B09FFFFFFFFLL;
                  }

                  v409 = v29 | 0x314DC6448D93;
                  *&v604 = v408;
                  *(&v604 + 1) = v29 | 0x314DC6448D93;
                  *a12 |= 0x10u;
                  if (v310)
                  {
                    v410 = 0;
                    if (v311)
                    {
                      v21 = 0;
                      v162 = 1;
                      DWORD1(v603) = 1;
                    }

                    else
                    {
                      v162 = 0;
                      v21 = 1;
                      LODWORD(v603) = 1;
                    }
                  }

                  else
                  {
                    v21 = 0;
                    v162 = 0;
                    v410 = 1;
                    HIDWORD(v603) = 1;
                  }

                  v412 = a11;
                  if (!a11)
                  {
LABEL_868:
                    if (v162 | v21 | v410 || v412)
                    {
                      *a12 |= 0x20u;
                    }

                    goto LABEL_871;
                  }

                  sub_2770E4D60(a11, v162, v21, v410, 0, -6176, &v604, a12);
                  v412 = 0;
                  v409 = *(&v604 + 1);
LABEL_654:
                  v303 = v409;
                  goto LABEL_868;
                }

                v411 = (v585 - 1);
                if (v585 == 1)
                {
                  v412 = 0;
                  v410 = 0;
                  v21 = 0;
                  v162 = 0;
                  v413 = 0x378D8E6400000000 - v70;
                  v303 -= 0x2000000000000;
                  v409 = v29 | 0x1ED09BEAD87C0 | v303 & 0x7FFE000000000000;
LABEL_867:
                  *&v604 = v413;
                  *(&v604 + 1) = v409;
                  goto LABEL_868;
                }

                if (v585 > 18)
                {
                  if (v585 > 0x26)
                  {
                    *&v605 = v70;
                    *(&v605 + 1) = v69;
                    if (v585 > 0x39)
                    {
                      *&v606 = v145;
                      *(&v606 + 1) = v580;
                      sub_277061970(v585, v411, &v605, &v597, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
                      v437 = v597;
                    }

                    else
                    {
                      v606 = v145;
                      sub_277061154(v585, v411, &v605, v607, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
                      v437 = *&v607[0];
                    }
                  }

                  else
                  {
                    *&v600 = v70;
                    *(&v600 + 1) = v69;
                    sub_277060DB0(v585, v411, v70, v69, &v599, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
                    v437 = v599;
                  }

                  v601 = v437;
                }

                else
                {
                  sub_277060C78(v585, v411, v70, &v601, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
                }

                v410 = HIDWORD(v603);
                v593 = DWORD2(v603);
                if (v603 == 0)
                {
                  v412 = 0;
                  v410 = 0;
                  v21 = 0;
                  v162 = 0;
                  v303 -= 0x2000000000000;
                  v409 = v29 | 0x1ED09BEAD87C0 | v303 & 0x7FFE000000000000;
                  v413 = 0x378D8E6400000000 - v601;
                  goto LABEL_867;
                }

                if (v602)
                {
                  v518 = 0x378D8E63FFFFFFF6;
                }

                else
                {
                  v518 = 0x378D8E6400000000 - v601;
                }

                *&v604 = v518;
                *(&v604 + 1) = 0x1ED09BEAD87C0;
                if (DWORD1(v603))
                {
                  v162 = 0;
                  v21 = 1;
                  *&v603 = 1;
                }

                else if (v603)
                {
                  v21 = 0;
                  v162 = 1;
                  *&v603 = 0x100000000;
                }

                else if (HIDWORD(v603))
                {
                  v410 = 0;
                  v21 = 0;
                  v162 = 0;
                  v593 = 1;
                  *(&v603 + 1) = 1;
                }

                else
                {
                  v593 = 0;
                  if (DWORD2(v603))
                  {
                    v21 = 0;
                    v162 = 0;
                    v410 = 1;
                    *(&v603 + 1) = 0x100000000;
                  }

                  else
                  {
                    v410 = 0;
                    v21 = 0;
                    v162 = 0;
                  }
                }

                if (v303 < 0x6002000000000000)
                {
                  *a12 |= 0x20u;
                  v409 = ((v303 & 0x7FFE000000000000) - 0x12F641527840) | v29;
                  *(&v604 + 1) = v409;
                  if (a11)
                  {
                    sub_2770E4D60(a11, v162, v21, v410, v593, v407 - 6177, &v604, a12);
                    v409 = *(&v604 + 1);
                  }

                  v412 = v593 != 0;
                  goto LABEL_654;
                }

                if (a11)
                {
                  v304 = v407 - 6177;
LABEL_647:
                  sub_2770E4D60(a11, v162, v21, v410, v593, v304, &v604, a12);
LABEL_1055:
                  *a1 = v410;
                  *a2 = v593;
LABEL_455:
                  *a3 = v162;
                  goto LABEL_72;
                }

LABEL_1054:
                *&v604 = 0;
                *(&v604 + 1) = v29 | 0x7800000000000000;
                *a12 |= 0x28u;
                goto LABEL_1055;
              }

              if ((v311 & 1) == 0)
              {
                v593 = 0;
                v410 = 0;
                v162 = 0;
                v409 = v29 | v26 | v303 & 0x7FFE000000000000;
                *(&v604 + 1) = v409;
                v21 = 1;
                LODWORD(v603) = 1;
                goto LABEL_645;
              }

              if (v310)
              {
                if (!v306)
                {
                  goto LABEL_595;
                }
              }

              else if ((v309 | v28))
              {
LABEL_595:
                v409 = v303 & 0x7FFE000000000000 | ((__PAIR128__(v26, v28) - 1) >> 64) | v29;
                *&v604 = v28 - 1;
                *(&v604 + 1) = v409;
                if (v310)
                {
                  v593 = 0;
                  v410 = 0;
                  v21 = 0;
                  v162 = 1;
                  DWORD1(v603) = 1;
                }

                else
                {
                  v410 = 0;
                  v21 = 0;
                  v162 = 0;
                  v593 = 1;
                  DWORD2(v603) = 1;
                }

LABEL_645:
                if (v304 < 6112)
                {
                  *a12 |= 0x20u;
                  v303 = v409;
                  if (!a11)
                  {
LABEL_871:
                    *(&v604 + 1) = v409 | v303 & 0x7FFE000000000000 | v29;
                    goto LABEL_872;
                  }

                  v416 = a11;
                  v248 = v162;
                  v417 = v21;
                  v249 = v410;
                  v250 = v593;
LABEL_650:
                  sub_2770E4D60(v416, v248, v417, v249, v250, v304, &v604, a12);
                  v409 = *(&v604 + 1);
                  v303 = *(&v604 + 1);
                  goto LABEL_871;
                }

                if (a11)
                {
                  goto LABEL_647;
                }

                goto LABEL_1054;
              }

              v593 = 0;
              v21 = 0;
              v162 = 0;
              v409 = v29 | v26 | v303 & 0x7FFE000000000000;
              *(&v604 + 1) = v409;
              v410 = 1;
              HIDWORD(v603) = 1;
              goto LABEL_645;
            }

            if (v585 > 0x26)
            {
              if (v585 > 0x3A)
              {
                v376 = (&unk_280A5D660 + 32 * (v585 - 59));
                v377 = v376[3];
                if (v580 >= v377)
                {
                  if (v580 != v377)
                  {
                    goto LABEL_575;
                  }

                  v406 = v376[2];
                  if (v145 >= v406)
                  {
                    if (v145 != v406)
                    {
                      goto LABEL_575;
                    }

                    if (__PAIR128__(v69, v70) >= *v376)
                    {
                      if (v69 != v376[1])
                      {
                        goto LABEL_575;
                      }

                      v314 = *v376;
LABEL_414:
                      if (v70 == v314)
                      {
                        v309 = 0;
                        v310 = 0;
                        v306 = 1;
LABEL_576:
                        v311 = 1;
                        goto LABEL_577;
                      }

LABEL_575:
                      v306 = 0;
                      v309 = 1;
                      v310 = 1;
                      goto LABEL_576;
                    }
                  }
                }

LABEL_474:
                v309 = 0;
                v311 = 0;
                v306 = 1;
                v310 = 1;
                goto LABEL_577;
              }

              if (v580)
              {
                goto LABEL_575;
              }

              v312 = &qword_280A5D3E0[4 * (v585 - 39)];
              v315 = v312[2];
              if (v145 < v315)
              {
                goto LABEL_474;
              }

              if (v145 != v315)
              {
                goto LABEL_575;
              }
            }

            else
            {
              if (v145)
              {
                goto LABEL_575;
              }

              v312 = &qword_280A5D2B0[2 * (v585 - 20)];
            }

            v313 = v312[1];
            if (v69 >= v313)
            {
              if (v69 != v313)
              {
                goto LABEL_575;
              }

              v314 = *v312;
              if (v70 >= v314)
              {
                goto LABEL_414;
              }
            }

            goto LABEL_474;
          }

          v147 = HIDWORD(v28);
          v148 = v28;
          v149 = qword_280A5D8C0[v144];
          v150 = v149 * HIDWORD(v28);
          v151 = v149 * v28;
          v152 = HIDWORD(v149) * v148 + v150 + HIDWORD(v151);
          v26 = HIDWORD(v150) + HIDWORD(v149) * v147 + HIDWORD(v152);
          v28 = v151 | (v152 << 32);
        }
      }

      *&v604 = v28;
      *(&v604 + 1) = v26;
      goto LABEL_398;
    }

LABEL_236:
    if (v86 > 33)
    {
      LODWORD(v153) = 0;
      *&v604 = v28;
      *(&v604 + 1) = v26 | ((v88 + 6176) << 49) | v29;
    }

    else
    {
      LODWORD(v153) = 34 - v86;
      v154 = v68;
      if (v88 + 6176 >= 34 - v86)
      {
        v153 = v153;
      }

      else
      {
        v153 = (v88 + 6176);
      }

      if (v153)
      {
        if (v86 > 19)
        {
          v273 = qword_280A5D8C0[v153];
          v274 = HIDWORD(v273) * v28;
          v275 = v273 * HIDWORD(v28) + v274 + ((v273 * v28) >> 32);
          *&v604 = (v273 * v28) | (v275 << 32);
          v160 = HIDWORD(v274) + HIDWORD(v273) * HIDWORD(v28) + HIDWORD(v275) + v273 * v26;
        }

        else if (v153 > 19)
        {
          v316 = *&xmmword_280A5D960[(v153 - 20)];
          v317 = *(&xmmword_280A5D960[(v153 - 20)] + 1);
          v318 = HIDWORD(v316);
          v319 = v316 * HIDWORD(v28);
          v320 = v316 * v28;
          v321 = v318 * v28 + v319 + HIDWORD(v320);
          *&v604 = v320 | (v321 << 32);
          v160 = HIDWORD(v319) + v318 * HIDWORD(v28) + HIDWORD(v321) + v317 * v28;
        }

        else
        {
          v155 = qword_280A5D8C0[v153];
          v156 = HIDWORD(v155);
          v157 = v155 * HIDWORD(v28);
          v158 = v155 * v28;
          v159 = v156 * v28 + v157 + HIDWORD(v158);
          v160 = HIDWORD(v157) + v156 * HIDWORD(v28) + HIDWORD(v159);
          *&v604 = v158 | (v159 << 32);
        }
      }

      else
      {
        *&v604 = v28;
        v160 = v26;
      }

      v88 -= v153;
      *(&v604 + 1) = (v27 - (v153 << 49)) & 0x7FFE000000000000 | v160 | v29;
      v68 = v154;
      if (v153 + v86 <= 33)
      {
        *a12 |= 0x10u;
      }
    }

    v322 = v153 + v86;
    v323 = v30;
    if (v30 == v29)
    {
      v324 = 0;
      v21 = 0;
      v279 = 1;
      goto LABEL_779;
    }

    if (v92 != v322 + 1)
    {
      v324 = 0;
      v279 = 0;
      v21 = 1;
      goto LABEL_779;
    }

    v564 = v88;
    if (v86 > 19)
    {
      if (v86 == 20)
      {
        if (v26)
        {
          goto LABEL_450;
        }

        v325 = qword_280A5D958;
      }

      else
      {
        v350 = &xmmword_280A5D960[(v86 - 21)];
        if (v26 != *(v350 + 1))
        {
          goto LABEL_450;
        }

        v325 = *v350;
      }
    }

    else
    {
      v325 = qword_280A5D8C0[v86 - 1];
    }

    if (v28 == v325)
    {
      v326 = (v66 - 1);
      if (v66 != 1)
      {
        if (v66 > 18)
        {
          if (v66 > 0x26)
          {
            *&v605 = v70;
            *(&v605 + 1) = v69;
            if (v66 > 0x39)
            {
              *&v606 = v68;
              *(&v606 + 1) = v580;
              sub_277061970(v66, v326, &v605, &v597, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
              v405 = v597;
            }

            else
            {
              v606 = v68;
              sub_277061154(v66, v326, &v605, v607, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
              v405 = *&v607[0];
            }
          }

          else
          {
            *&v600 = v70;
            *(&v600 + 1) = v69;
            sub_277060DB0(v66, v326, v70, v69, &v599, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
            v405 = v599;
          }

          v601 = v405;
        }

        else
        {
          sub_277060C78(v66, v326, v70, &v601, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
        }

        if (v602)
        {
          v70 = 10;
        }

        else
        {
          v70 = v601;
        }
      }

      if (v70 == 5 && v603 == 0)
      {
        v21 = 0;
        v279 = 0;
        v324 = 1;
      }

      else
      {
        v324 = 0;
        v502 = v70 == 5 && v603 != 0;
        v21 = 1;
        if (v564 == -6176 || v70 < 5 || v502)
        {
          v279 = 0;
        }

        else
        {
          v324 = 0;
          v21 = 0;
          v503 = *(&xmmword_280A5D960[v322 - 20] + 1) | ((v564 + 6175) << 49) | v29;
          *&v604 = *&xmmword_280A5D960[v322 - 20] - 1;
          *(&v604 + 1) = v503;
          v279 = 1;
          --v564;
        }
      }

      v504 = *a12;
      if (v564 != -6176)
      {
        v507 = v504 | 0x20;
        v33 = a11;
        v88 = v564;
        goto LABEL_782;
      }

      *a12 = v504 | 0x10;
      v88 = -6176;
      v33 = a11;
LABEL_779:
      v505 = *a12;
      *a12 |= 0x20u;
      v506 = -6176;
      if (v88 != -6176 || v322 >= 34)
      {
        if (v88 != -6176)
        {
          goto LABEL_783;
        }

        if (v322 != 34)
        {
          goto LABEL_783;
        }

        if (v323 == v29)
        {
          goto LABEL_783;
        }

        if ((*(&v604 + 1) & 0x1FFFFFFFFFFFFLL) != 0x314DC6448D93)
        {
          goto LABEL_783;
        }

        v506 = v88;
        if (v604 != 0x38C15B0A00000000)
        {
          goto LABEL_783;
        }
      }

      v507 = v505 | 0x30;
      v88 = v506;
LABEL_782:
      *a12 = v507;
LABEL_783:
      if (v33)
      {
        sub_2770E4D60(v33, v279, v21, v324, 0, v88, &v604, a12);
      }

      *a1 = v324;
      *a2 = 0;
LABEL_786:
      *a3 = v279;
      goto LABEL_72;
    }

LABEL_450:
    v324 = 0;
    v279 = 0;
    v21 = 1;
    v33 = a11;
    goto LABEL_779;
  }

  v161 = v66 + v92;
  v583 = v69;
  v570 = v70;
  v574 = v68;
  if (v86 <= v92 && v161 > 34)
  {
    v575 = v30 == v29;
    if (v92 > 1 || v30 == v29)
    {
      goto LABEL_447;
    }

    goto LABEL_386;
  }

  if (v86 > v92 == v161 < 35 && (v86 <= v92 || v161 >= 35) && v161 >= v86 || (v575 = v30 == v29, v92 <= 1) && v30 != v29)
  {
LABEL_386:
    if (v161 >= v86)
    {
      v92 = -v92;
      v288 = v66;
      v289 = v69;
      v290 = v70;
      v291 = v30;
      v287 = v87;
    }

    else
    {
      v287 = v88;
      v288 = v86;
      LODWORD(v86) = v66;
      v289 = v26;
      v290 = v28;
      v26 = v583;
      v28 = v70;
      v291 = v29;
      v29 = v30;
    }

    *&v605 = v290;
    *(&v605 + 1) = v289;
    *&v606 = v68;
    *(&v606 + 1) = v580;
    sub_2770E4F78(v86, v288, v287, v92, v29, v291, v28, v26, &v605, a11, &v603 + 3, &v603 + 2, &v603 + 1, &v603, a12, &v604);
    goto LABEL_872;
  }

  v579 = v29;
  if (v161 < 35)
  {
    v292 = v161 - v86;
    if (v161 >= v86)
    {
      v294 = 0;
    }

    else
    {
      v293 = v86 - v161;
      if (v66 > 19)
      {
        v294 = 0;
        v292 = 0;
        v418 = qword_280A5D8C0[v293];
        v419 = HIDWORD(v418) * v70;
        v420 = v418 * HIDWORD(v70) + v419 + ((v418 * v70) >> 32);
        v570 = (v418 * v70) | (v420 << 32);
        *&v600 = v570;
        *(&v600 + 1) = HIDWORD(v419) + HIDWORD(v418) * HIDWORD(v70) + HIDWORD(v420) + v418 * v69;
        v583 = *(&v600 + 1);
      }

      else
      {
        v294 = 0;
        v292 = 0;
        if (v293 > 19)
        {
          v440 = &xmmword_280A5D960[v293 - 20];
          v441 = *v440 * HIDWORD(v70);
          v442 = HIDWORD(*v440) * v70 + v441 + ((*v440 * v70) >> 32);
          v443 = HIDWORD(v441) + HIDWORD(*v440) * HIDWORD(v70) + HIDWORD(v442) + *(v440 + 1) * v70;
          *&v600 = (*v440 * v70) | (v442 << 32);
          *(&v600 + 1) = v443;
          v583 = v443;
        }

        else
        {
          v295 = qword_280A5D8C0[v293];
          v296 = v295 * HIDWORD(v70);
          v297 = HIDWORD(v295) * v70 + v296 + ((v295 * v70) >> 32);
          v583 = HIDWORD(v296) + HIDWORD(v295) * HIDWORD(v70) + HIDWORD(v297);
          *&v600 = (v295 * v70) | (v297 << 32);
          *(&v600 + 1) = v583;
        }

        v570 = v600;
      }
    }

    goto LABEL_663;
  }

LABEL_447:
  v579 = v29;
  v292 = 34 - v86;
  v294 = (v161 - 34);
LABEL_663:
  v444 = 0;
  v572 = v292;
  v565 = v88;
  v566 = &qword_280A5D8C0[v292];
  v445 = v88 - v292;
  if (v88 - v292 >= -6176)
  {
    v445 = -6176;
  }

  v446 = &xmmword_280A5D960[v292 - 20];
  v447 = v88 - v292;
  v561 = &qword_280A5D8C0[v66 - v294];
  v562 = v445;
  v571 = -v294;
  v559 = &xmmword_280A5D960[v66 - v294 - 20];
  v560 = v66 - v294;
  v448 = v583;
  v449 = v570;
  while (1)
  {
    if (v572 + v444)
    {
      if (v86 > 19)
      {
        v457 = v566[v444];
        v458 = HIDWORD(v457) * v28;
        v459 = v457 * v28;
        v460 = v457 * HIDWORD(v28) + v458 + HIDWORD(v459);
        v461 = HIDWORD(v458) + HIDWORD(v457) * HIDWORD(v28) + HIDWORD(v460) + v457 * v26;
        *&v604 = v459 | (v460 << 32);
      }

      else
      {
        if (v572 + v444 <= 19)
        {
          v450 = v566[v444];
          v451 = HIDWORD(v450);
          v452 = v450 * HIDWORD(v28);
          v453 = v450 * v28;
          v454 = v451 * v28;
          v455 = HIDWORD(v452) + v451 * HIDWORD(v28);
          v456 = v454 + v452 + HIDWORD(v453);
          *&v604 = v453 | (v456 << 32);
          *(&v604 + 1) = v455 + HIDWORD(v456);
          goto LABEL_674;
        }

        v462 = HIDWORD(*v446);
        v463 = *v446 * HIDWORD(v28);
        v464 = v462 * v28;
        v465 = HIDWORD(v463) + v462 * HIDWORD(v28);
        v466 = v464 + v463 + ((*v446 * v28) >> 32);
        v461 = v465 + HIDWORD(v466) + *(v446 + 1) * v28;
        *&v604 = (*v446 * v28) | (v466 << 32);
      }

      *(&v604 + 1) = v461;
    }

    else
    {
      *&v604 = v28;
      *(&v604 + 1) = v26;
    }

LABEL_674:
    if (v571 + v444)
    {
      if (v66 > 18)
      {
        if (v66 > 0x26)
        {
          v474 = v447;
          v475 = v444;
          v569 = v446;
          if (v66 > 0x39)
          {
            *&v605 = v449;
            *(&v605 + 1) = v448;
            *&v606 = v574;
            *(&v606 + 1) = v580;
            v476 = v294;
            sub_277061970(v66, v294, &v605, &v597, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
            if (v602)
            {
              v444 = v475;
              if (v560 + v475 > 19)
              {
                v597 = v559[v475];
                v477 = v597;
              }

              else
              {
                v477 = v561[v475];
                *&v597 = v477;
              }
            }

            else
            {
              v477 = v597;
              v444 = v475;
            }

            v478 = *(&v597 + 1);
          }

          else
          {
            *&v605 = v449;
            *(&v605 + 1) = v448;
            v606 = v574;
            v476 = v294;
            sub_277061154(v66, v294, &v605, v607, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
            if (v602)
            {
              v444 = v475;
              if (v560 + v475 > 19)
              {
                v607[0] = v559[v475];
                v477 = *&v607[0];
              }

              else
              {
                v477 = v561[v475];
                *&v607[0] = v477;
              }
            }

            else
            {
              v477 = *&v607[0];
              v444 = v475;
            }

            v478 = *(&v607[0] + 1);
          }

          *&v599 = v477;
          *(&v599 + 1) = v478;
          v448 = v583;
          v66 = v585;
          v446 = v569;
          v449 = v570;
          LODWORD(v86) = v590;
          v294 = v476;
          v447 = v474;
        }

        else
        {
          *&v600 = v449;
          *(&v600 + 1) = v448;
          v568 = v447;
          v471 = v294;
          v472 = v444;
          v473 = v446;
          sub_277060DB0(v66, v294, v449, v583, &v599, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
          v447 = v568;
          v449 = v570;
          v444 = v472;
          v294 = v471;
          v446 = v473;
          LODWORD(v86) = v590;
          v448 = v583;
          v66 = v585;
          if (v602)
          {
            if (v560 + v472 > 19)
            {
              v599 = v559[v472];
            }

            else
            {
              *&v599 = v561[v472];
            }
          }
        }
      }

      else
      {
        v467 = v447;
        v468 = v444;
        v567 = v446;
        v469 = v294;
        sub_277060C78(v66, v294, v449, &v601, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
        if (v602)
        {
          v444 = v468;
          v470 = v561[v468];
          v601 = v470;
          v448 = v583;
        }

        else
        {
          v470 = v601;
          v448 = v583;
          v444 = v468;
        }

        v447 = v467;
        v599 = v470;
        v66 = v585;
        v446 = v567;
        v449 = v570;
        LODWORD(v86) = v590;
        v294 = v469;
      }
    }

    else
    {
      *&v599 = v449;
      *(&v599 + 1) = v448;
    }

    if (v575)
    {
      break;
    }

    v479 = v604;
    v480 = v604 - v599;
    v481 = (__PAIR128__(*(&v604 + 1) - *(&v599 + 1), v604) - v599) >> 64;
    v604 = __PAIR128__(*(&v604 + 1) - *(&v599 + 1), v604) - v599;
    if (v447 < -6175)
    {
      goto LABEL_727;
    }

    if (v481 >= 0x314DC6448D93 && (v480 >= 0x38C15B0A00000000 || v481 != 0x314DC6448D93))
    {
      v482 = v481 == 0x314DC6448D93 && v480 == 0x38C15B0A00000000;
      if (v482 && *(&v603 + 4) != 0 && v294 > 0)
      {
        goto LABEL_717;
      }

LABEL_726:
      v562 = v565 - v572 - v444;
LABEL_727:
      if (DWORD1(v603))
      {
        *&v603 = 1;
        goto LABEL_939;
      }

      if (v603)
      {
        LODWORD(v603) = 0;
        goto LABEL_731;
      }

      if ((v479 & 1) == 0)
      {
        if (HIDWORD(v603))
        {
          *(&v603 + 1) = 1;
        }

        else if (DWORD2(v603))
        {
          *(&v603 + 1) = 0x100000000;
        }

        goto LABEL_939;
      }

      if (!HIDWORD(v603))
      {
        v508 = DWORD2(v603);
        if (!DWORD2(v603))
        {
          goto LABEL_939;
        }

        v509 = v480 - 1;
        *&v604 = v509;
        if (v479 != v599)
        {
          if (!(v481 | v509))
          {
            v21 = 0;
            v604 = 0uLL;
            *a1 = 0;
            *a2 = v508;
            goto LABEL_71;
          }

          goto LABEL_939;
        }

        v499 = v481 - 1;
LABEL_801:
        *(&v604 + 1) = v499;
        goto LABEL_939;
      }

      *&v604 = v480 + 1;
      if (v480 == -1)
      {
        v499 = v481 + 1;
        goto LABEL_801;
      }

      if (v480 != 0x378D8E63FFFFFFFFLL || v481 != 0x1ED09BEAD87C0)
      {
        goto LABEL_939;
      }

      v604 = xmmword_2771393A0;
      v497 = v562 + 1;
      goto LABEL_938;
    }

    if (v294 < 1)
    {
      goto LABEL_726;
    }

LABEL_717:
    --v294;
    v603 = 0uLL;
    ++v444;
    ++v446;
    --v447;
    v602 = 0;
  }

  v485 = v444;
  v486 = v604;
  v604 += v599;
  v487 = v604;
  if (*(&v604 + 1) <= 0x1ED09BEAD87C0uLL && (v604 <= 0x378D8E63FFFFFFFFLL || *(&v604 + 1) != 0x1ED09BEAD87C0))
  {
    v497 = v565 - v572 - v444;
    if (v486)
    {
      if (DWORD2(v603))
      {
        *(&v603 + 1) = 0x100000000;
        *&v604 = v604 + 1;
        if (v487 != -1)
        {
          if (v487 == __PAIR128__(0x1ED09BEAD87C0, 0x378D8E63FFFFFFFFLL))
          {
            v604 = xmmword_2771393A0;
            v497 = v565 - v572 - v444 + 1;
          }

          goto LABEL_938;
        }

        v498 = *(&v487 + 1) + 1;
      }

      else
      {
        if (!HIDWORD(v603))
        {
          goto LABEL_938;
        }

        *(&v603 + 1) = 1;
        *&v604 = v604 - 1;
        if (v487)
        {
          if (!(*(&v487 + 1) | (v487 - 1)))
          {
            v604 = 0uLL;
            *a1 = 0;
            v516 = 1;
            goto LABEL_873;
          }

          goto LABEL_938;
        }

        v498 = *(&v487 + 1) - 1;
      }

      *(&v604 + 1) = v498;
    }

LABEL_938:
    v562 = v497;
    goto LABEL_939;
  }

  v489 = v603;
  v488 = DWORD1(v603);
  v490 = DWORD2(v603);
  v491 = HIDWORD(v603);
  v603 = 0uLL;
  v600 = v604;
  sub_277060DB0(35, 1, v604, *(&v604 + 1), &v604, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
  v492 = HIDWORD(v603);
  if (v489 | v491 && HIDWORD(v603))
  {
    v493 = v604;
    *&v604 = v604 - 1;
    if (!v493)
    {
      --*(&v604 + 1);
    }

    v492 = 0;
    HIDWORD(v603) = 0;
    v494 = 1;
    DWORD1(v603) = 1;
    v495 = DWORD2(v603);
    v496 = v603;
    goto LABEL_839;
  }

  v495 = DWORD2(v603);
  if (v488 | v490 && DWORD2(v603))
  {
    v308 = __CFADD__(v604, 1);
    *&v604 = v604 + 1;
    if (v308)
    {
      ++*(&v604 + 1);
    }

    v495 = 0;
    DWORD2(v603) = 0;
    v496 = 1;
    LODWORD(v603) = 1;
    v494 = DWORD1(v603);
    goto LABEL_839;
  }

  v496 = v603;
  v494 = DWORD1(v603);
  if (v603 == 0)
  {
    if (v489 | v491)
    {
      v496 = 1;
      LODWORD(v603) = 1;
    }

    else
    {
      v496 = 0;
    }

    if (v488 | v490)
    {
      v495 = 0;
      v492 = 0;
      v494 = 1;
      DWORD1(v603) = 1;
    }

    else
    {
      v494 = 0;
      v495 = 0;
      v492 = 0;
    }

    goto LABEL_839;
  }

  v500 = (v489 | v491) == 0;
  if (!DWORD2(v603))
  {
    v500 = 1;
  }

  if (!v500)
  {
    v496 = 0;
    v495 = 0;
    v492 = 0;
    v494 = 1;
    *&v603 = 0x100000000;
LABEL_830:
    *(&v603 + 1) = 0;
    goto LABEL_839;
  }

  v515 = (v488 | v490) == 0;
  if (!HIDWORD(v603))
  {
    v515 = 1;
  }

  if (!v515)
  {
    v494 = 0;
    v495 = 0;
    v492 = 0;
    v496 = 1;
    *&v603 = 1;
    goto LABEL_830;
  }

LABEL_839:
  v562 = v565 - v572 - v485 + 1;
  if (!v492 && !v495 && !v494 && !v496 && (v491 || v490 || v489 | v488))
  {
LABEL_731:
    DWORD1(v603) = 1;
  }

LABEL_939:
  if (v562 == -6176)
  {
    if ((*(&v604 + 1) & 0x1FFFFFFFFFFFFuLL) < 0x314DC6448D93 || (v526 = 1, (*(&v604 + 1) & 0x1FFFFFFFFFFFFLL) == 0x314DC6448D93) && v604 < 0x38C15B0A00000000)
    {
      v526 = 0;
    }

    v528 = (*(&v604 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0x314DC6448D93 || v604 != 0x38C15B0A00000000;
    v529 = v526 & (v528 || v575);
LABEL_951:
    v562 = -6176;
    goto LABEL_957;
  }

  if (v562 > -6177)
  {
    v529 = 1;
    goto LABEL_957;
  }

  v530 = -6176 - v562;
  v531 = v603;
  v594 = DWORD1(v603);
  v532 = DWORD2(v603);
  v533 = HIDWORD(v603);
  v603 = 0uLL;
  if (*(&v604 + 1))
  {
    if (v604 < xmmword_280A5D960[0])
    {
      i = 20;
    }

    else
    {
      v539 = &qword_280A5D978;
      v540 = -18;
      v541 = &qword_280A5D978;
      while (1)
      {
        v542 = *v541;
        v541 += 2;
        v543 = *(&v604 + 1) == v542;
        if (*(&v604 + 1) < v542 || v543 && v604 < *(v539 - 1))
        {
          break;
        }

        v539 = v541;
        v308 = __CFADD__(v540++, 1);
        if (v308)
        {
          v544 = 19;
          goto LABEL_983;
        }
      }

      v544 = v540 + 19;
LABEL_983:
      i = (v544 + 20);
    }
  }

  else
  {
    for (i = 1; i != 20; ++i)
    {
      if (v604 < qword_280A5D8C0[i])
      {
        break;
      }
    }
  }

  v545 = i - v530;
  if (i == v530)
  {
    v604 = xmmword_2771393B0;
    LODWORD(v603) = 1;
  }

  else if (i > 18)
  {
    if (i <= 0x26)
    {
      v600 = v604;
      sub_277060DB0(i, v530, v604, *(&v604 + 1), &v604, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
      if (v602)
      {
        if (v545 > 19)
        {
          v604 = xmmword_280A5D960[v545 - 20];
        }

        else
        {
          *&v604 = qword_280A5D8C0[v545];
        }
      }
    }
  }

  else
  {
    sub_277060C78(i, v530, v604, &v601, &v602, &v603 + 3, &v603 + 2, &v603 + 1, &v603);
    if (v602)
    {
      v546 = &qword_280A5D8C0[v545];
    }

    else
    {
      v546 = &v601;
    }

    v604 = *v546;
  }

  v547 = HIDWORD(v603);
  if (v531 | v533 && HIDWORD(v603))
  {
    v548 = v604;
    *&v604 = v604 - 1;
    if (!v548)
    {
      --*(&v604 + 1);
    }

    v547 = 0;
    HIDWORD(v603) = 0;
    v549 = 1;
    DWORD1(v603) = 1;
    v550 = DWORD2(v603);
    v551 = v603;
    goto LABEL_1023;
  }

  v550 = DWORD2(v603);
  if (v594 | v532 && DWORD2(v603))
  {
    v308 = __CFADD__(v604, 1);
    *&v604 = v604 + 1;
    if (v308)
    {
      ++*(&v604 + 1);
    }

    v550 = 0;
    DWORD2(v603) = 0;
    v551 = 1;
    LODWORD(v603) = 1;
    v549 = DWORD1(v603);
    goto LABEL_1023;
  }

  v551 = v603;
  v549 = DWORD1(v603);
  if (v603 == 0)
  {
    if (v531 | v533)
    {
      v551 = 1;
      LODWORD(v603) = 1;
    }

    else
    {
      v551 = 0;
    }

    if (v594 | v532)
    {
      v550 = 0;
      v547 = 0;
      v549 = 1;
      DWORD1(v603) = 1;
    }

    else
    {
      v549 = 0;
      v550 = 0;
      v547 = 0;
    }

    goto LABEL_1023;
  }

  v552 = (v531 | v533) == 0;
  if (!DWORD2(v603))
  {
    v552 = 1;
  }

  if (!v552)
  {
    v551 = 0;
    v550 = 0;
    v547 = 0;
    v549 = 1;
    *&v603 = 0x100000000;
LABEL_1018:
    *(&v603 + 1) = 0;
    goto LABEL_1023;
  }

  v553 = (v594 | v532) == 0;
  if (!HIDWORD(v603))
  {
    v553 = 1;
  }

  if (!v553)
  {
    v549 = 0;
    v550 = 0;
    v547 = 0;
    v551 = 1;
    *&v603 = 1;
    goto LABEL_1018;
  }

LABEL_1023:
  v529 = 0;
  v562 = -6176;
  if (!v547 && !v550 && !v549 && !v551)
  {
    if (v533 || v532 || v531 | v594)
    {
      v529 = 0;
      DWORD1(v603) = 1;
    }

    else
    {
      v529 = 0;
    }

    goto LABEL_951;
  }

LABEL_957:
  v21 = v603;
  v236 = DWORD1(v603);
  v238 = DWORD2(v603);
  v535 = HIDWORD(v603);
  if (v603 != 0)
  {
    v536 = *a12;
    *a12 |= 0x20u;
    if ((v529 & 1) == 0)
    {
      *a12 = v536 | 0x30;
    }
  }

  if (v604 == __PAIR128__(0x1ED09BEAD87C0, 0x378D8E6400000000))
  {
    *&v604 = 0x38C15B0A00000000;
    v537 = v562 + 1;
    v538 = 0x314DC6448D93;
  }

  else
  {
    v538 = *(&v604 + 1);
    v537 = v562;
  }

  *(&v604 + 1) = v538 | ((v537 + 6176) << 49) | v579;
  if (a11 || v537 < 6112)
  {
    if (a11)
    {
      sub_2770E4D60(a11, v236, v21, v535, v238, v537, &v604, a12);
    }
  }

  else
  {
    *&v604 = 0;
    *(&v604 + 1) = v579 | 0x7800000000000000;
    *a12 |= 0x28u;
  }

  *a1 = v535;
LABEL_320:
  *a2 = v238;
LABEL_566:
  *a3 = v236;
LABEL_72:
  *a4 = v21;
  return v604;
}

uint64_t sub_2770E4D60(uint64_t result, int a2, int a3, int a4, int a5, int a6, uint64_t *a7, _DWORD *a8)
{
  v8 = *a7;
  v9 = a7[1];
  if (a4 | a3 | a2 | a5)
  {
    *a8 |= 0x20u;
  }

  v10 = v9 & 0x8000000000000000;
  v11 = (a6 + 6176) << 49;
  v12 = v9 & 0x1FFFFFFFFFFFFLL;
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (result != 2 || !a2)
    {
      v13 = result == 2;
      goto LABEL_10;
    }

LABEL_16:
    if (__CFADD__(v8++, 1))
    {
      ++v12;
    }

    v16 = 0x314DC6448D93;
    v17 = (a6 + 6177) << 49;
    if (v12 == 0x1ED09BEAD87C0)
    {
      v18 = a6 + 1;
    }

    else
    {
      v18 = a6;
    }

    if (v12 == 0x1ED09BEAD87C0)
    {
      v19 = 0x38C15B0A00000000;
    }

    else
    {
      v17 = (a6 + 6176) << 49;
      v16 = v12;
      v19 = v8;
    }

    if (v8 == 0x378D8E6400000000)
    {
      a6 = v18;
      v11 = v17;
      v12 = v16;
      v8 = v19;
    }

    goto LABEL_26;
  }

  if (result == 1 && a2)
  {
    goto LABEL_16;
  }

  v13 = result == 1;
LABEL_10:
  v14 = v13 || result == 4;
  if (v14 && a5)
  {
    goto LABEL_16;
  }

  if (a4 | a3 && ((result & 0xFFFFFFFE) == 2 && v10 || (result & 0xFFFFFFFD) == 1 && !v10))
  {
    v20 = __PAIR128__(v12, v8) - 1;
    v12 = *(&v20 + 1);
    if (*(&v20 + 1) == 0x314DC6448D93 && (v8 = 0x38C15B09FFFFFFFFLL, v20 == 0x38C15B09FFFFFFFFLL))
    {
      if (v11)
      {
        v8 = 0x378D8E63FFFFFFFFLL;
        v12 = 0x1ED09BEAD87C0;
        v21 = (a6 + 6175);
        --a6;
        v11 = v21 << 49;
      }

      else
      {
        *a8 |= 0x10u;
        v12 = 0x314DC6448D93;
      }
    }

    else
    {
      v8 = v20;
    }
  }

LABEL_26:
  if (a6 < 6112)
  {
    goto LABEL_45;
  }

  *a8 |= 0x28u;
  v11 = 0;
  if (!v10)
  {
    v12 = 0x7800000000000000;
    if (result != 2)
    {
      v8 = 0;
      if (result != 4)
      {
        v11 = 0;
        v12 = 0x5FFFED09BEAD87C0;
LABEL_43:
        v8 = 0x378D8E63FFFFFFFFLL;
        goto LABEL_45;
      }

      goto LABEL_45;
    }

LABEL_44:
    v8 = 0;
    goto LABEL_45;
  }

  v12 = 0xF800000000000000;
  if (result == 1)
  {
    goto LABEL_44;
  }

  v8 = 0;
  if (result != 4)
  {
    v11 = 0;
    v12 = 0xDFFFED09BEAD87C0;
    goto LABEL_43;
  }

LABEL_45:
  *a7 = v8;
  a7[1] = v11 | v12 | v10;
  return result;
}

double sub_2770E4F78(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, int64x2_t *a9, unsigned int a10, int *a11, _BOOL4 *a12, int *a13, int *a14, int *a15, __int128 *a16)
{
  v16 = a6;
  v159 = *MEMORY[0x277D85DE8];
  v155 = 0;
  v154 = 0uLL;
  v153 = 0uLL;
  memset(v158, 0, sizeof(v158));
  v151 = 0u;
  v152 = 0u;
  v149 = 0;
  v150 = 0;
  v148 = 0;
  v147 = *a16;
  v19 = a2 - (a4 + a1);
  if (a2 == a4 + a1)
  {
    v20 = 0;
    v21 = 0;
    v152 = 0uLL;
    v151.i64[0] = a7;
    v151.i64[1] = a8;
  }

  else
  {
    v22 = HIDWORD(a7);
    if (v19 > 19)
    {
      if (v19 > 0x26)
      {
        if (v19 > 0x39)
        {
          v77 = &xmmword_280A5D960[v19 - 58];
          v78 = *(v77 + 1) * a7;
          v67 = *v77 * HIDWORD(a7);
          v79 = *v77 * a7;
          v69 = HIDWORD(*v77) * a7 + v67 + HIDWORD(v79);
          v70 = *v77 * a7;
          v71 = qword_280A5DA80;
          v72 = qword_280A5DA88;
          v73 = qword_280A5DA88 * v79;
          v74 = qword_280A5DA80 * v79;
          v75 = v79 | (v69 << 32);
          v76 = v78 + HIDWORD(*v77) * v22;
        }

        else
        {
          v64 = qword_280A5D8C0[v19 - 38];
          v65 = HIDWORD(v64);
          v66 = v64 * a8;
          v67 = HIDWORD(v64) * a7;
          v68 = v64 * a7;
          v69 = v64 * HIDWORD(a7) + v67 + HIDWORD(v68);
          v70 = v64 * a7;
          v71 = qword_280A5DA80;
          v72 = qword_280A5DA88;
          v73 = qword_280A5DA88 * v68;
          v74 = qword_280A5DA80 * v68;
          v75 = v68 | (v69 << 32);
          v76 = v66 + v65 * v22;
        }

        v153.i64[0] = v75;
        v153.i64[1] = v76 + HIDWORD(v67) + HIDWORD(v69);
        v80 = v69;
        v81 = HIDWORD(v72);
        v82 = v69 * v72;
        v83 = HIDWORD(v82) + v69 * HIDWORD(v72);
        v84 = HIDWORD(v73) + HIDWORD(v72) * v70 + v82;
        v85 = HIDWORD(v84);
        v86 = v73 | (v84 << 32);
        v87 = HIDWORD(v71);
        v88 = v69 * v71;
        v89 = HIDWORD(v74) + HIDWORD(v71) * v70 + v88;
        a7 = v74 | (v89 << 32);
        v90 = __PAIR128__(v83, v86) + __PAIR128__(v85, HIDWORD(v88) + v80 * HIDWORD(v71) + HIDWORD(v89));
        v91 = v153.u32[3] * v72;
        v92 = v153.u32[2] * v72;
        v93 = v153.u32[2] * v81;
        v94 = HIDWORD(v91) + v153.u32[3] * v81;
        v95 = v93 + v91 + HIDWORD(v92);
        v96 = HIDWORD(v95);
        v97 = v92 | (v95 << 32);
        v98 = v153.u32[3] * v71;
        v99 = v153.u32[2] * v71;
        v100 = v153.u32[2] * HIDWORD(v71) + v98 + HIDWORD(v99);
        v101 = v99 | (v100 << 32);
        v102 = v97 + HIDWORD(v98) + v153.u32[3] * v87 + HIDWORD(v100);
        v59 = (__PAIR128__(v94, v97) + __PAIR128__(v96, HIDWORD(v98) + v153.u32[3] * v87 + HIDWORD(v100))) >> 64;
        a8 = v101 + v90;
        v151.i64[0] = a7;
        v151.i64[1] = v101 + v90;
        v63 = __CFADD__(__CFADD__(v101, v90), v102);
        v103 = __CFADD__(v101, v90) + v102;
        LODWORD(v62) = v63;
        v63 = __CFADD__(*(&v90 + 1), v103);
        v20 = *(&v90 + 1) + v103;
      }

      else
      {
        v33 = &xmmword_280A5D960[v19 - 20];
        v34 = *v33;
        v35 = *(v33 + 1);
        v36 = HIDWORD(v34);
        v37 = HIDWORD(v34) * a8;
        v38 = HIDWORD(v37) + HIDWORD(v34) * HIDWORD(a8);
        v39 = v34 * HIDWORD(a8) + v37 + ((v34 * a8) >> 32);
        v40 = HIDWORD(v39);
        v41 = (v34 * a8) | (v39 << 32);
        LODWORD(v39) = a7;
        v42 = HIDWORD(v34) * a7;
        v43 = v35 * a7;
        v44 = v34 * a7;
        v45 = v34 * v22 + v42 + HIDWORD(v44);
        a7 = v44 | (v45 << 32);
        v46 = __PAIR128__(v38, v41) + __PAIR128__(v40, HIDWORD(v42) + v36 * v22 + HIDWORD(v45));
        v47 = HIDWORD(v35);
        LODWORD(v41) = v35;
        v48 = HIDWORD(v35) * a8;
        v49 = v35 * a8;
        v50 = HIDWORD(v48) + v47 * HIDWORD(a8);
        v51 = v41 * HIDWORD(a8) + v48 + HIDWORD(v49);
        v52 = HIDWORD(v51);
        v53 = v49 | (v51 << 32);
        v54 = v47 * v39;
        v55 = v41 * v22;
        v56 = HIDWORD(v54) + v47 * v22;
        v57 = v55 + v54 + HIDWORD(v43);
        v58 = v43 | (v57 << 32);
        v60 = v53 + v56 + HIDWORD(v57);
        v59 = (__PAIR128__(v50, v53) + __PAIR128__(v52, v56 + HIDWORD(v57))) >> 64;
        a8 = v58 + v46;
        v151.i64[0] = a7;
        v151.i64[1] = v58 + v46;
        v61 = __CFADD__(v58, v46) + v60;
        LODWORD(v62) = __CFADD__(__CFADD__(v58, v46), v60);
        v63 = __CFADD__(*(&v46 + 1), v61);
        v20 = *(&v46 + 1) + v61;
      }

      if (v63)
      {
        v62 = 1;
      }

      else
      {
        v62 = v62;
      }

      v21 = v59 + v62;
      v152.i64[0] = v20;
      v152.i64[1] = v21;
    }

    else
    {
      v21 = 0;
      v154 = qword_280A5D8C0[v19];
      v23 = v154.u32[1] * a8;
      v24 = HIDWORD(v23) + v154.u32[1] * HIDWORD(a8);
      v25 = v154.u32[0] * HIDWORD(a8) + v23 + ((v154.u32[0] * a8) >> 32);
      v26 = HIDWORD(v25);
      v27 = (v154.i32[0] * a8) | (v25 << 32);
      v28 = v154.u32[1] * a7;
      v29 = v154.u32[0] * a7;
      v30 = v154.u32[0] * v22 + v28 + HIDWORD(v29);
      v31 = HIDWORD(v28) + v154.u32[1] * v22 + HIDWORD(v30);
      a7 = v29 | (v30 << 32);
      v151.i64[0] = a7;
      v151.i64[1] = v27 + v31;
      v32 = v27 + v31;
      v20 = (__PAIR128__(v24, v27) + __PAIR128__(v26, v31)) >> 64;
      a8 = v32;
      v152 = v20;
    }
  }

  if (a6 == a5)
  {
    v104 = a9[1];
    v156 = *a9;
    v157 = v104;
    v145 = v151;
    v146 = v152;
    sub_2770E5940(&v156, &v145, &v151);
  }

  else
  {
    v105 = a9[1].u64[1];
    if (v21 > v105 || v21 == v105 && ((v107 = a9[1].u64[0], v20 > v107) || v20 == v107 && __PAIR128__(a8, a7) >= *a9))
    {
      v156 = v151;
      v157 = v152;
      v106 = a9[1];
      v145 = *a9;
      v146 = v106;
      sub_2770E59E8(&v156, &v145, &v151);
      v16 = a5;
    }

    else
    {
      v108 = a9[1];
      v156 = *a9;
      v157 = v108;
      v145 = v151;
      v146 = v152;
      sub_2770E59E8(&v156, &v145, &v151);
    }

    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v151), vceqzq_s64(v152))))) & 1) == 0)
    {
      if (a3 <= -6176)
      {
        v115 = -6176;
      }

      else
      {
        v115 = a3;
      }

      *&v147 = 0;
      *(&v147 + 1) = ((a10 == 1) << 63) | ((v115 + 6176) << 49);
      result = 0.0;
      *a16 = v147;
      return result;
    }
  }

  v156 = v151;
  v157 = v152;
  v109 = sub_2770E5A8C(&v156);
  v110 = v109 - 34;
  if (v109 > 34)
  {
    if (v109 > 0x26)
    {
      v156 = v151;
      if (v109 > 0x39)
      {
        v157 = v152;
        sub_277061970(v109, (v109 - 34), &v156, v151.i64, &v148, &v150 + 1, &v150, &v149 + 1, &v149);
        v114 = v151;
      }

      else
      {
        v157 = v152.u64[0];
        sub_277061154(v109, v109 - 34, &v156, v158, &v148, &v150 + 1, &v150, &v149 + 1, &v149);
        v114 = v158[0];
      }

      v153 = v114;
    }

    else
    {
      v154 = v151;
      sub_277060DB0(v109, v109 - 34, v151.u64[0], v151.u64[1], v153.i64, &v148, &v150 + 1, &v150, &v149 + 1, &v149);
    }

    v117 = v110 + a3;
    v111 = v110 + a3 < -6176;
    a3 = v148 + v117;
    v118 = v153.i64[1];
    if (a10)
    {
      v154.i64[0] = v153.i64[0];
      v154.i64[1] = v16 | v153.i64[1] | 0x3040000000000000;
      sub_2770E4D60(a10, SHIDWORD(v149), v149, SHIDWORD(v150), v150, 0, v154.i64, a15);
    }

    v112 = v118 | ((a3 + 6176) << 49);
    v109 = 34;
    v113 = &v153;
  }

  else
  {
    v111 = v109 + a3 < -6142;
    v112 = v151.i64[1] | ((a3 + 6176) << 49);
    v113 = &v151;
  }

  v119 = v112 | v16;
  v120 = v113->i64[0];
  *&v147 = v113->i64[0];
  *(&v147 + 1) = v119;
  if (!a10 && a3 + v109 >= 6146)
  {
    *&v147 = 0;
    *(&v147 + 1) = v16 | 0x7800000000000000;
    result = 0.0;
    *a16 = v147;
    *a15 |= 0x28u;
    return result;
  }

  v144 = v111;
  v121 = v150;
  v122 = HIDWORD(v150);
  v124 = v149;
  v123 = HIDWORD(v149);
  if (a3 <= -6177)
  {
    v149 = 0;
    v150 = 0;
    v125 = -6176 - a3;
    if (-6176 - a3 > v109)
    {
      v124 = 0;
      v121 = 0;
      v122 = 0;
      *&v147 = 0;
      *(&v147 + 1) = v16;
LABEL_52:
      a3 = -6176;
      v123 = 1;
      goto LABEL_85;
    }

    if (v125 != v109)
    {
      if (v109 > 0x12)
      {
        v154.i64[0] = v120;
        v154.i64[1] = v119 & 0x1FFFFFFFFFFFFLL;
        sub_277060DB0(v109, v125, v120, v119 & 0x1FFFFFFFFFFFFLL, &v147, &v148, &v150 + 1, &v150, &v149 + 1, &v149);
      }

      else
      {
        sub_277060C78(v109, v125, v120, &v155, &v148, &v150 + 1, &v150, &v149 + 1, &v149);
        v147 = v155;
      }

      v131 = *(&v147 + 1);
      if (v148)
      {
        v132 = DWORD1(v147);
        v133 = HIDWORD(qword_280A5D8C8) * v147;
        v134 = qword_280A5D8C8 * DWORD1(v147) + v133 + ((qword_280A5D8C8 * v147) >> 32);
        *&v147 = (qword_280A5D8C8 * v147) | (v134 << 32);
        v131 = qword_280A5D8C8 * DWORD2(v147) + HIDWORD(qword_280A5D8C8) * v132 + HIDWORD(v133) + ((qword_280A5D8C8 * (HIDWORD(v147) & 0x1FFFF) + HIDWORD(qword_280A5D8C8) * DWORD2(v147)) << 32) + HIDWORD(v134);
      }

      v135 = v131 & 0x1FFFFFFFFFFFFLL | v16;
      *(&v147 + 1) = v135;
      v136 = v124 | v122;
      v137 = (v124 | v122) != 0;
      v122 = HIDWORD(v150);
      if (v136 && HIDWORD(v150))
      {
        v138 = v147;
        *&v147 = v147 - 1;
        if (!v138)
        {
          *(&v147 + 1) = v135 - 1;
        }

        v122 = 0;
        v121 = v150;
        a3 = -6176;
        v123 = 1;
        v124 = v149;
        goto LABEL_85;
      }

      v139 = v123 | v121;
      v140 = (v123 | v121) != 0;
      v121 = v150;
      if (v139 && v150)
      {
        v63 = __CFADD__(v147, 1);
        *&v147 = v147 + 1;
        if (v63)
        {
          *(&v147 + 1) = v135 + 1;
        }

        v121 = 0;
        a3 = -6176;
        v124 = 1;
        v123 = HIDWORD(v149);
        goto LABEL_85;
      }

      v124 = v149;
      v123 = HIDWORD(v149);
      if (!v150 && !v149)
      {
        v121 = 0;
        v122 = 0;
        a3 = -6176;
        v124 = v137;
        v123 = v139 != 0;
        goto LABEL_85;
      }

      if (!v150)
      {
        LOBYTE(v137) = 0;
      }

      if (v137)
      {
        v124 = 0;
        v121 = 0;
        v122 = 0;
        goto LABEL_52;
      }

      v143 = !v140;
      if (!HIDWORD(v150))
      {
        v143 = 1;
      }

      if ((v143 & 1) == 0)
      {
        v123 = 0;
        v121 = 0;
        v122 = 0;
        a3 = -6176;
        v124 = 1;
        goto LABEL_85;
      }

LABEL_84:
      a3 = -6176;
      goto LABEL_85;
    }

    if (v109 > 0x13)
    {
      v128 = v119 & 0x1FFFFFFFFFFFFLL;
      v129 = &qword_280A5D2B0[2 * (v109 - 20)];
      v130 = v129[1];
      if (v128 >= v130)
      {
        if (v128 == v130)
        {
          v141 = *v129;
          if (v120 < v141)
          {
            goto LABEL_60;
          }

          if (v120 == v141)
          {
            v124 = 0;
            v123 = 0;
            v127 = 0;
            v121 = 1;
            goto LABEL_83;
          }
        }

        v123 = 0;
        v121 = 0;
        v124 = 1;
        v127 = 1;
        goto LABEL_83;
      }
    }

    else
    {
      v126 = qword_280A5D210[(v109 - 1)];
      if (v120 >= v126)
      {
        v123 = 0;
        v121 = v120 == v126;
        v127 = v120 != v126;
        v124 = v127;
LABEL_83:
        v122 = 0;
        *&v147 = v127;
        *(&v147 + 1) = v16;
        goto LABEL_84;
      }
    }

LABEL_60:
    v124 = 0;
    v121 = 0;
    v127 = 0;
    v123 = 1;
    goto LABEL_83;
  }

LABEL_85:
  if (a10)
  {
    sub_2770E4D60(a10, v123, v124, v122, v121, a3, &v147, a15);
  }

  if (v122 || v121 || v123 || v124)
  {
    v142 = *a15;
    *a15 |= 0x20u;
    if (v144)
    {
      *a15 = v142 | 0x30;
    }
  }

  *a11 = v122;
  *a12 = v121;
  *a13 = v123;
  *a14 = v124;
  result = *&v147;
  *a16 = v147;
  return result;
}

void *sub_2770E5940(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = *a2 + *result;
  if (__CFADD__(*a2, *result))
  {
    v5 = __CFADD__(v3++, 1);
    result[1] = v3;
    if (v5)
    {
      v6 = result[2];
      result[2] = v6 + 1;
      if (v6 == -1)
      {
        ++result[3];
      }

      v7 = a2[1];
      goto LABEL_13;
    }
  }

  v8 = a2[1];
  v5 = __CFADD__(v8, v3);
  v7 = v8 + v3;
  if (!v5)
  {
LABEL_13:
    v10 = result[2];
    goto LABEL_14;
  }

  v9 = result[2];
  v5 = __CFADD__(v9, 1);
  v10 = v9 + 1;
  result[2] = v10;
  if (v5)
  {
    ++result[3];
    v11 = a2[2];
LABEL_17:
    v13 = result[3];
    goto LABEL_18;
  }

LABEL_14:
  v12 = a2[2];
  v5 = __CFADD__(v12, v10);
  v11 = v12 + v10;
  if (!v5)
  {
    goto LABEL_17;
  }

  v13 = result[3] + 1;
  result[3] = v13;
LABEL_18:
  v14 = a2[3] + v13;
  *a3 = v4;
  a3[1] = v7;
  a3[2] = v11;
  a3[3] = v14;
  return result;
}

void *sub_2770E59E8(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = *result - *a2;
  if (*result >= *a2)
  {
    v5 = result[1];
  }

  else
  {
    v5 = v3 - 1;
    result[1] = v3 - 1;
    if (!v3)
    {
      v6 = result[2];
      result[2] = v6 - 1;
      if (!v6)
      {
        --result[3];
      }

      v5 = -1;
    }
  }

  v7 = a2[1];
  v8 = result[2];
  v9 = v5 >= v7;
  v10 = v5 - v7;
  if (v9)
  {
    v11 = result[2];
  }

  else
  {
    v11 = v8 - 1;
    result[2] = v8 - 1;
    if (!v8)
    {
      --result[3];
      v11 = -1;
    }
  }

  v12 = a2[2];
  v13 = result[3];
  v9 = v11 >= v12;
  v14 = v11 - v12;
  if (!v9)
  {
    result[3] = --v13;
  }

  v15 = v13 - a2[3];
  *a3 = v4;
  a3[1] = v10;
  a3[2] = v14;
  a3[3] = v15;
  return result;
}

uint64_t sub_2770E5A8C(unint64_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
LABEL_2:
    v2 = &qword_280A5DAC8;
    v3 = -29;
    v4 = &qword_280A5DAC8;
    while (1)
    {
      v5 = *v4;
      v4 += 4;
      v6 = v1 == v5;
      if (v1 < v5)
      {
        break;
      }

      if (v6)
      {
        v7 = a1[2];
        v8 = *(v2 - 1);
        if (v7 < v8 || v7 == v8 && *a1 < *(v2 - 3))
        {
          break;
        }
      }

      v2 = v4;
      v9 = __CFADD__(v3++, 1);
      if (v9)
      {
        v10 = 30;
        return (v10 + 39);
      }
    }

    v10 = v3 + 30;
    return (v10 + 39);
  }

  v12 = a1[2];
  if (v12)
  {
    if (v12 < qword_280A5DAA0 || v12 == qword_280A5DAA0 && *a1 < xmmword_280A5DA90)
    {
      return 39;
    }

    goto LABEL_2;
  }

  if (a1[1])
  {
    if (*a1 < xmmword_280A5D960)
    {
      return 20;
    }

    else
    {
      v15 = &qword_280A5D978;
      v16 = a1[1];
      v17 = -18;
      v18 = &qword_280A5D978;
      while (1)
      {
        v19 = *v18;
        v18 += 2;
        v20 = v16 == v19;
        if (v16 < v19 || v20 && *a1 < *(v15 - 1))
        {
          break;
        }

        v15 = v18;
        v9 = __CFADD__(v17++, 1);
        if (v9)
        {
          v21 = 19;
          return (v21 + 20);
        }
      }

      v21 = v17 + 19;
      return (v21 + 20);
    }
  }

  else
  {
    v13 = *a1;
    v14 = 1;
    result = 20;
    while (v13 >= qword_280A5D8C0[v14])
    {
      if (++v14 == 20)
      {
        return result;
      }
    }

    return v14;
  }
}

void sub_2770E6080()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("TSUNetworkReachability.InternetReachabilityStatus", v2);
  v1 = qword_280A63DE8;
  qword_280A63DE8 = v0;
}

void sub_2770E61BC(uint64_t a1)
{
  v2 = [*(a1 + 48) newNetworkReachabilityRefForInternetConnection];
  if (v2)
  {
    v3 = v2;
    v4 = [[TSUSCNetworkReachabilityCore alloc] initWithReachabilityRef:v2];
    v24 = 0;
    v5 = [(TSUSCNetworkReachabilityCore *)v4 getReachabilityFlags:&v24];
    v6 = *(a1 + 40);
    if (v5)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        if (!v7)
        {
          v15 = [*(a1 + 48) networkStatusForFlags:v24];
          v6[2](v6, v15, v24);
          goto LABEL_18;
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2770E640C;
        block[3] = &unk_27A702DF8;
        v8 = v6;
        v9 = *(a1 + 48);
        v21 = v8;
        v22 = v9;
        v23 = v24;
        dispatch_async(v7, block);
        v10 = v21;
        goto LABEL_12;
      }
    }

    else if (v6)
    {
      v13 = *(a1 + 32);
      if (!v13)
      {
        v6[2](v6, 3, 0);
        goto LABEL_18;
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_2770E645C;
      v18[3] = &unk_27A702350;
      v19 = v6;
      dispatch_async(v13, v18);
      v10 = v19;
LABEL_12:
    }

LABEL_18:
    CFRelease(v3);

    return;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_2770E6474;
      v16[3] = &unk_27A702350;
      v17 = v11;
      dispatch_async(v12, v16);
    }

    else
    {
      v14 = v11[2];

      v14();
    }
  }
}

uint64_t sub_2770E640C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) networkStatusForFlags:*(a1 + 48)];
  v4 = *(a1 + 48);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

uint64_t sub_2770E64FC()
{
  v0 = TSULogCreateCategory("TSUCollaborationNetworkHealthCat");
  v1 = TSUCollaborationNetworkHealthCat_log_t;
  TSUCollaborationNetworkHealthCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770E664C()
{
  v0 = TSULogCreateCategory("TSUCollaborationNetworkHealthCat");
  v1 = TSUCollaborationNetworkHealthCat_log_t;
  TSUCollaborationNetworkHealthCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770E67E4()
{
  v0 = TSULogCreateCategory("TSUCollaborationNetworkHealthCat");
  v1 = TSUCollaborationNetworkHealthCat_log_t;
  TSUCollaborationNetworkHealthCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770E6908(uint64_t a1, uint64_t a2, int a3)
{
  [*(a1 + 32) p_updateCachedStatus:a2];
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2770E69F4;
      block[3] = &unk_27A702DF8;
      v10 = v6;
      v11 = a2;
      v12 = a3;
      dispatch_async(v7, block);
    }

    else
    {
      v8 = v6[2];

      v8();
    }
  }
}

void sub_2770E6B00(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"TSUNetworkReachabilityStatusKey";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"TSUNetworkReachabilityChangedNotification" object:*(a1 + 32) userInfo:v3];
}

void sub_2770E6CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_2770E6D14()
{
  v0 = TSULogCreateCategory("TSUCollaborationNetworkHealthCat");
  v1 = TSUCollaborationNetworkHealthCat_log_t;
  TSUCollaborationNetworkHealthCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770E6D58(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained p_reachabilityFlagsDidChange:a2];
    WeakRetained = v4;
  }
}

uint64_t sub_2770E6E14()
{
  v0 = TSULogCreateCategory("TSUCollaborationNetworkHealthCat");
  v1 = TSUCollaborationNetworkHealthCat_log_t;
  TSUCollaborationNetworkHealthCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770E6ECC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 - 1;
  if (v3 <= 0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNetworkReachability disableNotifier]_block_invoke"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNetworkReachability.m"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:413 isFatal:0 description:"disableNotifier called without corresponding paired enableNotifier call"];

    +[TSUAssertionHandler logFullBacktrace];
  }

  else if (v3 != 1)
  {
    return result;
  }

  v6 = *(v1 + 32);

  return [v6 p_stopNotifier];
}

uint64_t sub_2770E7024(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = v2 + 1;
  if ((v2 & 0x8000000000000000) == 0)
  {
    return MEMORY[0x2821F9670](*(result + 32), sel_p_startNotifier);
  }

  return result;
}

void sub_2770E73CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_reachabilityNotificationCallback(SCNetworkReachabilityRef _Nonnull, SCNetworkReachabilityFlags, void * _Nonnull)"}];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNetworkReachability.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:578 isFatal:0 description:"info was NULL in p_reachabilityNotificationCallback"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v7 = objc_autoreleasePoolPush();
  v8 = objc_opt_class();
  v9 = TSUCheckedDynamicCast(v8, a3);
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 16);
    if (v11)
    {
      (*(v11 + 16))(v11, a2);
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_2770E7620(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

uint64_t TSUFormatTypeToTSUNumberValueType(int a1)
{
  if ((a1 - 256) > 0x12)
  {
    return 4294966297;
  }

  else
  {
    return dword_2771393D0[a1 - 256];
  }
}

uint64_t TSUFormatTypeFromTSUNumberValueType(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_27713941C[a1];
  }
}

uint64_t TSUDefaultRootFormatTypeForCustomFormatType(uint64_t a1)
{
  v1 = a1;
  v2 = a1 - 270;
  if (a1 - 270) < 5 && ((0x17u >> v2))
  {
    return dword_277139434[v2];
  }

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormatType TSUDefaultRootFormatTypeForCustomFormatType(TSUFormatType)"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFormatUtilities.m"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:85 isFatal:0 description:"Expected a custom format type."];

  +[TSUAssertionHandler logBacktraceThrottled];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormatType TSUDefaultRootFormatTypeForCustomFormatType(TSUFormatType)"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFormatUtilities.m"];
  v7 = NSStringForTSUFormatType(v1);
  [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:101 isFatal:0 description:"Unhandled custom format type %@.", v7];

  +[TSUAssertionHandler logBacktraceThrottled];
  return v1;
}

void *sub_2770E77E0(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v13 = a2;
  v14 = a6;
  v15 = [a1 createHarmonizedDecimalFormatterOfStyle:0];
  [v15 setRoundingMode:6];
  if (v14)
  {
    [v15 harmonizedSetCurrency:v14 locale:a1];
  }

  if (!v13)
  {
    v13 = &stru_28862C2A0;
  }

  [v15 setFormat:v13];
  if (a3)
  {
    if (a4 == 65534)
    {
      v16 = v15;
      v17 = 0;
      v18 = 0x7FFFFFFFLL;
    }

    else
    {
      v16 = v15;
      if (a4 == 65533)
      {
        v17 = 0;
        v18 = 3;
      }

      else
      {
        v17 = a4;
        v18 = a4;
      }
    }

    [v16 setMinFractionDigits:v17 maxFractionDigits:v18];
  }

  [v15 setMinIntegerDigits:1];
  if (a7)
  {
    [v15 setMinusSign:&stru_28862C2A0];
  }

  [v15 setUseGroupingSeparator:a5];
  if (a5 && ![v15 groupingSize])
  {
    [v15 setGroupingSize:{objc_msgSend(a1, "groupingSize")}];
  }

  return v15;
}

id sub_2770E793C(uint64_t a1, void *a2, TSUIntegerKeyDictionary **a3)
{
  v4 = a2;
  if (!a2)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUDecimalFormatter *p_decimalFormatterIfAvailable(NSInteger, TSULocale *__unsafe_unretained, TSUIntegerKeyDictionary<TSUDecimalFormatter *> *__autoreleasing *)"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFormatUtilities.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:226 isFatal:0 description:"A locale is required here. No locale passed in, falling to back current locale."];

    +[TSUAssertionHandler logBacktraceThrottled];
    v4 = +[TSULocale currentLocale];
  }

  v8 = [v4 cacheKey];
  if (qword_280A63E00 != -1)
  {
    sub_2771150E4();
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v9 = qword_280A63DF8;
  }

  else
  {
    v10 = [MEMORY[0x277CCACC8] currentThread];
    v9 = [v10 threadDictionary];
  }

  v11 = [v9 objectForKey:@"TSUFormatUtilitiesThreadDictionaryKey"];
  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    [v9 setObject:v11 forKey:@"TSUFormatUtilitiesThreadDictionaryKey"];
  }

  if ([v4 autoupdatingCurrentLocaleChangeCount])
  {
    v12 = [v11 objectForKeyedSubscript:@"TSUFormatUtilitiesLocaleChangeSerialKey"];
    v13 = [v12 unsignedIntegerValue];
    if (v13 >= +[TSULocale autoupdatingCurrentLocaleChangeCount])
    {
      v17 = objc_opt_class();
      v14 = [v11 objectForKey:v8];
      v15 = TSUCheckedDynamicCast(v17, v14);
    }

    else
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[TSULocale autoupdatingCurrentLocaleChangeCount](TSULocale, "autoupdatingCurrentLocaleChangeCount")}];
      [v11 setObject:v14 forKeyedSubscript:@"TSUFormatUtilitiesLocaleChangeSerialKey"];
      v15 = 0;
    }
  }

  else
  {
    v16 = objc_opt_class();
    v12 = [v11 objectForKey:v8];
    v15 = TSUCheckedDynamicCast(v16, v12);
  }

  if (!v15)
  {
    v15 = objc_alloc_init(TSUIntegerKeyDictionary);
    [v11 setObject:v15 forKey:v8];
  }

  v18 = [(TSUIntegerKeyDictionary *)v15 objectForKey:a1];
  v19 = v18;
  if (a3 && !v18)
  {
    v20 = v15;
    *a3 = v15;
  }

  return v19;
}

uint64_t sub_2770E7C1C()
{
  v0 = objc_opt_new();
  v1 = qword_280A63DF8;
  qword_280A63DF8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

unint64_t TSUMakeTSKNumberFormatCacheKey(int a1, int a2, int a3, unsigned int a4, int a5, unsigned int a6)
{
  v6 = 16;
  if (!a5)
  {
    v6 = 0;
  }

  return (a3 << 16) | ((a2 | (a1 << 16)) << 32) | (a4 << 8) | v6 | a6;
}

id TSUFormatGetDecimalFormatterWithTSKNumberFormatParameters(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unint64_t a7, void *a8)
{
  v11 = a4;
  v12 = a3;
  v15 = 16;
  if (!a5)
  {
    v15 = 0;
  }

  if (a7)
  {
    v16 = a7;
  }

  else
  {
    v16 = (a3 << 16) | ((a2 | (a1 << 16)) << 32) | (a4 << 8) | v15 | a6;
  }

  v31 = 0;
  v17 = sub_2770E793C(v16, a8, &v31);
  v18 = v31;
  if (!v17)
  {
    v30 = v16;
    v19 = [a8 formattingSymbols];
    v20 = [v19 patternStringForNumberStyle:a1 negativeStyle:v11];

    if (a1 == 257 && a6)
    {
      v21 = [a8 formattingSymbols];
      LODWORD(v11) = 2;
      v22 = [v21 patternStringForNumberStyle:256 negativeStyle:2];
    }

    else
    {
      v22 = v20;
    }

    if ((v12 - 253) >= 3)
    {
      if (v12 != 252)
      {
        goto LABEL_16;
      }

      v23 = &word_27712391A;
    }

    else
    {
      v23 = &word_277123918;
    }

    v12 = *v23;
LABEL_16:
    v24 = TSUCurrencyCodeForIndex(a2);
    v17 = sub_2770E77E0(a8, v22, 1, v12, a5, v24, v11 != 0);

    if (v17)
    {
      if (v18)
      {
LABEL_18:
        [(TSUIntegerKeyDictionary *)v18 setObject:v17 forKey:v30];

        goto LABEL_19;
      }
    }

    else
    {
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUDecimalFormatter *TSUFormatGetDecimalFormatterWithTSKNumberFormatParameters(TSUFormatType, TSUCurrencyCodeIndex, UInt16, TSUNegativeNumberStyle, BOOL, BOOL, NSInteger, TSULocale *__unsafe_unretained)"}];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFormatUtilities.m"];
      [TSUAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:338 isFatal:0 description:"invalid nil value for '%{public}s'", "formatter"];

      +[TSUAssertionHandler logBacktraceThrottled];
      if (v18)
      {
        goto LABEL_18;
      }
    }

    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUDecimalFormatter *TSUFormatGetDecimalFormatterWithTSKNumberFormatParameters(TSUFormatType, TSUCurrencyCodeIndex, UInt16, TSUNegativeNumberStyle, BOOL, BOOL, NSInteger, TSULocale *__unsafe_unretained)"}];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFormatUtilities.m"];
    [TSUAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:339 isFatal:0 description:"invalid nil value for '%{public}s'", "formatterDictionary"];

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_18;
  }

LABEL_19:

  return v17;
}

id TSUFormatStringFromDoubleWithTSKNumberFormatParameters(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unint64_t a7, void *a8, double a9)
{
  v13 = a1;
  v14 = TSUFormatGetDecimalFormatterWithTSKNumberFormatParameters(a1, a2, a3, a4, a5, a6, a7, a8);
  v15 = [v14 createStringWithValue:a9];
  if (v13 == 257 && a6)
  {
    v16 = TSUCurrencyCodeForIndex(a2);
    v17 = [a8 currencySymbolForCurrencyCode:v16];

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\u200E\t%@", v17, v15];

    v15 = v18;
  }

  return v15;
}

__CFString *TSUFormatStringFromDoubleWithCustomFormatDataSuppressCaching(void *a1, void *a2, char a3, double a4)
{
  v7 = a1;
  v8 = [v7 formatString];
  if (![(__CFString *)v8 length])
  {
    v11 = v8;
    goto LABEL_21;
  }

  if ([(__CFString *)v8 characterAtIndex:0]== 39 && [(__CFString *)v8 characterAtIndex:[(__CFString *)v8 length]- 1]== 39)
  {
    v9 = [(__CFString *)v8 substringFromIndex:1];
    v10 = [v9 rangeOfString:@"'"];
    if (v10 == [v9 length] - 1)
    {
      v11 = [v9 substringToIndex:{objc_msgSend(v9, "length") - 1}];

      if (v11)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  v41 = a2;
  if (![v7 isComplexFormat] || (v40 = objc_msgSend(v7, "isConditional"), TSUCurrencyCodeForIndex(objc_msgSend(v7, "currencyCodeIndex")), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "scaleFactor"), v13 = v12, objc_msgSend(v7, "interstitialStrings"), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "interstitialStringInsertionIndexes"), v37 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v7, "minimumIntegerWidth"), v35 = objc_msgSend(v7, "decimalWidth"), v34 = objc_msgSend(v7, "numberOfNonSpaceIntegerPlaceholderDigits"), v33 = objc_msgSend(v7, "numberOfNonSpaceDecimalPlaceholderDigits"), v32 = objc_msgSend(v7, "numberOfHashDecimalPlaceholders"), v14 = a3, v15 = objc_msgSend(v7, "totalNumberOfDecimalPlaceholdersInFormat"), v16 = objc_msgSend(v7, "indexFromRightOfLastDigitPlaceholder"), v17 = objc_msgSend(v7, "isConditional"), v18 = objc_msgSend(v7, "formatContainsIntegerToken"), HIBYTE(v31) = objc_msgSend(v7, "requiresFractionReplacement"), LOBYTE(v31) = v18, HIWORD(v30) = v16, BYTE5(v30) = v15, a3 = v14, BYTE4(v30) = v32, BYTE3(v30) = v33, BYTE2(v30) = v34, BYTE1(v30) = v35, LOBYTE(v30) = v36, sub_2770402CC(0, 0, 0, v40, v8, v39, 1, v38, a4, v13, v37, v30, v17, 0, 0x101u, v31, objc_msgSend(v7, "showThousandsSeparator"), objc_msgSend(v7, "useAccountingStyle"), 0, 0, 0, 0, objc_msgSend(v7, "fractionAccuracy"), v41), v11 = objc_claimAutoreleasedReturnValue(), v37, v38, v39, !v11))
  {
    if (a3)
    {
      v19 = 0;
      v20 = v41;
    }

    else
    {
      v42 = 0;
      v20 = v41;
      v21 = sub_2770E793C([v7 formatCacheKey], v41, &v42);
      v19 = v42;
      if (v21)
      {
LABEL_20:
        [v7 scaleFactor];
        v11 = [v21 createStringWithValue:v28 * a4];

        goto LABEL_21;
      }
    }

    v22 = [v7 showThousandsSeparator];
    v23 = TSUCurrencyCodeForIndex([v7 currencyCodeIndex]);
    v21 = sub_2770E77E0(v20, v8, 0, 0, v22, v23, [v7 isConditional]);

    if (!v21)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUFormatStringFromDoubleWithCustomFormatDataSuppressCaching(TSUCustomFormatData *__strong, TSULocale *__unsafe_unretained, double, BOOL)"}];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFormatUtilities.m"];
      [TSUAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:470 isFatal:0 description:"invalid nil value for '%{public}s'", "formatter"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    if ((a3 & 1) == 0)
    {
      if (!v19)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUFormatStringFromDoubleWithCustomFormatDataSuppressCaching(TSUCustomFormatData *__strong, TSULocale *__unsafe_unretained, double, BOOL)"}];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFormatUtilities.m"];
        [TSUAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:472 isFatal:0 description:"invalid nil value for '%{public}s'", "formatterDictionary"];

        +[TSUAssertionHandler logBacktraceThrottled];
      }

      -[TSUIntegerKeyDictionary setObject:forKey:](v19, "setObject:forKey:", v21, [v7 formatCacheKey]);
    }

    goto LABEL_20;
  }

LABEL_21:

  return v11;
}

id sub_2770E856C()
{
  v0 = qword_280A63E08;
  if (!qword_280A63E08)
  {
    v1 = [MEMORY[0x277D75348] colorWithRed:0.219607843 green:0.329411765 blue:0.529411765 alpha:1.0];
    v2 = qword_280A63E08;
    qword_280A63E08 = v1;

    v0 = qword_280A63E08;
  }

  return v0;
}

id sub_2770E865C()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v1 = [v0 colorWithAlphaComponent:0.15];

  return v1;
}

id sub_2770E8918()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v0 = 0.784313725;
  }

  else
  {
    v0 = 0.647058824;
  }

  v1 = [MEMORY[0x277D75348] colorWithRed:v0 green:v0 blue:v0 alpha:1.0];

  return v1;
}

id sub_2770E8994()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v1 = [v0 colorWithAlphaComponent:0.2];

  return v1;
}

uint64_t (*sub_2770E8BA8(uint64_t (*result)(uint64_t, uint64_t, char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unsigned int a7, char *a8, unsigned int a9, char *a10))(uint64_t, uint64_t, char *, uint64_t, char *)
{
  v16 = result;
  v17 = a9 / a2;
  v24 = a9 % a2;
  v18 = &a10[a2];
  if (a2 <= a9)
  {
    v25 = a2;
    v19 = 1;
    do
    {
      v26 = a8;
      v23 = a8;
      v20 = a2;
      v21 = v18;
      v22 = v17;
      result = sub_2770E8CFC(v16, a2, a3, a4, __src, __n, a7, v19, v23, v18);
      v17 = v22;
      v18 = v21;
      a2 = v20;
      a8 = &v26[v25];
      ++v19;
    }

    while (v19 <= v17);
  }

  else
  {
    v19 = 1;
  }

  if (v24)
  {
    sub_2770E8CFC(v16, a2, a3, a4, __src, __n, a7, v19, a10, v18);

    return memcpy(a8, a10, v24);
  }

  return result;
}

void *sub_2770E8CFC(uint64_t (*a1)(uint64_t, uint64_t, char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unsigned int a7, int a8, void *a9, char *a10)
{
  v11 = __n;
  v16 = a2;
  v17 = a10;
  v18 = &a10[a2];
  memcpy(v18, __src, __n);
  v18[v11] = HIBYTE(a8);
  v18[v11 + 1] = BYTE2(a8);
  v18[v11 + 2] = BYTE1(a8);
  v18[v11 + 3] = a8;
  a1(a3, a4, v18, (v11 + 4), a10);
  v19 = v16;
  result = memcpy(a9, a10, v16);
  if (a7 >= 2)
  {
    v21 = 2;
    do
    {
      v22 = v18;
      result = a1(a3, a4, v17, a2, v18);
      if (a2)
      {
        v23 = v19;
        v24 = a9;
        v25 = v18;
        do
        {
          v26 = *v25++;
          *v24++ ^= v26;
          --v23;
        }

        while (v23);
      }

      ++v21;
      v18 = v17;
      v17 = v22;
    }

    while (v21 <= a7);
  }

  return result;
}

id sub_2770E8E38()
{
  if (qword_280A63E18 != -1)
  {
    sub_2771150F8();
  }

  v1 = qword_280A63E10;

  return v1;
}

uint64_t sub_2770E8E7C()
{
  v0 = objc_opt_new();
  v1 = qword_280A63E10;
  qword_280A63E10 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id TSUCurrencyCodeForIndex(unsigned int a1)
{
  v2 = sub_2770E8E38();
  v3 = [v2 stringForIndex:a1];

  return v3;
}

uint64_t TSUCurrencyCodeIndexForCode(void *a1)
{
  v1 = a1;
  v2 = sub_2770E8E38();
  v3 = [v2 indexForString:v1];

  if (v3 >= 0x10000)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUCurrencyCodeIndex TSUCurrencyCodeIndexForCode(const NSString *__strong)"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFormatTypes.mm"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:38 isFatal:0 description:"stringIndex too large, there should only be about 281 currency codes possible (ISO 4217 currency code standard)."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return v3;
}

__CFString *NSStringForTSUFormatType(uint64_t a1)
{
  v3 = a1 - 254;
  v4 = @"TSUFormatTypeDecimal";
  switch(v3)
  {
    case 0:
      v4 = @"TSUFormatTypeConflicting";

      return v4;
    case 1:
    case 19:
      goto LABEL_10;
    case 2:
      goto LABEL_11;
    case 3:
      v4 = @"TSUFormatTypeCurrency";

      return v4;
    case 4:
      v4 = @"TSUFormatTypePercent";

      return v4;
    case 5:
      v4 = @"TSUFormatTypeScientific";

      return v4;
    case 6:
      v4 = @"TSUFormatTypeText";

      return v4;
    case 7:
      v4 = @"TSUFormatTypeDateTime";

      return v4;
    case 8:
      v4 = @"TSUFormatTypeFraction";

      return v4;
    case 9:
      v4 = @"TSUFormatTypeCheckbox";

      return v4;
    case 10:
      v4 = @"TSUFormatTypeStepper_DEPRECATED";

      return v4;
    case 11:
      v4 = @"TSUFormatTypeSlider_DEPRECATED";

      return v4;
    case 12:
      v4 = @"TSUFormatTypeMultipleChoiceList_DEPRECATED";

      return v4;
    case 13:
      v4 = @"TSUFormatTypeRating";

      return v4;
    case 14:
      v4 = @"TSUFormatTypeDuration";

      return v4;
    case 15:
      v4 = @"TSUFormatTypeBase";

      return v4;
    case 16:
      v4 = @"TSUFormatTypeCustomNumber";

      return v4;
    case 17:
      v4 = @"TSUFormatTypeCustomText";

      return v4;
    case 18:
      v4 = @"TSUFormatTypeCustomDateTime";

      return v4;
    case 20:
      v4 = @"TSUFormatTypeCustomCurrency";

      return v4;
    default:
      if (a1)
      {
        if (a1 == 1)
        {
          v4 = @"TSUFormatTypeBoolean";
        }

        else
        {
LABEL_10:
          v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown TSU format type: %ul. Possibly from the future.", a1];
LABEL_11:
        }
      }

      else
      {
        v4 = @"TSUFormatTypeNotSet";
      }

      return v4;
  }
}

unint64_t sub_2770E92C8(TSUDecimal *a1, TSUDecimal *a2, unint64_t *a3, TSUDecimal *a4, int a5)
{
  v9 = *a3;
  v19 = *a1;
  v20 = v9;
  TSUDecimal::operator-=(&v20, a2);
  v18 = v20;
  TSUDecimal::operator=(&v17, 0);
  TSUDecimal::operator=(&v15, 1000);
  v20 = *a4;
  TSUDecimal::operator/=(v20.var0.var0, v15.var0.var0);
  v16 = v20;
  TSUDecimal::mod(&v18, a4, &v17);
  if (TSUDecimal::operator<=(v19.var0.var0, a2))
  {
    v10 = *a2;
LABEL_13:
    v19 = v10;
    return v19.var0.var0[0];
  }

  if (!TSUDecimal::operator<=(v19.var0.var0, a3) || TSUDecimal::operator==(v19.var0.var0, a3))
  {
    goto LABEL_12;
  }

  if (!a5 || (TSUDecimal::operator=(&v15, 0), v11 = TSUDecimal::doubleValue(&v16), TSUDecimal::equalWithTolerence(&v17, &v15, v11)) || (v20 = *a3, TSUDecimal::operator-=(&v20, a4), v14 = v20, TSUDecimal::operator<=(v19.var0.var0, &v14)) && !TSUDecimal::operator==(v19.var0.var0, v14.var0.var0) || (v20 = *a3, TSUDecimal::operator-=(&v20, &v17), v13 = v20, !TSUDecimal::operator<=(v19.var0.var0, &v13)))
  {
    TSUDecimal::operator-=(&v19, a2);
    TSUDecimal::operator/=(v19.var0.var0, a4->var0.var0);
    TSUDecimal::round(&v19);
    TSUDecimal::operator*=(&v19, a4);
    TSUDecimal::operator+=(&v19, a2);
    if (TSUDecimal::operator<=(v19.var0.var0, a3))
    {
      return v19.var0.var0[0];
    }

LABEL_12:
    v10 = *a3;
    goto LABEL_13;
  }

  v20 = *a3;
  TSUDecimal::operator-=(&v20, &v17);
  v19 = v20;
  return v19.var0.var0[0];
}

void TSUFormatRecomputedControlValueFromLimits(int a1, double a2, double a3, double a4, double a5)
{
  TSUDecimal::operator=(v14.var0.var0, a2);
  TSUDecimal::operator=(v13.var0.var0, a3);
  TSUDecimal::operator=(v12.var0.var0, a4);
  TSUDecimal::operator=(v11.var0.var0, a5);
  TSUDecimal::reinterpretDoubleAsDecimal(&v14);
  TSUDecimal::reinterpretDoubleAsDecimal(&v13);
  TSUDecimal::reinterpretDoubleAsDecimal(&v12);
  TSUDecimal::reinterpretDoubleAsDecimal(&v11);
  v10.var0.var0[0] = sub_2770E92C8(&v14, &v13, v12.var0.var0, &v11, a1);
  v10.var0.var0[1] = v9;
  TSUDecimal::doubleValue(&v10);
}

uint64_t sub_2770E9790()
{
  v0 = TSULogCreateCategory("TSUManagedTemporaryLogCat");
  v1 = TSUManagedTemporaryLogCat_log_t;
  TSUManagedTemporaryLogCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770E97D0()
{
  v0 = TSULogCreateCategory("TSUManagedTemporaryLogCat");
  v1 = TSUManagedTemporaryLogCat_log_t;
  TSUManagedTemporaryLogCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770E9D34()
{
  v0 = TSULogCreateCategory("TSUManagedTemporaryLogCat");
  v1 = TSUManagedTemporaryLogCat_log_t;
  TSUManagedTemporaryLogCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770EA120()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("TSUTemporaryDirectoryManager.ClearDirectories", attr);
  v2 = qword_280A63E20;
  qword_280A63E20 = v1;
}

uint64_t sub_2770EA1A4(uint64_t a1)
{
  if (TSUManagedTemporaryLogCat_init_token != -1)
  {
    sub_277115184();
  }

  v2 = *(a1 + 40);

  return MEMORY[0x2821F9670](v2, sel__removeDirectories_);
}

uint64_t sub_2770EA1F0()
{
  v0 = TSULogCreateCategory("TSUManagedTemporaryLogCat");
  v1 = TSUManagedTemporaryLogCat_log_t;
  TSUManagedTemporaryLogCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770EA3DC()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("TSUTemporaryDirectoryManager.ExcludeFromBackup", attr);
  v2 = qword_280A63E30;
  qword_280A63E30 = v1;
}

void sub_2770EA460(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *MEMORY[0x277CBE878];
  v3 = 0;
  if (([v1 setResourceValue:MEMORY[0x277CBEC38] forKey:v2 error:&v3] & 1) == 0 && TSUManagedTemporaryLogCat_init_token != -1)
  {
    sub_2771151AC();
  }
}

uint64_t sub_2770EA4C0()
{
  v0 = TSULogCreateCategory("TSUManagedTemporaryLogCat");
  v1 = TSUManagedTemporaryLogCat_log_t;
  TSUManagedTemporaryLogCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770EA7CC()
{
  v0 = TSULogCreateCategory("TSUManagedTemporaryLogCat");
  v1 = TSUManagedTemporaryLogCat_log_t;
  TSUManagedTemporaryLogCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770EA9D4(uint64_t a1)
{
  result = [*(a1 + 32) entriesCountImpl];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_2770EAAFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2770EAB18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_semaphore_signal(WeakRetained[4]);
    WeakRetained = v2;
  }
}

uint64_t sub_2770EB2C4(uint64_t a1, uint64_t a2, uint64_t a3, const Bytef *a4, unint64_t a5)
{
  v8 = [*(*(a1 + 32) + 64) CRC];
  if (HIDWORD(a5))
  {
    sub_2771153D4();
    LODWORD(a5) = -1;
  }

  [*(*(a1 + 32) + 64) setCRC:{crc32(v8, a4, a5)}];
  return 1;
}

void sub_2770EB504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 72) == 1)
  {
    sub_277115470(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(v9 + 160);
  if (v10)
  {
    v11 = v10;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770EB65C;
    block[3] = &unk_27A702378;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v21 = v11;
    v22 = v13;
    v14 = v11;
    dispatch_async(v12, block);
  }

  else
  {
    [v9 finishEntry];
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2770EB670;
    v17[3] = &unk_27A7024A0;
    v17[4] = v15;
    v19 = *(a1 + 48);
    v18 = *(a1 + 40);
    dispatch_async(v16, v17);
  }
}

void sub_2770EB670(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v2 = [*(a1 + 32) p_writeChannel];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2770EB734;
  v6[3] = &unk_27A703448;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v6[4] = v4;
  v7 = v5;
  [v2 flushWithCompletion:v6];
}

void sub_2770EB734(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    v5 = v3;
    if (!v3)
    {
      v5 = *(a1[4] + 160);
    }

    v6 = v5;
    v7 = a1[6];
    if (v7)
    {
      v8 = a1[5];
      if (v8)
      {
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = sub_2770EB834;
        v9[3] = &unk_27A702378;
        v11 = v7;
        v10 = v6;
        dispatch_async(v8, v9);
      }

      else
      {
        (v7)[2](v7, v6);
      }
    }
  }

  dispatch_resume(*(a1[4] + 16));
}

uint64_t sub_2770EB9FC()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770EBB28(uint64_t a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v7 == 0, v7);
    }
  }
}

void sub_2770EBD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if (*(v8 + 72) == 1)
  {
    sub_277115528(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  dispatch_suspend(*(v8 + 144));
  [*(a1 + 32) beginEntryWithNameImpl:*(a1 + 40) force32BitSize:*(a1 + 84) lastModificationDate:*(a1 + 48) size:*(a1 + 72) CRC:*(a1 + 80) forceCalculatingSizeAndCRCForPreservingLastModificationDate:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2770EBE34;
  v11[3] = &unk_27A7034C0;
  v11[4] = *(a1 + 32);
  v10 = *(a1 + 56);
  v12 = *(a1 + 64);
  [v10 readWithHandler:v11];
}

void sub_2770EBE34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  [*(a1 + 32) handleWriteError:a4];
  if (v7)
  {
    v8 = *(a1 + 32);
    if (!v8[20])
    {
      [v8 addDataImpl:v7 queue:0 completion:0];
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v12 = 0;
    (*(v9 + 16))(v9, a2, v7, *(*(a1 + 32) + 160), &v12);
    if (v12 == 1)
    {
      v10 = *(a1 + 32);
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
      [v10 handleWriteError:v11];
    }
  }

  if (a2)
  {
    dispatch_resume(*(*(a1 + 32) + 144));
  }
}

void sub_2770EC270(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 144));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770EC310;
  v5[3] = &unk_27A702858;
  v5[4] = v3;
  v6 = v2;
  dispatch_async(v4, v5);
}

void sub_2770EC310(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v2 = [*(a1 + 32) p_writeChannel];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2770EC3C0;
  v4[3] = &unk_27A702378;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 addBarrier:v4];
}

void sub_2770EC3C0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  dispatch_resume(*(*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 144);

  dispatch_resume(v2);
}

void sub_2770EC4D8(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[4];
  if (*(v9 + 72) == 1)
  {
    sub_2771155CC(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*(v9 + 160))
  {
    *(v9 + 72) = 1;
    v10 = *(a1[4] + 20);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770EC654;
    block[3] = &unk_27A702378;
    v11 = a1[5];
    v12 = a1[6];
    v20 = v10;
    v21 = v12;
    v13 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    [v9 finishEntry];
    [a1[4] writeCentralDirectory];
    *(a1[4] + 72) = 1;
    v14 = a1[4];
    v15 = *(v14 + 2);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2770EC668;
    v16[3] = &unk_27A7024A0;
    v16[4] = v14;
    v18 = a1[6];
    v17 = a1[5];
    dispatch_async(v15, v16);
  }
}

void sub_2770EC668(id *a1)
{
  dispatch_suspend(*(a1[4] + 2));
  v2 = [a1[4] p_writeChannel];
  objc_initWeak(&location, v2);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2770EC77C;
  v3[3] = &unk_27A703510;
  objc_copyWeak(&v6, &location);
  v3[4] = a1[4];
  v5 = a1[6];
  v4 = a1[5];
  [v2 addBarrier:v3];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_2770EC760(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2770EC77C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter closeWithQueue:completion:]_block_invoke_4"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:492 isFatal:0 description:"invalid nil value for '%{public}s'", "strongWriteChannel"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 144);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EC8D4;
  block[3] = &unk_27A702E98;
  v9 = WeakRetained;
  v10 = v5;
  v12 = *(a1 + 48);
  v11 = *(a1 + 40);
  v7 = WeakRetained;
  dispatch_async(v6, block);
}

void sub_2770EC8D4(uint64_t a1)
{
  [*(a1 + 32) close];
  dispatch_semaphore_wait(*(*(a1 + 40) + 32), 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 56))
  {
    v2 = *(*(a1 + 40) + 160);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2770EC9B8;
    v6[3] = &unk_27A702378;
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v7 = v2;
    v8 = v4;
    v5 = v2;
    dispatch_async(v3, v6);
  }

  dispatch_resume(*(*(a1 + 40) + 16));
}

uint64_t sub_2770ECD18()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770ECFFC()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770ED3D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = sub_2770ED49C;
      v6[3] = &unk_27A702378;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }

    else
    {
      (v4)[2](v4, v3);
    }
  }
}

void sub_2770ED580(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_2770ED6B8;
  v9[4] = sub_2770ED6C8;
  v10 = 0;
  v2 = [*(a1 + 32) p_writeChannel];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2770ED6D0;
  v6[3] = &unk_27A703560;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v9;
  v6[4] = v3;
  v5 = *(a1 + 56);
  v7 = *(a1 + 48);
  [v2 writeData:v4 offset:v5 handler:v6];

  _Block_object_dispose(v9, 8);
}

void sub_2770ED6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770ED6B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770ED6D0(void *a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7 && (v8 = *(a1[6] + 8), v10 = *(v8 + 40), v9 = (v8 + 40), !v10))
  {
    objc_storeStrong(v9, a4);
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v11 = a1[6];
  if (*(*(v11 + 8) + 40))
  {
    v12 = a1[4];
    v13 = *(v12 + 144);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2770ED7D0;
    v15[3] = &unk_27A702560;
    v15[4] = v12;
    v15[5] = v11;
    dispatch_async(v13, v15);
  }

  v14 = a1[5];
  if (v14)
  {
    (*(v14 + 16))(v14, *(*(a1[6] + 8) + 40));
  }

  dispatch_resume(*(a1[4] + 16));
LABEL_9:
}

uint64_t sub_2770EDADC()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770EDB20(uint64_t a1)
{
  v1 = [*(a1 + 32) p_writeChannel];
  [v1 close];
}

void sub_2770EDBFC(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      v8 = objc_alloc_init(TSUZipEntry);
      v9 = [v7 name];
      [(TSUZipEntry *)v8 setName:v9];

      v10 = [(TSUZipEntry *)v8 name];
      -[TSUZipEntry setNameLength:](v8, "setNameLength:", strlen([v10 UTF8String]));

      v11 = [v7 lastModificationDate];
      [(TSUZipEntry *)v8 setLastModificationDate:v11];

      -[TSUZipEntry setSize:](v8, "setSize:", [v7 size]);
      -[TSUZipEntry setCompressedSize:](v8, "setCompressedSize:", [v7 size]);
      -[TSUZipEntry setOffset:](v8, "setOffset:", [v7 offset]);
      -[TSUZipEntry setCRC:](v8, "setCRC:", [v7 CRC]);
      (*(*(a1 + 40) + 16))();
      LOBYTE(v7) = v16;

      if (v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t sub_2770EDE4C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 offset];
  v6 = [v4 offset];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

uint64_t sub_2770EDF94(uint64_t a1)
{
  v2 = [*(a1 + 32) sortedEntriesImpl];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t sub_2770EE1B0(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t sub_2770EE87C()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770EE8C0()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770EEEDC()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770EF824()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770EFA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770EFA34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770EFA4C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 64);
  v10 = [v8 shouldPreserveForIntent:*(a1 + 56)];
  if (v9)
  {
    if ((v10 & 1) == 0)
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 60);
      v13 = *(*(a1 + 32) + 8);
      obj = *(v13 + 40);
      v14 = [v8 setAttributeToPathFileSystemRepresentation:v11 options:v12 error:&obj];
      objc_storeStrong((v13 + 40), obj);
      if ((v14 & 1) == 0)
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }
  }

  else if (v10)
  {
    v15 = *(a1 + 48);
    v16 = *(a1 + 60);
    v17 = *(*(a1 + 32) + 8);
    v20 = *(v17 + 40);
    v18 = [v8 setAttributeToPathFileSystemRepresentation:v15 options:v16 error:&v20];
    objc_storeStrong((v17 + 40), v20);
    if ((v18 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 0;
    }
  }
}

uint64_t sub_2770EFDF4(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = TSUDynamicCast(v2, a1);
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CCAA40] tsu_isSuccessStatusCode:{objc_msgSend(v3, "statusCode")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2770EFEA4()
{
  v0 = objc_alloc_init(TSULogHelper);
  v1 = qword_280A63E40;
  qword_280A63E40 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770EFFFC()
{
  v0 = TSULogCreateCategory("TSUPerformanceCat");
  v1 = TSUPerformanceCat_log_t;
  TSUPerformanceCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770F003C()
{
  v0 = TSULogCreateCategory("TSUPerformanceCat");
  v1 = TSUPerformanceCat_log_t;
  TSUPerformanceCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770F0794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770F07D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770F07F0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 48) + 8);
  if (v8 && *(v9 + 24))
  {
    *(v9 + 24) = 0;
    [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v8];
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!*(v9 + 24))
  {
LABEL_12:
    v16 = v8;
    v14 = v7;
    goto LABEL_13;
  }

  v10 = *(*(*(a1 + 56) + 8) + 40);
  if (!v10)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    concat = dispatch_data_create_concat(v10, v7);
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = concat;

    v10 = *(*(*(a1 + 56) + 8) + 40);
  }

  v14 = v10;

  size = dispatch_data_get_size(v14);
  if ((a2 & 1) != 0 || size >= 0x1E)
  {
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    v29 = v8;
    v30 = 0;
    v19 = [*(a1 + 32) readFileHeaderFromData:v14 headerLength:&v30 error:&v29];
    v16 = v29;

    *(*(*(a1 + 48) + 8) + 24) = v19;
    v20 = v30;
    *(*(*(a1 + 64) + 8) + 24) = v30 != *(a1 + 80);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        [*(a1 + 32) readWithFileHeaderLength:v20 handler:*(a1 + 40)];
      }

      else
      {
        v21 = dispatch_data_get_size(v14);
        if (v21 >= v20)
        {
          subrange = dispatch_data_create_subrange(v14, v20, v21 - v20);

          v14 = subrange;
        }

        else
        {
          if (TSUDefaultCat_init_token != -1)
          {
            sub_277115760();
          }

          v22 = MEMORY[0x277CCA9B8];
          v31[0] = @"TSUZipArchiveErrorDescription";
          v31[1] = @"TSUZipArchiveErrorEntryName";
          v32[0] = @"Entry is too small";
          v23 = [*(*(a1 + 32) + 8) name];
          v24 = v23;
          v25 = &stru_28862C2A0;
          if (v23)
          {
            v25 = v23;
          }

          v32[1] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
          v27 = [v22 tsu_fileReadCorruptedFileErrorWithUserInfo:v26];

          *(*(*(a1 + 48) + 8) + 24) = 0;
          v16 = v27;
        }
      }
    }

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v16];
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v16 = v8;
  }

LABEL_13:
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) processData:v14 CRC:*(*(a1 + 72) + 8) + 24 isDone:a2 handler:*(a1 + 40)];
  }
}

uint64_t sub_2770F0B30()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770F0D04()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770F0D48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0;
  if (v6 || (v7 = *(a1 + 32), v12 = 0, v8 = [v7 readFileHeaderFromData:v5 headerLength:&v13 error:&v12], v6 = v12, !v8))
  {
    [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v6];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    v11 = [*(v9 + 8) offset];
    [v10 readFromOffset:v13 + *(a1 + 48) + v11 length:*(a1 + 56) handler:*(a1 + 40)];
  }
}

uint64_t sub_2770F1180()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770F11C4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770F1208()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770F13B0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = *(*(a1 + 48) + 8);
  if (!v7 || !*(v8 + 24))
  {
    if (!*(v8 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v8 + 24) = 0;
  [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v7];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
LABEL_6:
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) processData:v9 CRC:*(*(a1 + 56) + 8) + 24 isDone:a2 handler:*(a1 + 40)];
  }

LABEL_7:
}

uint64_t sub_2770F1660(uint64_t a1, int a2, int a3, Bytef *buf, unint64_t len)
{
  v7 = **(a1 + 32);
  if (HIDWORD(len))
  {
    sub_277115828();
    v8 = -1;
  }

  else
  {
    v8 = len;
  }

  **(a1 + 32) = crc32(v7, buf, v8);
  return 1;
}

uint64_t sub_2770F16C4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id sub_2770F27AC(void *a1)
{
  v1 = [a1 keyEnumerator];
  v2 = [v1 allObjects];

  return v2;
}

id sub_2770F27F8(void *a1)
{
  v1 = [a1 objectEnumerator];
  v2 = [v1 allObjects];

  return v2;
}

void sub_2770F2844(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [a1 tsu_allKeys];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [a1 objectForKey:v10];
        v4[2](v4, v10, v11, &v16);

        if (v16)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

uint64_t sub_2770F3700(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    return 1;
  }

  v6 = a4;
  v7 = a2;
  v8 = objc_opt_class();
  v9 = TSUDynamicCast(v8, v7);

  v10 = [v9 handleData:v6 isDone:a3];
  return v10;
}

uint64_t sub_2770F387C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 1;
  if (v10 && v11)
  {
    v14 = objc_opt_class();
    v15 = TSUDynamicCast(v14, v9);
    v13 = [v15 handleData:v10 isDone:a3];
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v13 = (*(v16 + 16))(v16, v9, a3, v10, v12) & v13;
  }

  return v13;
}

id sub_2770F3970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [[TSUStreamDataCompression alloc] initWithAlgorithm:a3 operation:a4];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_2770F3AC4;
  v13 = &unk_27A703940;
  v15 = &v16;
  v6 = v5;
  v14 = v6;
  [a1 enumerateByteRangesUsingBlock:&v10];
  if (v17[3])
  {
    v7 = [(TSUStreamCompression *)v6 didFinishProcessing:v10];
    *(v17 + 24) = v7;
    if (v7)
    {
      v8 = [(TSUStreamDataCompression *)v6 outputData];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    *(v17 + 24) = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v8;
}

void sub_2770F3AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770F3AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) processBytes:a2 size:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

void sub_2770F3F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 144), 8);
  _Block_object_dispose((v12 - 112), 8);
  _Unwind_Resume(a1);
}

BOOL sub_2770F3F70(void *a1, int a2, int a3, void *__src, size_t a5)
{
  if (*(*(a1[5] + 8) + 24) >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = *(*(a1[5] + 8) + 24);
  }

  memcpy(*(*(a1[6] + 8) + 24), __src, v6);
  *(*(a1[5] + 8) + 24) -= v6;
  *(*(a1[6] + 8) + 24) += v6;
  *(a1[4] + 24) += v6;
  return *(*(a1[5] + 8) + 24) != 0;
}

uint64_t sub_2770F4004(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770F401C(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    if (v8)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
    }
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2770F41B4;
    v18[3] = &unk_27A703990;
    v19 = *(a1 + 48);
    v18[4] = *(a1 + 32);
    v20 = &v21;
    dispatch_data_apply(v7, v18);
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      size = dispatch_data_get_size(v7);
      v11 = v22[3];
      if (size > v11)
      {
        v12 = *(*(a1 + 32) + 16);
        subrange = dispatch_data_create_subrange(v7, v11, size - v11);
        concat = dispatch_data_create_concat(v12, subrange);
        v15 = *(a1 + 32);
        v16 = *(v15 + 16);
        *(v15 + 16) = concat;
      }
    }

    _Block_object_dispose(&v21, 8);
  }

  v17 = a2 ^ 1;
  if (v9)
  {
    v17 = 0;
  }

  if ((v17 & 1) == 0 && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 40));
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

BOOL sub_2770F41B4(void *a1, int a2, uint64_t a3, void *__src, size_t a5)
{
  if (*(*(a1[5] + 8) + 24) >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = *(*(a1[5] + 8) + 24);
  }

  memcpy(*(*(a1[6] + 8) + 24), __src, v7);
  *(*(a1[5] + 8) + 24) -= v7;
  *(*(a1[6] + 8) + 24) += v7;
  *(a1[4] + 24) += v7;
  *(*(a1[7] + 8) + 24) = v7 + a3;
  return *(*(a1[5] + 8) + 24) != 0;
}

void sub_2770F48A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkForUpdateWithCompletionHandler:0];
}

_BYTE *sub_2770F49E4(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  if (result[40] != 1)
  {
    return [result checkForUpdateWithCompletionHandler:v3];
  }

  if (v3)
  {
    return (*(v3 + 16))(v3, 0);
  }

  return result;
}

uint64_t sub_2770F4B2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2770F4B44(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void sub_2770F4F3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 beginBackgroundTaskWithExpirationHandler:0];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_2770F503C;
  v12 = &unk_27A7039E0;
  v13 = *(a1 + 32);
  v14 = v3;
  v16 = v4;
  v15 = *(a1 + 48);
  v5 = v3;
  v6 = _Block_copy(&v9);
  v7 = [MEMORY[0x277CCAD30] sharedSession];
  v8 = [v7 dataTaskWithRequest:*(a1 + 40) completionHandler:v6];

  [v8 resume];
}

void sub_2770F503C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_class();
  v10 = TSUCheckedDynamicCast(v9, v7);

  [*(a1 + 32) processResponse:v10 data:v8 error:v12];
  [*(a1 + 40) endBackgroundTask:*(a1 + 56)];
  dispatch_resume(*(*(a1 + 32) + 24));
  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v12);
  }
}

uint64_t sub_2770F55B0()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770F56E4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770F5728(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t sub_2770F5890(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initInternal];
  v2 = qword_280A63E70;
  qword_280A63E70 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

id sub_2770F5D80(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v4 = [a3 message];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 errorWithDomain:@"com.apple.tangier.TSUWarningErrorDomain" code:0 userInfo:v5];

  return v6;
}

uint64_t sub_2770F6F2C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 substringToIndex:1];
  v4 = [@"0123456789ABCDEF" rangeOfString:v3];
  v5 = [v2 substringFromIndex:1];

  v6 = [@"0123456789ABCDEF" rangeOfString:v5] + 16 * v4;
  return v6;
}

BOOL sub_2770F87B0(uint64_t a1, CGColorRef color, CGColorRef color2)
{
  if (*(a1 + 32) == 0.0)
  {

    return CGColorEqualToColor(color, color2);
  }

  else
  {
    Components = CGColorGetComponents(color);
    v8 = CGColorGetComponents(color2);
    NumberOfComponents = CGColorGetNumberOfComponents(color);
    if (NumberOfComponents != CGColorGetNumberOfComponents(color2))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor p_isEqualToColor:withTolerance:]_block_invoke"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
      [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1037 isFatal:0 description:"Color space dimension mismatch"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    for (result = 1; NumberOfComponents; --NumberOfComponents)
    {
      if (result)
      {
        result = vabdd_f64(*Components, *v8) < *(a1 + 32) || *Components == *v8;
      }

      else
      {
        result = 0;
      }

      ++v8;
      ++Components;
    }
  }

  return result;
}

id sub_2770F8B70(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = 0;
  memset(&v9.tm_wday, 0, 32);
  v9.tm_isdst = -1;
  v9.tm_sec = (a3 >> 15) & 0x3E;
  v9.tm_min = (a3 >> 21) & 0x3F;
  v9.tm_hour = a3 >> 27;
  v9.tm_mday = a3 & 0x1F;
  v5 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF7FFFFFFFBLL), 0x7F0000000FLL);
  *&v9.tm_mon = vadd_s32(v5, 0x50FFFFFFFFLL);
  v7 = (v5.i32[0] - 13) < 0xFFFFFFF4 || a3 >> 30 == 3 || (a3 & 0x1F) == 0;
  if (!v7 && ((a3 >> 21) & 0x3F) <= 0x3B && ((a3 >> 15) & 0x3E) <= 0x3B)
  {
    v4 = [a1 initWithTimeIntervalSince1970:mktime(&v9)];
  }

  return v4;
}

uint64_t sub_2770F8C58(void *a1)
{
  [a1 timeIntervalSince1970];
  v5 = v1;
  v2 = localtime(&v5);
  tm_year = v2->tm_year;
  if (tm_year <= 81)
  {
    LOWORD(tm_year) = 81;
  }

  return ((32 * v2->tm_mon + 32) | v2->tm_mday | ((tm_year << 9) + 24576)) | (((32 * LOWORD(v2->tm_min)) | (v2->tm_hour << 11) | (v2->tm_sec >> 1)) << 16);
}

__CFString *sub_2770F8CD0(void *a1, uint64_t a2, void *a3, void *a4, int a5, uint64_t a6)
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    v18 = @" ";
    goto LABEL_22;
  }

  if ([a1 compare:v10] == -1)
  {
    v18 = [a1 tsu_fullFormattedDate];
    goto LABEL_22;
  }

  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [v12 components:240 fromDate:v10 toDate:a1 options:0];
  v14 = [v12 components:752 fromDate:v10];
  v15 = [v12 components:512 fromDate:a1];
  v16 = [v15 weekday];
  v17 = v16 - [v14 weekday] == 1 || objc_msgSend(v14, "weekday") == 7 && objc_msgSend(v15, "weekday") == 1;
  if ([v13 day] < 365)
  {
    if ([v13 day] < 8)
    {
      if ([v13 day] <= 1 && (objc_msgSend(v13, "day") != 1 || v17))
      {
        if ([v13 day] == 1 && v17)
        {
          if (!a5)
          {
            v19 = [a1 p_ruleForYesterday:v10 withDateFormatter:v11 lowercase:a6];
            goto LABEL_20;
          }

          v20 = SFUMainBundle();
          v21 = v20;
          v22 = @"Yesterday";
        }

        else
        {
          if ([v13 hour] >= 1)
          {
            v19 = [a1 p_rule1To23HoursAgo:objc_msgSend(v13 withDateFormatter:"hour") lowercase:{v11, a6}];
            goto LABEL_20;
          }

          if ([v13 minute] >= 1)
          {
            v19 = [a1 p_rule1To59MinutesAgo:objc_msgSend(v13 withDateFormatter:"minute") lowercase:{v11, a6}];
            goto LABEL_20;
          }

          v20 = SFUMainBundle();
          v21 = v20;
          v22 = @"Just now";
        }

        v25 = [v20 localizedStringForKey:v22 value:&stru_28862C2A0 table:@"TSUtility"];
        v23 = [a1 p_stringWithString:v25 lowercase:a6 dateFormatter:v11];

        goto LABEL_21;
      }

      v19 = [a1 p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:v10 withDateFormatter:v11];
    }

    else
    {
      v19 = [a1 p_ruleForOverAWeekAgoForDate:v10 withDateFormatter:v11];
    }
  }

  else
  {
    v19 = [a1 p_ruleForOverAYearAgoForDate:v10 withDateFormatter:v11];
  }

LABEL_20:
  v23 = v19;
LABEL_21:
  v18 = v23;

LABEL_22:

  return v18;
}

id sub_2770F9008(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = SFUMainBundle();
  v10 = [v9 localizedStringForKey:@"%d min ago" value:&stru_28862C2A0 table:@"TSUtility"];

  v11 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v10, a3];
  v12 = [a1 p_stringWithString:v11 lowercase:a5 dateFormatter:v8];

  return v12;
}

id sub_2770F90DC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = MEMORY[0x277CCACA8];
  v9 = a4;
  v10 = SFUMainBundle();
  v11 = [v10 localizedStringForKey:@"%ld hour(s) ago" value:&stru_28862C2A0 table:@"TSUtility"];
  v12 = [v8 localizedStringWithFormat:v11, a3];

  v13 = [a1 p_stringWithString:v12 lowercase:a5 dateFormatter:v9];

  return v13;
}

id sub_2770F91BC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 dateFormatterFromTemplate12Hour:@"hhmma" template24Hour:@"HHmm" withDateFormatter:v8];
  v11 = SFUMainBundle();
  v12 = [v11 localizedStringForKey:@"Yesterday value:%@" table:{&stru_28862C2A0, @"TSUtility"}];

  v13 = [a1 p_stringWithString:v12 lowercase:a5 dateFormatter:v8];

  v14 = MEMORY[0x277CCACA8];
  v15 = [v10 stringFromDate:v9];

  v16 = [v14 stringWithFormat:v13, v15];

  return v16;
}