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
  _deepestWithLayer = [self _deepestWithLayer];
  v2 = _deepestWithLayer;
  if (_deepestWithLayer)
  {
    code = [_deepestWithLayer code];
  }

  else
  {
    code = -1;
  }

  return code;
}

- (id)_deepestWithLayer
{
  checkedDepthCount = [self checkedDepthCount];
  if (checkedDepthCount < 1)
  {
    goto LABEL_9;
  }

  v3 = checkedDepthCount;
  do
  {
    v4 = [self checkedForDepthIndex:v3];
    if ([v4 _errorInStackLayer] > 10)
    {
      selfCopy = v4;
    }

    else
    {
      selfCopy = 0;
      --v3;
    }
  }

  while (!selfCopy && v3 > 0);
  if (!selfCopy)
  {
LABEL_9:
    if ([self _errorInStackLayer] >= 11)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (uint64_t)checkedDepthCount
{
  userInfo = [self userInfo];
  v2 = *MEMORY[0x1E696AA08];
  v3 = [userInfo safeObjectForKey:*MEMORY[0x1E696AA08] ofClass:objc_opt_class()];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = userInfo;
    do
    {
      ++v5;
      userInfo = [v4 userInfo];

      v7 = [userInfo safeObjectForKey:v2 ofClass:objc_opt_class()];

      v4 = v7;
      v6 = userInfo;
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
  _deepestWithLayer = [self _deepestWithLayer];
  v2 = _deepestWithLayer;
  if (_deepestWithLayer)
  {
    domain = [_deepestWithLayer domain];
  }

  else
  {
    domain = 0;
  }

  return domain;
}

- (id)checkedDescription
{
  checkedDepthCount = [self checkedDepthCount];
  _errorInStackLayer = [self _errorInStackLayer];
  v4 = [SUCoreErrorInformation codeNameForError:self];
  checkedIndicationsDescription = [self checkedIndicationsDescription];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  domain = [self domain];
  v8 = domain;
  if (_errorInStackLayer > 10)
  {
    v9 = [SUCoreErrorInformation nameForSUCoreLayer:_errorInStackLayer];
    v11 = [v6 initWithFormat:@"%@(%@):%@", v8, v9, v4];
    v10 = [&stru_1F5BDE410 stringByAppendingString:v11];
  }

  else
  {
    v9 = [v6 initWithFormat:@"%@:%@", domain, v4];
    v10 = [&stru_1F5BDE410 stringByAppendingString:v9];
  }

  if (checkedDepthCount <= 0)
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    localizedDescription = [self localizedDescription];
    domain2 = [v20 initWithFormat:@" | %@", localizedDescription];
    v19 = [v10 stringByAppendingString:domain2];
    v14 = v4;
  }

  else
  {
    localizedDescription = [self checkedForDepthIndex:checkedDepthCount];
    v13 = [SUCoreErrorInformation layerForError:localizedDescription];
    v14 = [SUCoreErrorInformation codeNameForError:localizedDescription];

    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    domain2 = [localizedDescription domain];
    if (v13 > 10)
    {
      v12LocalizedDescription2 = [SUCoreErrorInformation nameForSUCoreLayer:v13];
      v12LocalizedDescription = [localizedDescription localizedDescription];
      v21 = [v15 initWithFormat:@"_%d_%@(%@):%@ | %@", checkedDepthCount, domain2, v12LocalizedDescription2, v14, v12LocalizedDescription];
      v19 = [v10 stringByAppendingString:v21];

      v10 = v21;
    }

    else
    {
      v12LocalizedDescription2 = [localizedDescription localizedDescription];
      v12LocalizedDescription = [v15 initWithFormat:@"_%d_%@:%@ | %@", checkedDepthCount, domain2, v14, v12LocalizedDescription2];
      v19 = [v10 stringByAppendingString:v12LocalizedDescription];
    }

    v10 = v12LocalizedDescription2;
  }

  if (checkedIndicationsDescription)
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@", checkedIndicationsDescription];
    v23 = [v19 stringByAppendingString:v22];

    v19 = v23;
  }

  return v19;
}

- (id)checkedIndicationsDescription
{
  checkedIndications = [self checkedIndications];
  v2 = 0;
  v3 = 0;
  do
  {
    if ((checkedIndications & (1 << v2)) != 0)
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
  v2 = [SUCoreErrorInformation allIndicationsForError:self];
  checkedDepthCount = [self checkedDepthCount];
  if (checkedDepthCount >= 1)
  {
    v4 = checkedDepthCount;
    v5 = checkedDepthCount;
    while (1)
    {
      v6 = [self checkedForDepthIndex:v5];
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
    oslog = [v7 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      checkedDescription = [self checkedDescription];
      v12[0] = 67109634;
      v12[1] = v4;
      v13 = 1024;
      v14 = v5;
      v15 = 2114;
      v16 = checkedDescription;
      _os_log_error_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_ERROR, "[CORE_ERROR] {checkedIndications} error with depthCount=%d yet no stack-error at checked depth(%d) | cannot determine if generic failure for error: %{public}@", v12, 0x18u);
    }
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

- (uint64_t)checkedLayer
{
  _deepestWithLayer = [self _deepestWithLayer];
  v2 = _deepestWithLayer;
  if (_deepestWithLayer)
  {
    _errorInStackLayer = [_deepestWithLayer _errorInStackLayer];
  }

  else
  {
    _errorInStackLayer = 10;
  }

  return _errorInStackLayer;
}

- (id)checkedOfLayer:()SUCoreError
{
  checkedDepthCount = [self checkedDepthCount];
  if (checkedDepthCount < 1)
  {
    goto LABEL_9;
  }

  v6 = checkedDepthCount;
  do
  {
    v7 = [self checkedForDepthIndex:v6];
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
    v8 = [self _errorInStackOfLayer:a3];
  }

  return v8;
}

- (id)checkedUserInfo
{
  _deepestWithLayer = [self _deepestWithLayer];
  v2 = _deepestWithLayer;
  if (_deepestWithLayer)
  {
    userInfo = [_deepestWithLayer userInfo];
  }

  else
  {
    userInfo = 0;
  }

  return userInfo;
}

- (uint64_t)checkedSystemPartitionSize
{
  v2 = +[SUCoreLog sharedLogger];
  oslog = [v2 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [(NSError(SUCoreError) *)self checkedSystemPartitionSize];
  }

  return 0;
}

- (int64_t)checkedIndicationsMatchingMask:()SUCoreError
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [SUCoreErrorInformation indicationsForError:self matchingMask:a3];
  checkedDepthCount = [self checkedDepthCount];
  if (checkedDepthCount >= 1)
  {
    v7 = checkedDepthCount;
    v8 = checkedDepthCount;
    while (1)
    {
      v9 = [self checkedForDepthIndex:v8];
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
    oslog = [v10 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      checkedDescription = [self checkedDescription];
      v15[0] = 67109634;
      v15[1] = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 2114;
      v19 = checkedDescription;
      _os_log_error_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_ERROR, "[CORE_ERROR] {checkedIndicationsMatchingMask} error with depthCount=%d yet no stack-error at checked depth(%d) | cannot determine if generic failure for error: %{public}@", v15, 0x18u);
    }
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (__CFString)checkedIndicationsSummary
{
  checkedIndications = [self checkedIndications];
  v2 = 0;
  v3 = &stru_1F5BDE410;
  do
  {
    if ((checkedIndications & (1 << v2)) != 0)
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
  userInfo = [self userInfo];
  v5 = *MEMORY[0x1E696AA08];
  v6 = [userInfo safeObjectForKey:*MEMORY[0x1E696AA08] ofClass:objc_opt_class()];
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
      v10 = userInfo;
      v11 = v6;
      userInfo = [v6 userInfo];

      v6 = [userInfo safeObjectForKey:v5 ofClass:objc_opt_class()];

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
  _deepestWithLayer = [self _deepestWithLayer];
  if (_deepestWithLayer)
  {
    [SUCoreErrorInformation codeNameForError:_deepestWithLayer];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(self, "code")];
  }
  v3 = ;

  return v3;
}

- (id)checkedSummary
{
  checkedDepthCount = [self checkedDepthCount];
  _errorInStackLayer = [self _errorInStackLayer];
  v4 = [SUCoreErrorInformation codeNameForError:self];
  checkedIndicationsSummary = [self checkedIndicationsSummary];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  selfCopy = self;
  domain = [self domain];
  v7 = domain;
  if (_errorInStackLayer > 10)
  {
    v8 = [SUCoreErrorInformation nameForSUCoreLayer:_errorInStackLayer];
    v10 = [v5 initWithFormat:@"[%@(%@):%@", v7, v8, v4];
    v9 = [&stru_1F5BDE410 stringByAppendingString:v10];
  }

  else
  {
    v8 = [v5 initWithFormat:@"[%@:%@", domain, v4];
    v9 = [&stru_1F5BDE410 stringByAppendingString:v8];
  }

  if (checkedDepthCount < 1)
  {
    v19 = v9;
  }

  else
  {
    v11 = 1;
    do
    {
      v12 = v4;
      v13 = [selfCopy checkedForDepthIndex:v11];
      v14 = [SUCoreErrorInformation layerForError:v13];
      v4 = [SUCoreErrorInformation codeNameForError:v13];

      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      domain2 = [v13 domain];
      v17 = domain2;
      if (v14 > 10)
      {
        v18 = [SUCoreErrorInformation nameForSUCoreLayer:v14];
        v20 = [v15 initWithFormat:@"_%d_%@(%@):%@", v11, v17, v18, v4];
        v19 = [v9 stringByAppendingString:v20];

        v9 = v20;
      }

      else
      {
        v18 = [v15 initWithFormat:@"_%d_%@:%@", v11, domain2, v4];
        v19 = [v9 stringByAppendingString:v18];
      }

      ++v11;
      v9 = v19;
      --checkedDepthCount;
    }

    while (checkedDepthCount);
  }

  if (checkedIndicationsSummary)
  {
    v21 = [v19 stringByAppendingString:checkedIndicationsSummary];

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
  selfCopy = self;
  if (selfCopy)
  {
    v5 = selfCopy;
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

      userInfo = [v5 userInfo];

      if (!userInfo)
      {
        break;
      }

      userInfo2 = [v5 userInfo];
      v12 = [userInfo2 safeObjectForKey:v6 ofClass:objc_opt_class()];

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
  userInfo = [self userInfo];
  v5 = *MEMORY[0x1E696AA08];
  v6 = [userInfo safeObjectForKey:*MEMORY[0x1E696AA08] ofClass:objc_opt_class()];

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
      userInfo2 = [v6 userInfo];
      v6 = [userInfo2 safeObjectForKey:v5 ofClass:objc_opt_class()];

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
  v5 = [SUCoreErrorInformation indicationsForError:self matchingMask:a3];
  checkedDepthCount = [self checkedDepthCount];
  if (checkedDepthCount >= 1)
  {
    v7 = checkedDepthCount;
    v8 = checkedDepthCount;
    while (1)
    {
      v9 = [self checkedForDepthIndex:v8];
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
    oslog = [v10 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      checkedDescription = [self checkedDescription];
      v15[0] = 67109634;
      v15[1] = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 2114;
      v19 = checkedDescription;
      _os_log_error_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_ERROR, "[CORE_ERROR] {_checkedIndicationsMatching} error with depthCount=%d yet no stack-error at checked depth(%d) | cannot determine all indications for error: %{public}@", v15, 0x18u);
    }
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_errorInStackOfLayer:()SUCoreError
{
  if ([SUCoreErrorInformation layerForError:self]== a3)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
  oslog = [v11 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [NSError(SUCoreError) buildAndLogCheckedSUCoreError:v10 underlying:oslog description:?];
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
          domain = [v9 domain];
          code = [v12 code];
          localizedDescription = [v12 localizedDescription];
          v10 = [v13 _buildCheckedErrorForDomain:domain withCode:code safeUnderlying:v11 description:localizedDescription];

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
      domain2 = [v4 domain];
      code2 = [v4 code];
      localizedDescription2 = [v4 localizedDescription];
      v5 = [v17 _buildCheckedErrorForDomain:domain2 withCode:code2 safeUnderlying:v10 description:localizedDescription2];
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
  userInfo = [v3 userInfo];

  if (userInfo)
  {
    userInfo2 = [v3 userInfo];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke;
    v8[3] = &unk_1E86FC990;
    v8[4] = &v9;
    [userInfo2 enumerateKeysAndObjectsUsingBlock:v8];
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

+ (unint64_t)_checkedDepthCount:()SUCoreError
{
  userInfo = [a3 userInfo];
  v4 = *MEMORY[0x1E696AA08];
  v5 = [userInfo safeObjectForKey:*MEMORY[0x1E696AA08] ofClass:objc_opt_class()];

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = v5;
      userInfo2 = [v5 userInfo];
      v5 = [userInfo2 safeObjectForKey:v4 ofClass:objc_opt_class()];

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
  checkedDescription = [self checkedDescription];
  v5 = 138543362;
  v6 = checkedDescription;
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