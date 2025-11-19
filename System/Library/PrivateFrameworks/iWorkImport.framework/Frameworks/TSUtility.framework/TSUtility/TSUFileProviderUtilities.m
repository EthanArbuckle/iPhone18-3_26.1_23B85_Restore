@interface TSUFileProviderUtilities
+ (BOOL)isPausedWithSandboxedURL:(id)a3 isPaused:(BOOL *)a4 error:(id *)a5;
+ (BOOL)pauseSyncSynchronouslyOnSandboxedURL:(id)a3 error:(id *)a4;
+ (BOOL)pauseSyncSynchronouslyOnSandboxedURL:(id)a3 uuid:(id)a4 error:(id *)a5;
+ (void)didUpdateAlternateContentsDocumentForSandboxedURL:(id)a3 completionQueue:(id)a4 completion:(id)a5;
+ (void)fetchLatestVersionURLOfPausedSandboxedURL:(id)a3 completionQueue:(id)a4 completion:(id)a5;
+ (void)initialize;
+ (void)pauseSyncOnSandboxedURL:(id)a3 completionQueue:(id)a4 completion:(id)a5;
+ (void)pauseSyncOnSandboxedURL:(id)a3 completionQueue:(id)a4 uuid:(id)a5 completion:(id)a6;
+ (void)resumeSyncOnSandboxedURL:(id)a3 preserveLocalChanges:(BOOL)a4 completionQueue:(id)a5 completion:(id)a6;
+ (void)resumeSyncOnSandboxedURL:(id)a3 preserveLocalChanges:(BOOL)a4 completionQueue:(id)a5 uuid:(id)a6 completion:(id)a7;
+ (void)setAlternateContentsURL:(id)a3 onSandboxedURL:(id)a4 completionQueue:(id)a5 completion:(id)a6;
- (TSUFileProviderUtilities)init;
@end

@implementation TSUFileProviderUtilities

- (TSUFileProviderUtilities)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileProviderUtilities init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileProviderUtilities.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:41 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUFileProviderUtilities init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (void)initialize
{
  if (qword_280A63DB0 != -1)
  {
    sub_277114BE4();
  }
}

+ (void)setAlternateContentsURL:(id)a3 onSandboxedURL:(id)a4 completionQueue:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  v14 = off_280A63DB8;
  if (off_280A63DB8)
  {
    v15 = [v10 URL];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2770D10CC;
    v20[3] = &unk_27A702EC0;
    v21 = v11;
    v22 = v9;
    v23 = v10;
    v24 = v13;
    v14(v15, v22, v20);

    v16 = v21;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_4;
    }

    if (!v11)
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
      (v13)[2](v13, v17);

      goto LABEL_4;
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2770D1280;
    v18[3] = &unk_27A702350;
    v19 = v12;
    dispatch_async(v11, v18);
    v16 = v19;
  }

LABEL_4:
}

+ (void)didUpdateAlternateContentsDocumentForSandboxedURL:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = off_280A63DC0;
  if (off_280A63DC0)
  {
    v12 = [v7 URL];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2770D15A8;
    v17[3] = &unk_27A702EE8;
    v18 = v8;
    v19 = v7;
    v20 = v10;
    v11(v12, v17);

    v13 = v18;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_4;
    }

    if (!v8)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
      (v10)[2](v10, v14);

      goto LABEL_4;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770D1748;
    block[3] = &unk_27A702350;
    v16 = v9;
    dispatch_async(v8, block);
    v13 = v16;
  }

LABEL_4:
}

+ (BOOL)pauseSyncSynchronouslyOnSandboxedURL:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCAD78];
  v7 = a3;
  v8 = [v6 UUID];
  LOBYTE(a4) = [a1 pauseSyncSynchronouslyOnSandboxedURL:v7 uuid:v8 error:a4];

  return a4;
}

+ (BOOL)pauseSyncSynchronouslyOnSandboxedURL:(id)a3 uuid:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_2770D19F8;
  v23 = sub_2770D1A08;
  v24 = 0;
  v10 = dispatch_semaphore_create(0);
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2770D1A10;
  v15[3] = &unk_27A702F10;
  v17 = &v25;
  v18 = &v19;
  v12 = v10;
  v16 = v12;
  [a1 pauseSyncOnSandboxedURL:v8 completionQueue:v11 uuid:v9 completion:v15];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  if (a5)
  {
    *a5 = v20[5];
  }

  v13 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v13;
}

