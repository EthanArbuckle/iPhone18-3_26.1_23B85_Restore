@interface BSSettings
@end

@implementation BSSettings

void __64__BSSettings_SBUISystemAperture__SBUI_systemApertureDescription__block_invoke(uint64_t a1)
{
  v2 = 3213009;
  v3 = 53;
  do
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) objectForSetting:v2];
    v6 = SBUISystemApertureSettingKeyValueDescription(v5, v2);
    v7 = SBUISystemApertureSettingKeyDescription(v2);
    v8 = [v4 appendObject:v6 withName:v7 skipIfNil:1];

    ++v2;
    --v3;
  }

  while (v3);
}

void __83__BSSettings_SBUISystemAperture__SBUI_systemApertureDescriptionOfDiffFromSettings___block_invoke(uint64_t a1)
{
  v2 = 3213009;
  v3 = 53;
  do
  {
    v4 = [*(a1 + 32) objectForSetting:v2];
    v5 = [*(a1 + 40) objectForSetting:v2];
    if ((BSEqualObjects() & 1) == 0)
    {
      v6 = *(a1 + 48);
      v7 = SBUISystemApertureSettingKeyValueDescription(v4, v2);
      v8 = SBUISystemApertureSettingKeyDescription(v2);
      v9 = [v6 appendObject:v7 withName:v8 skipIfNil:0];

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    ++v2;
    --v3;
  }

  while (v3);
}

@end