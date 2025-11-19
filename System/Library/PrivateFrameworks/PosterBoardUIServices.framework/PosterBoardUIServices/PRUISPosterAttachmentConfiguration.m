@interface PRUISPosterAttachmentConfiguration
+ (id)attachmentConfigurationWithHostWindowScene:(id)a3 attachments:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PRUISPosterAttachmentConfiguration)init;
- (unint64_t)hash;
- (void)setAttachments:(id)a3;
@end

@implementation PRUISPosterAttachmentConfiguration

+ (id)attachmentConfigurationWithHostWindowScene:(id)a3 attachments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  NSClassFromString(&cfstr_Uiwindowscene.isa);
  if (!v8)
  {
    [PRUISPosterAttachmentConfiguration attachmentConfigurationWithHostWindowScene:a2 attachments:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRUISPosterAttachmentConfiguration attachmentConfigurationWithHostWindowScene:a2 attachments:?];
  }

  v9 = v7;
  NSClassFromString(&cfstr_Nsarray.isa);
  if (!v9)
  {
    [PRUISPosterAttachmentConfiguration attachmentConfigurationWithHostWindowScene:a2 attachments:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRUISPosterAttachmentConfiguration attachmentConfigurationWithHostWindowScene:a2 attachments:?];
  }

  v10 = objc_alloc_init(PRUISPosterAttachmentConfiguration);
  [(PRUISPosterAttachmentConfiguration *)v10 setAttachments:v9];
  [(PRUISPosterAttachmentConfiguration *)v10 setAttachmentHostWindowScene:v8];

  return v10;
}

- (PRUISPosterAttachmentConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PRUISPosterAttachmentConfiguration;
  return [(PRUISPosterAttachmentConfiguration *)&v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = v4;
    v8 = [v7 attachmentHostWindowScene];
    v9 = [(PRUISPosterAttachmentConfiguration *)self attachmentHostWindowScene];
    if ([v8 isEqual:v9])
    {
      v10 = [v7 attachments];
      v11 = [(PRUISPosterAttachmentConfiguration *)self attachments];
      v12 = [v10 isEqualToArray:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setAttachments:(id)a3
{
  v4 = a3;
  attachments = self->_attachments;
  p_attachments = &self->_attachments;
  v8 = v4;
  if (([v4 isEqualToArray:attachments] & 1) == 0)
  {
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(p_attachments, v7);
  }
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(PRUISPosterAttachmentConfiguration *)self attachments];
  v5 = [v3 appendObject:v4];

  v6 = [(PRUISPosterAttachmentConfiguration *)self attachmentHostWindowScene];
  v7 = [v3 appendObject:v6];

  v8 = [v3 hash];
  return v8;
}

+ (void)attachmentConfigurationWithHostWindowScene:(char *)a1 attachments:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:UIWindowSceneClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)attachmentConfigurationWithHostWindowScene:(char *)a1 attachments:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)attachmentConfigurationWithHostWindowScene:(char *)a1 attachments:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)attachmentConfigurationWithHostWindowScene:(char *)a1 attachments:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end