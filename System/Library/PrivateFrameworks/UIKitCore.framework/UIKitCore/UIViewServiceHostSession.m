@interface UIViewServiceHostSession
@end

@implementation UIViewServiceHostSession

void __42___UIViewServiceHostSession_launchService__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!_os_feature_enabled_impl())
    {
      v41[0] = *MEMORY[0x1E699F8D8];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:{+[UIApplication _classicMode](UIApplication, "_classicMode")}];
      v42[0] = v21;
      v41[1] = *MEMORY[0x1E69DECD8];
      v22 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v42[1] = v22;
      v41[2] = *MEMORY[0x1E699F8E8];
      v23 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v42[2] = v23;
      v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];

      v2 = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
      if (v2)
      {
        v24 = *(__UILogGetCategoryCachedImpl("ViewServiceHostSession", &qword_1ED49F9B8) + 8);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(WeakRetained + 1);
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v25;
          _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "Asking defaultShell to open app viewservice %{public}@", &buf, 0xCu);
        }

        v26 = *(WeakRetained + 2);
        v27 = [MEMORY[0x1E699FB70] optionsWithDictionary:v1];
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v44 = __49___UIViewServiceHostSession_launchAppViewService__block_invoke_84;
        v45 = &unk_1E7119780;
        v46 = WeakRetained;
        [v2 openApplication:v26 withOptions:v27 completion:&buf];
      }

      else
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v44 = __49___UIViewServiceHostSession_launchAppViewService__block_invoke_3;
        v45 = &unk_1E7119730;
        v46 = WeakRetained;
        v27 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:0 configuration:&buf];
        [(_UIViewServiceHostSession *)WeakRetained cancelWithError:v27];
      }

      goto LABEL_32;
    }

    v1 = [MEMORY[0x1E69C75F0] identityForAppViewServiceIdentifier:*(WeakRetained + 2)];
    v2 = [MEMORY[0x1E69C7590] contextWithIdentity:v1];
    [v2 setExplanation:@"com.apple.viewservice.session.app"];
    v3 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.uikit" name:@"ViewService-AppSession"];
    v42[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    [v2 setAttributes:v4];

    v5 = RBSAppViewServiceMachServiceName();
    v6 = [MEMORY[0x1E695DFD8] setWithObject:v5];
    [v2 setManagedEndpointLaunchIdentifiers:v6];

    v7 = [objc_alloc(MEMORY[0x1E69C7598]) initWithContext:v2];
    v8 = *(__UILogGetCategoryCachedImpl("ViewServiceHostSession", &_MergedGlobals_1218) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(WeakRetained + 1);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Launching app viewservice %{public}@", &buf, 0xCu);
    }

    v39 = v7;
    v10 = [v7 executeRequest];
    v11 = [v10 process];
    v12 = [v10 assertion];
    v13 = v12;
    if (v11)
    {
      if (v12)
      {
        v41[0] = 0;
        v14 = [MEMORY[0x1E698F498] endpointOfLaunchIdentifier:v5 fromLaunchResponse:v10 withService:@"com.apple.uikit.viewservice.session" instance:0 error:v41];
        v15 = v41[0];
        v38 = v5;
        if (v14)
        {
          v37 = v11;
          v16 = [v11 pid];
          v17 = MEMORY[0x1E699F7F0];
          v18 = [MEMORY[0x1E69C75E0] identifierWithPid:v16];
          v19 = [v17 synchronizerForViewServiceWithProcessIdentifier:v18];

          if (v19)
          {
            v20 = [objc_alloc(MEMORY[0x1E698D038]) initWithBundleIdentifier:*(WeakRetained + 2) flags:15 reason:9 name:@"com.apple.viewservice.session"];
            if ([v20 acquire])
            {
              [(_UIViewServiceHostSession *)WeakRetained establishConnectionToPid:v16 withAssertion:v13 legacyAssertion:v20 endpoint:v14 synchronizer:v19];
            }

            else
            {
              [v20 invalidate];
              _UIViewServiceHostSessionLogAssertionInfo(@"Clearing launch assertion due to failed legacyAssertion acquire.", *(WeakRetained + 1), v13);
              [v13 invalidate];
              *&buf = MEMORY[0x1E69E9820];
              *(&buf + 1) = 3221225472;
              v44 = __49___UIViewServiceHostSession_launchAppViewService__block_invoke_2;
              v45 = &unk_1E7119730;
              v46 = WeakRetained;
              v36 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:1 configuration:&buf];
              [(_UIViewServiceHostSession *)WeakRetained cancelWithError:v36];
            }

            v11 = v37;
            v5 = v38;
          }

          else
          {
            _UIViewServiceHostSessionLogAssertionInfo(@"Clearing launch assertion due to failed synchronizer response.", *(WeakRetained + 1), v13);
            [v13 invalidate];
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v44 = __49___UIViewServiceHostSession_launchAppViewService__block_invoke;
            v45 = &unk_1E7119708;
            v46 = WeakRetained;
            v47 = v16;
            v35 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:3 configuration:&buf];
            [(_UIViewServiceHostSession *)WeakRetained cancelWithError:v35];

            v11 = v37;
            v5 = v38;
          }
        }

        else
        {
          _UIViewServiceHostSessionLogAssertionInfo(@"Clearing launch assertion due to launch failing to return an endpoint.", *(WeakRetained + 1), v13);
          [v13 invalidate];
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Launch failed to return endpoint for %@", *(WeakRetained + 1)];
          v32 = [MEMORY[0x1E695DF90] dictionaryWithObject:v19 forKey:@"Message"];
          v33 = v32;
          if (v15)
          {
            [v32 setValue:v15 forKey:@"OriginalError"];
          }

          v34 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:2 userInfo:v33];
          [(_UIViewServiceHostSession *)WeakRetained cancelWithError:v34];

          v14 = 0;
          v5 = v38;
        }

        goto LABEL_31;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempt to acquire launch assertion for %@ failed", *(WeakRetained + 1)];
      v29 = MEMORY[0x1E696ABC0];
      v41[0] = @"Message";
      *&buf = v15;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:v41 count:1];
      v30 = v29;
      v31 = 1;
    }

    else
    {
      if (v12)
      {
        _UIViewServiceHostSessionLogAssertionInfo(@"Clearing launch assertion of failed launch", *(WeakRetained + 1), v12);
        [v13 invalidate];
      }

      v28 = [v10 error];
      v15 = v28;
      if (v28)
      {
        v41[0] = @"OriginalError";
        *&buf = v28;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:v41 count:1];
      }

      else
      {
        v14 = 0;
      }

      v30 = MEMORY[0x1E696ABC0];
      v31 = 0;
    }

    v19 = [v30 errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:v31 userInfo:v14];
    [(_UIViewServiceHostSession *)WeakRetained cancelWithError:v19];
