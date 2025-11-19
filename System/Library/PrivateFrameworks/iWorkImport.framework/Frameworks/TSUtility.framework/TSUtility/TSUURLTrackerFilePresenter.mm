@interface TSUURLTrackerFilePresenter
- (BOOL)isLikelyOnExternalStorage;
- (BOOL)isLikelyOnRemovedMedia;
- (NSData)bookmarkDataIfAvailable;
- (NSString)description;
- (NSURL)presentedItemURL;
- (NSURL)volumeURL;
- (TSUURLTrackerFilePresenter)init;
- (TSUURLTrackerFilePresenter)initWithSandboxedURL:(id)a3 bookmarkData:(id)a4 urlTracker:(id)a5 logContext:(id)a6 delegate:(id)a7;
- (id)bookmarkDataWithOptions:(unint64_t)a3 error:(id *)a4;
- (id)p_bookmarkDataWithOptions:(unint64_t)a3 error:(id *)a4;
- (id)p_lastKnownURLFromBookmark:(id)a3;
- (id)p_latestSandboxedURLWithAccess;
- (id)p_sandboxedURLIfAvailableLoadingLastKnownURLFromBookmark:(BOOL)a3;
- (id)p_sandboxedURLWithOptions:(unint64_t)a3 error:(id *)a4;
- (id)sandboxedURLWithOptions:(unint64_t)a3 error:(id *)a4;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)a3;
- (void)p_notifyURLTrackerPresentedItemContentsDidChange;
- (void)p_notifyURLTrackerPresentedItemDidMoveToURL:(id)a3;
- (void)p_notifyURLTrackerPresentedItemWasDeleted;
- (void)p_presentedItemDidMoveToSandboxedURL:(id)a3;
- (void)p_setBookmarkDataIfAvailable:(id)a3;
- (void)p_setSandboxedURL:(id)a3;
- (void)p_updateVolumeInfo;
- (void)pauseForEnteringBackground:(BOOL)a3;
- (void)presentedItemDidChangeUbiquityAttributes:(id)a3;
- (void)presentedItemDidMoveToURL:(id)a3;
- (void)relinquishPresentedItemToWriter:(id)a3;
- (void)startOrResumeForEnteringForeground:(BOOL)a3;
- (void)stop;
@end

@implementation TSUURLTrackerFilePresenter

- (TSUURLTrackerFilePresenter)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUURLTrackerFilePresenter init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUURLTracker.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:386 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUURLTrackerFilePresenter init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUURLTrackerFilePresenter)initWithSandboxedURL:(id)a3 bookmarkData:(id)a4 urlTracker:(id)a5 logContext:(id)a6 delegate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v31.receiver = self;
  v31.super_class = TSUURLTrackerFilePresenter;
  v18 = [(TSUURLTrackerFilePresenter *)&v31 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_urlTracker, v15);
    objc_storeStrong(&v19->_logContext, a6);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("TSUURLTrackerFilePresenter.access", v20);
    accessQueue = v19->_accessQueue;
    v19->_accessQueue = v21;

    v19->_propertiesLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v19->_isValid = (v13 | v14) != 0;
    objc_storeStrong(&v19->_sandboxedURL, a3);
    v23 = [v14 copy];
    bookmarkDataIfAvailable = v19->_bookmarkDataIfAvailable;
    v19->_bookmarkDataIfAvailable = v23;

    v25 = MEMORY[0x277CCABD8];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"TSUURLTrackerFilePresenter-%p", v19];
    v27 = [v25 tsu_newSerialOperationQueueWithName:v26];
    presentedItemOperationQueue = v19->_presentedItemOperationQueue;
    v19->_presentedItemOperationQueue = v27;

    objc_storeWeak(&v19->_delegate, v17);
    if (v13)
    {
      if ([v13 hasSandboxAccess])
      {
        objc_storeStrong(&v19->_latestSandboxedURLWithAccess, a3);
      }

      v29 = [v13 normalize];
      if (v29 != v13)
      {
        if (TSUURLTrackerCat_init_token != -1)
        {
          sub_277114734();
        }

        objc_storeStrong(&v19->_sandboxedURL, v29);
        if ([v29 hasSandboxAccess])
        {
          objc_storeStrong(&v19->_latestSandboxedURLWithAccess, v29);
        }
      }

      [(TSUURLTrackerFilePresenter *)v19 p_updateVolumeInfo];
    }
  }

  return v19;
}

