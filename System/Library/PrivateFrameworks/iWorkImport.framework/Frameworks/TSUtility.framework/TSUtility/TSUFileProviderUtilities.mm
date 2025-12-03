@interface TSUFileProviderUtilities
+ (BOOL)isPausedWithSandboxedURL:(id)l isPaused:(BOOL *)paused error:(id *)error;
+ (BOOL)pauseSyncSynchronouslyOnSandboxedURL:(id)l error:(id *)error;
+ (BOOL)pauseSyncSynchronouslyOnSandboxedURL:(id)l uuid:(id)uuid error:(id *)error;
+ (void)didUpdateAlternateContentsDocumentForSandboxedURL:(id)l completionQueue:(id)queue completion:(id)completion;
+ (void)fetchLatestVersionURLOfPausedSandboxedURL:(id)l completionQueue:(id)queue completion:(id)completion;
+ (void)initialize;
+ (void)pauseSyncOnSandboxedURL:(id)l completionQueue:(id)queue completion:(id)completion;
+ (void)pauseSyncOnSandboxedURL:(id)l completionQueue:(id)queue uuid:(id)uuid completion:(id)completion;
+ (void)resumeSyncOnSandboxedURL:(id)l preserveLocalChanges:(BOOL)changes completionQueue:(id)queue completion:(id)completion;
+ (void)resumeSyncOnSandboxedURL:(id)l preserveLocalChanges:(BOOL)changes completionQueue:(id)queue uuid:(id)uuid completion:(id)completion;
+ (void)setAlternateContentsURL:(id)l onSandboxedURL:(id)rL completionQueue:(id)queue completion:(id)completion;
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

+ (void)setAlternateContentsURL:(id)l onSandboxedURL:(id)rL completionQueue:(id)queue completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  queueCopy = queue;
  completionCopy = completion;
  v13 = completionCopy;
  v14 = off_280A63DB8;
  if (off_280A63DB8)
  {
    v15 = [rLCopy URL];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2770D10CC;
    v20[3] = &unk_27A702EC0;
    v21 = queueCopy;
    v22 = lCopy;
    v23 = rLCopy;
    v24 = v13;
    v14(v15, v22, v20);

    v16 = v21;
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    if (!queueCopy)
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
      (v13)[2](v13, v17);

      goto LABEL_4;
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2770D1280;
    v18[3] = &unk_27A702350;
    v19 = completionCopy;
    dispatch_async(queueCopy, v18);
    v16 = v19;
  }

LABEL_4:
}

+ (void)didUpdateAlternateContentsDocumentForSandboxedURL:(id)l completionQueue:(id)queue completion:(id)completion
{
  lCopy = l;
  queueCopy = queue;
  completionCopy = completion;
  v10 = completionCopy;
  v11 = off_280A63DC0;
  if (off_280A63DC0)
  {
    v12 = [lCopy URL];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2770D15A8;
    v17[3] = &unk_27A702EE8;
    v18 = queueCopy;
    v19 = lCopy;
    v20 = v10;
    v11(v12, v17);

    v13 = v18;
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    if (!queueCopy)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
      (v10)[2](v10, v14);

      goto LABEL_4;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770D1748;
    block[3] = &unk_27A702350;
    v16 = completionCopy;
    dispatch_async(queueCopy, block);
    v13 = v16;
  }

LABEL_4:
}

+ (BOOL)pauseSyncSynchronouslyOnSandboxedURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x277CCAD78];
  lCopy = l;
  uUID = [v6 UUID];
  LOBYTE(error) = [self pauseSyncSynchronouslyOnSandboxedURL:lCopy uuid:uUID error:error];

  return error;
}

+ (BOOL)pauseSyncSynchronouslyOnSandboxedURL:(id)l uuid:(id)uuid error:(id *)error
{
  lCopy = l;
  uuidCopy = uuid;
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
  [self pauseSyncOnSandboxedURL:lCopy completionQueue:v11 uuid:uuidCopy completion:v15];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v20[5];
  }

  v13 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v13;
}

+ (void)pauseSyncOnSandboxedURL:(id)l completionQueue:(id)queue completion:(id)completion
{
  v8 = MEMORY[0x277CCAD78];
  completionCopy = completion;
  queueCopy = queue;
  lCopy = l;
  uUID = [v8 UUID];
  [self pauseSyncOnSandboxedURL:lCopy completionQueue:queueCopy uuid:uUID completion:completionCopy];
}

