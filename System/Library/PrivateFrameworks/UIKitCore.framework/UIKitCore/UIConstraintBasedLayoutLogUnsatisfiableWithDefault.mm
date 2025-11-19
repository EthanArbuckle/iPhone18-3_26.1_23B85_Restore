@interface UIConstraintBasedLayoutLogUnsatisfiableWithDefault
@end

@implementation UIConstraintBasedLayoutLogUnsatisfiableWithDefault

void ___UIConstraintBasedLayoutLogUnsatisfiableWithDefault_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  byte_1ED4981AD = *(a1 + 32);
  v2 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v2)
  {
    v3 = [v2 BOOLValue];
    byte_1ED4981AD = v3;
  }

  else
  {
    v3 = byte_1ED4981AD;
  }

  if (v3 != *(a1 + 32))
  {
    v4 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &qword_1ED498210) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = @"OFF";
      if (byte_1ED4981AD)
      {
        v5 = @"ON";
      }

      v6 = 138412546;
      v7 = @"_UIConstraintBasedLayoutLogUnsatisfiable";
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%@ is %@", &v6, 0x16u);
    }
  }
}

@end