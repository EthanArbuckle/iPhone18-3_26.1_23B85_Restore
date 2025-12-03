@interface RBSProcessHandle
+ (id)_cachedHandleForKey:(uint64_t)key;
+ (id)currentProcess;
+ (id)handleForAuditToken:(id *)token error:(id *)error;
+ (id)handleForKey:(unint64_t)key fetchIfNeeded:(BOOL)needed;
+ (id)handleForLegacyHandle:(id)handle error:(id *)error;
+ (id)handleForPredicate:(id)predicate error:(id *)error;
+ (id)observeForImminentAssertionsExpiration:(id)expiration;
+ (void)_cacheHandle:(uint64_t)handle;
+ (void)_handleForIdentifier:(int)identifier pidVersion:(int)version ignoreCache:(void *)cache error:;
+ (void)clearAllHandles;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (BOOL)matchesProcess:(id)process;
- (NSString)daemonJobLabel;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)name;
- (RBSProcessExitContext)lastExitContext;
- (RBSProcessHandle)hostProcess;
- (RBSProcessHandle)init;
- (RBSProcessHandle)initWithInstance:(id)instance auditToken:(id)token bundleData:(id)data manageFlags:(unsigned __int8)flags beforeTranslocationBundlePath:(id)path executablePath:(id)executablePath cache:(BOOL)cache;
- (RBSProcessHandle)initWithLaunchContext:(id)context;
- (RBSProcessHandle)initWithRBSXPCCoder:(id)coder;
- (RBSProcessInstance)instance;
- (RBSProcessLimitations)activeLimitations;
- (RBSProcessState)currentState;
- (_DWORD)_initWithIdentity:(void *)identity beforeTranslocationBundlePath:(void *)path executablePath:;
- (double)elapsedCPUTimeForFrontBoard;
- (id)currentStateMatchingDescriptor:(id)descriptor;
- (id)endowmentInfoForHandle;
- (id)legacyHandle;
- (void)_fullEncode:(uint64_t)encode;
- (void)_keepAlive;
- (void)dealloc;
- (void)elapsedCPUTimeForFrontBoard;
- (void)encodeWithRBSXPCCoder:(id)coder;
- (void)fullEncode:(id)encode forKey:(id)key;
- (void)intendToExitWith:(id)with;
- (void)monitorForDeath:(id)death;
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
  if (self)
  {
    selfCopy = self;
    v2 = dispatch_time(0, 1000000000);
    v3 = +[RBSWorkloop sharedBackgroundWorkloop];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__RBSProcessHandle__keepAlive__block_invoke;
    block[3] = &unk_1E7276440;
    v6 = selfCopy;
    v4 = selfCopy;
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
  handle = [(RBSConnection *)v2 handle];

  return handle;
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

  port = [(RBSMachPortTaskNameRight *)taskPort port];
  if (port - 1 > 0xFFFFFFFD)
  {
    v2 = rbs_process_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessHandle elapsedCPUTimeForFrontBoard];
    }

    goto LABEL_15;
  }

  v12 = port;
  *task_info_out = 0u;
  memset(v30, 0, 24);
  task_info_outCnt = 10;
  if (task_info(port, 0x12u, task_info_out, &task_info_outCnt))
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
    shortDescription = [(RBSProcessIdentity *)self->_identity shortDescription];
    0xFFFFFFFFLL = [v3 stringWithFormat:@"[%@:%d]", shortDescription, self->_pid];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    shortDescription = [(RBSProcessIdentity *)self->_identity shortDescription];
    0xFFFFFFFFLL = [v4 initWithFormat:@"<inert:[%@:%d]*>", shortDescription, 0xFFFFFFFFLL];
  }

  v7 = 0xFFFFFFFFLL;

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
    instance = [(RBSProcessHandle *)self instance];
    v2 = [v4 limitationsForInstance:instance error:0];
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
    instance = [(RBSProcessHandle *)self instance];
    v2 = [v4 hostProcessForInstance:instance error:0];
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
    consistentLaunchdJobLabel = [(RBSProcessIdentity *)self->_identity consistentLaunchdJobLabel];
  }

  else
  {
    consistentLaunchdJobLabel = 0;
  }

  return consistentLaunchdJobLabel;
}