- (id)p_sandboxedURLIfAvailableLoadingLastKnownURLFromBookmark:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_propertiesLock);
  v5 = self->_sandboxedURL;
  v6 = self->_bookmarkDataIfAvailable;
  os_unfair_lock_unlock(&self->_propertiesLock);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = !v3;
  }

  if (!v7)
  {
    v8 = [TSUSandboxedURL alloc];
    v9 = [(TSUURLTrackerFilePresenter *)self p_lastKnownURLFromBookmark:v6];
    v5 = [(TSUSandboxedURL *)v8 initWithURL:v9];

    if (v5)
    {
      if (TSUURLTrackerCat_init_token != -1)
      {
        sub_27711475C();
      }
    }
  }

  return v5;
}

- (id)p_latestSandboxedURLWithAccess
{
  os_unfair_lock_lock(&self->_propertiesLock);
  v3 = self->_latestSandboxedURLWithAccess;
  os_unfair_lock_unlock(&self->_propertiesLock);

  return v3;
}

- (void)p_setSandboxedURL:(id)a3
{
  v5 = a3;
  if (v5 && ([v5 hasSandboxAccess] & 1) == 0 && TSUURLTrackerCat_init_token != -1)
  {
    sub_277114770();
  }

  os_unfair_lock_lock(&self->_propertiesLock);
  objc_storeStrong(&self->_sandboxedURL, a3);
  if ([v5 hasSandboxAccess])
  {
    objc_storeStrong(&self->_latestSandboxedURLWithAccess, a3);
  }

  os_unfair_lock_unlock(&self->_propertiesLock);
  [(TSUURLTrackerFilePresenter *)self p_updateVolumeInfo];
}

- (id)sandboxedURLWithOptions:(unint64_t)a3 error:(id *)a4
{
  v5 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_2770CC640;
  v27 = sub_2770CC650;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_2770CC640;
  v21 = sub_2770CC650;
  v22 = 0;
  accessQueue = self->_accessQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2770CC658;
  v16[3] = &unk_27A702E48;
  v16[4] = self;
  v16[5] = &v17;
  v16[6] = &v23;
  v16[7] = a3;
  dispatch_sync(accessQueue, v16);
  v8 = v18[5];
  if (a4 && !v8)
  {
    *a4 = v24[5];
    v8 = v18[5];
  }

  if ((v5 & 1) != 0 && !v8)
  {
    os_unfair_lock_lock(&self->_propertiesLock);
    v9 = self->_bookmarkDataIfAvailable;
    os_unfair_lock_unlock(&self->_propertiesLock);
    v10 = [TSUSandboxedURL alloc];
    v11 = [(TSUURLTrackerFilePresenter *)self p_lastKnownURLFromBookmark:v9];
    v12 = [(TSUSandboxedURL *)v10 initWithURL:v11];
    v13 = v18[5];
    v18[5] = v12;

    v8 = v18[5];
  }

  v14 = v8;
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v14;
}

