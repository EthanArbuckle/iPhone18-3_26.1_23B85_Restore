@interface PLKLegibilityLabelView
- (void)setAttributedText:(id)text legibilityDescriptor:(id)descriptor;
@end

@implementation PLKLegibilityLabelView

- (void)setAttributedText:(id)text legibilityDescriptor:(id)descriptor
{
  textCopy = text;
  descriptorCopy = descriptor;
  if (!textCopy)
  {
    [PLKLegibilityLabelView setAttributedText:a2 legibilityDescriptor:?];
  }

  v9 = descriptorCopy;
  if (!descriptorCopy)
  {
    [PLKLegibilityLabelView setAttributedText:a2 legibilityDescriptor:?];
  }

  v10 = +[PLKLegibilityContentDataSource attributedStringContentDataSource];
  v11 = [v10 legibilityContentForObject:textCopy legibilityDescriptor:v9];
  v12.receiver = self;
  v12.super_class = PLKLegibilityLabelView;
  [(PLKLegibilityView *)&v12 setContent:v11];
}

- (void)setAttributedText:(const char *)a1 legibilityDescriptor:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"legibilityDescriptor"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PLKLegibilityView.m";
    v9 = 1024;
    v10 = 371;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21E5D5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setAttributedText:(const char *)a1 legibilityDescriptor:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"attributedText"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PLKLegibilityView.m";
    v9 = 1024;
    v10 = 370;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21E5D5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end