@interface UIApplicationLogRuntimeIssueIfNeededForPadSpecificIssuesGivenInfo
@end

@implementation UIApplicationLogRuntimeIssueIfNeededForPadSpecificIssuesGivenInfo

void ___UIApplicationLogRuntimeIssueIfNeededForPadSpecificIssuesGivenInfo_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = _UIIsPrivateMainBundle();
  [UIApp isFrontBoard];
  v3 = objc_opt_new();
  if ([*(a1 + 32) uiRequiresFullScreenValue])
    v4 = {;
    [v3 addObject:v4];
  }

  if ((~[*(a1 + 32) supportedInterfaceOrientations] & 0x1E) != 0 && (objc_msgSend(UIApp, "isFrontBoard") & 1) == 0 && (_UIApplicationProcessIsDruid() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Support for all orientations will soon be required."];
    [v3 addObject:v5];
  }

  if ((([*(a1 + 32) usesSplashBoard] | v2) & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Launch screens will soon be required."];
    [v3 addObject:v6];
  }

  v7 = [v3 count];
  if (v7)
  {
    v8 = v7;
    if (v2)
    {
      v9 = "CLIENT OF UIKIT REQUIRES UPDATE: ";
    }

    else
    {
      v9 = "";
    }

    v10 = " (see rdar://141855982)";
    if (!v2)
    {
      v10 = "";
    }

    v11 = [MEMORY[0x1E696AD60] stringWithFormat:@"%sUpdate the Info.plist%s:", v9, v10];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___UIApplicationLogRuntimeIssueIfNeededForPadSpecificIssuesGivenInfo_block_invoke_2;
    v15[3] = &unk_1E711CBE8;
    v17 = v8;
    v18 = "";
    v12 = v11;
    v16 = v12;
    v19 = " ";
    [v3 enumerateObjectsUsingBlock:v15];
    v13 = _UIApplicationConfigurationRuntimeIssuesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = [v12 UTF8String];
      *buf = 136446210;
      v21 = v14;
      _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "%{public}s", buf, 0xCu);
    }
  }

  byte_1ED49FFA9 = 1;
}

uint64_t ___UIApplicationLogRuntimeIssueIfNeededForPadSpecificIssuesGivenInfo_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 1)
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu "], a3 + 1);
    v5 = [v6 UTF8String];
  }

  return [*(a1 + 32) appendFormat:@"%s%s%@", *(a1 + 56), v5, a2];
}

@end