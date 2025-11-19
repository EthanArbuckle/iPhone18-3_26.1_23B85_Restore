@interface _UIViewServiceNSXPCConnectionDelegate
- (_UIViewServiceNSXPCConnectionDelegate)init;
- (_UIViewServiceNSXPCConnectionDelegate)initWithCallOutQueue:(id)a3 replyHandler:(id)a4;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
@end

@implementation _UIViewServiceNSXPCConnectionDelegate

- (_UIViewServiceNSXPCConnectionDelegate)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is not allowed", "-[_UIViewServiceNSXPCConnectionDelegate init]"];
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
    v14 = self;
    v15 = 2114;
    v16 = @"_UIViewServiceNSXPCConnectionDelegate.m";
    v17 = 1024;
    v18 = 21;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (_UIViewServiceNSXPCConnectionDelegate)initWithCallOutQueue:(id)a3 replyHandler:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = _UIViewServiceNSXPCConnectionDelegate;
  v10 = [(_UIViewServiceNSXPCConnectionDelegate *)&v19 init];
  v11 = v10;
  if (v10)
  {
    if (!v8)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"callOutQueue"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(a2);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138544642;
        v21 = v16;
        v22 = 2114;
        v23 = v18;
        v24 = 2048;
        v25 = v11;
        v26 = 2114;
        v27 = @"_UIViewServiceNSXPCConnectionDelegate.m";
        v28 = 1024;
        v29 = 28;
        v30 = 2114;
        v31 = v15;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v15 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189A82DE4);
    }

    objc_storeStrong(&v10->_callOutQueue, a3);
    v12 = _Block_copy(v9);
    replyHandler = v11->_replyHandler;
    v11->_replyHandler = v12;
  }

  return v11;
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!v5 || (replyHandler = self->_replyHandler) == 0 || (replyHandler[2](replyHandler, v9) & 1) == 0)
  {
    [v9 retainArguments];
    callOutQueue = self->_callOutQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77___UIViewServiceNSXPCConnectionDelegate_connection_handleInvocation_isReply___block_invoke;
    v12[3] = &unk_1E70F3590;
    v13 = v9;
    [(BSServiceQueue *)callOutQueue performAsync:v12];
  }
}

@end