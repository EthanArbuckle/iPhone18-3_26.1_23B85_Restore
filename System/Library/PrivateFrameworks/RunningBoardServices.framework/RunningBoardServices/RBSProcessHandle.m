@interface RBSProcessHandle
+ (id)_cachedHandleForKey:(uint64_t)a1;
+ (id)currentProcess;
+ (id)handleForAuditToken:(id *)a3 error:(id *)a4;
+ (id)handleForKey:(unint64_t)a3 fetchIfNeeded:(BOOL)a4;
+ (id)handleForLegacyHandle:(id)a3 error:(id *)a4;
+ (id)handleForPredicate:(id)a3 error:(id *)a4;
+ (id)observeForImminentAssertionsExpiration:(id)a3;
+ (void)_cacheHandle:(uint64_t)a1;
+ (void)_handleForIdentifier:(int)a3 pidVersion:(int)a4 ignoreCache:(void *)a5 error:;
+ (void)clearAllHandles;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (BOOL)matchesProcess:(id)a3;
- (NSString)daemonJobLabel;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)name;
- (RBSProcessExitContext)lastExitContext;
- (RBSProcessHandle)hostProcess;
- (RBSProcessHandle)init;
- (RBSProcessHandle)initWithInstance:(id)a3 auditToken:(id)a4 bundleData:(id)a5 manageFlags:(unsigned __int8)a6 beforeTranslocationBundlePath:(id)a7 executablePath:(id)a8 cache:(BOOL)a9;
- (RBSProcessHandle)initWithLaunchContext:(id)a3;
- (RBSProcessHandle)initWithRBSXPCCoder:(id)a3;
- (RBSProcessInstance)instance;
- (RBSProcessLimitations)activeLimitations;
- (RBSProcessState)currentState;
- (_DWORD)_initWithIdentity:(void *)a3 beforeTranslocationBundlePath:(void *)a4 executablePath:;
- (double)elapsedCPUTimeForFrontBoard;
- (id)currentStateMatchingDescriptor:(id)a3;
- (id)endowmentInfoForHandle;
- (id)legacyHandle;
- (void)_fullEncode:(uint64_t)a1;
- (void)_keepAlive;
- (void)dealloc;
- (void)elapsedCPUTimeForFrontBoard;
- (void)encodeWithRBSXPCCoder:(id)a3;
- (void)fullEncode:(id)a3 forKey:(id)a4;
- (void)intendToExitWith:(id)a3;
- (void)monitorForDeath:(id)a3;
@end

@implementation RBSProcessHandle

- (void)dealloc
{
  v3 = self->_data & 0x1FFFFFFFFFFFFFFFLL;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
  }

  else
  {
    v4 = 0;
  }

  if (self->_pid < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:?];
  }

  if (v4 | v5)
  {
    v6 = +[RBSWorkloop sharedBackgroundWorkloop];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__RBSProcessHandle_dealloc__block_invoke;
    block[3] = &unk_1E7276418;
    v9 = v4;
    v10 = v5;
    dispatch_async(v6, block);
  }

  v7.receiver = self;
  v7.super_class = RBSProcessHandle;
  [(RBSProcessHandle *)&v7 dealloc];
}

