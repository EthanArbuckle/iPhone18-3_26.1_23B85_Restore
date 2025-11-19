@interface OS_tcc_object
- (void)dealloc;
@end

@implementation OS_tcc_object

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a1;
  v6 = 2080;
  ClassName = object_getClassName(a1);
  _os_log_debug_impl(&dword_1B1686000, a2, OS_LOG_TYPE_DEBUG, "disposing: %p(%s)", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end