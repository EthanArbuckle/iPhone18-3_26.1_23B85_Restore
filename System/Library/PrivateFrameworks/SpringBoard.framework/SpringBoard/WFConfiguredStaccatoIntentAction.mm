@interface WFConfiguredStaccatoIntentAction
- (id)sb_focusModeIdentifier;
- (void)sb_accessibilityTripleClickState;
- (void)sb_focusModeIdentifier;
- (void)sb_getCameraCaptureMode:(void *)mode andCaptureDevice:;
@end

@implementation WFConfiguredStaccatoIntentAction

- (void)sb_accessibilityTripleClickState
{
  templateParameterValues = [self templateParameterValues];
  v6 = [templateParameterValues objectForKey:*MEMORY[0x277CE79B0]];

  identifier = [v6 identifier];
  intValue = [identifier intValue];

  *a2 = [MEMORY[0x277CE7E70] stateForTripleClickOption:intValue];
}

- (id)sb_focusModeIdentifier
{
  if (self)
  {
    selfCopy = self;
    sectionIdentifier = [self sectionIdentifier];
    v3 = [sectionIdentifier isEqualToString:@"Focus"];

    if ((v3 & 1) == 0)
    {
      [(WFConfiguredStaccatoIntentAction *)sel_sb_focusModeIdentifier sb_focusModeIdentifier];
    }

    [(WFConfiguredStaccatoIntentAction *)selfCopy sb_focusModeIdentifier];
    self = v5;
  }

  return self;
}

- (void)sb_getCameraCaptureMode:(void *)mode andCaptureDevice:
{
  if (self)
  {
    sectionIdentifier = [self sectionIdentifier];
    v7 = [sectionIdentifier isEqualToString:@"Camera"];

    if ((v7 & 1) == 0)
    {
      [WFConfiguredStaccatoIntentAction sb_getCameraCaptureMode:? andCaptureDevice:?];
    }

    [(WFConfiguredStaccatoIntentAction *)self sb_getCameraCaptureMode:a2 andCaptureDevice:mode];
  }
}

- (void)sb_focusModeIdentifier
{
  templateParameterValues = [self templateParameterValues];
  v3 = [templateParameterValues objectForKey:@"focus"];
  *a2 = [v3 identifier];
}

- (void)sb_getCameraCaptureMode:(const char *)a1 andCaptureDevice:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Only query this on the Camera action"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4_2(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sb_getCameraCaptureMode:(void *)a3 andCaptureDevice:.cold.2(void *a1, uint64_t *a2, void *a3)
{
  v5 = [a1 templateParameterValues];
  v6 = [v5 objectForKey:@"cameraMode"];
  v9 = [v6 identifier];

  if ([v9 hasSuffix:@"Video"])
  {
    v7 = 1;
  }

  else if ([v9 hasSuffix:@"Portrait"])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v9 hasPrefix:@"front"];
  *a2 = v7;
  *a3 = v8 ^ 1u;
}

@end