- (void)_keepAlive
{
  if (a1)
  {
    v1 = a1;
    v2 = dispatch_time(0, 1000000000);
    v3 = +[RBSWorkloop sharedBackgroundWorkloop];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__RBSProcessHandle__keepAlive__block_invoke;
    block[3] = &unk_1E7276440;
    v6 = v1;
    v4 = v1;
    dispatch_after(v2, v3, block);
  }
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  result = self->_bsAuditToken;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result realToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

+ (id)currentProcess
{
  v2 = +[RBSConnection sharedInstance];
  v3 = [(RBSConnection *)v2 handle];

  return v3;
}

- (RBSProcessState)currentState
{
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v4 = +[RBSProcessStateDescriptor descriptor];
    [v4 setValues:-1];
    v2 = [(RBSProcessHandle *)self currentStateMatchingDescriptor:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (RBSProcessInstance)instance
{
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v4 = [RBSProcessIdentifier identifierWithPid:self->_pid];
    v2 = [RBSProcessInstance instanceWithIdentifier:v4 identity:self->_identity];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __27__RBSProcessHandle_dealloc__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&__Lock_0);
  if (*(a1 + 32))
  {
    v2 = [__ProcessHandles objectForKey:?];
  }

  if (*(a1 + 40))
  {
    v3 = [__ProcessHandles objectForKey:?];
  }

  os_unfair_lock_unlock(&__Lock_0);
}

- (double)elapsedCPUTimeForFrontBoard
{
  if ((self->_data & 0x4000000000000000) == 0)
  {
    v2 = rbs_process_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessHandle elapsedCPUTimeForFrontBoard];
    }

LABEL_15:

    return 0.0;
  }

  taskPort = self->_taskPort;
  if (!taskPort)
  {
    v5 = [RBSMachPortTaskNameRight taskNameForPID:self->_pid];
    v6 = self->_taskPort;
    self->_taskPort = v5;

    taskPort = self->_taskPort;
    if (!taskPort)
    {
      v7 = +[RBSConnection sharedInstance];
      v8 = [RBSProcessIdentifier identifierWithPid:self->_pid];
      v9 = [v7 portForIdentifier:v8];
      v10 = self->_taskPort;
      self->_taskPort = v9;

      taskPort = self->_taskPort;
    }
  }

  v11 = [(RBSMachPortTaskNameRight *)taskPort port];
  if (v11 - 1 > 0xFFFFFFFD)
  {
    v2 = rbs_process_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessHandle elapsedCPUTimeForFrontBoard];
    }

    goto LABEL_15;
  }

  v12 = v11;
  *task_info_out = 0u;
  memset(v30, 0, 24);
  task_info_outCnt = 10;
  if (task_info(v11, 0x12u, task_info_out, &task_info_outCnt))
  {
    v13 = 0.0;
    if (RBSPIDExists(self->_pid))
    {
      v14 = rbs_process_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [RBSProcessHandle elapsedCPUTimeForFrontBoard];
      }
    }
  }

  else
  {
    v16 = vmovn_s64(*(v30 + 4));
    v17 = vshrn_n_s64(*(v30 + 4), 0x20uLL);
    v18.i64[0] = v16.i32[0];
    v18.i64[1] = v16.i32[1];
    v19 = vcvtq_f64_s64(v18);
    v18.i64[0] = v17.i32[0];
    v18.i64[1] = v17.i32[1];
    v13 = vaddvq_f64(vaddq_f64(vdivq_f64(vcvtq_f64_s64(v18), vdupq_n_s64(0x412E848000000000uLL)), v19));
  }

  memset(v27, 0, sizeof(v27));
  v26 = 4;
  if (task_info(v12, 3u, v27, &v26))
  {
    if (RBSPIDExists(self->_pid))
    {
      v20 = rbs_process_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [RBSProcessHandle elapsedCPUTimeForFrontBoard];
      }
    }
  }

  else
  {
    v21 = vmovn_s64(*v27);
    v22 = vshrn_n_s64(*v27, 0x20uLL);
    v23.i64[0] = v21.i32[0];
    v23.i64[1] = v21.i32[1];
    v24 = vcvtq_f64_s64(v23);
    v23.i64[0] = v22.i32[0];
    v23.i64[1] = v22.i32[1];
    v25 = vaddq_f64(vdivq_f64(vcvtq_f64_s64(v23), vdupq_n_s64(0x412E848000000000uLL)), v24);
    return v13 + v25.f64[0] + v25.f64[1];
  }

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v5 = [(RBSProcessIdentity *)self->_identity shortDescription];
    v6 = [v3 stringWithFormat:@"[%@:%d]", v5, self->_pid];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [(RBSProcessIdentity *)self->_identity shortDescription];
    v6 = [v4 initWithFormat:@"<inert:[%@:%d]*>", v5, 0xFFFFFFFFLL];
  }

  v7 = v6;

  return v7;
}