- (id)p_sandboxedURLWithOptions:(unint64_t)a3 error:(id *)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_accessQueue);
  v7 = [(TSUURLTrackerFilePresenter *)self bookmarkDataIfAvailable];
  v8 = [(TSUURLTrackerFilePresenter *)self p_sandboxedURLIfAvailableLoadingLastKnownURLFromBookmark:0];
  v9 = v8;
  v10 = 1;
  if ((v5 & 2) == 0 && v8)
  {
    v11 = atomic_load(&self->_hasStarted);
    v10 = v11 ^ 1;
  }

  v12 = 0;
  if ((v10 & 1) != 0 && v7)
  {
    v30 = 0;
    v29 = 0;
    v12 = [[TSUSandboxedURL alloc] initByResolvingBookmarkData:v7 relativeToURL:0 bookmarkDataIsStale:&v30 error:&v29];
    v13 = v29;
    v14 = v13;
    if (v12)
    {
      [(TSUURLTrackerFilePresenter *)self p_setSandboxedURL:v12];
      if (v30)
      {
        if (TSUURLTrackerCat_init_token != -1)
        {
          sub_277114784();
        }

        v15 = [v12 URL];
        v28 = 0;
        v16 = [v15 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v28];

        if (v16)
        {
          v17 = v16;

          [(TSUURLTrackerFilePresenter *)self p_setBookmarkDataIfAvailable:v17];
          v7 = v17;
        }

        else if (TSUURLTrackerCat_init_token != -1)
        {
          sub_2771147AC();
        }
      }
    }

    else if (v13)
    {
      if (TSUURLTrackerCat_init_token != -1)
      {
        sub_2771147D4();
      }
    }

    else if (TSUURLTrackerCat_init_token != -1)
    {
      sub_2771147FC();
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = [(TSUURLTrackerFilePresenter *)self p_sandboxedURLIfAvailableLoadingLastKnownURLFromBookmark:0];
  v19 = v18;
  if ((((v5 & 1) == 0) & v10) != 0)
  {
    v20 = v12;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20;
  v22 = v21;
  if ((v10 & (v12 == 0)) != 1)
  {
LABEL_42:
    if (a4 && !v22)
    {
      if (!v14)
      {
        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
        *a4 = v26;

LABEL_47:
        if (v7 && TSUURLTrackerCat_init_token != -1)
        {
          sub_2771148EC();
        }

        goto LABEL_50;
      }

      v24 = v14;
      *a4 = v14;
    }

    if (v22)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  if (v7)
  {
    if (v21 && TSUURLTrackerCat_init_token != -1)
    {
      sub_277114824();
    }

    if (v19)
    {
      if (TSUURLTrackerCat_init_token != -1)
      {
        sub_27711484C();
      }

      v27 = 0;
      v23 = [(TSUURLTrackerFilePresenter *)self p_bookmarkDataWithOptions:2 error:&v27];

      if (!v23 && TSUURLTrackerCat_init_token != -1)
      {
        sub_277114874();
      }
    }

    else if (TSUURLTrackerCat_init_token != -1)
    {
      sub_27711489C();
    }

    goto LABEL_42;
  }

  if (!v21)
  {
    goto LABEL_42;
  }

  if (TSUURLTrackerCat_init_token != -1)
  {
    sub_2771148C4();
  }

LABEL_50:

  return v22;
}

- (id)p_lastKnownURLFromBookmark:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CBEBC0];
    v13 = *MEMORY[0x277CBE8F8];
    v4 = v13;
    v5 = MEMORY[0x277CBEA60];
    v6 = a3;
    v7 = [v5 arrayWithObjects:&v13 count:1];
    v8 = [v3 resourceValuesForKeys:v7 fromBookmarkData:{v6, v13, v14}];

    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = [v9 tsu_pathExceptPrivate];

    if (v10)
    {
      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)startOrResumeForEnteringForeground:(BOOL)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770CCED4;
  block[3] = &unk_27A702E70;
  v7 = a3;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(accessQueue, block);
  if (*(v9 + 24) == 1)
  {
    v5 = atomic_load(&self->_hasStarted);
    if (v5)
    {
      [MEMORY[0x277CCA9E8] addFilePresenter:self];
    }
  }

  _Block_object_dispose(&v8, 8);
}

- (void)pauseForEnteringBackground:(BOOL)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770CD0C4;
  block[3] = &unk_27A702E70;
  v6 = a3;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(accessQueue, block);
  if (*(v8 + 24) == 1)
  {
    [MEMORY[0x277CCA9E8] removeFilePresenter:self];
  }

  _Block_object_dispose(&v7, 8);
}

- (void)stop
{
  if (atomic_exchange(&self->_hasStarted, 0))
  {
    [MEMORY[0x277CCA9E8] removeFilePresenter:self];
  }
}

- (BOOL)isLikelyOnExternalStorage
{
  if ([(TSUURLTrackerFilePresenter *)self isVolumeKnownToBeEjectable]|| [(TSUURLTrackerFilePresenter *)self isVolumeKnownToBeRemovable])
  {
    return 1;
  }

  else
  {
    return ![(TSUURLTrackerFilePresenter *)self isVolumeKnownToBeLocal];
  }
}

