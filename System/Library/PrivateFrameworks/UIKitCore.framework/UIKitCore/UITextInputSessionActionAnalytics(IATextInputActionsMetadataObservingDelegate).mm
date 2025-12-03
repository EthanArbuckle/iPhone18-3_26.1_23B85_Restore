@interface UITextInputSessionActionAnalytics(IATextInputActionsMetadataObservingDelegate)
- (IATextInputActionsInputMode)inputMode;
- (NSDictionary)keyboardTrialParameters;
@end

@implementation UITextInputSessionActionAnalytics(IATextInputActionsMetadataObservingDelegate)

- (IATextInputActionsInputMode)inputMode
{
  v35 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v3 = qword_1ED49E6F8;
  v30 = qword_1ED49E6F8;
  if (!qword_1ED49E6F8)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v32 = __getIATextInputActionsInputModeClass_block_invoke;
    v33 = &unk_1E70F2F20;
    v34 = &v27;
    InputAnalyticsLibraryCore_0();
    Class = objc_getClass("IATextInputActionsInputMode");
    *(v34[1] + 24) = Class;
    qword_1ED49E6F8 = *(v34[1] + 24);
    v3 = v28[3];
  }

  v5 = v3;
  _Block_object_dispose(&v27, 8);
  v6 = objc_alloc_init(v3);
  overrideInputModeString = self->_overrideInputModeString;
  if (overrideInputModeString)
  {
    identifierWithLayouts = overrideInputModeString;
    v9 = UITextInputSessionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = identifierWithLayouts;
      _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] inputMode - overrode with '%{private}@'", &buf, 0xCu);
    }

LABEL_10:
    v13 = TIInputModeGetLanguage();
    [v6 setLanguage:v13];

    v14 = TIInputModeGetRegion();
    [v6 setRegion:v14];

    v15 = TIInputModeGetVariant();
    [v6 setKeyboardVariant:v15];

    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v16 = qword_1ED49E700;
    v30 = qword_1ED49E700;
    if (!qword_1ED49E700)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v32 = __getTIInputModeFunctionsClass_block_invoke;
      v33 = &unk_1E70F2F20;
      v34 = &v27;
      __getTIInputModeFunctionsClass_block_invoke(&buf);
      v16 = v28[3];
    }

    v17 = v16;
    _Block_object_dispose(&v27, 8);
    if ((objc_opt_respondsToSelector() & (v16 != 0)) == 1)
    {
      [v6 setInputModeIdentifier:{objc_msgSend(v16, "performSelector:withObject:", sel_TIInputModeGetFullInputModeIdentifier_, identifierWithLayouts, v27)}];
    }

    if (self->_useOverrideSourceCounter < 1)
    {
      overrideSource = _UITextInputActionsSourceFromTextInputSource([(UITextInputSessionActionAnalytics *)self _getActiveTextInputSource]);
      v19 = UITextInputSessionLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v26 = _UITextInputActionsSourceString(overrideSource);
        LODWORD(buf) = 138477827;
        *(&buf + 4) = v26;
        _os_log_debug_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] inputMode - source '%{private}@'", &buf, 0xCu);
      }
    }

    else
    {
      overrideSource = self->_overrideSource;
      v19 = UITextInputSessionLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = _UITextInputActionsSourceString(overrideSource);
        LODWORD(buf) = 138477827;
        *(&buf + 4) = v20;
        _os_log_debug_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] inputMode - overrode source with '%{private}@'", &buf, 0xCu);
      }
    }

    if (overrideSource == 3)
    {
      v21 = TIInputModeGetComponentsFromIdentifier();
      v22 = [v21 objectForKey:@"hw"];
      [v6 setKeyboardLayout:v22];
    }

    else
    {
      v21 = TIInputModeGetSWLayout();
      [v6 setKeyboardLayout:v21];
    }

    goto LABEL_25;
  }

  v10 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v10 currentInputMode];
  identifierWithLayouts = [currentInputMode identifierWithLayouts];

  v12 = UITextInputSessionLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = identifierWithLayouts;
    _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] inputMode - fetched '%{private}@'", &buf, 0xCu);
  }

  if (identifierWithLayouts)
  {
    goto LABEL_10;
  }

  v21 = UITextInputSessionLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "[UITextInputSessionActionAnalytics] inputMode - nil inputMode", &buf, 2u);
  }

  identifierWithLayouts = 0;
LABEL_25:

  v23 = UITextInputSessionLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v6 description];
    LODWORD(buf) = 138477827;
    *(&buf + 4) = v25;
    _os_log_debug_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] inputMode - returning '%{private}@'", &buf, 0xCu);
  }

  return v6;
}

- (NSDictionary)keyboardTrialParameters
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    keyboardTrialParameters = self->_keyboardTrialParameters;
    v7 = 138477827;
    v8 = keyboardTrialParameters;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] keyboardTrialParameters - returning '%{private}@'", &v7, 0xCu);
  }

  v4 = self->_keyboardTrialParameters;

  return v4;
}

@end