+ (void)clearAllHandles
{
  objc_opt_self();
  os_unfair_lock_lock(&__Lock_0);
  v0 = rbs_process_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_18E8AD000, v0, OS_LOG_TYPE_DEFAULT, "Removing all cached process handles", v1, 2u);
  }

  [__ProcessHandles removeAllObjects];
  os_unfair_lock_unlock(&__Lock_0);
}

- (RBSProcessLimitations)activeLimitations
{
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v4 = +[RBSConnection sharedInstance];
    v5 = [(RBSProcessHandle *)self instance];
    v2 = [v4 limitationsForInstance:v5 error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)name
{
  os_unfair_lock_lock(&__Lock_0);
  p_cachedName = &self->_cachedName;
  cachedName = self->_cachedName;
  if (cachedName)
  {
    v5 = cachedName;
    os_unfair_lock_unlock(&__Lock_0);
  }

  else
  {
    os_unfair_lock_unlock(&__Lock_0);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_pid];
    v7 = +[RBSConnection sharedInstance];
    v5 = [v7 processName:v6];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  os_unfair_lock_lock(&__Lock_0);
  objc_storeStrong(p_cachedName, v5);
  os_unfair_lock_unlock(&__Lock_0);
LABEL_5:

  return v5;
}

- (RBSProcessHandle)hostProcess
{
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v4 = +[RBSConnection sharedInstance];
    v5 = [(RBSProcessHandle *)self instance];
    v2 = [v4 hostProcessForInstance:v5 error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)daemonJobLabel
{
  if ([(RBSProcessHandle *)self isDaemon])
  {
    v3 = [(RBSProcessIdentity *)self->_identity consistentLaunchdJobLabel];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RBSProcessExitContext)lastExitContext
{
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v4 = +[RBSConnection sharedInstance];
    v5 = [(RBSProcessHandle *)self instance];
    v2 = [v4 lastExitContextForInstance:v5 error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (void)_handleForIdentifier:(int)a3 pidVersion:(int)a4 ignoreCache:(void *)a5 error:
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_self();
  v10 = [v8 rbs_pid];
  if (v10 > 0)
  {
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v8;
LABEL_8:
      a5 = v12;
      goto LABEL_17;
    }

    if (v11 == getpid())
    {
      v12 = [v9 currentProcess];
      goto LABEL_8;
    }

    if (a4)
    {
      v15 = a3 != -1;
LABEL_11:
      v16 = [RBSProcessPredicate predicateMatchingIdentifier:v8];
      v17 = [v9 handleForPredicate:v16 error:a5];

      goto LABEL_12;
    }

    v20 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v17 = [RBSProcessHandle _cachedHandleForKey:v20];

    v15 = a3 != -1;
    if (a3 == -1 || !v17)
    {
      if (!v17)
      {
        goto LABEL_11;
      }
    }

    else
    {
      [v17 auditToken];
      if (audit_token_to_pidversion(&atoken) != a3)
      {
        v24 = rbs_process_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          atoken.val[0] = 138412290;
          *&atoken.val[1] = v17;
          _os_log_impl(&dword_18E8AD000, v24, OS_LOG_TYPE_DEFAULT, "Found different PID versions for handle in local process cache, now trying to fetch new handle %@", &atoken, 0xCu);
        }

        v15 = 1;
        goto LABEL_11;
      }

      v15 = 1;
    }

LABEL_12:
    if (v15 && v17 && ([v17 auditToken], audit_token_to_pidversion(&atoken) != a3))
    {
      v21 = rbs_process_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        atoken.val[0] = 138412290;
        *&atoken.val[1] = v17;
        _os_log_impl(&dword_18E8AD000, v21, OS_LOG_TYPE_DEFAULT, "handle %@ has mismatched pid version", &atoken, 0xCu);
      }

      if (a5)
      {
        v22 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A588];
        v26 = @" process has mismatched pid version";
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        *a5 = [v22 errorWithDomain:@"RBSRequestErrorDomain" code:3 userInfo:v23];

        a5 = 0;
      }
    }

    else
    {
      a5 = v17;
    }

    goto LABEL_17;
  }

  if (a5)
  {
    v13 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A588];
    v29[0] = @"Invalid process identifier";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    *a5 = [v13 errorWithDomain:@"RBSRequestErrorDomain" code:1 userInfo:v14];

    a5 = 0;
  }