LABEL_31:

LABEL_32:
  }
}

void __42___UIViewServiceHostSession_launchService__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(33, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42___UIViewServiceHostSession_launchService__block_invoke_3;
  v6[3] = &unk_1E70F2F80;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __42___UIViewServiceHostSession_launchService__block_invoke_3(uint64_t a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    v3 = [WeakRetained[3] processIdentifier];
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 <= 0;
    }

    if (v4)
    {
      if (v2)
      {
        [(_UIViewServiceHostSession *)WeakRetained cancelWithError:v2];
        goto LABEL_28;
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __54___UIViewServiceHostSession_serviceDidBeginWithError___block_invoke;
      v35 = &unk_1E7119730;
      v36 = WeakRetained;
      v6 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:3 configuration:buf];
      [(_UIViewServiceHostSession *)WeakRetained cancelWithError:v6];
    }

    else
    {
      v5 = v3;
      v6 = [WeakRetained[3] xpcServiceNameRoot];
      if ([WeakRetained[3] multipleInstances])
      {
        v8 = [WeakRetained[3] multipleInstanceUUID];
      }

      else
      {
        v8 = 0;
      }

      v9 = MEMORY[0x1E698F498];
      v10 = [v6 stringByAppendingString:@".viewservice"];
      v11 = [v9 endpointForServiceName:v10 oneshot:v8 service:@"com.apple.uikit.viewservice.session" instance:0];

      if (v11)
      {
        v31 = v8;
        v12 = MEMORY[0x1E699F7F0];
        v13 = [MEMORY[0x1E69C75E0] identifierWithPid:v5];
        v14 = [v12 synchronizerForViewServiceWithProcessIdentifier:v13];

        if (!v14)
        {
          v15 = *(__UILogGetCategoryCachedImpl("ViewServiceHostSession", &serviceDidBeginWithError____s_category) + 8);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = WeakRetained[1];
            *buf = 138543618;
            *&buf[4] = v16;
            *&buf[12] = 1024;
            *&buf[14] = v5;
            _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "Connection Request for %{public}@ failed to return a synchronizer for pid=%i - synchronization with scenes will not be possible", buf, 0x12u);
          }

          v17 = MEMORY[0x1E699F7F0];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@:%i]", WeakRetained[1], v5];
          v14 = [v17 detachedSynchronizerWithIdentifier:v18];
        }

        v19 = [MEMORY[0x1E69C7640] targetWithPid:v5];
        v20 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.uikit" name:@"ViewService-ExtensionSession"];
        v38[0] = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];

        v22 = [objc_alloc(MEMORY[0x1E69C7548]) initWithExplanation:@"com.apple.viewservice.session.extension" target:v19 attributes:v21];
        v33 = 0;
        LOBYTE(v20) = [v22 acquireWithError:&v33];
        v23 = v33;
        v24 = v23;
        if (v20)
        {
          v25 = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:v5 flags:15 reason:9 name:@"com.apple.viewservice.session"];
          if ([v25 acquire])
          {
            [(_UIViewServiceHostSession *)WeakRetained establishConnectionToPid:v5 withAssertion:v22 legacyAssertion:v25 endpoint:v11 synchronizer:v14];
          }

          else
          {
            [v25 invalidate];
            _UIViewServiceHostSessionLogAssertionInfo(@"Clearing launch assertion due to failed legacyAssertion acquire.", WeakRetained[1], v22);
            [v22 invalidate];
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __54___UIViewServiceHostSession_serviceDidBeginWithError___block_invoke_2_115;
            v35 = &unk_1E7119730;
            v36 = WeakRetained;
            v30 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:1 configuration:buf];
            [(_UIViewServiceHostSession *)WeakRetained cancelWithError:v30];
          }
        }

        else
        {
          v28 = MEMORY[0x1E696ABC0];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __54___UIViewServiceHostSession_serviceDidBeginWithError___block_invoke_114;
          v35 = &unk_1E7119758;
          v36 = WeakRetained;
          v37 = v23;
          v29 = [v28 bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:1 configuration:buf];
          [(_UIViewServiceHostSession *)WeakRetained cancelWithError:v29];
        }

        v8 = v31;
      }

      else
      {
        v26 = MEMORY[0x1E696ABC0];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __54___UIViewServiceHostSession_serviceDidBeginWithError___block_invoke_2;
        v35 = &unk_1E7119730;
        v36 = v6;
        v27 = [v26 bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:2 configuration:buf];
        [(_UIViewServiceHostSession *)WeakRetained cancelWithError:v27];

        v14 = v36;
      }
    }
  }

