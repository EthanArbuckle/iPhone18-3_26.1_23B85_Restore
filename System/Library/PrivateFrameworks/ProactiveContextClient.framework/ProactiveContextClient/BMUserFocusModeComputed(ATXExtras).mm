@interface BMUserFocusModeComputed(ATXExtras)
- (__CFString)modeSemanticTypeAsString;
- (__CFString)modeUpdateReasonAsString;
- (__CFString)modeUpdateSourceAsString;
- (uint64_t)atx_dndModeSemanticType;
- (void)atx_dndModeSemanticType;
- (void)modeSemanticTypeAsString;
- (void)modeUpdateReasonAsString;
- (void)modeUpdateSourceAsString;
@end

@implementation BMUserFocusModeComputed(ATXExtras)

- (__CFString)modeUpdateSourceAsString
{
  v2 = [a1 updateSource];
  if (v2 < 4)
  {
    return off_279AB8900[v2];
  }

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(BMUserFocusModeComputed(ATXExtras) *)a1 modeUpdateSourceAsString];
  }

  return @"Unknown";
}

- (__CFString)modeUpdateReasonAsString
{
  v2 = [a1 updateReason];
  if (v2 < 4)
  {
    return off_279AB8920[v2];
  }

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(BMUserFocusModeComputed(ATXExtras) *)a1 modeUpdateReasonAsString];
  }

  return @"Unknown";
}

- (__CFString)modeSemanticTypeAsString
{
  v2 = [a1 semanticType] - 1;
  if (v2 < 0xB)
  {
    return off_279AB8940[v2];
  }

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(BMUserFocusModeComputed(ATXExtras) *)a1 modeSemanticTypeAsString];
  }

  return @"Unknown";
}

- (uint64_t)atx_dndModeSemanticType
{
  v2 = [a1 semanticType];
  if (v2 > 5)
  {
    if (v2 > 8)
    {
      switch(v2)
      {
        case 9:
          return 7;
        case 10:
          return 8;
        case 11:
          return 9;
      }

      goto LABEL_28;
    }

    if (v2 == 6)
    {
      return 4;
    }

    else if (v2 == 7)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    if (v2 <= 2)
    {
      switch(v2)
      {
        case 0:
          v4 = __atxlog_handle_modes();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
          {
            [(BMUserFocusModeComputed(ATXExtras) *)v4 atx_dndModeSemanticType];
          }

          return 0;
        case 1:
          return -1;
        case 2:
          return 0;
      }

LABEL_28:
      v5 = __atxlog_handle_modes();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(BMUserFocusModeComputed(ATXExtras) *)a1 atx_dndModeSemanticType];
      }

      return 0;
    }

    if (v2 == 3)
    {
      return 1;
    }

    else if (v2 == 4)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

- (void)modeUpdateSourceAsString
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 updateSource];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)modeUpdateReasonAsString
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 updateReason];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)modeSemanticTypeAsString
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 semanticType];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)atx_dndModeSemanticType
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 semanticType];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

@end