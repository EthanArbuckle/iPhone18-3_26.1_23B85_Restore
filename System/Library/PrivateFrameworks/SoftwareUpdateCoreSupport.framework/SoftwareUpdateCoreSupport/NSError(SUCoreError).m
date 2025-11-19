@interface NSError(SUCoreError)
+ (id)_buildCheckedErrorForDomain:()SUCoreError withCode:safeUnderlying:description:;
+ (id)buildAndLogCheckedSUCoreError:()SUCoreError underlying:description:;
+ (id)buildCheckedError:()SUCoreError;
+ (id)buildCheckedSUCoreError:()SUCoreError underlying:description:;
+ (uint64_t)_checkedIsSafeUserInfo:()SUCoreError;
+ (unint64_t)_checkedDepthCount:()SUCoreError;
- (__CFString)checkedIndicationsSummary;
- (id)_checkedStackErrorAtDepth:()SUCoreError;
- (id)_deepestWithLayer;
- (id)_errorInStackOfLayer:()SUCoreError;
- (id)checkedDescription;
- (id)checkedDomain;
- (id)checkedForDepthIndex:()SUCoreError;
- (id)checkedIndicationsDescription;
- (id)checkedNameForCode;
- (id)checkedOfLayer:()SUCoreError;
- (id)checkedSummary;
- (id)checkedUserInfo;
- (int64_t)_checkedIndicationsMatching:()SUCoreError;
- (int64_t)checkedIndications;
- (int64_t)checkedIndicationsMatchingMask:()SUCoreError;
- (uint64_t)_checkedIsSafe:()SUCoreError;
- (uint64_t)checkedCode;
- (uint64_t)checkedDepthCount;
- (uint64_t)checkedLayer;
- (uint64_t)checkedSystemPartitionSize;
- (void)checkedSystemPartitionSize;
@end

@implementation NSError(SUCoreError)

- (uint64_t)checkedCode
{
  v1 = [a1 _deepestWithLayer];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 code];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (id)_deepestWithLayer
{
  v2 = [a1 checkedDepthCount];
  if (v2 < 1)
  {
    goto LABEL_9;
  }

  v3 = v2;
  do
  {
    v4 = [a1 checkedForDepthIndex:v3];
    if ([v4 _errorInStackLayer] > 10)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
      --v3;
    }
  }

  while (!v5 && v3 > 0);
  if (!v5)
  {
LABEL_9:
    if ([a1 _errorInStackLayer] >= 11)
    {
      v5 = a1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (uint64_t)checkedDepthCount
{
  v1 = [a1 userInfo];
  v2 = *MEMORY[0x1E696AA08];
  v3 = [v1 safeObjectForKey:*MEMORY[0x1E696AA08] ofClass:objc_opt_class()];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = v1;
    do
    {
      ++v5;
      v1 = [v4 userInfo];

      v7 = [v1 safeObjectForKey:v2 ofClass:objc_opt_class()];

      v4 = v7;
      v6 = v1;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)checkedDomain
{
  v1 = [a1 _deepestWithLayer];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 domain];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)checkedDescription
{
  v2 = [a1 checkedDepthCount];
  v3 = [a1 _errorInStackLayer];
  v4 = [SUCoreErrorInformation codeNameForError:a1];
  v5 = [a1 checkedIndicationsDescription];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = [a1 domain];
  v8 = v7;
  if (v3 > 10)
  {
    v9 = [SUCoreErrorInformation nameForSUCoreLayer:v3];
    v11 = [v6 initWithFormat:@"%@(%@):%@", v8, v9, v4];
    v10 = [&stru_1F5BDE410 stringByAppendingString:v11];
  }

  else
  {
    v9 = [v6 initWithFormat:@"%@:%@", v7, v4];
    v10 = [&stru_1F5BDE410 stringByAppendingString:v9];
  }

  if (v2 <= 0)
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [a1 localizedDescription];
    v16 = [v20 initWithFormat:@" | %@", v12];
    v19 = [v10 stringByAppendingString:v16];
    v14 = v4;
  }

  else
  {
    v12 = [a1 checkedForDepthIndex:v2];
    v13 = [SUCoreErrorInformation layerForError:v12];
    v14 = [SUCoreErrorInformation codeNameForError:v12];

    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [v12 domain];
    if (v13 > 10)
    {
      v17 = [SUCoreErrorInformation nameForSUCoreLayer:v13];
      v18 = [v12 localizedDescription];
      v21 = [v15 initWithFormat:@"_%d_%@(%@):%@ | %@", v2, v16, v17, v14, v18];
      v19 = [v10 stringByAppendingString:v21];

      v10 = v21;
    }

    else
    {
      v17 = [v12 localizedDescription];
      v18 = [v15 initWithFormat:@"_%d_%@:%@ | %@", v2, v16, v14, v17];
      v19 = [v10 stringByAppendingString:v18];
    }

    v10 = v17;
  }

  if (v5)
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@", v5];
    v23 = [v19 stringByAppendingString:v22];

    v19 = v23;
  }

  return v19;
}

