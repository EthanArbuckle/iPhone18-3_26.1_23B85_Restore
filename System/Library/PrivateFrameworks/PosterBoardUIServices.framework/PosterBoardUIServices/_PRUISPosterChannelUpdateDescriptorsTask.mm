@interface _PRUISPosterChannelUpdateDescriptorsTask
- (_PRUISPosterChannelUpdateDescriptorsTask)init;
- (_PRUISPosterChannelUpdateDescriptorsTask)initWithChannel:(id)channel fetchOptions:(id)options extensionProvider:(id)provider extensionInstanceProvider:(id)instanceProvider invalidationSignal:(id)signal schedulerProvider:(id)schedulerProvider;
- (void)_cleanup;
- (void)_executeWithState:(id)state;
- (void)_executionTimedOut:(id)out;
- (void)_finishWithResult:(id)result attempt:(id)attempt error:(id)error;
- (void)_lock_cleanup;
- (void)_lock_finishWithResult:(id)result attempt:(id)attempt error:(id)error;
- (void)cancelWithReason:(id)reason;
- (void)channel:(id)channel didUpdateContext:(id)context;
- (void)dealloc;
- (void)execute;
- (void)invalidate;
@end

@implementation _PRUISPosterChannelUpdateDescriptorsTask

- (_PRUISPosterChannelUpdateDescriptorsTask)initWithChannel:(id)channel fetchOptions:(id)options extensionProvider:(id)provider extensionInstanceProvider:(id)instanceProvider invalidationSignal:(id)signal schedulerProvider:(id)schedulerProvider
{
  channelCopy = channel;
  optionsCopy = options;
  providerCopy = provider;
  instanceProviderCopy = instanceProvider;
  signalCopy = signal;
  schedulerProviderCopy = schedulerProvider;
  v42.receiver = self;
  v42.super_class = _PRUISPosterChannelUpdateDescriptorsTask;
  v18 = [(_PRUISPosterChannelUpdateDescriptorsTask *)&v42 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_channel, channel);
    [channelCopy addChannelObserver:v19];
    objc_storeStrong(&v19->_extensionProvider, provider);
    objc_storeStrong(&v19->_instanceProvider, instanceProvider);
    objc_storeStrong(&v19->_invalidationSignal, signal);
    objc_storeStrong(&v19->_schedulerProvider, schedulerProvider);
    objc_storeStrong(&v19->_fetchOptions, options);
    v20 = objc_opt_new();
    lock = v19->_lock;
    v19->_lock = v20;

    v22 = objc_opt_new();
    promise = v19->_promise;
    v19->_promise = v22;

    extensionIdentifiers = [optionsCopy extensionIdentifiers];
    v25 = extensionIdentifiers;
    if (extensionIdentifiers && [extensionIdentifiers count])
    {
      knownPosterExtensions = [(PFPosterExtensionProvider *)v19->_extensionProvider knownPosterExtensions];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __154___PRUISPosterChannelUpdateDescriptorsTask_initWithChannel_fetchOptions_extensionProvider_extensionInstanceProvider_invalidationSignal_schedulerProvider___block_invoke;
      v40[3] = &unk_1E83A7528;
      v41 = v25;
      knownPosterExtensions2 = [knownPosterExtensions bs_filter:v40];
    }

    else
    {
      knownPosterExtensions2 = [(PFPosterExtensionProvider *)v19->_extensionProvider knownPosterExtensions];
    }

    v28 = [MEMORY[0x1E695DFD8] setWithArray:knownPosterExtensions2];
    v29 = MEMORY[0x1E69C5258];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __154___PRUISPosterChannelUpdateDescriptorsTask_initWithChannel_fetchOptions_extensionProvider_extensionInstanceProvider_invalidationSignal_schedulerProvider___block_invoke_2;
    v37[3] = &unk_1E83A7550;
    v38 = v28;
    v39 = instanceProviderCopy;
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

- (void)_finishWithResult:(id)result attempt:(id)attempt error:(id)error
{
  lock = self->_lock;
  errorCopy = error;
  attemptCopy = attempt;
  resultCopy = result;
  [(PFOSUnfairLock *)lock assertNotOwner];
  [(PFOSUnfairLock *)self->_lock lock];
  [(_PRUISPosterChannelUpdateDescriptorsTask *)self _lock_finishWithResult:resultCopy attempt:attemptCopy error:errorCopy];

  v12 = self->_lock;

  [(PFOSUnfairLock *)v12 unlock];
}

- (void)_lock_finishWithResult:(id)result attempt:(id)attempt error:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  attemptCopy = attempt;
  errorCopy = error;
  v11 = errorCopy;
  if (!self->_lock_finished)
  {
    if (!(resultCopy | errorCopy))
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
      channel = [(_PRUISPosterChannelUpdateDescriptorsTask *)self channel];
      channelIdentifier = [channel channelIdentifier];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FinishWithResult-V%lu", objc_msgSend(attemptCopy, "unsignedIntegerValue")];
      v17 = CHANNEL_LOG_PREFIX(channelIdentifier, @"UpdateDescriptorsTask", v16, 2uLL);
      pf_description = [v11 pf_description];
      *buf = 138543874;
      v21 = v17;
      v22 = 2114;
      v23 = resultCopy;
      v24 = 2114;
      v25 = pf_description;
      _os_log_impl(&dword_1CAE63000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ finish task with result: %{public}@, error: %{public}@", buf, 0x20u);
    }

    [(PFTPromise *)self->_promise finishWithResult:resultCopy error:v11];
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

- (void)_executionTimedOut:(id)out
{
  v16 = *MEMORY[0x1E69E9840];
  outCopy = out;
  unsignedIntegerValue = [outCopy unsignedIntegerValue];
  [(PFOSUnfairLock *)self->_lock lock];
  if (self->_lock_executionInstance == unsignedIntegerValue)
  {
    v6 = PRUISLogChannels();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      channel = [(_PRUISPosterChannelUpdateDescriptorsTask *)self channel];
      channelIdentifier = [channel channelIdentifier];
      v9 = CHANNEL_LOG_PREFIX(channelIdentifier, @"UpdateDescriptorsTask", @"ExecutionTimedOut", 2uLL);
      *buf = 138543618;
      v13 = v9;
      v14 = 2050;
      v15 = unsignedIntegerValue;
      _os_log_impl(&dword_1CAE63000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ execution timed out: %{public}lu", buf, 0x16u);
    }

    [(PFTPromise *)self->_lock_underlyingPromise cancelWithReason:@"timedout"];
    [(PFOSUnfairLock *)self->_lock unlock];
    v10 = PFFunctionNameForAddress();
    v11 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    [(_PRUISPosterChannelUpdateDescriptorsTask *)self _finishWithResult:0 attempt:outCopy error:v11, 0];
  }

  else
  {
    [(PFOSUnfairLock *)self->_lock unlock];
  }
}

- (void)execute
{
  backgroundScheduler = [(PFTSchedulerProvider *)self->_schedulerProvider backgroundScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51___PRUISPosterChannelUpdateDescriptorsTask_execute__block_invoke;
  v4[3] = &unk_1E83A72F8;
  v4[4] = self;
  [backgroundScheduler performBlock:v4];
}

- (void)_executeWithState:(id)state
{
  stateCopy = state;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  channel = [(_PRUISPosterChannelUpdateDescriptorsTask *)self channel];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke;
  aBlock[3] = &unk_1E83A75A0;
  v6 = channel;
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

    future = [v69[5] future];
    supportedRoles = [(PFPosterExtensionProvider *)self->_extensionProvider supportedRoles];
    state = [v6 state];
    channelContext = [state channelContext];
    updateSessionInfoProvider = [(PRUISPosterChannelGalleryFetchOptions *)self->_fetchOptions updateSessionInfoProvider];
    v52 = stateCopy;
    v16 = [v6 descriptorsForState:state];
    v17 = objc_opt_new();
    postersByProvider = [v16 postersByProvider];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke_3;
    v65[3] = &unk_1E83A7618;
    v19 = v17;
    v66 = v19;
    [postersByProvider enumerateKeysAndObjectsUsingBlock:v65];

    if ([future isFinished] & 1) != 0 || (-[BSAtomicSignal hasBeenSignalled](v56, "hasBeenSignalled"))
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
    v61 = updateSessionInfoProvider;
    v62 = channelContext;
    v23 = v21;
    v63 = v23;
    v64 = supportedRoles;
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

      if ([future isFinished] & 1) != 0 || (-[BSAtomicSignal hasBeenSignalled](v56, "hasBeenSignalled"))
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

      policy = [(PRUISPosterChannelGalleryFetchOptions *)self->_fetchOptions policy];
      v57 = 0;
      LOBYTE(v31) = [v6 ingestUpdatedDescriptors:v51 forState:state galleryMetadata:v49 policy:policy error:&v57];
      v47 = v57;
      if (v31)
      {
        v34 = v78[5];
        v78[5] = @"(7) get updated descriptors";

        state2 = [v6 state];
        v45 = [v6 descriptorsForState:?];
        v35 = v78[5];
        v78[5] = @"(8) cleanup";

        [v6 removeChannelObserver:self];
        v36 = v78[5];
        v78[5] = @"(9) finish";

        v43 = [PRUISPosterGallery alloc];
        channelContext2 = [state2 channelContext];
        v44 = [(PRUISPosterGallery *)v43 initWithContext:channelContext2 descriptors:v45 metadata:v49];

        v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v87[3]];
        [(_PRUISPosterChannelUpdateDescriptorsTask *)self _finishWithResult:v44 attempt:v38 error:0];

        v40 = state2;
        v39 = v47;
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v87[3]];
        v41 = v39 = v47;
        selfCopy = self;
        v40 = v41;
        [(_PRUISPosterChannelUpdateDescriptorsTask *)selfCopy _finishWithResult:0 attempt:v41 error:v47];
      }

      v28 = v49;
    }

LABEL_10:
LABEL_11:

    stateCopy = v52;
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

- (void)cancelWithReason:(id)reason
{
  reasonCopy = reason;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___PRUISPosterChannelUpdateDescriptorsTask_cancelWithReason___block_invoke;
  v7[3] = &unk_1E83A7690;
  v8 = reasonCopy;
  v6 = reasonCopy;
  [(PFOSUnfairLock *)lock performBlockWhileCapturingWeak:self performBlock:v7];
}

- (void)channel:(id)channel didUpdateContext:(id)context
{
  channelCopy = channel;
  backgroundScheduler = [(PFTSchedulerProvider *)self->_schedulerProvider backgroundScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69___PRUISPosterChannelUpdateDescriptorsTask_channel_didUpdateContext___block_invoke;
  v8[3] = &unk_1E83A7100;
  v8[4] = self;
  v9 = channelCopy;
  v7 = channelCopy;
  [backgroundScheduler performBlock:v8];
}

@end