LABEL_17:

  v18 = *MEMORY[0x1E69E9840];

  return a5;
}

+ (id)handleForAuditToken:(id *)a3 error:(id *)a4
{
  v6 = *&a3->var0[4];
  v12[0] = *a3->var0;
  v12[1] = v6;
  v7 = [RBSAuditToken tokenFromAuditToken:v12];
  v8 = [v7 pidversion];
  v9 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v7 pid]);
  v10 = [(RBSProcessHandle *)a1 _handleForIdentifier:v9 pidVersion:v8 ignoreCache:0 error:a4];

  return v10;
}

+ (id)_cachedHandleForKey:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  os_unfair_lock_lock(&__Lock_0);
  v3 = [__ProcessHandles objectForKey:v2];

  os_unfair_lock_unlock(&__Lock_0);
  [(RBSProcessHandle *)v3 _keepAlive];

  return v3;
}

+ (id)handleForPredicate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[RBSConnection sharedInstance];
  v7 = [v6 handleForPredicate:v5 error:a4];

  if (v7)
  {
    v8 = [RBSProcessHandle _cacheHandle:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)_cacheHandle:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = v2[6] & 0x1FFFFFFFFFFFFFFFLL;
  v4 = [v2 pid];
  if (v3)
  {
    v5 = v4 <= 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = rbs_process_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[RBSProcessHandle _cacheHandle:];
    }

    v7 = v2;
  }

  else
  {
    v9 = v4;
    os_unfair_lock_lock(&__Lock_0);
    if (!__ProcessHandles)
    {
      v10 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v11 = __ProcessHandles;
      __ProcessHandles = v10;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
    v13 = [__ProcessHandles objectForKey:v12];
    v14 = v13;
    if (v13 && ([v13 auditToken], v15 = audit_token_to_pidversion(&v18), objc_msgSend(v2, "auditToken"), v15 == audit_token_to_pidversion(&v18)))
    {
      [__ProcessHandles objectForKey:v12];
      v2 = v16 = v2;
    }

    else
    {
      [__ProcessHandles setObject:v2 forKey:v12];
      v17 = __ProcessHandles;
      v16 = [MEMORY[0x1E696AD98] numberWithInt:v9];
      [v17 setObject:v2 forKey:v16];
    }

    os_unfair_lock_unlock(&__Lock_0);
    [(RBSProcessHandle *)v2 _keepAlive];
    v7 = v2;
  }

  return v7;
}

- (RBSProcessHandle)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBSProcessHandle.m" lineNumber:212 description:@"-init is not allowed on RBSProcessHandle"];

  return 0;
}

- (void)monitorForDeath:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v5 = rbs_process_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = self;
      _os_log_impl(&dword_18E8AD000, v5, OS_LOG_TYPE_DEFAULT, "Starting death monitoring for handle %@", buf, 0xCu);
    }

    v6 = +[RBSConnection sharedInstance];
    v7 = [RBSProcessIdentifier identifierWithPid:self->_pid];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__RBSProcessHandle_monitorForDeath___block_invoke;
    v9[3] = &unk_1E7276968;
    v9[4] = self;
    v10 = v4;
    [v6 subscribeToProcessDeath:v7 handler:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __36__RBSProcessHandle_monitorForDeath___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = rbs_process_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_18E8AD000, v4, OS_LOG_TYPE_DEFAULT, "Calling process death completion block for handle %@", &v11, 0xCu);
  }

  v8 = a1 + 32;
  v6 = *(a1 + 32);
  v7 = *(v8 + 8);
  if (v3)
  {
    (*(v7 + 16))(v7, v6, v3);
  }

  else
  {
    v9 = objc_alloc_init(RBSProcessExitContext);
    (*(v7 + 16))(v7, v6, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)intendToExitWith:(id)a3
{
  v4 = a3;
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v6 = +[RBSConnection sharedInstance];
    v7 = [(RBSProcessHandle *)self instance];
    [v6 intendToExit:v7 withStatus:v4];
  }

  else
  {
    v5 = rbs_general_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessHandle intendToExitWith:];
    }
  }
}

