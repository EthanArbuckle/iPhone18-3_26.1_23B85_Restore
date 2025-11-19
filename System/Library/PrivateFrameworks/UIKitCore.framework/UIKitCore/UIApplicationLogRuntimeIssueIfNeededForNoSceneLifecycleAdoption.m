@interface UIApplicationLogRuntimeIssueIfNeededForNoSceneLifecycleAdoption
@end

@implementation UIApplicationLogRuntimeIssueIfNeededForNoSceneLifecycleAdoption

void ___UIApplicationLogRuntimeIssueIfNeededForNoSceneLifecycleAdoption_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  if (!_UIIsPrivateMainBundle())
  {
    v1 = _UIApplicationConfigurationRuntimeIssuesLog();
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
LABEL_6:

      goto LABEL_7;
    }

    v3 = 136446210;
    v2 = "%{public}s required. Failure to adopt will result in an assert in the future.";
LABEL_9:
    _os_log_fault_impl(&dword_188A29000, v1, OS_LOG_TYPE_FAULT, v2, &v3, 0xCu);
    goto LABEL_6;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v1 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    v3 = 136315138;
    v2 = "CLIENT OF UIKIT REQUIRES UPDATE: %s a requirement (see rdar://141397555). This will become an assert in a future version.";
    goto LABEL_9;
  }

  v0 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49FFB8) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "CLIENT OF UIKIT REQUIRES UPDATE: %s a requirement (see rdar://141397555). This will become an assert in a future version.", &v3, 0xCu);
  }

LABEL_7:
  _MergedGlobals_1251 = 1;
}

@end