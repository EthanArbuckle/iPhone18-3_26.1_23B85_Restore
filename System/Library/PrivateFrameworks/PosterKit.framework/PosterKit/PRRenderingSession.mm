@interface PRRenderingSession
- (PRRenderingSession)initWithReason:(id)a3 invalidationBlock:(id)a4;
@end

@implementation PRRenderingSession

- (PRRenderingSession)initWithReason:(id)a3 invalidationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PRRenderingSession;
  v8 = [(PRRenderingSession *)&v16 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E698E778]) initWithIdentifier:@"RenderExtension" forReason:v6 invalidationBlock:v7];
    objc_storeStrong(&v8->_assertion, v9);
    v8->_timeRemaining = 5.0;
    v10 = dispatch_time(0, 5000000000);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__PRRenderingSession_initWithReason_invalidationBlock___block_invoke;
    v13[3] = &unk_1E7843070;
    v14 = v9;
    v15 = v6;
    v11 = v9;
    dispatch_after(v10, MEMORY[0x1E69E96A0], v13);
  }

  return v8;
}

uint64_t __55__PRRenderingSession_initWithReason_invalidationBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isValid];
  if (result)
  {
    v3 = PRLogRendering();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__PRRenderingSession_initWithReason_invalidationBlock___block_invoke_cold_1(a1, v3);
    }

    return [*(a1 + 32) invalidate];
  }

  return result;
}

void __55__PRRenderingSession_initWithReason_invalidationBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_ERROR, "Rendering extension timed-out: %@", &v3, 0xCu);
}

@end