- (RBSProcessExitContext)lastExitContext
{
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v4 = +[RBSConnection sharedInstance];
    instance = [(RBSProcessHandle *)self instance];
    v2 = [v4 lastExitContextForInstance:instance error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (void)_handleForIdentifier:(int)identifier pidVersion:(int)version ignoreCache:(void *)cache error:
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_self();
  rbs_pid = [v8 rbs_pid];
  if (rbs_pid > 0)
  {
    v11 = rbs_pid;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      currentProcess = v8;
LABEL_8:
      cache = currentProcess;
      goto LABEL_17;
    }

    if (v11 == getpid())
    {
      currentProcess = [v9 currentProcess];
      goto LABEL_8;
    }

    if (version)
    {
      v15 = identifier != -1;
LABEL_11:
      v16 = [RBSProcessPredicate predicateMatchingIdentifier:v8];
      v17 = [v9 handleForPredicate:v16 error:cache];

      goto LABEL_12;
    }

    v20 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v17 = [RBSProcessHandle _cachedHandleForKey:v20];

    v15 = identifier != -1;
    if (identifier == -1 || !v17)
    {
      if (!v17)
      {
        goto LABEL_11;
      }
    }

    else
    {
      [v17 auditToken];
      if (audit_token_to_pidversion(&atoken) != identifier)
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
    if (v15 && v17 && ([v17 auditToken], audit_token_to_pidversion(&atoken) != identifier))
    {
      v21 = rbs_process_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        atoken.val[0] = 138412290;
        *&atoken.val[1] = v17;
        _os_log_impl(&dword_18E8AD000, v21, OS_LOG_TYPE_DEFAULT, "handle %@ has mismatched pid version", &atoken, 0xCu);
      }

      if (cache)
      {
        v22 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A588];
        v26 = @" process has mismatched pid version";
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        *cache = [v22 errorWithDomain:@"RBSRequestErrorDomain" code:3 userInfo:v23];

        cache = 0;
      }
    }

    else
    {
      cache = v17;
    }

    goto LABEL_17;
  }

  if (cache)
  {
    v13 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A588];
    v29[0] = @"Invalid process identifier";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    *cache = [v13 errorWithDomain:@"RBSRequestErrorDomain" code:1 userInfo:v14];

    cache = 0;
  }

LABEL_17:

  v18 = *MEMORY[0x1E69E9840];

  return cache;
}

+ (id)handleForAuditToken:(id *)token error:(id *)error
{
  v6 = *&token->var0[4];
  v12[0] = *token->var0;
  v12[1] = v6;
  v7 = [RBSAuditToken tokenFromAuditToken:v12];
  pidversion = [v7 pidversion];
  v9 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v7 pid]);
  v10 = [(RBSProcessHandle *)self _handleForIdentifier:v9 pidVersion:pidversion ignoreCache:0 error:error];

  return v10;
}

+ (id)_cachedHandleForKey:(uint64_t)key
{
  v2 = a2;
  objc_opt_self();
  os_unfair_lock_lock(&__Lock_0);
  v3 = [__ProcessHandles objectForKey:v2];

  os_unfair_lock_unlock(&__Lock_0);
  [(RBSProcessHandle *)v3 _keepAlive];

  return v3;
}

+ (id)handleForPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v6 = +[RBSConnection sharedInstance];
  v7 = [v6 handleForPredicate:predicateCopy error:error];

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

+ (void)_cacheHandle:(uint64_t)handle
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
      strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v11 = __ProcessHandles;
      __ProcessHandles = strongToWeakObjectsMapTable;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSProcessHandle.m" lineNumber:212 description:@"-init is not allowed on RBSProcessHandle"];

  return 0;
}