- (id)checkedIndicationsDescription
{
  v1 = [a1 checkedIndications];
  v2 = 0;
  v3 = 0;
  do
  {
    if ((v1 & (1 << v2)) != 0)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [SUCoreErrorAttributes descriptionForIndication:?];
      v6 = v5;
      if (v3)
      {
        v7 = [v4 stringWithFormat:@"\n-> %@", v5];
        v8 = [v3 stringByAppendingString:v7];

        v3 = v8;
      }

      else
      {
        v3 = [v4 stringWithFormat:@"-> %@", v5];
      }
    }

    ++v2;
  }

  while (v2 != 5);

  return v3;
}

- (int64_t)checkedIndications
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [SUCoreErrorInformation allIndicationsForError:a1];
  v3 = [a1 checkedDepthCount];
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = v3;
    while (1)
    {
      v6 = [a1 checkedForDepthIndex:v5];
      if (!v6)
      {
        break;
      }

      v2 |= [SUCoreErrorInformation allIndicationsForError:v6];
      --v5;

      if (!v5)
      {
        goto LABEL_9;
      }
    }

    v7 = +[SUCoreLog sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = [a1 checkedDescription];
      v12[0] = 67109634;
      v12[1] = v4;
      v13 = 1024;
      v14 = v5;
      v15 = 2114;
      v16 = v11;
      _os_log_error_impl(&dword_1E0F71000, v8, OS_LOG_TYPE_ERROR, "[CORE_ERROR] {checkedIndications} error with depthCount=%d yet no stack-error at checked depth(%d) | cannot determine if generic failure for error: %{public}@", v12, 0x18u);
    }
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

- (uint64_t)checkedLayer
{
  v1 = [a1 _deepestWithLayer];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 _errorInStackLayer];
  }

  else
  {
    v3 = 10;
  }

  return v3;
}

- (id)checkedOfLayer:()SUCoreError
{
  v5 = [a1 checkedDepthCount];
  if (v5 < 1)
  {
    goto LABEL_9;
  }

  v6 = v5;
  do
  {
    v7 = [a1 checkedForDepthIndex:v6];
    if ([v7 _errorInStackLayer] == a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
      --v6;
    }
  }

  while (!v8 && v6 > 0);
  if (!v8)
  {
LABEL_9:
    v8 = [a1 _errorInStackOfLayer:a3];
  }

  return v8;
}

- (id)checkedUserInfo
{
  v1 = [a1 _deepestWithLayer];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 userInfo];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)checkedSystemPartitionSize
{
  v2 = +[SUCoreLog sharedLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(NSError(SUCoreError) *)a1 checkedSystemPartitionSize];
  }

  return 0;
}

