@interface UIFeedbackEngine
@end

@implementation UIFeedbackEngine

uint64_t __45___UIFeedbackEngine__internal_activateEngine__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = 4;
LABEL_8:
    [v4 _setState:v5];
    goto LABEL_9;
  }

  v6 = [v4 prewarmCount];
  v4 = *(a1 + 32);
  if (v6 < 1)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v7 = [v4 _state];
  v8 = *(a1 + 32);
  if (v7)
  {
    if ([v8 _state] != 3)
    {
      goto LABEL_9;
    }

    v4 = *(a1 + 32);
    v5 = 2;
    goto LABEL_8;
  }

  [v8 _internal_prewarmEngine];
LABEL_9:
  v9 = *(a1 + 32);

  return [v9 _internal_serviceBlocksForState:4 withSuccess:a2];
}

uint64_t __44___UIFeedbackEngine__internal_prewarmEngine__block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) _state] == 1)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 32) _setState:v4];
  }

  v5 = *(a1 + 32);

  return [v5 _internal_serviceBlocksForState:2 withSuccess:a2];
}

uint64_t __55___UIFeedbackEngine__internal_cooldownEngineIfPossible__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    result = [*(result + 32) _state];
    if (result == 2)
    {
      v3 = *(v2 + 32);

      return [v3 _setState:0];
    }
  }

  return result;
}

void __39___UIFeedbackEngine_engineForFeedback___block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  if ([UIApp _isSpringBoard])
  {
    [v0 addObject:objc_opt_class()];
  }

  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:7];
  [v0 addObjectsFromArray:{v1, v3, v4, v5, v6, v7, v8}];

  v2 = qword_1ED499E58;
  qword_1ED499E58 = v0;
}

void __53___UIFeedbackEngine__activate_andPerformWhenRunning___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53___UIFeedbackEngine__activate_andPerformWhenRunning___block_invoke_2;
  v3[3] = &unk_1E7101B70;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __62___UIFeedbackEngine__internal_activate_andPerformWhenRunning___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _state];
  if (result == 2)
  {
    v3 = *(a1 + 32);

    return [v3 _internal_activateEngine];
  }

  return result;
}

void __57___UIFeedbackEngine__internal_deactivateEngineIfPossible__block_invoke_2(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", _UIInternalPreference_EnableStatisticOnAllDevices_block_invoke___s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "_internal_deactivateEngineIfPossible %@ tearedDown: %ld", &v6, 0x16u);
    }
  }

  if (a2)
  {
    [*(a1 + 40) _setState:{2 * (objc_msgSend(*(a1 + 40), "prewarmCount") > 0)}];
  }
}

void __54___UIFeedbackEngine__prewarm_andPerformWhenPrewarmed___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54___UIFeedbackEngine__prewarm_andPerformWhenPrewarmed___block_invoke_2;
  v3[3] = &unk_1E7101B70;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __62___UIFeedbackEngine__playFeedback_atTime_withCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62___UIFeedbackEngine__playFeedback_atTime_withCompletionBlock___block_invoke_2;
  v7[3] = &unk_1E7107D50;
  v8 = *(a1 + 64);
  [v1 _internal_playFeedbackData:v2 atTime:v5 feedback:v4 effectiveFeedbackType:v6 existingPlayer:v7 withCompletionBlock:v3];
}

void __62___UIFeedbackEngine__playFeedback_atTime_withCompletionBlock___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62___UIFeedbackEngine__playFeedback_atTime_withCompletionBlock___block_invoke_3;
  v12[3] = &unk_1E7107D28;
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = a2;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __121___UIFeedbackEngine__internal_playFeedbackData_atTime_feedback_effectiveFeedbackType_existingPlayer_withCompletionBlock___block_invoke(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = a1[7];
  v6 = a2;
  if ([v6 _internal_playFeedbackData:v3 forFeedback:v4 atTime:v5])
  {
    v7 = 0;
  }

  else
  {
    v8 = @"unable to play feedback data";
    if (!v6)
    {
      v8 = @"no player";
    }

    v7 = v8;
  }

  v9 = v7;
  (*(*(a1 + 6) + 16))();
}

void __121___UIFeedbackEngine__internal_playFeedbackData_atTime_feedback_effectiveFeedbackType_existingPlayer_withCompletionBlock___block_invoke_106(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_UIInternalPreference_EnableStatisticOnAllDevices_block_invoke_2___s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = *(a1 + 32);
      v7 = v4;
      v8 = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(v6), v6];

      v9 = MEMORY[0x1E696AEC0];
      v10 = v3;
      v11 = v8;
      v12 = [v9 stringWithFormat:@"<%s: %p>", object_getClassName(v10), v10];

      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "player dequeue finished for feedback %@ with player %@", buf, 0x16u);
    }
  }

  [*(*(a1 + 40) + 72) removeObjectForKey:*(a1 + 32)];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = *(a1 + 48);
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v18 + 1) + 8 * v17++) + 16))();
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