- (void)monitorForDeath:(id)death
{
  v13 = *MEMORY[0x1E69E9840];
  deathCopy = death;
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v5 = rbs_process_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_18E8AD000, v5, OS_LOG_TYPE_DEFAULT, "Starting death monitoring for handle %@", buf, 0xCu);
    }

    v6 = +[RBSConnection sharedInstance];
    v7 = [RBSProcessIdentifier identifierWithPid:self->_pid];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__RBSProcessHandle_monitorForDeath___block_invoke;
    v9[3] = &unk_1E7276968;
    v9[4] = self;
    v10 = deathCopy;
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

- (void)intendToExitWith:(id)with
{
  withCopy = with;
  if ((self->_data & 0x4000000000000000) != 0)
  {
    v6 = +[RBSConnection sharedInstance];
    instance = [(RBSProcessHandle *)self instance];
    [v6 intendToExit:instance withStatus:withCopy];
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
  currentState = [(RBSProcessHandle *)self currentState];
  isRunning = [currentState isRunning];

  return isRunning;
}

- (id)endowmentInfoForHandle
{
  v3 = +[RBSProcessStateDescriptor descriptor];
  [v3 setValues:32];
  v4 = [RBSProcessPredicate predicateMatchingHandle:self];
  v5 = [RBSProcessHandle handleForPredicate:v4 error:0];
  v6 = [v5 currentStateMatchingDescriptor:v3];

  endowmentInfos = [v6 endowmentInfos];

  return endowmentInfos;
}

- (RBSProcessHandle)initWithInstance:(id)instance auditToken:(id)token bundleData:(id)data manageFlags:(unsigned __int8)flags beforeTranslocationBundlePath:(id)path executablePath:(id)executablePath cache:(BOOL)cache
{
  flagsCopy = flags;
  instanceCopy = instance;
  tokenCopy = token;
  dataCopy = data;
  pathCopy = path;
  executablePathCopy = executablePath;
  if (instanceCopy)
  {
    if (tokenCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [RBSProcessHandle initWithInstance:auditToken:bundleData:manageFlags:beforeTranslocationBundlePath:executablePath:cache:];
    if (tokenCopy)
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
    rbs_pid = [instanceCopy rbs_pid];
    v23 = arc4random();
    if (v23 <= rbs_pid)
    {
      v24 = rbs_pid;
    }

    else
    {
      v24 = v23;
    }

    v20->_data = ((flagsCopy != 0) << 63) | ((flagsCopy & 1) << 61) | (rbs_pid | (v24 << 32)) & 0x1FFFFFFFFFFFFFFFLL | 0x4000000000000000;
    identity = [instanceCopy identity];
    identity = v20->_identity;
    v20->_identity = identity;

    v20->_pid = [instanceCopy rbs_pid];
    if (tokenCopy)
    {
      [tokenCopy realToken];
    }

    else
    {
      memset(&v36, 0, sizeof(v36));
    }

    v20->_euid = audit_token_to_euid(&v36);
    if (objc_opt_class())
    {
      v27 = MEMORY[0x1E698E628];
      if (tokenCopy)
      {
        [tokenCopy realToken];
      }

      else
      {
        memset(&v36, 0, sizeof(v36));
      }

      v28 = [v27 tokenFromAuditToken:&v36];
      bsAuditToken = v20->_bsAuditToken;
      v20->_bsAuditToken = v28;
    }

    v30 = [RBSProcessBundle bundleWithDataSource:dataCopy, *v36.val, *&v36.val[4]];
    bundle = v20->_bundle;
    v20->_bundle = v30;

    if (cache)
    {
      v32 = [RBSProcessHandle _cacheHandle:v20];
    }

    v33 = objc_alloc_init(RBSXPCCoder);
    [(RBSProcessHandle *)v20 _fullEncode:v33];
    createMessage = [(RBSXPCCoder *)v33 createMessage];
    codedHandle = v20->_codedHandle;
    v20->_codedHandle = createMessage;
  }

  return v20;
}

- (id)currentStateMatchingDescriptor:(id)descriptor
{
  if ((self->_data & 0x4000000000000000) != 0)
  {
    descriptorCopy = descriptor;
    v6 = +[RBSConnection sharedInstance];
    processPredicate = [(RBSProcessHandle *)self processPredicate];
    v8 = [v6 statesForPredicate:processPredicate withDescriptor:descriptorCopy error:0];

    firstObject = [v8 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)handleForKey:(unint64_t)key fetchIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v18 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  v7 = [RBSProcessHandle _cachedHandleForKey:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !neededCopy;
  }

  if (!v8)
  {
    v9 = +[RBSConnection sharedInstance];
    v10 = [v9 handleForKey:v6];

    v11 = rbs_process_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218242;
      keyCopy = key;
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

- (void)fullEncode:(id)encode forKey:(id)key
{
  v6 = MEMORY[0x1E696AF00];
  keyCopy = key;
  encodeCopy = encode;
  currentThread = [v6 currentThread];
  threadDictionary = [currentThread threadDictionary];

  [threadDictionary setObject:MEMORY[0x1E695E118] forKey:@"RBSProcessHandleFullEncode"];
  [encodeCopy encodeObject:self forKey:keyCopy];

  [threadDictionary removeObjectForKey:@"RBSProcessHandleFullEncode"];
}

+ (id)handleForLegacyHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  if (objc_opt_class())
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(handleCopy, "pid")}];
    v8 = [RBSProcessHandle handleForIdentifier:v7 error:error];

    if (v8)
    {
      objc_storeStrong(v8 + 3, handle);
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
    selfCopy = self;
    objc_sync_enter(selfCopy);
    legacyHandle = selfCopy->_legacyHandle;
    if (!legacyHandle)
    {
      v5 = [MEMORY[0x1E698E748] processHandleForAuditToken:selfCopy->_bsAuditToken];
      v6 = selfCopy->_legacyHandle;
      selfCopy->_legacyHandle = v5;

      legacyHandle = selfCopy->_legacyHandle;
    }

    v7 = legacyHandle;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)observeForImminentAssertionsExpiration:(id)expiration
{
  expirationCopy = expiration;
  if (!expirationCopy)
  {
    +[RBSProcessHandle observeForImminentAssertionsExpiration:];
  }

  v4 = +[RBSConnection sharedInstance];
  v5 = [(RBSConnection *)v4 observeProcessAssertionsExpirationWarningWithBlock:expirationCopy];

  return v5;
}

- (BOOL)matchesProcess:(id)process
{
  processCopy = process;
  v5 = processCopy;
  if (self == processCopy)
  {
    v7 = 1;
  }

  else if ([(RBSProcessHandle *)processCopy rbs_pid]== -1)
  {
    identity = self->_identity;
    identity = [(RBSProcessHandle *)v5 identity];
    v7 = [(RBSProcessIdentity *)identity isEqual:identity];
  }

  else
  {
    pid = self->_pid;
    v7 = pid == [(RBSProcessHandle *)v5 rbs_pid];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(RBSProcessHandle *)self matchesProcess:equalCopy];
  }

  return v6;
}

- (NSString)debugDescription
{
  if ((self->_data & 0x4000000000000000) != 0)
  {
    identity = [(RBSProcessHandle *)self identity];
    auid = [identity auid];

    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [objc_opt_class() description];
    shortDescription = [(RBSProcessIdentity *)self->_identity shortDescription];
    shortDescription2 = shortDescription;
    pid = self->_pid;
    if (auid)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:auid];
      v13 = [v9 initWithFormat:@"<%@| %@:%d%@%@%@>", v4, shortDescription2, pid, @"(", v12, @")"];

      goto LABEL_7;
    }

    v6 = [v9 initWithFormat:@"<%@| %@:%d%@%@%@>", v4, shortDescription, pid, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0];
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [objc_opt_class() description];
    shortDescription2 = [(RBSProcessIdentity *)self->_identity shortDescription];
    v6 = [v3 initWithFormat:@"<%@| inert %@>", v4, shortDescription2, v15, v16, v17, v18];
  }

  v13 = v6;
LABEL_7:

  return v13;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v7 = [threadDictionary objectForKey:@"RBSProcessHandleFullEncode"];

  if (v7 || (self->_data & 0x4000000000000000) == 0)
  {
    [(RBSProcessHandle *)self _fullEncode:coderCopy];
  }

  else
  {
    v8 = rbs_process_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(RBSProcessHandle *)&self->_data encodeWithRBSXPCCoder:v8];
    }

    [coderCopy encodeUInt64:self->_data & 0x1FFFFFFFFFFFFFFFLL forKey:@"&"];
  }
}