- (int64_t)checkedIndicationsMatchingMask:()SUCoreError
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [SUCoreErrorInformation indicationsForError:a1 matchingMask:a3];
  v6 = [a1 checkedDepthCount];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = v6;
    while (1)
    {
      v9 = [a1 checkedForDepthIndex:v8];
      if (!v9)
      {
        break;
      }

      v5 |= [SUCoreErrorInformation indicationsForError:v9 matchingMask:a3];
      --v8;

      if (!v8)
      {
        goto LABEL_9;
      }
    }

    v10 = +[SUCoreLog sharedLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = [a1 checkedDescription];
      v15[0] = 67109634;
      v15[1] = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 2114;
      v19 = v14;
      _os_log_error_impl(&dword_1E0F71000, v11, OS_LOG_TYPE_ERROR, "[CORE_ERROR] {checkedIndicationsMatchingMask} error with depthCount=%d yet no stack-error at checked depth(%d) | cannot determine if generic failure for error: %{public}@", v15, 0x18u);
    }
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (__CFString)checkedIndicationsSummary
{
  v1 = [a1 checkedIndications];
  v2 = 0;
  v3 = &stru_1F5BDE410;
  do
  {
    if ((v1 & (1 << v2)) != 0)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [SUCoreErrorAttributes nameForIndication:?];
      v6 = [v4 stringWithFormat:@"|%@", v5];
      v7 = [(__CFString *)v3 stringByAppendingString:v6];

      v3 = v7;
    }

    ++v2;
  }

  while (v2 != 5);
  if (([(__CFString *)v3 isEqualToString:&stru_1F5BDE410]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(__CFString *)v3 stringByAppendingString:@"|"];

    v3 = v9;
    v8 = v3;
  }

  return v8;
}

- (id)checkedForDepthIndex:()SUCoreError
{
  v4 = [a1 userInfo];
  v5 = *MEMORY[0x1E696AA08];
  v6 = [v4 safeObjectForKey:*MEMORY[0x1E696AA08] ofClass:objc_opt_class()];
  v7 = a3 > 1;
  if (v6)
  {
    v8 = a3 < 2;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = 2;
    do
    {
      v10 = v4;
      v11 = v6;
      v4 = [v6 userInfo];

      v6 = [v4 safeObjectForKey:v5 ofClass:objc_opt_class()];

      v7 = v9 < a3;
      if (v6)
      {
        v12 = v9 < a3;
      }

      else
      {
        v12 = 0;
      }

      ++v9;
    }

    while (v12);
  }

  if (v7)
  {
    v13 = 0;
  }

  else
  {
    v13 = v6;
  }

  return v13;
}

- (id)checkedNameForCode
{
  v2 = [a1 _deepestWithLayer];
  if (v2)
  {
    [SUCoreErrorInformation codeNameForError:v2];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(a1, "code")];
  }
  v3 = ;

  return v3;
}

- (id)checkedSummary
{
  v2 = [a1 checkedDepthCount];
  v3 = [a1 _errorInStackLayer];
  v4 = [SUCoreErrorInformation codeNameForError:a1];
  v24 = [a1 checkedIndicationsSummary];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v25 = a1;
  v6 = [a1 domain];
  v7 = v6;
  if (v3 > 10)
  {
    v8 = [SUCoreErrorInformation nameForSUCoreLayer:v3];
    v10 = [v5 initWithFormat:@"[%@(%@):%@", v7, v8, v4];
    v9 = [&stru_1F5BDE410 stringByAppendingString:v10];
  }

  else
  {
    v8 = [v5 initWithFormat:@"[%@:%@", v6, v4];
    v9 = [&stru_1F5BDE410 stringByAppendingString:v8];
  }

  if (v2 < 1)
  {
    v19 = v9;
  }

  else
  {
    v11 = 1;
    do
    {
      v12 = v4;
      v13 = [v25 checkedForDepthIndex:v11];
      v14 = [SUCoreErrorInformation layerForError:v13];
      v4 = [SUCoreErrorInformation codeNameForError:v13];

      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = [v13 domain];
      v17 = v16;
      if (v14 > 10)
      {
        v18 = [SUCoreErrorInformation nameForSUCoreLayer:v14];
        v20 = [v15 initWithFormat:@"_%d_%@(%@):%@", v11, v17, v18, v4];
        v19 = [v9 stringByAppendingString:v20];

        v9 = v20;
      }

      else
      {
        v18 = [v15 initWithFormat:@"_%d_%@:%@", v11, v16, v4];
        v19 = [v9 stringByAppendingString:v18];
      }

      ++v11;
      v9 = v19;
      --v2;
    }

    while (v2);
  }

  if (v24)
  {
    v21 = [v19 stringByAppendingString:v24];

    v19 = v21;
  }

  if (([v19 isEqualToString:&stru_1F5BDE410] & 1) == 0)
  {
    v22 = [v19 stringByAppendingString:@"]"];

    v19 = v22;
  }

  return v19;
}

