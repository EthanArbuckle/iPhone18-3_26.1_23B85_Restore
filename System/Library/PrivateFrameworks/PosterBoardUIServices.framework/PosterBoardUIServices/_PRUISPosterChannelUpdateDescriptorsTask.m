@interface _PRUISPosterChannelUpdateDescriptorsTask
- (_PRUISPosterChannelUpdateDescriptorsTask)init;
- (_PRUISPosterChannelUpdateDescriptorsTask)initWithChannel:(id)a3 fetchOptions:(id)a4 extensionProvider:(id)a5 extensionInstanceProvider:(id)a6 invalidationSignal:(id)a7 schedulerProvider:(id)a8;
- (void)_cleanup;
- (void)_executeWithState:(id)a3;
- (void)_executionTimedOut:(id)a3;
- (void)_finishWithResult:(id)a3 attempt:(id)a4 error:(id)a5;
- (void)_lock_cleanup;
- (void)_lock_finishWithResult:(id)a3 attempt:(id)a4 error:(id)a5;
- (void)cancelWithReason:(id)a3;
- (void)channel:(id)a3 didUpdateContext:(id)a4;
- (void)dealloc;
- (void)execute;
- (void)invalidate;
@end

@implementation _PRUISPosterChannelUpdateDescriptorsTask

- (_PRUISPosterChannelUpdateDescriptorsTask)initWithChannel:(id)a3 fetchOptions:(id)a4 extensionProvider:(id)a5 extensionInstanceProvider:(id)a6 invalidationSignal:(id)a7 schedulerProvider:(id)a8
{
  v15 = a3;
  v16 = a4;
  v36 = a5;
  v17 = a6;
  v35 = a7;
  v34 = a8;
  v42.receiver = self;
  v42.super_class = _PRUISPosterChannelUpdateDescriptorsTask;
  v18 = [(_PRUISPosterChannelUpdateDescriptorsTask *)&v42 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_channel, a3);
    [v15 addChannelObserver:v19];
    objc_storeStrong(&v19->_extensionProvider, a5);
    objc_storeStrong(&v19->_instanceProvider, a6);
    objc_storeStrong(&v19->_invalidationSignal, a7);
    objc_storeStrong(&v19->_schedulerProvider, a8);
    objc_storeStrong(&v19->_fetchOptions, a4);
    v20 = objc_opt_new();
    lock = v19->_lock;
    v19->_lock = v20;

    v22 = objc_opt_new();
    promise = v19->_promise;
    v19->_promise = v22;

    v24 = [v16 extensionIdentifiers];
    v25 = v24;
    if (v24 && [v24 count])
    {
      v26 = [(PFPosterExtensionProvider *)v19->_extensionProvider knownPosterExtensions];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __154___PRUISPosterChannelUpdateDescriptorsTask_initWithChannel_fetchOptions_extensionProvider_extensionInstanceProvider_invalidationSignal_schedulerProvider___block_invoke;
      v40[3] = &unk_1E83A7528;
      v41 = v25;
      v27 = [v26 bs_filter:v40];
    }

    else
    {
      v27 = [(PFPosterExtensionProvider *)v19->_extensionProvider knownPosterExtensions];
    }

    v28 = [MEMORY[0x1E695DFD8] setWithArray:v27];
    v29 = MEMORY[0x1E69C5258];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __154___PRUISPosterChannelUpdateDescriptorsTask_initWithChannel_fetchOptions_extensionProvider_extensionInstanceProvider_invalidationSignal_schedulerProvider___block_invoke_2;
    v37[3] = &unk_1E83A7550;
    v38 = v28;
    v39 = v17;
    v30 = v28;
    v31 = [v29 lazyFutureWithBlock:v37];
    spunupExtensionInstanceFuture = v19->_spunupExtensionInstanceFuture;
    v19->_spunupExtensionInstanceFuture = v31;
  }

  return v19;
}