- (RBSProcessHandle)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeUInt64ForKey:@"&"];
  if (v5)
  {
    v6 = v5;
    v7 = rbs_process_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(RBSProcessHandle *)v6 initWithRBSXPCCoder:v7];
    }

    selfCopy = [RBSProcessHandle handleForKey:v6 fetchIfNeeded:1];
  }

  else
  {
    v9 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_codedHandle"];
    if (v9)
    {
      v10 = [RBSXPCCoder coderWithMessage:v9];

      coderCopy = v10;
    }

    v22.receiver = self;
    v22.super_class = RBSProcessHandle;
    v11 = [(RBSProcessHandle *)&v22 init];
    if (v11)
    {
      v11->_data = [coderCopy decodeUInt64ForKey:@"_data"];
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identity"];
      identity = v11->_identity;
      v11->_identity = v12;

      if (!v11->_identity)
      {
        [RBSProcessHandle initWithRBSXPCCoder:];
      }

      v11->_pid = [coderCopy decodeUInt64ForKey:@"_pid"];
      if (objc_opt_class())
      {
        v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bsAuditToken"];
        bsAuditToken = v11->_bsAuditToken;
        v11->_bsAuditToken = v14;
      }

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundle"];
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

    selfCopy = self;
  }

  return selfCopy;
}