LABEL_28:
}

void __49___UIViewServiceHostSession_launchAppViewService__block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___UIViewServiceHostSession_launchAppViewService__block_invoke_2_85;
  block[3] = &unk_1E70F6228;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __49___UIViewServiceHostSession_launchAppViewService__block_invoke_2_85(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pid];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 <= 0;
  }

  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    if (v3)
    {
      v45 = @"OriginalError";
      v46[0] = v3;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v8 = [v6 errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:0 userInfo:v7];
      [(_UIViewServiceHostSession *)v4 cancelWithError:v8];
    }

    else
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __49___UIViewServiceHostSession_launchAppViewService__block_invoke_3_86;
      v43[3] = &unk_1E7119730;
      v43[4] = v4;
      v24 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:3 configuration:v43];
      [(_UIViewServiceHostSession *)v4 cancelWithError:v24];
    }
  }

  else
  {
    v9 = v2;
    v10 = RBSAppViewServiceMachServiceName();
    v11 = [MEMORY[0x1E698F498] endpointForMachName:v10 service:@"com.apple.uikit.viewservice.session" instance:0];
    v12 = v11;
    if (v11)
    {
      v13 = [MEMORY[0x1E69C7640] targetWithPid:v9];
      v14 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.uikit" name:@"ViewService-AppSession"];
      v44 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];

      v16 = [objc_alloc(MEMORY[0x1E69C7548]) initWithExplanation:@"com.apple.viewservice.session.app" target:v13 attributes:v15];
      v40 = 0;
      v17 = [v16 acquireWithError:&v40];
      v18 = v40;
      v19 = v18;
      if (v17)
      {
        v20 = MEMORY[0x1E699F7F0];
        v21 = [MEMORY[0x1E69C75E0] identifierWithPid:v9];
        v22 = [v20 synchronizerForViewServiceWithProcessIdentifier:v21];

        if (v22)
        {
          v23 = [objc_alloc(MEMORY[0x1E698D038]) initWithBundleIdentifier:*(*(a1 + 48) + 16) flags:15 reason:9 name:@"com.apple.viewservice.session"];
          if ([v23 acquire])
          {
            [(_UIViewServiceHostSession *)*(a1 + 48) establishConnectionToPid:v9 withAssertion:v16 legacyAssertion:v23 endpoint:v12 synchronizer:v22];
          }

          else
          {
            [v23 invalidate];
            _UIViewServiceHostSessionLogAssertionInfo(@"Clearing launch assertion due to failed legacyAssertion acquire.", *(*(a1 + 48) + 8), v16);
            [v16 invalidate];
            v33 = *(a1 + 48);
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __49___UIViewServiceHostSession_launchAppViewService__block_invoke_7;
            v35[3] = &unk_1E7119730;
            v35[4] = v33;
            v34 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:1 configuration:v35];
            [(_UIViewServiceHostSession *)v33 cancelWithError:v34];
          }
        }

        else
        {
          _UIViewServiceHostSessionLogAssertionInfo(@"Clearing launch assertion due to failed synchronizer response.", *(*(a1 + 48) + 8), v16);
          [v16 invalidate];
          v31 = *(a1 + 48);
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __49___UIViewServiceHostSession_launchAppViewService__block_invoke_6;
          v36[3] = &unk_1E7119708;
          v36[4] = v31;
          v37 = v9;
          v32 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:3 configuration:v36];
          [(_UIViewServiceHostSession *)v31 cancelWithError:v32];
        }
      }

      else
      {
        v28 = *(a1 + 48);
        v29 = MEMORY[0x1E696ABC0];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __49___UIViewServiceHostSession_launchAppViewService__block_invoke_5;
        v38[3] = &unk_1E7119758;
        v38[4] = v28;
        v39 = v18;
        v30 = [v29 bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:1 configuration:v38];
        [(_UIViewServiceHostSession *)v28 cancelWithError:v30];
      }
    }

    else
    {
      v25 = *(a1 + 48);
      v26 = MEMORY[0x1E696ABC0];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __49___UIViewServiceHostSession_launchAppViewService__block_invoke_4;
      v41[3] = &unk_1E7119730;
      v42 = v10;
      v27 = [v26 bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:2 configuration:v41];
      [(_UIViewServiceHostSession *)v25 cancelWithError:v27];

      v13 = v42;
    }
  }
}

