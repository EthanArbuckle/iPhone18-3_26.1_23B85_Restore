@interface PLAutoBindingBlackholeProxy
- (void)forwardInvocation:(id)a3;
@end

@implementation PLAutoBindingBlackholeProxy

- (void)forwardInvocation:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector([v3 selector]);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Swallowing proxy invocation: %@ %@", &v6, 0x16u);
  }
}

@end