- (BOOL)isLikelyOnRemovedMedia
{
  LOBYTE(v3) = atomic_load(&self->_isLikelyOnRemovedMedia);
  if ([(TSUURLTrackerFilePresenter *)self isLikelyOnExternalStorage])
  {
    v4 = [(TSUURLTrackerFilePresenter *)self sandboxedURLIfAvailable];
    v5 = v4;
    if (!v4)
    {
LABEL_12:

      return v3 & 1;
    }

    v6 = [v4 URL];
    v16 = 0;
    v7 = [v6 checkPromisedItemIsReachableAndReturnError:&v16];
    v8 = v16;
    v9 = v8;
    if (v7)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v10 = [v8 tsu_isNoSuchFileError];

      if (!v10)
      {
        LOBYTE(v3) = 0;
        goto LABEL_11;
      }

      v11 = [v5 URL];
      v6 = [v11 tsu_reachableFileURLByDeletingUnreachablePathComponents];

      v15 = 0;
      LODWORD(v3) = [v6 getPromisedItemResourceValue:&v15 forKey:*MEMORY[0x277CBEA58] error:0];
      v12 = v15;
      if (v3)
      {
        v3 = [(TSUURLTrackerFilePresenter *)self volumeURL];
        v13 = [v12 tsu_matchesURL:v3 canCompareFileID:0];

        LOBYTE(v3) = v13 ^ 1;
      }
    }

LABEL_11:
    atomic_store(v3, &self->_isLikelyOnRemovedMedia);

    goto LABEL_12;
  }

  return v3 & 1;
}

- (NSURL)volumeURL
{
  os_unfair_lock_lock(&self->_propertiesLock);
  v3 = self->_volumeURL;
  os_unfair_lock_unlock(&self->_propertiesLock);

  return v3;
}

- (void)p_updateVolumeInfo
{
  v3 = [(TSUURLTrackerFilePresenter *)self sandboxedURLIfAvailable];
  v4 = [v3 URL];
  if ([v4 checkPromisedItemIsReachableAndReturnError:0])
  {
    atomic_store([v4 tsu_isVolumeKnownToBeEjectable], &self->_volumeIsEjectable);
    atomic_store([v4 tsu_isVolumeKnownToBeRemovable], &self->_volumeIsRemovable);
    atomic_store([v4 tsu_isVolumeKnownToBeLocal], &self->_volumeIsLocal);
    v8 = 0;
    v5 = [v4 getPromisedItemResourceValue:&v8 forKey:*MEMORY[0x277CBEA58] error:0];
    v6 = v8;
    v7 = v8;
    if (v5)
    {
      os_unfair_lock_lock(&self->_propertiesLock);
      objc_storeStrong(&self->_volumeURL, v6);
      os_unfair_lock_unlock(&self->_propertiesLock);
    }

    if (TSUDocumentSaveCat_init_token != -1)
    {
      sub_27711493C();
    }
  }
}

- (NSData)bookmarkDataIfAvailable
{
  os_unfair_lock_lock(&self->_propertiesLock);
  v3 = self->_bookmarkDataIfAvailable;
  os_unfair_lock_unlock(&self->_propertiesLock);

  return v3;
}

- (void)p_setBookmarkDataIfAvailable:(id)a3
{
  accessQueue = self->_accessQueue;
  v5 = a3;
  dispatch_assert_queue_V2(accessQueue);
  os_unfair_lock_lock(&self->_propertiesLock);
  v6 = [v5 copy];

  bookmarkDataIfAvailable = self->_bookmarkDataIfAvailable;
  self->_bookmarkDataIfAvailable = v6;

  os_unfair_lock_unlock(&self->_propertiesLock);
}

