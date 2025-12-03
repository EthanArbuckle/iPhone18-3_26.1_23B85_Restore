@interface _UICoreMediaOverridePIDManager
+ (id)sharedInstance;
- (_UICoreMediaOverridePIDManager)init;
- (id)acquireOverrideAssertionWithPID:(void *)d forReason:;
- (id)debugDescription;
- (id)succinctDescription;
- (void)evaluateActiveOverridePID;
@end

@implementation _UICoreMediaOverridePIDManager

+ (id)sharedInstance
{
  objc_opt_self();
  if (qword_1ED49D808 != -1)
  {
    dispatch_once(&qword_1ED49D808, &__block_literal_global_143);
  }

  v0 = _MergedGlobals_1054;

  return v0;
}

- (_UICoreMediaOverridePIDManager)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is not allowed", "-[_UICoreMediaOverridePIDManager init]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"_UICoreMediaOverridePIDManager.m";
    v17 = 1024;
    v18 = 47;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)acquireOverrideAssertionWithPID:(void *)d forReason:
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (self)
  {
    BSDispatchQueueAssertMain();
    if (a2 <= 0)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to acquire media override assertion for pid %d", a2];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(sel_acquireOverrideAssertionWithPID_forReason_);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *location = 138544642;
        *&location[4] = v12;
        v20 = 2114;
        v21 = v14;
        v22 = 2048;
        selfCopy = self;
        v24 = 2114;
        v25 = @"_UICoreMediaOverridePIDManager.m";
        v26 = 1024;
        v27 = 53;
        v28 = 2114;
        v29 = v11;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
      }

      v15 = v11;
      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189621448);
    }

    v6 = [[_UICoreMediaOverridePIDAssertionToken alloc] initWithPID:a2 reason:dCopy];
    objc_initWeak(location, self);
    v7 = objc_alloc(MEMORY[0x1E698E778]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76___UICoreMediaOverridePIDManager_acquireOverrideAssertionWithPID_forReason___block_invoke;
    v16[3] = &unk_1E71030A0;
    objc_copyWeak(&v18, location);
    v8 = v6;
    v17 = v8;
    v9 = [v7 initWithIdentifier:@"com.apple.UIKit._UICoreMediaOverridePIDManager" forReason:dCopy invalidationBlock:v16];
    [self[2] addObject:v8];
    [(_UICoreMediaOverridePIDManager *)self evaluateActiveOverridePID];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)evaluateActiveOverridePID
{
  v33 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  lastObject = [*(self + 16) lastObject];
  v24 = lastObject;
  if (lastObject)
  {
    if (*(self + 8) == lastObject[2])
    {
      goto LABEL_21;
    }

    v3 = lastObject;
    *(self + 8) = v24[2];
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  }

  else
  {
    if (*(self + 8) == -1)
    {
      goto LABEL_21;
    }

    v4 = 0;
    *(self + 8) = -1;
  }

  v5 = *(__UILogGetCategoryCachedImpl("UICoreMediaOverridePIDManager", &qword_1ED49D810) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    if (v24)
    {
      v7 = *(v24 + 2);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = v8;
    v10 = @"assertions invalidated";
    if (v8)
    {
      v10 = v8;
    }

    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Using %@ for core media override pid: %@", buf, 0x16u);
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v11 = qword_1ED49D820;
  v29 = qword_1ED49D820;
  if (!qword_1ED49D820)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAVSystemControllerClass_block_invoke;
    v31 = &unk_1E70F2F20;
    v32 = &v26;
    __getAVSystemControllerClass_block_invoke(buf);
    v11 = v27[3];
  }

  v12 = v11;
  _Block_object_dispose(&v26, 8);
  sharedAVSystemController = [v11 sharedAVSystemController];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v14 = qword_1ED49D828;
  v29 = qword_1ED49D828;
  if (!qword_1ED49D828)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAVSystemController_PIDToInheritApplicationStateFromSymbolLoc_block_invoke;
    v31 = &unk_1E70F2F20;
    v32 = &v26;
    v15 = MediaExperienceLibrary();
    v16 = dlsym(v15, "AVSystemController_PIDToInheritApplicationStateFrom");
    *(v32[1] + 24) = v16;
    qword_1ED49D828 = *(v32[1] + 24);
    v14 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_PIDToInheritApplicationStateFrom(void)"];
    [currentHandler handleFailureInFunction:v23 file:@"_UICoreMediaOverridePIDManager.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v17 = *v14;
  v25 = 0;
  v18 = v17;
  v19 = [sharedAVSystemController setAttribute:v4 forKey:v18 error:&v25];
  v20 = v25;

  if ((v19 & 1) == 0)
  {
    v21 = *(__UILogGetCategoryCachedImpl("UICoreMediaOverridePIDManager", &qword_1ED49D818) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v4;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Failed to inherit CoreMedia permissions from %@: %@", buf, 0x16u);
    }
  }

LABEL_21:
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end