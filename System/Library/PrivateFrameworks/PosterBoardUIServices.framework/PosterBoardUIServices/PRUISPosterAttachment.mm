@interface PRUISPosterAttachment
+ (id)attachmentWithImage:(id)image level:(int64_t)level;
+ (id)attachmentWithView:(id)view level:(int64_t)level;
- (int64_t)compare:(id)compare;
@end

@implementation PRUISPosterAttachment

+ (id)attachmentWithImage:(id)image level:(int64_t)level
{
  if (image)
  {
    v6 = MEMORY[0x1E69DCAE0];
    imageCopy = image;
    v8 = [[v6 alloc] initWithImage:imageCopy];

    [v8 sizeToFit];
    v9 = [self attachmentWithView:v8 level:level];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)attachmentWithView:(id)view level:(int64_t)level
{
  viewCopy = view;
  if (PUIPosterLevelIsDefined())
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = NSStringFromPUIPosterLevel();
    v14 = [v12 stringWithFormat:@"Level %lu is already in-use as %@", level, v13];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(PRUISPosterAttachment *)a2 attachmentWithView:self level:v14];
    }

    [v14 UTF8String];
    result = _bs_set_crash_log_message();
    __break(0);
  }

  else
  {
    if (viewCopy)
    {
      superview = [viewCopy superview];

      if (superview)
      {
        [PRUISPosterAttachment attachmentWithView:a2 level:?];
      }

      v10 = objc_alloc_init(PRUISPosterAttachment);
      objc_storeStrong(&v10->_view, view);
      v10->_level = level;
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }

  return result;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (!compareCopy)
  {
    [PRUISPosterAttachment compare:a2];
  }

  level = self->_level;
  v7 = compareCopy[2];
  v8 = level == v7;
  v9 = level < v7;
  v10 = -1;
  if (!v9)
  {
    v10 = 1;
  }

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

+ (void)attachmentWithView:(const char *)a1 level:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[view superview] == nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"PRUISPosterAttachment.m";
    v9 = 1024;
    v10 = 37;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)attachmentWithView:(uint64_t)a3 level:.cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"PRUISPosterAttachment.m";
  v16 = 1024;
  v17 = 30;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

- (void)compare:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"other"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"PRUISPosterAttachment.m";
    v9 = 1024;
    v10 = 47;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end