void __71___UIFeedbackEngine__dequeueReusableFeedbackPlayerWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __71___UIFeedbackEngine__dequeueReusableFeedbackPlayerWithCompletionBlock___block_invoke_2;
  v2[3] = &unk_1E7107DF0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _internal_dequeueReusableFeedbackPlayerWithCompletionBlock:v2];
}

void __71___UIFeedbackEngine__dequeueReusableFeedbackPlayerWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___UIFeedbackEngine__dequeueReusableFeedbackPlayerWithCompletionBlock___block_invoke_3;
  v6[3] = &unk_1E70F4A50;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __55___UIFeedbackEngine__internal_willPlayFeedback_atTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = 0.0;
  if (v2 > 0.0)
  {
    [*(a1 + 32) currentTime];
    v3 = v2 - v4;
  }

  v5 = +[_UIFeedbackVisualizer sharedVisualizer];
  [v5 showVisualForFeedback:*(a1 + 40) withDelay:v3];
}

void __50___UIFeedbackEngine__internal_willCancelFeedback___block_invoke(uint64_t a1)
{
  v2 = +[_UIFeedbackVisualizer sharedVisualizer];
  [v2 cancelVisualForFeedback:*(a1 + 32)];
}

void __48___UIFeedbackEngine__sb_stuckInNonInactiveState__block_invoke()
{
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v0 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED499EA0) + 8);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Springboard failed to return to inactive state. Reporting via ABC.", buf, 2u);
    }
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v1 = qword_1ED499ED8;
  v22 = qword_1ED499ED8;
  if (!qword_1ED499ED8)
  {
    *buf = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getSDRDiagnosticReporterClass_block_invoke_0;
    v17 = &unk_1E70F2F20;
    v18 = &v19;
    __getSDRDiagnosticReporterClass_block_invoke_0(buf);
    v1 = v20[3];
  }

  v2 = v1;
  _Block_object_dispose(&v19, 8);
  v3 = objc_alloc_init(v1);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v4 = qword_1ED499EE0;
  v22 = qword_1ED499EE0;
  if (!qword_1ED499EE0)
  {
    *buf = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getkSymptomDiagnosticTypeEnergySymbolLoc_block_invoke;
    v17 = &unk_1E70F2F20;
    v18 = &v19;
    v5 = SymptomDiagnosticReporterLibrary();
    v6 = dlsym(v5, "kSymptomDiagnosticTypeEnergy");
    *(v18[1] + 24) = v6;
    qword_1ED499EE0 = *(v18[1] + 24);
    v4 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (v4)
  {
    v7 = MEMORY[0x1E696AAE8];
    v8 = *v4;
    v9 = [v7 mainBundle];
    v10 = [v9 bundleIdentifier];
    v11 = [v3 signatureWithDomain:@"UIKit" type:v8 subType:@"SpringBoardHapticsFailReturnToIdle" detectedProcess:v10 triggerThresholdValues:0];

    [v3 snapshotWithSignature:v11 delay:0 events:0 payload:0 actions:0 reply:0.0];
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticTypeEnergy(void)"];
    [v12 handleFailureInFunction:v13 file:@"_UIFeedbackEngine.m" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

uint64_t __34___UIFeedbackEngine_runWhenReady___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _deactivate];
}

void __50___UIFeedbackEngine__internal_setupBackgroundTask__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___UIFeedbackEngine__internal_setupBackgroundTask__block_invoke_2;
  block[3] = &unk_1E70F3590;
  block[4] = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  v5 = v2;
  dispatch_async(v3, block);
}

uint64_t __50___UIFeedbackEngine__internal_setupBackgroundTask__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v2 = *(__UILogGetCategoryCachedImpl("Feedback", &_UIInternalPreference_EnableStatisticOnAllDevices_block_invoke_4___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = [v3 _backgroundTaskIdentifier];
      v6 = MEMORY[0x1E696AEC0];
      v7 = *(a1 + 32);
      v8 = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(v7), v7];

      *buf = 134218242;
      v11 = v5;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "background task expired with ID %ld for engine %@", buf, 0x16u);
    }
  }

  return [*(a1 + 32) _internal_deactivateEngineIfPossible];
}

@end