- (_PRUISPosterChannelUpdateDescriptorsTask)init
{
  [(_PRUISPosterChannelUpdateDescriptorsTask *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(_PRUISPosterChannelUpdateDescriptorsTask *)self _cleanup];
  [(PFTPromise *)self->_promise cancelWithReason:@"update descriptors task was cancelled"];
  v3.receiver = self;
  v3.super_class = _PRUISPosterChannelUpdateDescriptorsTask;
  [(_PRUISPosterChannelUpdateDescriptorsTask *)&v3 dealloc];
}

- (void)invalidate
{
  [(PFOSUnfairLock *)self->_lock lock];
  if (!self->_lock_finished)
  {
    v3 = PFFunctionNameForAddress();
    v4 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    [(_PRUISPosterChannelUpdateDescriptorsTask *)self _lock_finishWithResult:0 attempt:0 error:v4, 0];
  }

  lock = self->_lock;

  [(PFOSUnfairLock *)lock unlock];
}

- (void)_finishWithResult:(id)a3 attempt:(id)a4 error:(id)a5
{
  lock = self->_lock;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [(PFOSUnfairLock *)lock assertNotOwner];
  [(PFOSUnfairLock *)self->_lock lock];
  [(_PRUISPosterChannelUpdateDescriptorsTask *)self _lock_finishWithResult:v11 attempt:v10 error:v9];

  v12 = self->_lock;

  [(PFOSUnfairLock *)v12 unlock];
}

- (void)_lock_finishWithResult:(id)a3 attempt:(id)a4 error:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!self->_lock_finished)
  {
    if (!(v8 | v10))
    {
      v12 = PFFunctionNameForAddress();
      v19 = 0;
      v11 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    self->_lock_finished = 1;
    [(_PRUISPosterChannelUpdateDescriptorsTask *)self _lock_cleanup];
    v13 = PRUISLogChannels();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(_PRUISPosterChannelUpdateDescriptorsTask *)self channel];
      v15 = [v14 channelIdentifier];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FinishWithResult-V%lu", objc_msgSend(v9, "unsignedIntegerValue")];
      v17 = CHANNEL_LOG_PREFIX(v15, @"UpdateDescriptorsTask", v16, 2uLL);
      v18 = [v11 pf_description];
      *buf = 138543874;
      v21 = v17;
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_1CAE63000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ finish task with result: %{public}@, error: %{public}@", buf, 0x20u);
    }

    [(PFTPromise *)self->_promise finishWithResult:v8 error:v11];
  }
}

- (void)_cleanup
{
  [(PFOSUnfairLock *)self->_lock assertNotOwner];
  [(PFOSUnfairLock *)self->_lock lock];
  [(_PRUISPosterChannelUpdateDescriptorsTask *)self _lock_cleanup];
  lock = self->_lock;

  [(PFOSUnfairLock *)lock unlock];
}

- (void)_lock_cleanup
{
  [(PRUISPosterChannel *)self->_channel removeChannelObserver:self];
  if (self->_lock_executionInstance)
  {
    v3 = self->_instanceProvider;
    v4 = [(PFTFuture *)self->_spunupExtensionInstanceFuture result:0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57___PRUISPosterChannelUpdateDescriptorsTask__lock_cleanup__block_invoke;
    v7[3] = &unk_1E83A7578;
    v7[4] = self;
    v8 = v3;
    v5 = v3;
    [v4 enumerateObjectsUsingBlock:v7];

    spunupExtensionInstanceFuture = self->_spunupExtensionInstanceFuture;
    self->_spunupExtensionInstanceFuture = 0;
  }
}

- (void)_executionTimedOut:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 unsignedIntegerValue];
  [(PFOSUnfairLock *)self->_lock lock];
  if (self->_lock_executionInstance == v5)
  {
    v6 = PRUISLogChannels();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(_PRUISPosterChannelUpdateDescriptorsTask *)self channel];
      v8 = [v7 channelIdentifier];
      v9 = CHANNEL_LOG_PREFIX(v8, @"UpdateDescriptorsTask", @"ExecutionTimedOut", 2uLL);
      *buf = 138543618;
      v13 = v9;
      v14 = 2050;
      v15 = v5;
      _os_log_impl(&dword_1CAE63000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ execution timed out: %{public}lu", buf, 0x16u);
    }

    [(PFTPromise *)self->_lock_underlyingPromise cancelWithReason:@"timedout"];
    [(PFOSUnfairLock *)self->_lock unlock];
    v10 = PFFunctionNameForAddress();
    v11 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    [(_PRUISPosterChannelUpdateDescriptorsTask *)self _finishWithResult:0 attempt:v4 error:v11, 0];
  }

  else
  {
    [(PFOSUnfairLock *)self->_lock unlock];
  }
}

