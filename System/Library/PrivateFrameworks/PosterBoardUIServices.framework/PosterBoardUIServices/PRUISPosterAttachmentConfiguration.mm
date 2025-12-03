@interface PRUISPosterAttachmentConfiguration
+ (id)attachmentConfigurationWithHostWindowScene:(id)scene attachments:(id)attachments;
- (BOOL)isEqual:(id)equal;
- (PRUISPosterAttachmentConfiguration)init;
- (unint64_t)hash;
- (void)setAttachments:(id)attachments;
@end

@implementation PRUISPosterAttachmentConfiguration

+ (id)attachmentConfigurationWithHostWindowScene:(id)scene attachments:(id)attachments
{
  sceneCopy = scene;
  attachmentsCopy = attachments;
  v8 = sceneCopy;
  NSClassFromString(&cfstr_Uiwindowscene.isa);
  if (!v8)
  {
    [PRUISPosterAttachmentConfiguration attachmentConfigurationWithHostWindowScene:a2 attachments:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRUISPosterAttachmentConfiguration attachmentConfigurationWithHostWindowScene:a2 attachments:?];
  }

  v9 = attachmentsCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = equalCopy;
    attachmentHostWindowScene = [v7 attachmentHostWindowScene];
    attachmentHostWindowScene2 = [(PRUISPosterAttachmentConfiguration *)self attachmentHostWindowScene];
    if ([attachmentHostWindowScene isEqual:attachmentHostWindowScene2])
    {
      attachments = [v7 attachments];
      attachments2 = [(PRUISPosterAttachmentConfiguration *)self attachments];
      v12 = [attachments isEqualToArray:attachments2];
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

- (void)setAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  attachments = self->_attachments;
  p_attachments = &self->_attachments;
  v8 = attachmentsCopy;
  if (([attachmentsCopy isEqualToArray:attachments] & 1) == 0)
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
  builder = [MEMORY[0x1E698E6B8] builder];
  attachments = [(PRUISPosterAttachmentConfiguration *)self attachments];
  v5 = [builder appendObject:attachments];

  attachmentHostWindowScene = [(PRUISPosterAttachmentConfiguration *)self attachmentHostWindowScene];
  v7 = [builder appendObject:attachmentHostWindowScene];

  v8 = [builder hash];
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