+ (void)pauseSyncOnSandboxedURL:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x277CCAD78];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 UUID];
  [a1 pauseSyncOnSandboxedURL:v11 completionQueue:v10 uuid:v12 completion:v9];
}

+ (void)pauseSyncOnSandboxedURL:(id)a3 completionQueue:(id)a4 uuid:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (([objc_opt_class() isPauseSyncAPIAvailable] & 1) == 0)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUFileProviderUtilities pauseSyncOnSandboxedURL:completionQueue:uuid:completion:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileProviderUtilities.m"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:154 isFatal:0 description:"Attempting to use unsupported API"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v15 = [MEMORY[0x277CCAA00] defaultManager];
  if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
  {
    sub_277114C48();
  }

  v16 = [v9 URL];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2770D1E34;
  v17[3] = &unk_27A702F38;
  v18 = v9;
  v19 = v11;
  v21 = v12;
  v20 = v10;
  [v15 pauseSyncForUbiquitousItemAtURL:v16 completionHandler:v17];
}

+ (void)resumeSyncOnSandboxedURL:(id)a3 preserveLocalChanges:(BOOL)a4 completionQueue:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = MEMORY[0x277CCAD78];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [v10 UUID];
  [a1 resumeSyncOnSandboxedURL:v13 preserveLocalChanges:v7 completionQueue:v12 uuid:v14 completion:v11];
}

+ (void)resumeSyncOnSandboxedURL:(id)a3 preserveLocalChanges:(BOOL)a4 completionQueue:(id)a5 uuid:(id)a6 completion:(id)a7
{
  v10 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (([objc_opt_class() isPauseSyncAPIAvailable] & 1) == 0)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUFileProviderUtilities resumeSyncOnSandboxedURL:preserveLocalChanges:completionQueue:uuid:completion:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileProviderUtilities.m"];
    [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:194 isFatal:0 description:"Attempting to use unsupported API"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
  {
    sub_277114CC0();
  }

  v18 = [v11 URL];
  if (v10)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2770D2518;
  v20[3] = &unk_27A702F38;
  v21 = v11;
  v22 = v13;
  v24 = v14;
  v23 = v12;
  [v17 resumeSyncForUbiquitousItemAtURL:v18 withBehavior:v19 completionHandler:v20];
}

+ (BOOL)isPausedWithSandboxedURL:(id)a3 isPaused:(BOOL *)a4 error:(id *)a5
{
  v7 = [a3 URL];
  v16 = 0;
  v8 = *MEMORY[0x277CBE978];
  v15 = 0;
  v9 = [v7 getResourceValue:&v16 forKey:v8 error:&v15];
  v10 = v16;
  v11 = v15;

  if ((v9 & 1) == 0)
  {
    if (TSUCollaborationPauseResumeSyncCat_init_token == -1)
    {
      if (!a5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_277114D38();
      if (!a5)
      {
        goto LABEL_13;
      }
    }

    v13 = v11;
    v12 = 0;
    *a5 = v11;
    goto LABEL_14;
  }

  if (!v10)
  {
    if (TSUCollaborationPauseResumeSyncCat_init_token == -1)
    {
      if (a5)
      {
LABEL_9:
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
        *a5 = v12 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      sub_277114D60();
      if (a5)
      {
        goto LABEL_9;
      }
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  *a4 = [v10 BOOLValue];
  v12 = 1;
LABEL_14:

  return v12;
}

+ (void)fetchLatestVersionURLOfPausedSandboxedURL:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([objc_opt_class() isPauseSyncAPIAvailable] & 1) == 0)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUFileProviderUtilities fetchLatestVersionURLOfPausedSandboxedURL:completionQueue:completion:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileProviderUtilities.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:269 isFatal:0 description:"Attempting to use unsupported API"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [MEMORY[0x277CCAD78] UUID];
  if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
  {
    sub_277114D88();
  }

  v14 = [v7 URL];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2770D2D14;
  v16[3] = &unk_27A702F60;
  v17 = v7;
  v15 = v13;
  v18 = v15;
  v20 = v9;
  v19 = v8;
  [v12 fetchLatestRemoteVersionOfItemAtURL:v14 completionHandler:v16];
}

@end