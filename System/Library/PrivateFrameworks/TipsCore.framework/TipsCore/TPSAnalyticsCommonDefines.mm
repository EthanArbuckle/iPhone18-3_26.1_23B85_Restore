@interface TPSAnalyticsCommonDefines
+ (id)displayTypeStringForDisplayType:(unint64_t)type;
+ (id)experimentCampIDStringForCamp:(int64_t)camp;
+ (id)ineligibleReasonStringForReason:(int64_t)reason;
@end

@implementation TPSAnalyticsCommonDefines

+ (id)displayTypeStringForDisplayType:(unint64_t)type
{
  if (type > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E8101518[type];
  }
}

+ (id)ineligibleReasonStringForReason:(int64_t)reason
{
  if (ineligibleReasonStringForReason__onceToken != -1)
  {
    +[TPSAnalyticsCommonDefines ineligibleReasonStringForReason:];
  }

  v4 = ineligibleReasonStringForReason__reasonsToStringMapping;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = +[TPSLogger analytics];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(TPSAnalyticsCommonDefines *)reason ineligibleReasonStringForReason:v7];
    }

    v6 = @"unspecfied";
  }

  return v6;
}

void __61__TPSAnalyticsCommonDefines_ineligibleReasonStringForReason___block_invoke()
{
  v4[11] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F3F41BA8;
  v3[1] = &unk_1F3F41BC0;
  v4[0] = @"none";
  v4[1] = @"notificationSettingDisabled";
  v3[2] = &unk_1F3F41BD8;
  v3[3] = &unk_1F3F41BF0;
  v4[2] = @"configurationChanged";
  v4[3] = @"displayedOnOtherDevices";
  v3[4] = &unk_1F3F41C08;
  v3[5] = &unk_1F3F41C20;
  v4[4] = @"performedOutcome";
  v4[5] = @"preconditionChanged";
  v3[6] = &unk_1F3F41C38;
  v3[7] = &unk_1F3F41C50;
  v4[6] = @"absentEventObserved";
  v4[7] = @"deliveryInfoLifetimeExpired";
  v3[8] = &unk_1F3F41C68;
  v3[9] = &unk_1F3F41C80;
  v4[8] = @"suppressedByHoldoutCamp";
  v4[9] = @"userLanguageChanged";
  v3[10] = &unk_1F3F41C98;
  v4[10] = @"userKnew";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:11];
  v1 = ineligibleReasonStringForReason__reasonsToStringMapping;
  ineligibleReasonStringForReason__reasonsToStringMapping = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)experimentCampIDStringForCamp:(int64_t)camp
{
  v3 = @"unspecified";
  if (camp == 1)
  {
    v3 = @"allContent";
  }

  if (camp == 2)
  {
    return @"holdout";
  }

  else
  {
    return v3;
  }
}

+ (void)ineligibleReasonStringForReason:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_DEBUG, "Unknown ineligible reason: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end