- (BOOL)isValid
{
  v2 = [(RBSProcessHandle *)self currentState];
  v3 = [v2 isRunning];

  return v3;
}

- (id)endowmentInfoForHandle
{
  v3 = +[RBSProcessStateDescriptor descriptor];
  [v3 setValues:32];
  v4 = [RBSProcessPredicate predicateMatchingHandle:self];
  v5 = [RBSProcessHandle handleForPredicate:v4 error:0];
  v6 = [v5 currentStateMatchingDescriptor:v3];

  v7 = [v6 endowmentInfos];

  return v7;
}

- (RBSProcessHandle)initWithInstance:(id)a3 auditToken:(id)a4 bundleData:(id)a5 manageFlags:(unsigned __int8)a6 beforeTranslocationBundlePath:(id)a7 executablePath:(id)a8 cache:(BOOL)a9
{
  v11 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [RBSProcessHandle initWithInstance:auditToken:bundleData:manageFlags:beforeTranslocationBundlePath:executablePath:cache:];
    if (v16)
    {
      goto LABEL_3;
    }
  }

  [RBSProcessHandle initWithInstance:auditToken:bundleData:manageFlags:beforeTranslocationBundlePath:executablePath:cache:];
LABEL_3:
  v37.receiver = self;
  v37.super_class = RBSProcessHandle;
  v20 = [(RBSProcessHandle *)&v37 init];
  if (v20)
  {
    v22 = [v15 rbs_pid];
    v23 = arc4random();
    if (v23 <= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    v20->_data = ((v11 != 0) << 63) | ((v11 & 1) << 61) | (v22 | (v24 << 32)) & 0x1FFFFFFFFFFFFFFFLL | 0x4000000000000000;
    v25 = [v15 identity];
    identity = v20->_identity;
    v20->_identity = v25;

    v20->_pid = [v15 rbs_pid];
    if (v16)
    {
      [v16 realToken];
    }

    else
    {
      memset(&v36, 0, sizeof(v36));
    }

    v20->_euid = audit_token_to_euid(&v36);
    if (objc_opt_class())
    {
      v27 = MEMORY[0x1E698E628];
      if (v16)
      {
        [v16 realToken];
      }

      else
      {
        memset(&v36, 0, sizeof(v36));
      }

      v28 = [v27 tokenFromAuditToken:&v36];
      bsAuditToken = v20->_bsAuditToken;
      v20->_bsAuditToken = v28;
    }

    v30 = [RBSProcessBundle bundleWithDataSource:v17, *v36.val, *&v36.val[4]];
    bundle = v20->_bundle;
    v20->_bundle = v30;

    if (a9)
    {
      v32 = [RBSProcessHandle _cacheHandle:v20];
    }

    v33 = objc_alloc_init(RBSXPCCoder);
    [(RBSProcessHandle *)v20 _fullEncode:v33];
    v34 = [(RBSXPCCoder *)v33 createMessage];
    codedHandle = v20->_codedHandle;
    v20->_codedHandle = v34;
  }

  return v20;
}

- (id)currentStateMatchingDescriptor:(id)a3
{
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v5 = a3;
    v6 = +[RBSConnection sharedInstance];
    v7 = [(RBSProcessHandle *)self processPredicate];
    v8 = [v6 statesForPredicate:v7 withDescriptor:v5 error:0];

    v3 = [v8 firstObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)handleForKey:(unint64_t)a3 fetchIfNeeded:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  v7 = [RBSProcessHandle _cachedHandleForKey:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v9 = +[RBSConnection sharedInstance];
    v10 = [v9 handleForKey:v6];

    v11 = rbs_process_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218242;
      v15 = a3;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_18E8AD000, v11, OS_LOG_TYPE_DEFAULT, "Hit the server for a process handle %llx that resolved to: %{public}@", &v14, 0x16u);
    }

    if (v10)
    {
      v7 = [RBSProcessHandle _cacheHandle:v10];
    }

    else
    {
      v10 = rbs_process_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[RBSProcessHandle handleForKey:fetchIfNeeded:];
      }

      v7 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)fullEncode:(id)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentThread];
  v10 = [v9 threadDictionary];

  [v10 setObject:MEMORY[0x1E695E118] forKey:@"RBSProcessHandleFullEncode"];
  [v8 encodeObject:self forKey:v7];

  [v10 removeObjectForKey:@"RBSProcessHandleFullEncode"];
}

