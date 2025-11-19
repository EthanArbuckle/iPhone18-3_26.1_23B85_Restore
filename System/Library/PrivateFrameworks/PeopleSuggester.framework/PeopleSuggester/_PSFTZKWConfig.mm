@interface _PSFTZKWConfig
+ (BOOL)onNonUIBuild;
+ (BOOL)useBlendingLayer;
- (_PSFTZKWConfig)init;
- (_PSFTZKWConfig)initWithTrialData:(id)a3;
@end

@implementation _PSFTZKWConfig

+ (BOOL)useBlendingLayer
{
  if ([objc_opt_class() onNonUIBuild])
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

+ (BOOL)onNonUIBuild
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = getMGCopyAnswerSymbolLoc_ptr;
  v12 = getMGCopyAnswerSymbolLoc_ptr;
  if (!getMGCopyAnswerSymbolLoc_ptr)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getMGCopyAnswerSymbolLoc_block_invoke;
    v8[3] = &unk_1E7C23BF0;
    v8[4] = &v9;
    __getMGCopyAnswerSymbolLoc_block_invoke(v8);
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v2)
  {
    v7 = [_PSBlockedHandlesCache beginSyncingWithTU];
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v7);
  }

  v3 = v2(@"ReleaseType", 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFEqual(v3, @"NonUI") != 0;
  CFRelease(v4);
  return v5;
}

- (_PSFTZKWConfig)init
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__15;
  v10 = __Block_byref_object_dispose__15;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22___PSFTZKWConfig_init__block_invoke;
  v5[3] = &unk_1E7C266B0;
  v5[4] = &v6;
  [_PSFTZKWTrialWrapper runWithData:v5];
  v3 = [(_PSFTZKWConfig *)self initWithTrialData:v7[5]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (_PSFTZKWConfig)initWithTrialData:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _PSFTZKWConfig;
  v5 = [(_PSFTZKWConfig *)&v17 init];
  if (v5)
  {
    v5->_useBlendingLayer = +[_PSFTZKWConfig useBlendingLayer];
    v6 = -[_PSZKWFTCalendarEventConfig initWithIsEnabled:defaultConfidenceCategory:]([_PSZKWFTCalendarEventConfig alloc], "initWithIsEnabled:defaultConfidenceCategory:", [v4 structuredCalendarIsEnabled], objc_msgSend(v4, "structuredCalendarDefaultConfidenceCategory"));
    calendarEventConfig = v5->_calendarEventConfig;
    v5->_calendarEventConfig = v6;

    v8 = -[_PSZKWFTUnstructuredCalendarConfig initWithIsEnabled:defaultConfidenceCategory:]([_PSZKWFTUnstructuredCalendarConfig alloc], "initWithIsEnabled:defaultConfidenceCategory:", [v4 unstructuredCalendarIsEnabled], objc_msgSend(v4, "unstructuredRemindersIsEnabled"));
    unstructuredCalendarConfig = v5->_unstructuredCalendarConfig;
    v5->_unstructuredCalendarConfig = v8;

    v10 = -[_PSZKWFTUnstructuredRemindersConfig initWithIsEnabled:defaultConfidenceCategory:]([_PSZKWFTUnstructuredRemindersConfig alloc], "initWithIsEnabled:defaultConfidenceCategory:", [v4 unstructuredRemindersIsEnabled], objc_msgSend(v4, "unstructuredRemindersDefaultConfidenceCategory"));
    unstructuredRemindersConfig = v5->_unstructuredRemindersConfig;
    v5->_unstructuredRemindersConfig = v10;

    v12 = -[_PSZKWFTPrimaryInteractionsConfig initWithIsEnabled:defaultConfidenceCategory:modelType:]([_PSZKWFTPrimaryInteractionsConfig alloc], "initWithIsEnabled:defaultConfidenceCategory:modelType:", [v4 primaryInteractionsIsEnabled], objc_msgSend(v4, "primaryInteractionsDefaultConfidenceCategory"), objc_msgSend(v4, "primaryInteractionsModelType"));
    faceTimeInteractionsConfig = v5->_faceTimeInteractionsConfig;
    v5->_faceTimeInteractionsConfig = v12;

    v14 = -[_PSZKWFTFallbackInteractionsConfig initWithIsEnabled:defaultConfidenceCategory:modelType:]([_PSZKWFTFallbackInteractionsConfig alloc], "initWithIsEnabled:defaultConfidenceCategory:modelType:", [v4 fallbackInteractionsIsEnabled], objc_msgSend(v4, "fallbackInteractionsDefaultConfidenceCategory"), objc_msgSend(v4, "fallbackInteractionsModelType"));
    fallbackInteractionsConfig = v5->_fallbackInteractionsConfig;
    v5->_fallbackInteractionsConfig = v14;
  }

  return v5;
}

@end