- (id)bookmarkDataWithOptions:(unint64_t)a3 error:(id *)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_2770CC640;
  v20 = sub_2770CC650;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2770CC640;
  v14 = sub_2770CC650;
  v15 = 0;
  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2770CD744;
  v9[3] = &unk_27A702E48;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = &v16;
  v9[7] = a3;
  dispatch_sync(accessQueue, v9);
  v6 = v11[5];
  if (a4 && !v6)
  {
    *a4 = v17[5];
    v6 = v11[5];
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

- (id)p_bookmarkDataWithOptions:(unint64_t)a3 error:(id *)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_accessQueue);
  v7 = [(TSUURLTrackerFilePresenter *)self p_sandboxedURLIfAvailableLoadingLastKnownURLFromBookmark:0];
  v8 = [(TSUURLTrackerFilePresenter *)self bookmarkDataIfAvailable];
  v9 = v8;
  if (v5 & 2) != 0 || !v8 || (v10 = atomic_load(&self->_forceEncodingBookmarkData), (v10) || (v11 = atomic_load(&self->_didFailToForceEncodingBookmarkData), (v11))
  {
    v12 = [v7 URL];

    if (v12)
    {
      v13 = [v7 URL];
      v34 = 0;
      v14 = [v13 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v34];
      v15 = v34;
      v16 = v34;
      v17 = [v14 copy];

      if (v17)
      {
        if (TSUURLTrackerCat_init_token != -1)
        {
          sub_277114964();
        }

        [(TSUURLTrackerFilePresenter *)self p_setBookmarkDataIfAvailable:v17];
        atomic_store(0, &self->_forceEncodingBookmarkData);
        if ((atomic_exchange(&self->_didFailToForceEncodingBookmarkData, 0) & 1) != 0 && TSUURLTrackerCat_init_token != -1)
        {
          sub_27711498C();
        }
      }

      else
      {
        atomic_store(1u, &self->_didFailToForceEncodingBookmarkData);
        v19 = [v7 URL];
        v33 = 0;
        v20 = [v19 checkPromisedItemIsReachableAndReturnError:&v33];
        v21 = v33;

        if (v20)
        {
          if (TSUURLTrackerCat_init_token != -1)
          {
            sub_277114A04();
          }
        }

        else if (v9)
        {
          if (TSUURLTrackerCat_init_token != -1)
          {
            sub_2771149B4();
          }
        }

        else
        {
          objc_storeStrong(&self->_latestBookmarkError, v15);
          if (TSUURLTrackerCat_init_token != -1)
          {
            sub_2771149DC();
          }
        }

        v17 = 0;
      }

      v18 = 1;
      goto LABEL_29;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  latestBookmarkError = self->_latestBookmarkError;
  if (latestBookmarkError)
  {
    v16 = latestBookmarkError;
    if (TSUURLTrackerCat_init_token != -1)
    {
      sub_277114A2C();
    }

    [(TSUURLTrackerFilePresenter *)self p_setBookmarkDataIfAvailable:0];
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

LABEL_29:
  v23 = (v5 & 1) == 0;
  v24 = [(TSUURLTrackerFilePresenter *)self bookmarkDataIfAvailable];
  v25 = v24;
  if ((v23 & v18) != 0)
  {
    v26 = v17;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26;
  v28 = v27;
  if (v18 && !v17 && v27)
  {
    v29 = [v7 URL];

    if (v29)
    {
      if (TSUURLTrackerCat_init_token != -1)
      {
        sub_277114A40();
      }
    }

    else if (TSUURLTrackerCat_init_token != -1)
    {
      sub_277114A68();
    }
  }

  else if (a4 && !v27)
  {
    if (v16)
    {
      v30 = v16;
      *a4 = v16;
    }

    else
    {
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
      *a4 = v31;
    }
  }

  return v28;
}

- (NSURL)presentedItemURL
{
  v2 = [(TSUURLTrackerFilePresenter *)self p_sandboxedURLIfAvailableLoadingLastKnownURLFromBookmark:0];
  v3 = [v2 URL];

  return v3;
}

- (void)relinquishPresentedItemToWriter:(id)a3
{
  v4 = TSUURLTrackerCat_init_token;
  v5 = a3;
  if (v4 != -1)
  {
    sub_277114A90();
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2770CDE7C;
  v6[3] = &unk_27A7023D8;
  v6[4] = self;
  v5[2](v5, v6);
}

- (void)p_notifyURLTrackerPresentedItemContentsDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_loadWeakRetained(&self->_urlTracker);
    [WeakRetained urlTrackerPresentedItemContentsDidChange:v3];
  }
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (TSUURLTrackerCat_init_token != -1)
  {
    sub_277114AB8();
  }

  [(TSUURLTrackerFilePresenter *)self p_setDeleted:1];
  [(TSUURLTrackerFilePresenter *)self stop];
  [(TSUURLTrackerFilePresenter *)self p_notifyURLTrackerPresentedItemWasDeleted];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
    v4 = v5;
  }
}

- (void)p_notifyURLTrackerPresentedItemWasDeleted
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_loadWeakRetained(&self->_urlTracker);
    [WeakRetained urlTrackerPresentedItemWasDeleted:v3];
  }
}