- (void)execute
{
  v3 = [(PFTSchedulerProvider *)self->_schedulerProvider backgroundScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51___PRUISPosterChannelUpdateDescriptorsTask_execute__block_invoke;
  v4[3] = &unk_1E83A72F8;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)_executeWithState:(id)a3
{
  v4 = a3;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v5 = [(_PRUISPosterChannelUpdateDescriptorsTask *)self channel];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke;
  aBlock[3] = &unk_1E83A75A0;
  v6 = v5;
  v84 = v6;
  v85 = &v86;
  v7 = _Block_copy(aBlock);
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__0;
  v81 = __Block_byref_object_dispose__0;
  v82 = @"(1) precheck";
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke_177;
  v74[3] = &unk_1E83A75C8;
  v8 = v7;
  v75 = v8;
  v76 = &v77;
  v9 = _Block_copy(v74);
  v8[2](v8, 0, 0);
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__0;
  v72 = __Block_byref_object_dispose__0;
  v73 = 0;
  lock = self->_lock;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke_2;
  v67[3] = &unk_1E83A75F0;
  v67[4] = &v86;
  v67[5] = &v68;
  v67[6] = &v90;
  [(PFOSUnfairLock *)lock performBlockWhileCapturingWeak:self performBlock:v67];
  v11 = v8[2];
  if (v91[3])
  {
    v11(v8, 1, @"finished pre-checks, proceed with execution");
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v87[3]];
    [(_PRUISPosterChannelUpdateDescriptorsTask *)self performSelector:sel__executionTimedOut_ withObject:v12 afterDelay:20.0];

    v56 = self->_invalidationSignal;
    v13 = v78[5];
    v78[5] = @"(2) setup";

    v14 = [v69[5] future];
    v55 = [(PFPosterExtensionProvider *)self->_extensionProvider supportedRoles];
    v15 = [v6 state];
    v54 = [v15 channelContext];
    v53 = [(PRUISPosterChannelGalleryFetchOptions *)self->_fetchOptions updateSessionInfoProvider];
    v52 = v4;
    v16 = [v6 descriptorsForState:v15];
    v17 = objc_opt_new();
    v18 = [v16 postersByProvider];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke_3;
    v65[3] = &unk_1E83A7618;
    v19 = v17;
    v66 = v19;
    [v18 enumerateKeysAndObjectsUsingBlock:v65];

    if ([v14 isFinished] & 1) != 0 || (-[BSAtomicSignal hasBeenSignalled](v56, "hasBeenSignalled"))
    {
      goto LABEL_11;
    }

    v20 = v78[5];
    v78[5] = @"(3) fire up some extensions, get descriptors";

    v21 = objc_opt_new();
    spunupExtensionInstanceFuture = self->_spunupExtensionInstanceFuture;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke_4;
    v59[3] = &unk_1E83A7668;
    v60 = v19;
    v61 = v53;
    v62 = v54;
    v23 = v21;
    v63 = v23;
    v64 = v55;
    v24 = [(PFTFuture *)spunupExtensionInstanceFuture flatMap:v59];
    v25 = v78[5];
    v78[5] = @"(4a) finish updates";

    v58 = 0;
    v50 = v24;
    v26 = [v24 result:&v58];
    v51 = v23;
    v27 = v58;
    if (v27)
    {
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v87[3]];
      [(_PRUISPosterChannelUpdateDescriptorsTask *)self _finishWithResult:0 attempt:v28 error:v27];
    }

    else
    {
      v29 = v78[5];
      v78[5] = @"(4b) make sure we're not invalidated";

      if ([v14 isFinished] & 1) != 0 || (-[BSAtomicSignal hasBeenSignalled](v56, "hasBeenSignalled"))
      {
        goto LABEL_10;
      }

      v30 = v78[5];
      v78[5] = @"(5) build gallery metadata";

      v48 = [_TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata alloc];
      v31 = [MEMORY[0x1E695DF00] now];
      v49 = [(PRUISPosterGalleryMetadata *)v48 initWithCreationDate:v31];

      v32 = v78[5];
      v78[5] = @"(6) ingest updates";

      v33 = [(PRUISPosterChannelGalleryFetchOptions *)self->_fetchOptions policy];
      v57 = 0;
      LOBYTE(v31) = [v6 ingestUpdatedDescriptors:v51 forState:v15 galleryMetadata:v49 policy:v33 error:&v57];
      v47 = v57;
      if (v31)
      {
        v34 = v78[5];
        v78[5] = @"(7) get updated descriptors";

        v46 = [v6 state];
        v45 = [v6 descriptorsForState:?];
        v35 = v78[5];
        v78[5] = @"(8) cleanup";

        [v6 removeChannelObserver:self];
        v36 = v78[5];
        v78[5] = @"(9) finish";

        v43 = [PRUISPosterGallery alloc];
        v37 = [v46 channelContext];
        v44 = [(PRUISPosterGallery *)v43 initWithContext:v37 descriptors:v45 metadata:v49];

        v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v87[3]];
        [(_PRUISPosterChannelUpdateDescriptorsTask *)self _finishWithResult:v44 attempt:v38 error:0];

        v40 = v46;
        v39 = v47;
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v87[3]];
        v41 = v39 = v47;
        v42 = self;
        v40 = v41;
        [(_PRUISPosterChannelUpdateDescriptorsTask *)v42 _finishWithResult:0 attempt:v41 error:v47];
      }

      v28 = v49;
    }

LABEL_10:
LABEL_11:

    v4 = v52;
    goto LABEL_12;
  }

  v11(v8, 1, @"cannot proceed with execution");
LABEL_12:
  _Block_object_dispose(&v68, 8);

  v9[2](v9);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v90, 8);
}

- (void)cancelWithReason:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___PRUISPosterChannelUpdateDescriptorsTask_cancelWithReason___block_invoke;
  v7[3] = &unk_1E83A7690;
  v8 = v4;
  v6 = v4;
  [(PFOSUnfairLock *)lock performBlockWhileCapturingWeak:self performBlock:v7];
}

- (void)channel:(id)a3 didUpdateContext:(id)a4
{
  v5 = a3;
  v6 = [(PFTSchedulerProvider *)self->_schedulerProvider backgroundScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69___PRUISPosterChannelUpdateDescriptorsTask_channel_didUpdateContext___block_invoke;
  v8[3] = &unk_1E83A7100;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 performBlock:v8];
}

@end