+ (id)handleForLegacyHandle:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (objc_opt_class())
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "pid")}];
    v8 = [RBSProcessHandle handleForIdentifier:v7 error:a4];

    if (v8)
    {
      objc_storeStrong(v8 + 3, a3);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)legacyHandle
{
  if (objc_opt_class())
  {
    v3 = self;
    objc_sync_enter(v3);
    legacyHandle = v3->_legacyHandle;
    if (!legacyHandle)
    {
      v5 = [MEMORY[0x1E698E748] processHandleForAuditToken:v3->_bsAuditToken];
      v6 = v3->_legacyHandle;
      v3->_legacyHandle = v5;

      legacyHandle = v3->_legacyHandle;
    }

    v7 = legacyHandle;
    objc_sync_exit(v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)observeForImminentAssertionsExpiration:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    +[RBSProcessHandle observeForImminentAssertionsExpiration:];
  }

  v4 = +[RBSConnection sharedInstance];
  v5 = [(RBSConnection *)v4 observeProcessAssertionsExpirationWarningWithBlock:v3];

  return v5;
}

- (BOOL)matchesProcess:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if ([(RBSProcessHandle *)v4 rbs_pid]== -1)
  {
    identity = self->_identity;
    v9 = [(RBSProcessHandle *)v5 identity];
    v7 = [(RBSProcessIdentity *)identity isEqual:v9];
  }

  else
  {
    pid = self->_pid;
    v7 = pid == [(RBSProcessHandle *)v5 rbs_pid];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(RBSProcessHandle *)self matchesProcess:v4];
  }

  return v6;
}

- (NSString)debugDescription
{
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v7 = [(RBSProcessHandle *)self identity];
    v8 = [v7 auid];

    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [objc_opt_class() description];
    v10 = [(RBSProcessIdentity *)self->_identity shortDescription];
    v5 = v10;
    pid = self->_pid;
    if (v8)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
      v13 = [v9 initWithFormat:@"<%@| %@:%d%@%@%@>", v4, v5, pid, @"(", v12, @")"];

      goto LABEL_7;
    }

    v6 = [v9 initWithFormat:@"<%@| %@:%d%@%@%@>", v4, v10, pid, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0];
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [objc_opt_class() description];
    v5 = [(RBSProcessIdentity *)self->_identity shortDescription];
    v6 = [v3 initWithFormat:@"<%@| inert %@>", v4, v5, v15, v16, v17, v18];
  }

  v13 = v6;
LABEL_7:

  return v13;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v5 threadDictionary];
  v7 = [v6 objectForKey:@"RBSProcessHandleFullEncode"];

  if (v7 || (self->_data & 0x4000000000000000) == 0)
  {
    [(RBSProcessHandle *)self _fullEncode:v4];
  }

  else
  {
    v8 = rbs_process_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(RBSProcessHandle *)&self->_data encodeWithRBSXPCCoder:v8];
    }

    [v4 encodeUInt64:self->_data & 0x1FFFFFFFFFFFFFFFLL forKey:@"&"];
  }
}

