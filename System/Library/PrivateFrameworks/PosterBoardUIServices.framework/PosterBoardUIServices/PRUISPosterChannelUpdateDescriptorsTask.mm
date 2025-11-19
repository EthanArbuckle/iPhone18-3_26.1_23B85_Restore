@interface PRUISPosterChannelUpdateDescriptorsTask
@end

@implementation PRUISPosterChannelUpdateDescriptorsTask

uint64_t __154___PRUISPosterChannelUpdateDescriptorsTask_initWithChannel_fetchOptions_extensionProvider_extensionInstanceProvider_invalidationSignal_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 posterExtensionBundleIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

id __154___PRUISPosterChannelUpdateDescriptorsTask_initWithChannel_fetchOptions_extensionProvider_extensionInstanceProvider_invalidationSignal_schedulerProvider___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = MEMORY[0x1E69C5258];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __154___PRUISPosterChannelUpdateDescriptorsTask_initWithChannel_fetchOptions_extensionProvider_extensionInstanceProvider_invalidationSignal_schedulerProvider___block_invoke_3;
        v16[3] = &unk_1E83A7550;
        v17 = *(a1 + 40);
        v18 = v8;
        v10 = [v9 futureWithBlock:v16];
        [v3 addObject:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v11 = [MEMORY[0x1E69C5258] join:v3];
  v12 = [v11 result:a2];

  return v12;
}

void __57___PRUISPosterChannelUpdateDescriptorsTask__lock_cleanup__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRUISLogChannels();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) channel];
    v6 = [v5 channelIdentifier];
    v7 = CHANNEL_LOG_PREFIX(v6, @"UpdateDescriptorsTask", @"Cleanup", 1uLL);
    v8 = 138543874;
    v9 = v7;
    v10 = 2114;
    v11 = @"service channel gallery fetch";
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Relinquish extensionInstance for reason %{public}@: %{public}@", &v8, 0x20u);
  }

  [*(a1 + 40) relinquishExtensionInstance:v3 reason:@"service channel gallery fetch"];
}

void __51___PRUISPosterChannelUpdateDescriptorsTask_execute__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[8] state];
  [v1 _executeWithState:v2];
}

void __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) channelIdentifier];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ExecuteWithState-V%lu", *(*(*(a1 + 40) + 8) + 24)];
  v8 = CHANNEL_LOG_PREFIX(v6, @"UpdateDescriptorsTask", v7, a2);

  v9 = PRUISLogChannels();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1CAE63000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }
}

void __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke_177(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"end at execution phase: %@", *(*(*(a1 + 40) + 8) + 40)];
  (*(v1 + 16))(v1, 2, v2);
}

uint64_t __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if ((v3[2] & 1) == 0)
  {
    v10 = v3;
    if (([v3[11] hasBeenSignalled] & 1) == 0)
    {
      v4 = v10[3];
      v10[3] = v4 + 1;
      *(*(a1[4] + 8) + 24) = v4;
      v5 = v10[4];
      v6 = [MEMORY[0x1E696ABC0] pf_errorWithCode:2];
      [v5 finishWithError:v6];

      v7 = objc_opt_new();
      v8 = v10[4];
      v10[4] = v7;

      objc_storeStrong((*(a1[5] + 8) + 40), v7);
      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E69C5018];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithSet:v6];

  [v4 setObject:v8 forKey:v7];
}

id __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke_4(id *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
  v27 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v27)
  {
    v5 = *v33;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [v7 extension];
        v9 = [v8 posterExtensionBundleIdentifier];

        v10 = [a1[4] objectForKey:v9];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = objc_opt_new();
        }

        v13 = v12;

        v14 = objc_alloc_init(MEMORY[0x1E69C5048]);
        if (a1[5] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v15 = v5;
          v16 = v4;
          v17 = [a1[5] updateSessionInfoForExtensionIdentifier:v9];
          v18 = v17;
          if (v17)
          {
            v19 = v17;

            v14 = v19;
          }

          v4 = v16;
          v5 = v15;
        }

        v20 = [a1[6] userInfo];
        [v14 setContext:v20];

        v21 = [v7 pr_updateDescriptors:v13 sessionInfo:v14];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke_5;
        v28[3] = &unk_1E83A7640;
        v29 = a1[7];
        v30 = v9;
        v31 = a1[8];
        v22 = v9;
        v23 = [v21 flatMap:v28];

        [v4 addObject:v23];
      }

      v27 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v27);
  }

  v24 = [MEMORY[0x1E69C5258] join:v4];

  return v24;
}

id __62___PRUISPosterChannelUpdateDescriptorsTask__executeWithState___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = [v3 collectionForPostersMatchingRoles:*(a1 + 48)];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:*(a1 + 40)];

  objc_sync_exit(v4);
  v6 = [MEMORY[0x1E69C5258] futureWithResult:v3];

  return v6;
}

void __61___PRUISPosterChannelUpdateDescriptorsTask_cancelWithReason___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[16] & 1) == 0)
  {
    a2[16] = 1;
    v4 = a2;
    v5 = PFFunctionNameForAddress();
    v6 = *(a1 + 32);
    v7 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    [v4 _finishWithResult:0 attempt:0 error:{v7, v6}];
  }
}

uint64_t __69___PRUISPosterChannelUpdateDescriptorsTask_channelWillUpdateContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ((v2[2] & 1) == 0)
  {
    v6 = v2;
    if (([v2[11] hasBeenSignalled] & 1) == 0)
    {
      v3 = [v6[4] future];
      [v3 cancel];

      v4 = v6[4];
      v6[4] = 0;
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void __69___PRUISPosterChannelUpdateDescriptorsTask_channel_didUpdateContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) state];
  [v1 _executeWithState:v2];
}

@end