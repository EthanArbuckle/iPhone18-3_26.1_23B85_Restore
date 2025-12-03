@interface _SBSSystemNotesCreateActionSettingsDescriptionProvider
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation _SBSSystemNotesCreateActionSettingsDescriptionProvider

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (!setting)
  {
    return @"createReason";
  }

  [_SBSSystemNotesCreateActionSettingsDescriptionProvider keyDescriptionForSetting:];
  return 0;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v7 = objectCopy;
  if (setting)
  {
    [_SBSSystemNotesCreateActionSettingsDescriptionProvider valueDescriptionForFlag:object:ofSetting:];
    v8 = @"-count-";
  }

  else
  {
    v8 = SBSSystemNotesCreateReasonDescription([objectCopy integerValue]);
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