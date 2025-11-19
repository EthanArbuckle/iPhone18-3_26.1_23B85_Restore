@interface UIHIDInputEventString
@end

@implementation UIHIDInputEventString

void _UIHIDInputEventString_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 != a4)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDTransformer", &_UIHIDInputEventString_block_invoke_2___s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = _UIStateString[a3];
        v11 = _UIHIDInputEventString[a5];
        v12 = _UIStateString[a4];
        v13 = 138412802;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "State Transition: %@[%@] -> %@", &v13, 0x20u);
      }
    }
  }
}

@end