- (void)presentedItemDidMoveToURL:(id)a3
{
  v4 = a3;
  if (TSUURLTrackerCat_init_token != -1)
  {
    sub_277114ACC();
  }

  v5 = [[TSUSandboxedURL alloc] initWithURL:v4];
  v6 = [(TSUSandboxedURL *)v5 URL];
  v16 = 0;
  v7 = [v6 checkPromisedItemIsReachableAndReturnError:&v16];
  v8 = v16;

  if ((v7 & 1) == 0)
  {
    if (TSUURLTrackerCat_init_token != -1)
    {
      sub_277114AE0();
    }

    v9 = [(TSUURLTrackerFilePresenter *)self bookmarkDataIfAvailable];

    if (v9)
    {
      v15 = 0;
      v10 = [(TSUURLTrackerFilePresenter *)self sandboxedURLWithOptions:2 error:&v15];
      if (v10)
      {
        v11 = [(TSUSandboxedURL *)v5 URL];
        v12 = [v10 URL];
        v13 = [v11 tsu_matchesURL:v12 canCompareFileID:0];

        if ((v13 & 1) == 0 && TSUURLTrackerCat_init_token != -1)
        {
          sub_277114B08();
        }

        v14 = v10;

        if (TSUURLTrackerCat_init_token != -1)
        {
          sub_277114B30();
        }

        v5 = v14;
      }

      else if (TSUURLTrackerCat_init_token != -1)
      {
        sub_277114B58();
      }
    }

    else if (TSUURLTrackerCat_init_token != -1)
    {
      sub_277114B80();
    }
  }

  [(TSUURLTrackerFilePresenter *)self p_presentedItemDidMoveToSandboxedURL:v5];
}

- (void)p_presentedItemDidMoveToSandboxedURL:(id)a3
{
  v4 = a3;
  [(TSUURLTrackerFilePresenter *)self p_setSandboxedURL:v4];
  atomic_store(1u, &self->_forceEncodingBookmarkData);
  accessQueue = self->_accessQueue;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = sub_2770CE554;
  v11 = &unk_27A702450;
  v12 = self;
  v13 = v4;
  v6 = v4;
  dispatch_async(accessQueue, &v8);
  v7 = [v6 URL];
  [(TSUURLTrackerFilePresenter *)self p_notifyURLTrackerPresentedItemDidMoveToURL:v7];
}

- (void)p_notifyURLTrackerPresentedItemDidMoveToURL:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_loadWeakRetained(&self->_urlTracker);
    [WeakRetained urlTracker:v5 presentedItemDidMoveToURL:v6];
  }
}

- (void)presentedItemDidChangeUbiquityAttributes:(id)a3
{
  v8 = a3;
  if (TSUURLTrackerCat_init_token != -1)
  {
    sub_277114BD0();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [(TSUURLTrackerFilePresenter *)self presentedItemURL];
    v6 = [v8 allObjects];
    [v5 tsu_removeCachedResourceValueForKeys:v6];

    v7 = objc_loadWeakRetained(&self->_urlTracker);
    [WeakRetained urlTracker:v7 presentedItemDidChangeUbiquityAttributes:v8];
  }
}

- (NSString)description
{
  v3 = [(TSUURLTrackerFilePresenter *)self p_sandboxedURLIfAvailableLoadingLastKnownURLFromBookmark:1];
  v4 = [(TSUURLTrackerFilePresenter *)self p_latestSandboxedURLWithAccess];
  v5 = v4;
  if (v4 && ![v4 isEqual:v3])
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v8 = NSStringFromClass(v10);
    [v9 stringWithFormat:@"<%@: %p URL=%@, latestURLWithAccess=%@>", v8, self, v3, v5];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 stringWithFormat:@"<%@: %p URL=%@>", v8, self, v3, v13];
  }
  v11 = ;

  return v11;
}

@end