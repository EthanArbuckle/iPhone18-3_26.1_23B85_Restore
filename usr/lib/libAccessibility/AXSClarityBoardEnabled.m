@interface AXSClarityBoardEnabled
@end

@implementation AXSClarityBoardEnabled

void ___AXSClarityBoardEnabled_block_invoke()
{
  v0 = _AXSClarityBoardEnabledDirectory();
  v1 = [v0 path];
  v2 = [v1 stringByAppendingPathComponent:@"ClarityBoardEnabled"];

  if (!v2)
  {
    v4 = CLFLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      ___AXSClarityBoardEnabled_block_invoke_cold_2();
    }

    goto LABEL_9;
  }

  v3 = access([v2 cStringUsingEncoding:4], 0);
  _AXSClarityBoardEnabled_isEnabled = v3 == 0;
  if (v3 && (v3 != -1 || *__error() != 2))
  {
    v4 = CLFLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      ___AXSClarityBoardEnabled_block_invoke_cold_1(v2, v4);
    }

LABEL_9:
  }
}

void ___AXSClarityBoardEnabled_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = __error();
  v5 = strerror(*v4);
  v7 = 138412546;
  v8 = a1;
  v9 = 2080;
  v10 = v5;
  _os_log_fault_impl(&dword_186307000, a2, OS_LOG_TYPE_FAULT, "Unable to check whether file existed at %@. Error: %s", &v7, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end