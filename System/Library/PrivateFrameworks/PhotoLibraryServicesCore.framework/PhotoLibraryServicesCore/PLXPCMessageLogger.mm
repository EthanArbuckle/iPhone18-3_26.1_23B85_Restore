@interface PLXPCMessageLogger
+ (BOOL)enabled;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
@end

@implementation PLXPCMessageLogger

+ (BOOL)enabled
{
  if (enabled_onceToken != -1)
  {
    dispatch_once(&enabled_onceToken, &__block_literal_global_11271);
  }

  return enabled_enabled;
}

void __29__PLXPCMessageLogger_enabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  enabled_enabled = [v0 BOOLForKey:@"PLXPCMessageLogger"];
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  v20 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  v7 = invocationCopy;
  if (replyCopy)
  {
    userInfo = [invocationCopy userInfo];
    target = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696B158]];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696B160]];
    v11 = [v10 objectForKeyedSubscript:@"SignpostId"];

    if (v11)
    {
      v12 = PLRequestGetLog();
      unsignedLongLongValue = [v11 unsignedLongLongValue];
      if ((unsignedLongLongValue - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = unsignedLongLongValue;
        if (os_signpost_enabled(v12))
        {
          v16 = 138543362;
          ClassName = target;
          _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Async", "%{public}@", &v16, 0xCu);
        }
      }
    }

    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      ClassName = target;
      _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_DEFAULT, "PLXPC ->reply: %@", &v16, 0xCu);
    }

    goto LABEL_12;
  }

  userInfo = PLBackendGetLog();
  if (os_log_type_enabled(userInfo, OS_LOG_TYPE_DEFAULT))
  {
    target = [v7 target];
    v16 = 136315394;
    ClassName = object_getClassName(target);
    v18 = 2080;
    Name = sel_getName([v7 selector]);
    _os_log_impl(&dword_1AA9BD000, userInfo, OS_LOG_TYPE_DEFAULT, "PLXPC request: [%s %s]", &v16, 0x16u);
LABEL_12:
  }

  [v7 invoke];
}

@end