- (uint64_t)_checkedIsSafe:()SUCoreError
{
  v4 = a1;
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x1E696AA08];
    while (1)
    {
      v7 = [MEMORY[0x1E696ABC0] _checkedIsSafeUserInfo:v5];
      v8 = v7;
      if (v7)
      {
        v9 = a3 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v8 = v7;
        goto LABEL_13;
      }

      v10 = [v5 userInfo];

      if (!v10)
      {
        break;
      }

      v11 = [v5 userInfo];
      v12 = [v11 safeObjectForKey:v6 ofClass:objc_opt_class()];

      v5 = v12;
      if (!v12)
      {
        v5 = 0;
        goto LABEL_13;
      }
    }

    v8 = 1;
LABEL_13:
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (id)_checkedStackErrorAtDepth:()SUCoreError
{
  v4 = [a1 userInfo];
  v5 = *MEMORY[0x1E696AA08];
  v6 = [v4 safeObjectForKey:*MEMORY[0x1E696AA08] ofClass:objc_opt_class()];

  if (v6)
  {
    v7 = a3 < 2;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 2;
    while (1)
    {
      v9 = v6;
      v10 = [v6 userInfo];
      v6 = [v10 safeObjectForKey:v5 ofClass:objc_opt_class()];

      if ((v8 - 1) >= 4)
      {
        break;
      }

      if (v6)
      {
        v11 = v8 < a3;
      }

      else
      {
        v11 = 0;
      }

      ++v8;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v6 = 0;
  }

LABEL_13:

  return v6;
}

- (int64_t)_checkedIndicationsMatching:()SUCoreError
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [SUCoreErrorInformation indicationsForError:a1 matchingMask:a3];
  v6 = [a1 checkedDepthCount];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = v6;
    while (1)
    {
      v9 = [a1 checkedForDepthIndex:v8];
      if (!v9)
      {
        break;
      }

      v5 |= [SUCoreErrorInformation indicationsForError:v9 matchingMask:a3];
      --v8;

      if (!v8)
      {
        goto LABEL_9;
      }
    }

    v10 = +[SUCoreLog sharedLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = [a1 checkedDescription];
      v15[0] = 67109634;
      v15[1] = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 2114;
      v19 = v14;
      _os_log_error_impl(&dword_1E0F71000, v11, OS_LOG_TYPE_ERROR, "[CORE_ERROR] {_checkedIndicationsMatching} error with depthCount=%d yet no stack-error at checked depth(%d) | cannot determine all indications for error: %{public}@", v15, 0x18u);
    }
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_errorInStackOfLayer:()SUCoreError
{
  if ([SUCoreErrorInformation layerForError:a1]== a3)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)buildCheckedSUCoreError:()SUCoreError underlying:description:
{
  v7 = MEMORY[0x1E696ABC0];
  v8 = a5;
  v9 = [v7 buildCheckedError:a4];
  v10 = [v7 _buildCheckedErrorForDomain:@"SUCoreError" withCode:a3 safeUnderlying:v9 description:v8];

  return v10;
}

+ (id)buildAndLogCheckedSUCoreError:()SUCoreError underlying:description:
{
  v7 = MEMORY[0x1E696ABC0];
  v8 = a5;
  v9 = [v7 buildCheckedError:a4];
  v10 = [v7 _buildCheckedErrorForDomain:@"SUCoreError" withCode:a3 safeUnderlying:v9 description:v8];

  v11 = +[SUCoreLog sharedLogger];
  v12 = [v11 oslog];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [NSError(SUCoreError) buildAndLogCheckedSUCoreError:v10 underlying:v12 description:?];
  }

  return v10;
}

