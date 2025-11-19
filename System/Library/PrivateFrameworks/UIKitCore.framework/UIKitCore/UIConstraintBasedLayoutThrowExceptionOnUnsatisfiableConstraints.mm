@interface UIConstraintBasedLayoutThrowExceptionOnUnsatisfiableConstraints
@end

@implementation UIConstraintBasedLayoutThrowExceptionOnUnsatisfiableConstraints

void ___UIConstraintBasedLayoutThrowExceptionOnUnsatisfiableConstraints_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  byte_1ED4981AF = 0;
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v0)
  {
    v1 = [v0 BOOLValue];
    byte_1ED4981AF = v1;
    if (!v1)
    {
      return;
    }
  }

  else if ((byte_1ED4981AF & 1) == 0)
  {
    return;
  }

  v2 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &qword_1ED498230) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = @"OFF";
    if (byte_1ED4981AF)
    {
      v3 = @"ON";
    }

    v4 = 138412546;
    v5 = @"UIConstraintBasedLayoutThrowExceptionOnUnsatisfiableConstraints";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "%@ is %@", &v4, 0x16u);
  }
}

@end