+ (void)pauseSyncOnSandboxedURL:(id)l completionQueue:(id)queue uuid:(id)uuid completion:(id)completion
{
  lCopy = l;
  queueCopy = queue;
  uuidCopy = uuid;
  completionCopy = completion;
  if (([objc_opt_class() isPauseSyncAPIAvailable] & 1) == 0)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUFileProviderUtilities pauseSyncOnSandboxedURL:completionQueue:uuid:completion:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileProviderUtilities.m"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:154 isFatal:0 description:"Attempting to use unsupported API"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
  {
    sub_277114C48();
  }

  v16 = [lCopy URL];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2770D1E34;
  v17[3] = &unk_27A702F38;
  v18 = lCopy;
  v19 = uuidCopy;
  v21 = completionCopy;
  v20 = queueCopy;
  [defaultManager pauseSyncForUbiquitousItemAtURL:v16 completionHandler:v17];
}

+ (void)resumeSyncOnSandboxedURL:(id)l preserveLocalChanges:(BOOL)changes completionQueue:(id)queue completion:(id)completion
{
  changesCopy = changes;
  v10 = MEMORY[0x277CCAD78];
  completionCopy = completion;
  queueCopy = queue;
  lCopy = l;
  uUID = [v10 UUID];
  [self resumeSyncOnSandboxedURL:lCopy preserveLocalChanges:changesCopy completionQueue:queueCopy uuid:uUID completion:completionCopy];
}

+ (void)resumeSyncOnSandboxedURL:(id)l preserveLocalChanges:(BOOL)changes completionQueue:(id)queue uuid:(id)uuid completion:(id)completion
{
  changesCopy = changes;
  lCopy = l;
  queueCopy = queue;
  uuidCopy = uuid;
  completionCopy = completion;
  if (([objc_opt_class() isPauseSyncAPIAvailable] & 1) == 0)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUFileProviderUtilities resumeSyncOnSandboxedURL:preserveLocalChanges:completionQueue:uuid:completion:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileProviderUtilities.m"];
    [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:194 isFatal:0 description:"Attempting to use unsupported API"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
  {
    sub_277114CC0();
  }

  v18 = [lCopy URL];
  if (changesCopy)
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
  v21 = lCopy;
  v22 = uuidCopy;
  v24 = completionCopy;
  v23 = queueCopy;
  [defaultManager resumeSyncForUbiquitousItemAtURL:v18 withBehavior:v19 completionHandler:v20];
}

+ (BOOL)isPausedWithSandboxedURL:(id)l isPaused:(BOOL *)paused error:(id *)error
{
  v7 = [l URL];
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
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_277114D38();
      if (!error)
      {
        goto LABEL_13;
      }
    }

    v13 = v11;
    v12 = 0;
    *error = v11;
    goto LABEL_14;
  }

  if (!v10)
  {
    if (TSUCollaborationPauseResumeSyncCat_init_token == -1)
    {
      if (error)
      {
LABEL_9:
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
        *error = v12 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      sub_277114D60();
      if (error)
      {
        goto LABEL_9;
      }
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  *paused = [v10 BOOLValue];
  v12 = 1;
LABEL_14:

  return v12;
}

+ (void)fetchLatestVersionURLOfPausedSandboxedURL:(id)l completionQueue:(id)queue completion:(id)completion
{
  lCopy = l;
  queueCopy = queue;
  completionCopy = completion;
  if (([objc_opt_class() isPauseSyncAPIAvailable] & 1) == 0)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUFileProviderUtilities fetchLatestVersionURLOfPausedSandboxedURL:completionQueue:completion:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileProviderUtilities.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:269 isFatal:0 description:"Attempting to use unsupported API"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uUID = [MEMORY[0x277CCAD78] UUID];
  if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
  {
    sub_277114D88();
  }

  v14 = [lCopy URL];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2770D2D14;
  v16[3] = &unk_27A702F60;
  v17 = lCopy;
  v15 = uUID;
  v18 = v15;
  v20 = completionCopy;
  v19 = queueCopy;
  [defaultManager fetchLatestRemoteVersionOfItemAtURL:v14 completionHandler:v16];
}

@end