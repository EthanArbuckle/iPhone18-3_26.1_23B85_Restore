@interface WFConfiguredStaccatoIntentAction
- (id)sb_focusModeIdentifier;
- (void)sb_accessibilityTripleClickState;
- (void)sb_focusModeIdentifier;
- (void)sb_getCameraCaptureMode:(void *)a3 andCaptureDevice:;
@end

@implementation WFConfiguredStaccatoIntentAction

- (void)sb_accessibilityTripleClickState
{
  v3 = [a1 templateParameterValues];
  v6 = [v3 objectForKey:*MEMORY[0x277CE79B0]];

  v4 = [v6 identifier];
  v5 = [v4 intValue];

  *a2 = [MEMORY[0x277CE7E70] stateForTripleClickOption:v5];
}

- (id)sb_focusModeIdentifier
{
  if (a1)
  {
    v1 = a1;
    v2 = [a1 sectionIdentifier];
    v3 = [v2 isEqualToString:@"Focus"];

    if ((v3 & 1) == 0)
    {
      [(WFConfiguredStaccatoIntentAction *)sel_sb_focusModeIdentifier sb_focusModeIdentifier];
    }

    [(WFConfiguredStaccatoIntentAction *)v1 sb_focusModeIdentifier];
    a1 = v5;
  }

  return a1;
}

- (void)sb_getCameraCaptureMode:(void *)a3 andCaptureDevice:
{
  if (a1)
  {
    v6 = [a1 sectionIdentifier];
    v7 = [v6 isEqualToString:@"Camera"];

    if ((v7 & 1) == 0)
    {
      [WFConfiguredStaccatoIntentAction sb_getCameraCaptureMode:? andCaptureDevice:?];
    }

    [(WFConfiguredStaccatoIntentAction *)a1 sb_getCameraCaptureMode:a2 andCaptureDevice:a3];
  }
}

- (void)sb_focusModeIdentifier
{
  v4 = [a1 templateParameterValues];
  v3 = [v4 objectForKey:@"focus"];
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