- (RBSProcessHandle)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeUInt64ForKey:@"&"];
  if (v5)
  {
    v6 = v5;
    v7 = rbs_process_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(RBSProcessHandle *)v6 initWithRBSXPCCoder:v7];
    }

    v8 = [RBSProcessHandle handleForKey:v6 fetchIfNeeded:1];
  }

  else
  {
    v9 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_codedHandle"];
    if (v9)
    {
      v10 = [RBSXPCCoder coderWithMessage:v9];

      v4 = v10;
    }

    v22.receiver = self;
    v22.super_class = RBSProcessHandle;
    v11 = [(RBSProcessHandle *)&v22 init];
    if (v11)
    {
      v11->_data = [v4 decodeUInt64ForKey:@"_data"];
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identity"];
      identity = v11->_identity;
      v11->_identity = v12;

      if (!v11->_identity)
      {
        [RBSProcessHandle initWithRBSXPCCoder:];
      }

      v11->_pid = [v4 decodeUInt64ForKey:@"_pid"];
      if (objc_opt_class())
      {
        v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bsAuditToken"];
        bsAuditToken = v11->_bsAuditToken;
        v11->_bsAuditToken = v14;
      }

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundle"];
      bundle = v11->_bundle;
      v11->_bundle = v16;

      if ((v11->_data & 0x4000000000000000) != 0)
      {
        v18 = v11->_bundle;
        v19 = [RBSProcessIdentifier identifierWithPid:v11->_pid];
        v20 = [RBSProcessInstance instanceWithIdentifier:v19 identity:v11->_identity];
        [(RBSProcessBundle *)v18 setInstance:v20];
      }
    }

    self = v11;

    v8 = self;
  }

  return v8;
}

- (void)_fullEncode:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      [v3 encodeObject:v5 forKey:@"_codedHandle"];
    }

    else
    {
      v6 = rbs_general_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 48);
        v8 = *(a1 + 64);
        v11 = 138412802;
        v12 = a1;
        v13 = 2048;
        v14 = v7;
        v15 = 1024;
        v16 = v8;
        _os_log_impl(&dword_18E8AD000, v6, OS_LOG_TYPE_DEFAULT, "Full encoding handle %@, with data %llx, and pid %d", &v11, 0x1Cu);
      }

      [v4 encodeObject:*(a1 + 72) forKey:@"_identity"];
      [v4 encodeUInt64:*(a1 + 64) forKey:@"_pid"];
      if (objc_opt_class())
      {
        [v4 encodeObject:*(a1 + 40) forKey:@"_bsAuditToken"];
      }

      [v4 encodeObject:*(a1 + 80) forKey:@"_bundle"];
      v9 = *(a1 + 48);
      if (v9)
      {
        [v4 encodeUInt64:v9 forKey:@"_data"];
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (_DWORD)_initWithIdentity:(void *)a3 beforeTranslocationBundlePath:(void *)a4 executablePath:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    if (!v8)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:sel__initWithIdentity_beforeTranslocationBundlePath_executablePath_ object:a1 file:@"RBSProcessHandle.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"identity"}];
    }

    v14.receiver = a1;
    v14.super_class = RBSProcessHandle;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v11;
    if (v11)
    {
      *(v11 + 6) = 0;
      objc_storeStrong(v11 + 9, a2);
      a1[16] = -1;
    }
  }

  return a1;
}

- (RBSProcessHandle)initWithLaunchContext:(id)a3
{
  v4 = a3;
  v5 = [v4 identity];
  v6 = [v4 beforeTranslocationBundlePath];
  v7 = [v4 _overrideExecutablePath];

  v8 = [(RBSProcessHandle *)self _initWithIdentity:v5 beforeTranslocationBundlePath:v6 executablePath:v7];
  return v8;
}

+ (void)_cacheHandle:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithInstance:auditToken:bundleData:manageFlags:beforeTranslocationBundlePath:executablePath:cache:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"instance" object:? file:? lineNumber:? description:?];
}

- (void)initWithInstance:auditToken:bundleData:manageFlags:beforeTranslocationBundlePath:executablePath:cache:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"auditToken" object:? file:? lineNumber:? description:?];
}

+ (void)handleForKey:fetchIfNeeded:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)elapsedCPUTimeForFrontBoard
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)observeForImminentAssertionsExpiration:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (void)encodeWithRBSXPCCoder:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1 & 0x1FFFFFFFFFFFFFFFLL;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_DEBUG, "Encoding RBSProcessHandle with IPC ID %llx", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initWithRBSXPCCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_DEBUG, "Decoded RBSProcessHandle with IPC ID %llx", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithRBSXPCCoder:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end