- (void)_fullEncode:(uint64_t)encode
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (encode)
  {
    v5 = *(encode + 32);
    if (v5)
    {
      [v3 encodeObject:v5 forKey:@"_codedHandle"];
    }

    else
    {
      v6 = rbs_general_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(encode + 48);
        v8 = *(encode + 64);
        v11 = 138412802;
        encodeCopy = encode;
        v13 = 2048;
        v14 = v7;
        v15 = 1024;
        v16 = v8;
        _os_log_impl(&dword_18E8AD000, v6, OS_LOG_TYPE_DEFAULT, "Full encoding handle %@, with data %llx, and pid %d", &v11, 0x1Cu);
      }

      [v4 encodeObject:*(encode + 72) forKey:@"_identity"];
      [v4 encodeUInt64:*(encode + 64) forKey:@"_pid"];
      if (objc_opt_class())
      {
        [v4 encodeObject:*(encode + 40) forKey:@"_bsAuditToken"];
      }

      [v4 encodeObject:*(encode + 80) forKey:@"_bundle"];
      v9 = *(encode + 48);
      if (v9)
      {
        [v4 encodeUInt64:v9 forKey:@"_data"];
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (_DWORD)_initWithIdentity:(void *)identity beforeTranslocationBundlePath:(void *)path executablePath:
{
  v8 = a2;
  identityCopy = identity;
  pathCopy = path;
  if (self)
  {
    if (!v8)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithIdentity_beforeTranslocationBundlePath_executablePath_ object:self file:@"RBSProcessHandle.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"identity"}];
    }

    v14.receiver = self;
    v14.super_class = RBSProcessHandle;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    self = v11;
    if (v11)
    {
      *(v11 + 6) = 0;
      objc_storeStrong(v11 + 9, a2);
      self[16] = -1;
    }
  }

  return self;
}

- (RBSProcessHandle)initWithLaunchContext:(id)context
{
  contextCopy = context;
  identity = [contextCopy identity];
  beforeTranslocationBundlePath = [contextCopy beforeTranslocationBundlePath];
  _overrideExecutablePath = [contextCopy _overrideExecutablePath];

  v8 = [(RBSProcessHandle *)self _initWithIdentity:identity beforeTranslocationBundlePath:beforeTranslocationBundlePath executablePath:_overrideExecutablePath];
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