+ (id)buildCheckedError:()SUCoreError
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 _checkedIsSafe:1])
    {
      v5 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] _checkedDepthCount:v4];
      if (v6 >= 1 && (v7 = v6, [v4 _checkedStackErrorAtDepth:v6], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v9 = v8;
        v10 = 0;
        do
        {
          v11 = v10;
          v12 = v9;
          v13 = MEMORY[0x1E696ABC0];
          v14 = [v9 domain];
          v15 = [v12 code];
          v16 = [v12 localizedDescription];
          v10 = [v13 _buildCheckedErrorForDomain:v14 withCode:v15 safeUnderlying:v11 description:v16];

          v9 = [v4 _checkedStackErrorAtDepth:v7 - 1];

          if (v7 < 2)
          {
            break;
          }

          --v7;
        }

        while (v9);
      }

      else
      {
        v10 = 0;
      }

      v17 = MEMORY[0x1E696ABC0];
      v18 = [v4 domain];
      v19 = [v4 code];
      v20 = [v4 localizedDescription];
      v5 = [v17 _buildCheckedErrorForDomain:v18 withCode:v19 safeUnderlying:v10 description:v20];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (uint64_t)_checkedIsSafeUserInfo:()SUCoreError
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v4 = [v3 userInfo];

  if (v4)
  {
    v5 = [v3 userInfo];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke;
    v8[3] = &unk_1E86FC990;
    v8[4] = &v9;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

+ (unint64_t)_checkedDepthCount:()SUCoreError
{
  v3 = [a3 userInfo];
  v4 = *MEMORY[0x1E696AA08];
  v5 = [v3 safeObjectForKey:*MEMORY[0x1E696AA08] ofClass:objc_opt_class()];

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = v5;
      v8 = [v5 userInfo];
      v5 = [v8 safeObjectForKey:v4 ofClass:objc_opt_class()];

      if (v5 && v6 >= 4)
      {
        break;
      }

      ++v6;
      if (!v5)
      {
        return v6;
      }
    }
  }

  return 0;
}

+ (id)_buildCheckedErrorForDomain:()SUCoreError withCode:safeUnderlying:description:
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = objc_opt_new();
  v13 = [SUCoreErrorInformation codeNameForDomain:v9 withCode:a4];
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v11)
  {
    v15 = [v14 initWithFormat:@"[%@] %@", v13, v11];
  }

  else
  {
    v15 = [v14 initWithFormat:@"[%@]", v13, v19];
  }

  v16 = v15;
  [v12 setSafeObject:v15 forKey:*MEMORY[0x1E696A578]];
  if (v10)
  {
    [v12 setSafeObject:v10 forKey:*MEMORY[0x1E696AA08]];
  }

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:v9 code:a4 userInfo:v12];

  return v17;
}

- (void)checkedSystemPartitionSize
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 checkedDescription];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1E0F71000, a2, OS_LOG_TYPE_ERROR, "[CORE_ERROR] {checkedSystemPartitionSize} system partition size error attribute not yet implemented | cannot provide system partition size for error: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)buildAndLogCheckedSUCoreError:()SUCoreError underlying:description:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1E0F71000, a2, OS_LOG_TYPE_ERROR, "Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end