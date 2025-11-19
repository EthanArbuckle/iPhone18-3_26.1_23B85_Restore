@interface SBSystemActionSimplePreviewElement
- (BOOL)shouldSuppressElementWhilePresentingAppWithBundleId:(id)a3;
- (SBSystemActionSimplePreviewElement)initWithSystemAction:(id)a3;
- (SBSystemActionSimplePreviewElement)initWithSystemAction:(id)a3 contentProvider:(id)a4 keyColor:(id)a5;
- (uint64_t)systemAction;
- (void)setKeyColor:(uint64_t)a1;
@end

@implementation SBSystemActionSimplePreviewElement

- (SBSystemActionSimplePreviewElement)initWithSystemAction:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [SBSystemActionSimplePreviewElement initWithSystemAction:a2];
  }

  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x277D67DF0]);
  v8 = [v6 configuredAction];
  v9 = [v8 leadingApertureView];
  if (!v9)
  {
    [(SBSystemActionSimplePreviewElement *)a2 initWithSystemAction:?];
  }

  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x277D67E10]) initWithView:v9];
  [v7 setLeadingContentViewProvider:v11];
  v12 = [v8 trailingApertureView];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277D75D18]);
    v14 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  v16 = v14;

  v17 = [objc_alloc(MEMORY[0x277D67E10]) initWithView:v16];
  [v7 setTrailingContentViewProvider:v17];
  v18 = [v10 keyColor];
  v19 = [(SBSystemActionSimplePreviewElement *)self initWithSystemAction:v6 contentProvider:v7 keyColor:v18];

  return v19;
}

- (SBSystemActionSimplePreviewElement)initWithSystemAction:(id)a3 contentProvider:(id)a4 keyColor:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    [SBSystemActionSimplePreviewElement initWithSystemAction:a2 contentProvider:? keyColor:?];
  }

  v13 = v12;
  v14 = [v10 configuredAction];
  v15 = [v14 identifier];

  v16 = [v15 componentsSeparatedByString:@"."];
  v17 = [v16 lastObject];
  v18 = [@"SBSystemAction-" stringByAppendingString:v17];

  v19 = [SBSAElementIdentification alloc];
  v20 = [v10 hostBundleIdentifier];
  v21 = [(SBSAElementIdentification *)v19 initWithClientIdentifier:v20 elementIdentifier:v18];

  v25.receiver = self;
  v25.super_class = SBSystemActionSimplePreviewElement;
  v22 = [(SBSystemApertureProvidedContentElement *)&v25 initWithIdentifier:v21 contentProvider:v11];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_keyColor, a5);
    objc_storeStrong(&v23->_systemAction, a3);
    [(SBSystemApertureProvidedContentElement *)v23 setMinimumSupportedLayoutMode:1];
    [(SBSystemApertureProvidedContentElement *)v23 setMaximumSupportedLayoutMode:2];
    [(SBSystemApertureProvidedContentElement *)v23 setPreferredLayoutMode:2];
  }

  return v23;
}

- (BOOL)shouldSuppressElementWhilePresentingAppWithBundleId:(id)a3
{
  v4 = a3;
  v5 = [(SBSystemApertureProvidedContentElement *)self clientIdentifier];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (void)setKeyColor:(uint64_t)a1
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1 && (BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong((a1 + 168), a2);
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = @"SBSystemApertureNotificationUserInfoElementKey";
    v8[0] = a1;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v5 postNotificationName:@"SBSystemApertureElementKeyColorDidInvalidateNotification" object:0 userInfo:v6];
  }
}

- (uint64_t)systemAction
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

- (void)initWithSystemAction:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"A leading view should be provided for this action"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
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
    v15 = @"SBSystemActionSimplePreviewElement.m";
    v16 = 1024;
    v17 = 42;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSystemAction:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"systemAction != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBSystemActionSimplePreviewElement.m";
    v9 = 1024;
    v10 = 37;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSystemAction:(const char *)a1 contentProvider:keyColor:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"systemAction != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBSystemActionSimplePreviewElement.m";
    v9 = 1024;
    v10 = 54;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end