void __49___UIViewServiceHostSession_launchAppViewService__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  [v4 setFailureReason:{@"Attempt to acquire assertion for %@ failed", v3}];
  [v4 setUnderlyingError:*(a1 + 40)];
}

void __54___UIViewServiceHostSession_serviceDidBeginWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stringByAppendingString:@".viewservice"];
  [v3 setFailureReason:{@"Unable to lookup endpoint for extension service %@", v4}];
}

void __54___UIViewServiceHostSession_serviceDidBeginWithError___block_invoke_114(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  [v4 setFailureReason:{@"Attempt to acquire assertion for %@ failed", v3}];
  [v4 setUnderlyingError:*(a1 + 40)];
}

void __77___UIViewServiceHostSession_connectionWithClientContextBuilder_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 encodeInt64:*(*(a1 + 32) + 48) forKey:@"targetPID"];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __77___UIViewServiceHostSession_connectionWithClientContextBuilder_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 80);
  v4 = a2;
  v5 = [v3 machQueue];
  [v4 setSendingQueue:v5];

  [v4 setEventObserver:*(a1 + 32)];
  v6 = *(__UILogGetCategoryCachedImpl("ViewServiceHostSession", &_UIInternalPreference_VisualizeMaterials_block_invoke___s_category_3) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 80);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Configuring viewservice connection with synchronizer : %{public}@", &v8, 0xCu);
  }
}

void __57___UIViewServiceHostSession_connection_didHaltWithEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = MEMORY[0x1E696ABC0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57___UIViewServiceHostSession_connection_didHaltWithEvent___block_invoke_2;
  v5[3] = &unk_1E7119730;
  v6 = *(a1 + 32);
  v4 = [v3 bs_errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:2 configuration:v5];
  [(_UIViewServiceHostSession *)WeakRetained cancelWithError:v4];
}

void __57___UIViewServiceHostSession_connection_didHaltWithEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setFailureReason:{@"Underlying service connection to %d halted", objc_msgSend(v2, "processIdentifier")}];
}

id __55___UIViewServiceHostSession_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendInt:*(*(a1 + 40) + 48) withName:@"pid"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"assertion"];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"legacyAssertion"];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 72) withName:@"endpoint"];
  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"synchronizer"];
  result = [*(*(a1 + 40) + 88) count];
  if (result)
  {
    return [*(a1 + 32) appendObject:*(*(a1 + 40) + 88) withName:@"connections"];
  }

  return result;
}

@end