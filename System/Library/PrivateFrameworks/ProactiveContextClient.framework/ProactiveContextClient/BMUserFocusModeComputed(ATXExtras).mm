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
  updateSource = [self updateSource];
  if (updateSource < 4)
  {
    return off_279AB8900[updateSource];
  }

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(BMUserFocusModeComputed(ATXExtras) *)self modeUpdateSourceAsString];
  }

  return @"Unknown";
}

- (__CFString)modeUpdateReasonAsString
{
  updateReason = [self updateReason];
  if (updateReason < 4)
  {
    return off_279AB8920[updateReason];
  }

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(BMUserFocusModeComputed(ATXExtras) *)self modeUpdateReasonAsString];
  }

  return @"Unknown";
}

- (__CFString)modeSemanticTypeAsString
{
  v2 = [self semanticType] - 1;
  if (v2 < 0xB)
  {
    return off_279AB8940[v2];
  }

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(BMUserFocusModeComputed(ATXExtras) *)self modeSemanticTypeAsString];
  }

  return @"Unknown";
}

- (uint64_t)atx_dndModeSemanticType
{
  semanticType = [self semanticType];
  if (semanticType > 5)
  {
    if (semanticType > 8)
    {
      switch(semanticType)
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

    if (semanticType == 6)
    {
      return 4;
    }

    else if (semanticType == 7)
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
    if (semanticType <= 2)
    {
      switch(semanticType)
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
        [(BMUserFocusModeComputed(ATXExtras) *)self atx_dndModeSemanticType];
      }

      return 0;
    }

    if (semanticType == 3)
    {
      return 1;
    }

    else if (semanticType == 4)
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
  [self updateSource];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)modeUpdateReasonAsString
{
  v7 = *MEMORY[0x277D85DE8];
  [self updateReason];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)modeSemanticTypeAsString
{
  v7 = *MEMORY[0x277D85DE8];
  [self semanticType];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)atx_dndModeSemanticType
{
  v7 = *MEMORY[0x277D85DE8];
  [self semanticType];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

@end