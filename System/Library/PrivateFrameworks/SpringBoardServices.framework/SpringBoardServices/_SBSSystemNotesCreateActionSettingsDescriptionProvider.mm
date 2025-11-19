@interface _SBSSystemNotesCreateActionSettingsDescriptionProvider
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
@end

@implementation _SBSSystemNotesCreateActionSettingsDescriptionProvider

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (!a3)
  {
    return @"createReason";
  }

  [_SBSSystemNotesCreateActionSettingsDescriptionProvider keyDescriptionForSetting:];
  return 0;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v6 = a4;
  v7 = v6;
  if (a5)
  {
    [_SBSSystemNotesCreateActionSettingsDescriptionProvider valueDescriptionForFlag:object:ofSetting:];
    v8 = @"-count-";
  }

  else
  {
    v8 = SBSSystemNotesCreateReasonDescription([v6 integerValue]);
  }

  return v8;
}

- (void)keyDescriptionForSetting:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"setting < SBSSystemNotesCreateActionSettingsKeyCount" object:? file:? lineNumber:? description:?];
}

- (void)valueDescriptionForFlag:object:ofSetting:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"setting < SBSSystemNotesCreateActionSettingsKeyCount" object:? file:? lineNumber:? description:?];
}

@end