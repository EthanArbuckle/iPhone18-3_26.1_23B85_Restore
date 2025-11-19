id _pasteboardCacheQueue_PasteboardNameToCountOffsetMap()
{
  if (qword_1ED49A7E0 != -1)
  {
    dispatch_once(&qword_1ED49A7E0, &__block_literal_global_347_2);
  }

  v1 = qword_1ED49A7D8;

  return v1;
}

id _UIResponderTargetForActionWithTestBlock(void *a1, const char *a2, void *a3, void *a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_61;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG))
  {
    v44 = _simpleObjectDescription(v7);
    v45 = _selectorDescription(a2);
    *buf = 138412546;
    v67 = v44;
    v68 = 2112;
    v69 = v45;
    _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "Begin traversal into %@ for %@", buf, 0x16u);
  }

  if (qword_1ED49D700 != -1)
  {
    dispatch_once(&qword_1ED49D700, &__block_literal_global_25_1);
  }

  v65 = objc_autoreleasePoolPush();
  if ([qword_1ED49D6F0 containsObject:v7])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG))
    {
      v10 = _simpleObjectDescription(v7);
      *buf = 138412290;
      v67 = v10;
      _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "We have already seen this object %@ so return nil.", buf, 0xCu);
    }
  }

  else
  {
    [qword_1ED49D6F0 addObject:v7];
  }

  v12 = qword_1ED49D708++;
  if (os_log_type_enabled(MEMORY[0x1E69E9C18], OS_LOG_TYPE_INFO) && !v12 && os_log_type_enabled(MEMORY[0x1E69E9C18], OS_LOG_TYPE_INFO))
  {
    v13 = _selectorDescription(a2);
    v14 = _simpleObjectDescription(v7);
    *buf = 138412546;
    v67 = v13;
    v68 = 2112;
    v69 = v14;
    _os_log_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_INFO, "Begin search for target for action %@ starting from target %@", buf, 0x16u);
  }

  v15 = v9[2](v9, v7, a2, v8);
  v16 = MEMORY[0x1E69E9C18];
  v17 = MEMORY[0x1E69E9C18];
  v18 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (v15)
  {
    if (v18)
    {
      v49 = _simpleObjectDescription(v7);
      *buf = 138412290;
      v67 = v49;
      _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "%@ passes the test. Target found.", buf, 0xCu);
    }

    v11 = v7;
    goto LABEL_54;
  }

  if (v18)
  {
    v50 = _simpleObjectDescription(v7);
    *buf = 138412290;
    v67 = v50;
    _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "%@ failed the test. Finding the next target...", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [v7 _nextResponderUsingTraversalStrategy:qword_1ED49D6F8];
LABEL_25:
    v20 = v19;
    goto LABEL_27;
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [v7 nextResponder];
    goto LABEL_25;
  }

  v20 = 0;
LABEL_27:
  v21 = v16;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v51 = _selectorDescription(a2);
    v52 = _simpleObjectDescription(v20);
    *buf = 138412546;
    v67 = v51;
    v68 = 2112;
    v69 = v52;
    _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "...next target for %@ is %@", buf, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    if (![_MergedGlobals_1046 containsObject:v20])
    {
      [_MergedGlobals_1046 addObject:v20];
      v30 = MEMORY[0x1E69E9C18];
      v31 = MEMORY[0x1E69E9C18];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v56 = _simpleObjectDescription(v20);
        v57 = _selectorDescription(a2);
        *buf = 138412546;
        v67 = v56;
        v68 = 2112;
        v69 = v57;
        _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "Calling targetForAction:withSender: on %@ for %@", buf, 0x16u);
      }

      context = objc_autoreleasePoolPush();
      v32 = [v20 targetForAction:a2 withSender:v8];
      v33 = MEMORY[0x1E69E9C18];
      v34 = MEMORY[0x1E69E9C18];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v63 = _simpleObjectDescription(v20);
        v58 = _simpleObjectDescription(v32);
        v59 = _selectorDescription(a2);
        *buf = 138412802;
        v67 = v63;
        v68 = 2112;
        v69 = v58;
        v70 = 2112;
        v71 = v59;
        _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "The last call to targetForAction:withSender: on %@ returned %@ for %@", buf, 0x20u);
      }

      if (v32 && v9[2](v9, v32, a2, v8))
      {
        v11 = v32;
        v35 = MEMORY[0x1E69E9C18];
        v36 = MEMORY[0x1E69E9C18];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v62 = _simpleObjectDescription(v11);
          *buf = 138412290;
          v67 = v62;
          _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "%@ passes the test. Target found.", buf, 0xCu);
        }
      }

      else
      {
        v37 = MEMORY[0x1E69E9C18];
        v38 = MEMORY[0x1E69E9C18];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v60 = _simpleObjectDescription(v32);
          v61 = _simpleObjectDescription(v20);
          *buf = 138412546;
          v67 = v60;
          v68 = 2112;
          v69 = v61;
          _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "%@ failed the test. Traversing into %@.", buf, 0x16u);
        }

        v11 = _UIResponderTargetForActionWithTestBlock(v20, a2, v8, v9);
      }

      objc_autoreleasePoolPop(context);
      goto LABEL_53;
    }

    v22 = MEMORY[0x1E69E9C18];
    v23 = MEMORY[0x1E69E9C18];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v24 = _simpleObjectDescription(v20);
      v25 = _selectorDescription(a2);
      *buf = 138412546;
      v67 = v24;
      v68 = 2112;
      v69 = v25;
      _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "Already called targetForAction:withSender: on %@ for %@ so we will not call it again.", buf, 0x16u);
    }
  }

  else
  {
    v26 = MEMORY[0x1E69E9C18];
    v27 = MEMORY[0x1E69E9C18];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v53 = _simpleObjectDescription(v20);
      *buf = 138412290;
      v67 = v53;
      _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "%@ does not respond to targetForAction:withSender:", buf, 0xCu);
    }
  }

  if (v20)
  {
    v28 = MEMORY[0x1E69E9C18];
    v29 = MEMORY[0x1E69E9C18];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v54 = _simpleObjectDescription(v20);
      v55 = _selectorDescription(a2);
      *buf = 138412546;
      v67 = v54;
      v68 = 2112;
      v69 = v55;
      _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "Traversing into %@ for %@", buf, 0x16u);
    }

    v11 = _UIResponderTargetForActionWithTestBlock(v20, a2, v8, v9);
  }

  else
  {
    v11 = 0;
  }

LABEL_53:

LABEL_54:
  if (!--qword_1ED49D708)
  {
    v39 = MEMORY[0x1E69E9C18];
    v40 = MEMORY[0x1E69E9C18];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v41 = _simpleObjectDescription(v11);
      v42 = _selectorDescription(a2);
      *buf = 138412546;
      v67 = v41;
      v68 = 2112;
      v69 = v42;
      _os_log_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_INFO, "Finished traversing all targets. Found target: %@ for %@", buf, 0x16u);
    }

    [_MergedGlobals_1046 removeAllObjects];
    [qword_1ED49D6F0 removeAllObjects];
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG))
  {
    v46 = _simpleObjectDescription(v7);
    v47 = _simpleObjectDescription(v11);
    v48 = _selectorDescription(a2);
    *buf = 138412802;
    v67 = v46;
    v68 = 2112;
    v69 = v47;
    v70 = 2112;
    v71 = v48;
    _os_log_debug_impl(&dword_188A29000, MEMORY[0x1E69E9C18], OS_LOG_TYPE_DEBUG, "End traversal for %@ - returning %@ for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v65);
LABEL_61:

  return v11;
}

void sub_188D2E230(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x188D2E208);
  }

  _Unwind_Resume(a1);
}

void sub_188D2E240(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x188D2E200);
}

void sub_188D2E25C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x188D2E268);
}

void _pasteboardCacheQueue_removePinnedItemCollectionForName(void *a1)
{
  v2 = a1;
  v1 = _pasteboardCacheQueue_PasteboardNameToPinnedItemCollectionMap();
  [v1 removeObjectForKey:v2];

  _pasteboardCacheQueue_incrementCountOffsetForName(v2);
}

void sub_188D2E4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *UIKeyboardLocalizedString(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = UIKeyboardLocalizedObject(v7, a2, a3, a4, 1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v7 isEqualToString:@"UI-IdeographicSpace"];

  if (!v11 || v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_1EFB14550;
  }

  return v12;
}

id UIKeyboardLocalizedObject(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v8 = a1;
  v9 = a2;
  v32 = a3;
  v10 = a4;
  if (!v9)
  {
    v11 = +[UIKeyboardImpl activeInstance];
    v12 = [v11 textInputTraits];
    v13 = [v12 useInterfaceLanguageForLocalization];

    if (v13)
    {
      v14 = UIKeyboardGetCurrentUILanguage();
      v15 = TIGetDefaultInputModesForLanguage();

      if ([v15 count])
      {
        v9 = [v15 objectAtIndex:0];

        if (v9)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    v9 = UIKeyboardGetCurrentInputMode();
  }

LABEL_8:
  v16 = TIInputModeGetComponentsFromIdentifier();
  v17 = *MEMORY[0x1E695D9B0];
  v18 = [v16 objectForKey:*MEMORY[0x1E695D9B0]];
  v19 = *MEMORY[0x1E695D9E8];
  v20 = [v16 objectForKey:*MEMORY[0x1E695D9E8]];
  v21 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v18, v17, 0}];
  v22 = v21;
  if (v20)
  {
    [v21 setObject:v20 forKey:v19];
  }

  v23 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v22];

  v24 = [v16 objectForKey:*MEMORY[0x1E695D978]];
  v25 = [v16 objectForKeyedSubscript:@"rg"];

  if (v25)
  {
    v26 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v9];
    v27 = [v26 regionCode];

    v24 = v27;
  }

  v28 = [v16 objectForKey:*MEMORY[0x1E695DA10]];
  v29 = LookupInternationalObject(v8, v23, v24, v28, v10, a5);

  return v29;
}

void sub_188D30090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id LookupInternationalObject(void *a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v11)
  {
    if ([v13 length])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", v12, v13, v14];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v12, v14, v33];
    }
    v17 = ;
    v18 = UIKeyboardGetCurrentUILanguage();
    v19 = MEMORY[0x1E696AEC0];
    CurrentIdiom = UIKeyboardGetCurrentIdiom();
    v21 = @"WITHOUT";
    if (a6)
    {
      v21 = @"WITH";
    }

    v38 = v17;
    v22 = [v19 stringWithFormat:@"%@-%ld-%@-%@-Defaults", v17, CurrentIdiom, v18, v21];
    if (!_MergedGlobals_1195)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v24 = _MergedGlobals_1195;
      _MergedGlobals_1195 = v23;
    }

    v25 = qword_1ED49F420;
    if (!qword_1ED49F420)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v27 = qword_1ED49F420;
      qword_1ED49F420 = v26;

      v25 = qword_1ED49F420;
    }

    v28 = [v25 objectForKey:v22];
    if (v28)
    {
      v16 = v15;
    }

    else
    {
      v29 = [_MergedGlobals_1195 objectForKey:v22];
      if (!v29)
      {
        v37 = v12;
        v36 = v13;
        v35 = v14;
        v34 = v18;
        UIKeyboardGetCurrentIdiom();
        v29 = TILoadMergedKeyboardPlistForLocale();

        if (v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = @"sentinel";
        }

        v31 = &_MergedGlobals_1195;
        if (!v29)
        {
          v31 = &qword_1ED49F420;
        }

        [*v31 setObject:v30 forKey:v22];
      }

      v16 = [(__CFString *)v29 objectForKey:v11];
      if (!v16)
      {
        v16 = v15;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t UIKeyboardGetCurrentIdiom()
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && !+[UIKeyboardImpl isSplit])
  {
    return +[UIKeyboardImpl isFloating]^ 1;
  }

  else
  {
    return 0;
  }
}

id UIKeyboardGetCurrentUILanguage()
{
  v0 = UIKeyboardCurrentUILanguage;
  if (!UIKeyboardCurrentUILanguage)
  {
    v1 = [MEMORY[0x1E695DF58] preferredLanguages];
    if ([v1 count])
    {
      v2 = [v1 objectAtIndex:0];
    }

    else
    {
      v2 = @"intl";
    }

    v3 = [(__CFString *)v2 copy];
    v4 = UIKeyboardCurrentUILanguage;
    UIKeyboardCurrentUILanguage = v3;

    v0 = UIKeyboardCurrentUILanguage;
  }

  return v0;
}

__CFString *KBStarTypeString(uint64_t a1, int a2)
{
  if (a1 == 1)
  {
    result = &stru_1EFB14550;
    if (a2 > 8)
    {
      if (a2 <= 10)
      {
        goto LABEL_26;
      }

      if (a2 != 11)
      {
LABEL_32:
        if (a2 == 120)
        {
          return @"AlphaWithURL";
        }

        v6 = a2 == 127;
        v7 = @"PasscodePad";
        goto LABEL_34;
      }
    }

    else if (a2 > 5)
    {
      if (a2 == 6)
      {
        return @"NamePhonePad";
      }

      if (a2 == 7)
      {
        return @"Email";
      }
    }

    else if ((a2 - 4) >= 2)
    {
      v6 = a2 == 3;
      v7 = @"URL";
LABEL_34:
      if (v6)
      {
        return v7;
      }

      return result;
    }

    return @"Pad";
  }

  if (a1 == 2)
  {
    v13 = v2;
    v14 = v3;
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Must call KBStarTypeStringWithTVLinearKeyboardLayout(...) on tvOS.", buf, 2u);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &KBStarTypeString___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Must call KBStarTypeStringWithTVLinearKeyboardLayout(...) on tvOS.", v11, 2u);
      }
    }

    return &stru_1EFB14550;
  }

  result = &stru_1EFB14550;
  if (a2 > 7)
  {
    if (a2 <= 10)
    {
      if (a2 == 8)
      {
        return @"DecimalPad";
      }

LABEL_26:
      if (a2 == 9)
      {
        return @"Twitter";
      }

      return @"AlphaWithURL";
    }

    if (a2 != 11)
    {
      goto LABEL_32;
    }

    return @"NumberPad";
  }

  if (a2 <= 4)
  {
    if (a2 == 3)
    {
      return @"URL";
    }

    if (a2 == 4)
    {
      return @"NumberPad";
    }
  }

  else
  {
    v8 = @"NamePhonePad";
    v9 = @"Email";
    if (a2 != 7)
    {
      v9 = &stru_1EFB14550;
    }

    if (a2 != 6)
    {
      v8 = v9;
    }

    if (a2 == 5)
    {
      return @"PhonePad";
    }

    else
    {
      return v8;
    }
  }

  return result;
}

id UIKeyboardGetKBStarName(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [v8 idiom];
  UIKeyboardComputeKeyboardIdiomFromScreenTraits(v8, v9, [v8 isSplit]);
  if ([v8 isFloating])
  {
    v9 = 0;
  }

  v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v11 = [v10 preferencesActions];
  v12 = [v11 inputModeSupportsCrescendo:v7 screenTraits:v8];

  if (a3 == 127)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (v9 == 3)
  {
    v22 = UIKeyboardGetDerivedKeyboard(v7, v8, a3);
    if (v13 && [v8 touchInput])
    {
      v24 = MEMORY[0x1E696AD60];
      v23 = KBStarLayoutStringForIdiom(3, v7);
      v25 = KBStarTypeString(3, a3);
      v16 = [v24 stringWithFormat:@"%@-%@-%@-%@", @"Dynamic", v23, @"Small", v25];
    }

    else
    {
      v34 = [v22 derivedKBStarPrefixName];

      if (!v34)
      {
        v38 = MEMORY[0x1E696AD60];
        v23 = KBStarLayoutString(v7);
        [v38 stringWithFormat:@"%@-Landscape-%@", @"Car", v23, v80, v82, v83];
        v16 = LABEL_35:;
LABEL_36:

        if (v16)
        {
LABEL_37:
          v39 = 0;
          goto LABEL_91;
        }

        goto LABEL_61;
      }

      v23 = [v22 derivedKBStarPrefixName];
      v25 = KBStarLayoutString(v7);
      v35 = UIKeyboardPhoneLayoutToUseForCarPlayInputMode(v7);
      v36 = v35;
      if (v35)
      {
        v37 = v35;

        v25 = v37;
      }

      v16 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@-%@", v23, v25];
    }

    goto LABEL_36;
  }

  if (v9 == 2)
  {
    if (a3 <= 0xB && ((1 << a3) & 0x930) != 0 || a3 == 127)
    {
      v14 = MEMORY[0x1E696AD60];
      v15 = KBStarTypeStringWithTVLinearKeyboardLayout(a3, [v8 isLinear]);
      v16 = [v14 stringWithFormat:@"%@-Linear-%@", @"Monolith", v15];

      if (v16)
      {
        goto LABEL_37;
      }
    }

    v17 = MEMORY[0x1E696AD60];
    if ([v8 isLinear])
    {
      v18 = @"Linear-";
    }

    else
    {
      v18 = &stru_1EFB14550;
    }

    v19 = a3 == 120 || a3 == 10;
    v20 = a4;
    if (v19)
    {
      v21 = @"Uncased-";
    }

    else
    {
      v21 = &stru_1EFB14550;
    }

    v22 = KBStarLayoutStringForIdiom(2, v7);
    v23 = KBStarTypeStringWithTVLinearKeyboardLayout(a3, [v8 isLinear]);
    v81 = v21;
    a4 = v20;
    [v17 stringWithFormat:@"%@-%@%@%@-%@", @"Monolith", v18, v81, v22, v23];
    goto LABEL_35;
  }

  if (v9 > 1)
  {
LABEL_61:
    v39 = @"iPhone-Portrait";
    goto LABEL_62;
  }

  v26 = UIKeyboardGetDerivedKeyboard(v7, v8, a3);
  v27 = v26;
  if (!v13)
  {
    v40 = [v26 derivedKBStarPrefixName];

    if (v40)
    {
      v39 = [v27 derivedKBStarPrefixName];
    }

    else
    {
      v59 = [getTUIKeyboardLayoutFactoryClass() sharedKeyboardFactory];
      [v8 keyboardWidth];
      v39 = [v59 keyboardPrefixForWidth:objc_msgSend(v8 andEdge:{"isKeyboardMinorEdgeWidth"), round(v60)}];
    }

    goto LABEL_60;
  }

  [v8 keyboardScreenReferenceSize];
  v29 = v28;
  v31 = v30;
  if ([v8 isFloating])
  {
    [v8 keyboardWidth];
    v29 = v32;
    [v8 keyboardWidth];
    v31 = v33;
  }

  else if (v9 == 1)
  {
    v41 = [v8 screen];
    [v41 scale];
    v42 = 1.0;
    if (v43 > 0.0)
    {
      v44 = [v8 screen];
      [v44 scale];
      v42 = v45;
    }

    v46 = [v8 screen];
    [v46 nativeBounds];
    v48 = v47;
    v50 = v49;

    v29 = v48 / v42;
    v31 = v50 / v42;
  }

  v51 = [getTUIKeyboardLayoutFactoryClass() sharedKeyboardFactory];
  v52 = [v51 keyboardSuffixForScreenDimensions:{v29, v31}];

  v84 = v27;
  if ((a3 > 0xB || ((1 << a3) & 0x930) == 0) && a3 != 127 && a3 != 6)
  {
    v55 = KBStarLayoutStringForIdiom(v9, v7);
    v58 = KBStarTypeString(v9, a3);
    v79 = [v55 containsString:@"Korean10Key"];
    if (UIKeyboardDynamicKeyboardShouldFallBackToStaticKeyboard(v8, v7))
    {
      v39 = [v84 derivedKBStarPrefixName];
      v16 = 0;
      goto LABEL_55;
    }

    if (((([v8 orientation] - 3) < 2) & v79) == 1)
    {
      v39 = @"Dynamic";
      [MEMORY[0x1E696AD60] stringWithFormat:@"%@-%@-%@-%@-%@", @"Dynamic", v55, v52, @"Wide", v58];
    }

    else
    {
      v39 = @"Dynamic";
      [MEMORY[0x1E696AD60] stringWithFormat:@"%@-%@-%@-%@", @"Dynamic", v55, v52, v58, v83];
    }

    v16 = LABEL_54:;
LABEL_55:

    goto LABEL_59;
  }

  v53 = [(__CFString *)v52 isEqualToString:@"Small"];
  if ([v8 isInPopover])
  {

    v52 = @"Small";
LABEL_51:
    v54 = KBStarLayoutStringForIdiom(v9, v7);
    v55 = [v54 stringByReplacingOccurrencesOfString:@"QWERTY" withString:&stru_1EFB14550];

    if ([v55 length])
    {
      v56 = [v55 stringByAppendingString:@"-"];

      v55 = v56;
    }

    v57 = MEMORY[0x1E696AD60];
    v58 = KBStarTypeString(v9, a3);
    v39 = @"Dynamic";
    [v57 stringWithFormat:@"%@-%@-%@%@", @"Dynamic", v58, v55, v52, v83];
    goto LABEL_54;
  }

  if (v53)
  {
    goto LABEL_51;
  }

  [v8 keyboardWidth];
  v61 = MEMORY[0x1E696AD60];
  v55 = KBStarLayoutStringForIdiom(v9, v7);
  v39 = @"Dynamic";
  v16 = [v61 stringWithFormat:@"%@-%@-%@", @"Dynamic", v55, v52];
LABEL_59:

  if (v16)
  {
    goto LABEL_91;
  }

LABEL_60:
  if (!v39)
  {
    goto LABEL_61;
  }

LABEL_62:
  if (a3 == 127 || !v9)
  {
    if (a3 <= 0xB && ((1 << a3) & 0x930) != 0)
    {
      v62 = MEMORY[0x1E696AD60];
      v63 = KBStarTypeString(v9, a3);
      v64 = KBStarLayoutString(v7);
      v65 = v64;
      v66 = &stru_1EFB14550;
      v67 = @"RightHanded";
      if (a4 != 1)
      {
        v67 = &stru_1EFB14550;
      }

      if (a4 == 2)
      {
        v67 = @"LeftHanded";
      }

      if (a3 != 127)
      {
        v66 = v67;
      }

      v16 = [v62 stringWithFormat:@"%@-%@-%@-%@", v39, v63, v64, v66];

      goto LABEL_81;
    }

    if (a3 == 127)
    {
      v68 = MEMORY[0x1E696AD60];
      v69 = KBStarTypeString(v9, 127);
      v63 = v69;
      v70 = &stru_1EFB14550;
      v71 = @"RightHanded";
      if (a4 != 1)
      {
        v71 = &stru_1EFB14550;
      }

      if (a4 == 2)
      {
        v71 = @"LeftHanded";
      }

      if (a3 != 127)
      {
        v70 = v71;
      }

      v16 = [v68 stringWithFormat:@"%@-%@-%@", v39, v69, v70];
LABEL_81:

      if (v16)
      {
        goto LABEL_91;
      }
    }
  }

  v16 = 0;
  if (v9 <= 4 && ((1 << v9) & 0x13) != 0)
  {
    v72 = MEMORY[0x1E696AD60];
    v73 = KBStarLayoutStringForIdiom(v9, v7);
    v74 = &stru_1EFB14550;
    v75 = @"RightHanded";
    if (a4 != 1)
    {
      v75 = &stru_1EFB14550;
    }

    if (a4 == 2)
    {
      v75 = @"LeftHanded";
    }

    if (a3 != 127)
    {
      v74 = v75;
    }

    v76 = v74;
    v77 = KBStarTypeString(v9, a3);
    v16 = [v72 stringWithFormat:@"%@-%@-%@-%@", v39, v73, v76, v77];
  }

LABEL_91:
    ;
  }

  while ([v16 length])
  {
    if (![v16 hasPrefix:@"-"])
    {
      break;
    }

    [v16 deleteCharactersInRange:{0, 1}];
  }

  while ([v16 length])
  {
    if (![v16 hasSuffix:@"-"])
    {
      break;
    }

    [v16 deleteCharactersInRange:{objc_msgSend(v16, "length") - 1, 1}];
  }

  return v16;
}

uint64_t _areBarButtonGroupsBasicallyEqualToSystemDefaults(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    goto LABEL_12;
  }

  v5 = [v3 count];
  if (v5 != [v4 count])
  {
    v17 = 0;
    goto LABEL_15;
  }

  if (![v3 count])
  {
LABEL_12:
    v17 = 1;
  }

  else
  {
    v6 = 0;
    v19 = v4;
    while (1)
    {
      v7 = [v3 objectAtIndexedSubscript:{v6, v19}];
      v8 = [v4 objectAtIndexedSubscript:v6];
      v20 = v7;
      v9 = [v7 barButtonItems];
      v10 = [v8 barButtonItems];
      v11 = [v9 count];
      if (v11 != [v10 count])
      {
        break;
      }

      if ([v9 count])
      {
        v12 = 0;
        do
        {
          v13 = [v9 objectAtIndexedSubscript:v12];
          v14 = [v10 objectAtIndexedSubscript:v12];
          v15 = [v13 action];
          v16 = [v14 action];

          if (v15 != v16)
          {
            goto LABEL_14;
          }
        }

        while (++v12 < [v9 count]);
      }

      ++v6;
      v17 = 1;
      v4 = v19;
      if (v6 >= [v3 count])
      {
        goto LABEL_15;
      }
    }

LABEL_14:

    v17 = 0;
    v4 = v19;
  }

LABEL_15:

  return v17;
}

void _pasteboardCacheQueue_setPinnedItemCollectionForName(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = _pasteboardCacheQueue_PasteboardNameToPinnedItemCollectionMap();
  [v4 setObject:v3 forKeyedSubscript:v5];

  _pasteboardCacheQueue_incrementCountOffsetForName(v5);
}

void _pasteboardCacheQueue_incrementCountOffsetForName(void *a1)
{
  v1 = a1;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:_pasteboardCacheQueue_countOffsetForName(v1) + 1];
  v2 = _pasteboardCacheQueue_PasteboardNameToCountOffsetMap();
  [v2 setObject:v3 forKeyedSubscript:v1];
}

uint64_t _UIActivityItemsConfigurationHasItems(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 _hasItemsForActivityItemsConfiguration];
  }

  else
  {
    v3 = [v1 itemProvidersForActivityItemsConfiguration];

    v2 = [v3 count] != 0;
    v1 = v3;
  }

  return v2;
}

void _removePinnedItemCollectionForName(void *a1)
{
  v1 = a1;
  v2 = _pasteboardCacheQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___removePinnedItemCollectionForName_block_invoke;
  block[3] = &unk_1E70F3590;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void __getTUIKeyboardBackendControllerClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardBackendController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardBackendControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardBackendControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardInputManagerClient.h" lineNumber:24 description:{@"Unable to find class %s", "TUIKeyboardBackendController"}];

    __break(1u);
  }
}

void sub_188D34DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v9 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v8 + 40));
  objc_destroyWeak((v10 - 56));
  _Unwind_Resume(a1);
}

void __getAVSystemControllerClass_block_invoke(uint64_t a1)
{
  MediaExperienceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSystemController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49D820 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UICoreMediaOverridePIDManager.m" lineNumber:18 description:{@"Unable to find class %s", "AVSystemController"}];

    __break(1u);
  }
}

void __getAVSystemControllerClass_block_invoke_0(uint64_t a1)
{
  MediaExperienceLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSystemController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49FDF8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIKBFeedbackGenerator.m" lineNumber:53 description:{@"Unable to find class %s", "AVSystemController"}];

    __break(1u);
  }
}

void __getAVSystemControllerClass_block_invoke_1(uint64_t a1)
{
  MediaExperienceLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSystemController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVSystemControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIViewServiceViewControllerOperator.m" lineNumber:320 description:{@"Unable to find class %s", "AVSystemController"}];

    __break(1u);
  }
}

void *MediaExperienceLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaExperienceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71030C0;
    v6 = 0;
    MediaExperienceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaExperienceLibraryCore_frameworkLibrary;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UICoreMediaOverridePIDManager.m" lineNumber:17 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *MediaExperienceLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaExperienceLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E711B5E0;
    v6 = 0;
    MediaExperienceLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = MediaExperienceLibraryCore_frameworkLibrary_0;
  if (!MediaExperienceLibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UIKBFeedbackGenerator.m" lineNumber:52 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *MediaExperienceLibrary_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaExperienceLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7128DF0;
    v6 = 0;
    MediaExperienceLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = MediaExperienceLibraryCore_frameworkLibrary_1;
  if (!MediaExperienceLibraryCore_frameworkLibrary_1)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIViewServiceViewControllerOperator.m" lineNumber:319 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void getAVSystemController_EffectiveVolumeDidChangeNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVSystemController_EffectiveVolumeDidChangeNotificationSymbolLoc_ptr;
  v9 = getAVSystemController_EffectiveVolumeDidChangeNotificationSymbolLoc_ptr;
  if (!getAVSystemController_EffectiveVolumeDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaExperienceLibrary_0();
    v7[3] = dlsym(v1, "AVSystemController_EffectiveVolumeDidChangeNotification");
    getAVSystemController_EffectiveVolumeDidChangeNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_EffectiveVolumeDidChangeNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIKBFeedbackGenerator.m" lineNumber:55 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_188D35DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAVSystemController_ServerConnectionDiedNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVSystemController_ServerConnectionDiedNotificationSymbolLoc_ptr;
  v9 = getAVSystemController_ServerConnectionDiedNotificationSymbolLoc_ptr;
  if (!getAVSystemController_ServerConnectionDiedNotificationSymbolLoc_ptr)
  {
    v1 = MediaExperienceLibrary_0();
    v7[3] = dlsym(v1, "AVSystemController_ServerConnectionDiedNotification");
    getAVSystemController_ServerConnectionDiedNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_ServerConnectionDiedNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIKBFeedbackGenerator.m" lineNumber:56 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_188D35F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _convertVisualAltitudeFromViewToView(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 layer];
  v8 = [v6 layer];
  v9 = [v7 ancestorSharedWithLayer:v8];

  v10 = [v5 layer];

  if (v10 != v9)
  {
    v11 = [v5 layer];
    v12 = v11;
    if (v11 == v9)
    {
      v16 = v11;
    }

    else
    {
      do
      {
        v13 = [v12 unsafeUnretainedDelegate];
        if (v13)
        {
          v14 = v13;
          if (_IsKindOfUIView(v13))
          {
            v13 = v14;
          }

          else
          {
            v13 = 0;
          }
        }

        [v13 _visualAltitude];
        a3 = a3 + v15;
        v16 = [v12 superlayer];

        v12 = v16;
      }

      while (v16 != v9);
    }
  }

  v17 = [v6 layer];

  if (v17 != v9)
  {
    v18 = [v6 layer];
    v19 = v18;
    if (v18 == v9)
    {
      v23 = v18;
    }

    else
    {
      do
      {
        v20 = [v19 unsafeUnretainedDelegate];
        if (v20)
        {
          v21 = v20;
          if (_IsKindOfUIView(v20))
          {
            v20 = v21;
          }

          else
          {
            v20 = 0;
          }
        }

        [v20 _visualAltitude];
        a3 = a3 - v22;
        v23 = [v19 superlayer];

        v19 = v23;
      }

      while (v23 != v9);
    }
  }

  return a3;
}

void __UIKeyboardInputModeIsDefaultRightToLeft_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v1 = qword_1ED49EF18;
  qword_1ED49EF18 = v0;
}

id _UIKeyboardInputSessionChangeLog()
{
  if (_UIKeyboardInputSessionChangeLog_onceToken != -1)
  {
    dispatch_once(&_UIKeyboardInputSessionChangeLog_onceToken, &__block_literal_global_20_0);
  }

  v1 = _UIKeyboardInputSessionChangeLog_log;

  return v1;
}

uint64_t UIKeyboardInputModeUsesKBStar(void *a1)
{
  v1 = a1;
  if (!UIKeyboardInputModeUsesKBStar___dict)
  {
    v2 = objc_alloc(MEMORY[0x1E695DF90]);
    v3 = [v2 initWithObjectsAndKeys:{@"dictation", MEMORY[0x1E695E110], @"autofillsignup", 0}];
    v4 = UIKeyboardInputModeUsesKBStar___dict;
    UIKeyboardInputModeUsesKBStar___dict = v3;
  }

  v5 = TICanonicalInputModeName();
  v6 = [UIKeyboardInputModeUsesKBStar___dict objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

__CFString *KBStarLayoutStringForIdiom(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TIInputModeGetComponentsFromIdentifier();
  v5 = TIInputModeGetNormalizedIdentifierFromComponents();
  v6 = UIKeyboardGetSupportedSoftwareKeyboardsForInputModeAndIdiom(v5, a1);
  if (v4)
  {
    v7 = [v4 objectForKey:@"sw"];
    if (v7)
    {
      if ([v6 containsObject:v7])
      {
        v8 = v7;
        goto LABEL_22;
      }

      if ([v6 count])
      {
        v7 = v7;
        v9 = TIInputModeGetNormalizedIdentifier();
        v10 = TIGetInputModeProperties();

        v8 = [v10 objectForKey:@"SWLayoutMap"];
        if (!v8)
        {
          v8 = @"QWERTY";
          if (([(__CFString *)v7 hasPrefix:@"QWERTY"]& 1) == 0)
          {
            v8 = @"AZERTY";
            if (([(__CFString *)v7 hasPrefix:@"AZERTY"]& 1) == 0)
            {
              v8 = @"QWERTZ";
              if (([(__CFString *)v7 hasPrefix:@"QWERTZ"]& 1) == 0)
              {
                if (([(__CFString *)v7 isEqualToString:@"Kana-RTL"]& 1) != 0)
                {
                  v8 = @"Kana";
                }

                else if (([(__CFString *)v7 isEqualToString:@"Kana-RTL-Flick"]& 1) != 0)
                {
                  v8 = @"Kana-Flick";
                }

                else
                {
                  v8 = v7;
                }
              }
            }
          }
        }

        if ([v6 containsObject:v8])
        {

          goto LABEL_22;
        }
      }
    }
  }

  if (![v6 count] || (objc_msgSend(v6, "objectAtIndex:", 0), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = @"QWERTY";
  }

LABEL_22:

  return v8;
}

Class __getTUIKeyboardLayoutFactoryClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49EF78)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_11;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E710E008;
    v8 = 0;
    qword_1ED49EF78 = _sl_dlopen();
  }

  if (!qword_1ED49EF78)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKeyboardIntl.m" lineNumber:79 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIKeyboardLayoutFactory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardLayoutFactoryClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKeyboardIntl.m" lineNumber:80 description:{@"Unable to find class %s", "TUIKeyboardLayoutFactory"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49EF70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getTUIKeyboardLayoutFactoryClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49EFD8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_12;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E710E3B0;
    v8 = 0;
    qword_1ED49EFD8 = _sl_dlopen();
  }

  if (!qword_1ED49EFD8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKeyboardPreferencesController.m" lineNumber:35 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIKeyboardLayoutFactory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardLayoutFactoryClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKeyboardPreferencesController.m" lineNumber:36 description:{@"Unable to find class %s", "TUIKeyboardLayoutFactory"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49EFD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getTUIKeyboardLayoutFactoryClass_block_invoke_1(uint64_t a1)
{
  TextInputUILibrary_6();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardLayoutFactory");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardLayoutFactoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardLayoutFactoryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardLayoutStar.m" lineNumber:210 description:{@"Unable to find class %s", "TUIKeyboardLayoutFactory"}];

    __break(1u);
  }
}

uint64_t sub_188D385B0()
{
  v1 = *(v0 + 32);
  _s21RunningAnimationEntryCMa();
  sub_18A4A7D38();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_188D38694((v1 + v2), &v5);
  os_unfair_lock_unlock((v1 + v3));
  return v5;
}

uint64_t sub_188D386B4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v33 = v17;
  v18 = (v17 + 16);
  if (a1)
  {
    v19 = *(v4 + 128);
    swift_beginAccess();
    v20 = *v18;
    v31 = v4;
    v32 = v20;
    v20(v16, v2 + v19, v6);
    v21 = *(v5 - 8);
    v22 = *(v21 + 48);
    if (v22(v16, 1, v5) == 1)
    {
      v23 = v2 + *(*v2 + 152);
      swift_beginAccess();
      v24 = v23 + *(_s8ComposerVMa() + 48);
      v32(v12, v24, v6);
      if (v22(v12, 1, v5) == 1)
      {
        sub_18A4A8408();
        v25 = v6;
        if (v22(v12, 1, v5) != 1)
        {
          (*(v33 + 8))(v12, v6);
        }
      }

      else
      {
        (*(v21 + 32))(v34, v12, v5);
        v25 = v6;
      }

      result = (v22)(v16, 1, v5);
      if (result != 1)
      {
        return (*(v33 + 8))(v16, v25);
      }
    }

    else
    {
      return (*(v21 + 32))(v34, v16, v5);
    }
  }

  else
  {
    v26 = v14;
    v27 = *(v4 + 136);
    swift_beginAccess();
    (*v18)(v9, v2 + v27, v6);
    v28 = *(v5 - 8);
    v29 = *(v28 + 48);
    if (v29(v9, 1, v5) == 1)
    {
      if (sub_188D385B0())
      {
        sub_188D38BD8(v26);

        (*(v28 + 56))(v26, 0, 1, v5);
        (*(v28 + 32))(v34, v26, v5);
      }

      else
      {
        (*(v28 + 56))(v26, 1, 1, v5);
        sub_18A4A8408();
        if (v29(v26, 1, v5) != 1)
        {
          (*(v33 + 8))(v26, v6);
        }
      }

      result = (v29)(v9, 1, v5);
      if (result != 1)
      {
        return (*(v33 + 8))(v9, v6);
      }
    }

    else
    {
      return (*(v28 + 32))(v34, v9, v5);
    }
  }

  return result;
}

uint64_t sub_188D38BD8@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = _s15InstantlyStableVMa();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v31 - v5;
  v6 = _s7SwiftUIVMa();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v31 - v7;
  v8 = _s14FrictionBounceVMa();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - v9;
  v10 = _s6SpringVMa();
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for RunningInProcessAnimation();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v31 - v19;
  v21 = *(v2 + 104);
  swift_beginAccess();
  (*(v14 + 16))(v17, v1 + v21, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v28 = v38;
      v27 = v39;
      v29 = v40;
      (*(v39 + 32))(v38, v17, v40);
      (*(v18 + 16))(v20, &v28[*(v29 + 36)], v3);
      (*(v27 + 8))(v28, v29);
      goto LABEL_9;
    }

    v24 = v35;
    v25 = v36;
    v26 = v37;
    (*(v36 + 32))(v35, v17, v37);
    sub_188FBAC58(v26, v20);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
    v24 = v32;
    v25 = v33;
    v26 = v34;
    (*(v33 + 32))(v32, v17, v34);
    sub_188FB5CFC();
LABEL_7:
    (*(v25 + 8))(v24, v26);
    goto LABEL_9;
  }

  v23 = v31;
  (*(v31 + 32))(v12, v17, v10);
  (*(v18 + 16))(v20, &v12[*(v10 + 48)], v3);
  (*(v23 + 8))(v12, v10);
LABEL_9:
  (*(v18 + 32))(v41, v20, v3);
  return swift_endAccess();
}

double sub_188D392D0()
{
  if (qword_1EA931200 != -1)
  {
    swift_once();
  }

  result = *&qword_1EA994F30 * *&qword_1EA994F30;
  *&qword_1EA994F38 = *&qword_1EA994F30 * *&qword_1EA994F30;
  return result;
}

double sub_188D3932C()
{
  objc_opt_self();
  v0 = +[UIScreen _mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_1EA994F30 = 1.0 / v2;
  return result;
}

id sub_188D39390(uint64_t a1)
{
  sub_188A55538(a1, &v7);
  v2 = sub_188A34624(0, &qword_1ED48FD80);
  swift_dynamicCast();
  [v6 doubleValue];
  v4 = v3;

  if (v4 <= 1.0)
  {
    v4 = 1.0;
  }

  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(a1 + 24) = v2;
  *a1 = result;
  return result;
}

void _UIScreenBacklightLevelDidChangeCallback(uint64_t a1, uint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___UIScreenBacklightLevelDidChangeCallback_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v2 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v2[2](v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }
}

void UIKeyboardSetActiveInputModes(void *a1)
{
  v2 = a1;
  if (UIKeyboardActiveInputModes != v2)
  {
    v6 = v2;
    objc_storeStrong(&UIKeyboardActiveInputModes, a1);
    v3 = +[UIKeyboardInputModeController sharedInputModeController];
    v4 = [v3 userSelectableInputModeIdentifiersFromInputModeIdentifiers:v6];

    v5 = UIKeyboardActiveUserSelectableInputModes;
    UIKeyboardActiveUserSelectableInputModes = v4;

    v2 = v6;
  }
}

uint64_t UIKeyboardComputeKeyboardIdiomFromScreenTraits(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = v5;
  if (a3)
  {
    v7 = a2;
  }

  else
  {
    v8 = &UIKeyboardComputeKeyboardIdiomFromScreenTraits_iPhoneWidthFilterTable;
    if (a2)
    {
      v8 = 0;
    }

    if (a2 == 1)
    {
      v9 = &UIKeyboardComputeKeyboardIdiomFromScreenTraits_iPadWidthFilterTable;
    }

    else
    {
      v9 = v8;
    }

    if (a2 == 1)
    {
      v10 = 6;
    }

    else
    {
      v10 = 2 * (a2 == 0);
    }

    v7 = a2;
    if (v9)
    {
      v11 = [v5 screen];
      [v11 _referenceBounds];
      v13 = v12;
      v15 = v14;

      v16 = [v6 screen];
      [v16 scale];
      v17 = 1.0;
      if (v18 > 0.0)
      {
        v19 = [v6 screen];
        [v19 scale];
        v17 = v20;
      }

      v21 = [v6 screen];
      [v21 nativeBounds];
      v23 = v22;

      if (v15 * v17 > v23)
      {
        v24 = [v6 screen];
        [v24 nativeBounds];
        v26 = v25;
        v28 = v27;

        v15 = v28 / v17;
        v13 = v26 / v17;
      }

      v7 = a2;
      if (v10)
      {
        v29 = (v9 + 16);
        v7 = a2;
        do
        {
          v30 = *(v29 - 2);
          v31 = *(v29 - 1);
          if (v15 + v13 >= v30 + v31 && (v15 != v31 || v13 != v30))
          {
            v7 = *v29;
          }

          v29 += 3;
          --v10;
        }

        while (v10);
      }
    }

    if (a2 == 1)
    {
      v33 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v34 = [v33 preferencesActions];
      v35 = [v34 enableProKeyboard];

      if (v35)
      {
        v7 = 23;
      }

      else if (v7 == 24)
      {
        if (qword_1ED49EF58 != -1)
        {
          dispatch_once(&qword_1ED49EF58, &__block_literal_global_466_0);
        }

        if (byte_1ED49EEA3)
        {
          v7 = 26;
        }

        else
        {
          v7 = 24;
        }
      }
    }
  }

  return v7;
}

id KBStarLayoutString(void *a1)
{
  v1 = a1;
  NativeDeviceIdiom = UIKeyboardGetNativeDeviceIdiom();
  v3 = KBStarLayoutStringForIdiom(NativeDeviceIdiom, v1);

  return v3;
}

void __getTUIKeyplaneViewClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_6();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyplaneView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyplaneViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyplaneViewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardLayoutStar.m" lineNumber:215 description:{@"Unable to find class %s", "TUIKeyplaneView"}];

    __break(1u);
  }
}

id getTUIKeyplaneViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUIKeyplaneViewClass_softClass;
  v7 = getTUIKeyplaneViewClass_softClass;
  if (!getTUIKeyplaneViewClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIKeyplaneViewClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIKeyplaneViewClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188D3A8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t UIKeyboardInputModeWithTypeUsesKBStar(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = UIKeyboardInputModeUsesKBStar(v3);
  if (a2 <= 0xB && ((1 << a2) & 0x930) != 0 || a2 == 127)
  {
    v4 = UIKeyboardLayoutSupportsNumberPads(v3) & v4;
  }

  return v4;
}

uint64_t sub_188D3ADC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_188A55598(a1, v10);
  sub_188A921E4();
  swift_dynamicCast();
  [v9 CGPointValue];
  v5 = v4;
  v7 = v6;

  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v5;
  a2[1] = v7;
  return result;
}

id getTUIGlowEffectClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED4A0EE8;
  v7 = qword_1ED4A0EE8;
  if (!qword_1ED4A0EE8)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIGlowEffectClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIGlowEffectClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188D3BFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id keyboardui_system_get_log_STAGING()
{
  if (qword_1ED49DC88 != -1)
  {
    dispatch_once(&qword_1ED49DC88, &__block_literal_global_554);
  }

  v1 = qword_1ED49DC80;

  return v1;
}

uint64_t KBEqualStrings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqualToString:v4];
    }
  }

  return v6;
}

void sub_188D3D0B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

Class __getTUIGlowEffectClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A0EF0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_22;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71228B0;
    v8 = 0;
    qword_1ED4A0EF0 = _sl_dlopen();
  }

  if (!qword_1ED4A0EF0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIDictationGlowEffect.m" lineNumber:11 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIGlowEffect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIGlowEffectClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIDictationGlowEffect.m" lineNumber:12 description:{@"Unable to find class %s", "TUIGlowEffect"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4A0EE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __TIGetEmojiSearchAlternateBackgroundValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"EmojiSearchAlternateBackground" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

__CFString *_delegateShortDescr(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696AEC0];
    v2 = a1;
    v3 = [v1 stringWithFormat:@"<%@: %p>", objc_opt_class(), v2];
  }

  else
  {
    v3 = @"(nil)";
  }

  return v3;
}

id _filteredCandidates(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___filteredCandidates_block_invoke;
    v8[3] = &unk_1E7116AA0;
    v9 = v4;
    v5 = [v3 indexesOfObjectsPassingTest:v8];
    v6 = [v3 objectsAtIndexes:v5];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

void sub_188D3ED40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getEnumTagSinglePayload for NavigationBarContentView.Flags(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void _UISharedImageFlushAll()
{
  if (__nameTable)
  {
    os_unfair_lock_lock(&__tableLock);
    v0 = __nameTable;
    Count = CFDictionaryGetCount(__nameTable);
    Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
    CFDictionaryApplyFunction(v0, CopyImageValue, Mutable);
    v4.location = 0;
    v4.length = Count;
    CFArrayApplyFunction(Mutable, v4, FlushCachedImage, 0);
    CFDictionaryRemoveAllValues(__nameTable);
    CFDictionaryRemoveAllValues(__imageTable);
    os_unfair_lock_unlock(&__tableLock);

    CFRelease(Mutable);
  }
}

void sub_188D3F204(uint64_t a1, uint64_t a2)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    type metadata accessor for InProcessAnimationManager();
    objc_opt_self();
    v11 = +[UIScreen _mainScreen];
    v12 = sub_18920BE24(v11, 1);

    v8 = a1;
    v9 = a2;
    v10 = v12;
    goto LABEL_8;
  }

  v4 = sub_188AA9BB0();
  if (v4)
  {
    v5 = v4;
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
LABEL_6:
      v8 = a1;
      v9 = a2;
      v10 = Strong;
LABEL_8:
      sub_188AB75BC(0, v8, v9, v10);

      return;
    }
  }

  v7 = sub_188EB2798();
  if (v7)
  {
    Strong = v7;
    goto LABEL_6;
  }

  v13 = sub_18A4A7258();
  _inProcessAnimationManagerSoftAssert(1, v13);
}

id _UIKBInlineTextCompletionLog()
{
  if (_UIKBInlineTextCompletionLog_onceToken != -1)
  {
    dispatch_once(&_UIKBInlineTextCompletionLog_onceToken, &__block_literal_global_23_0);
  }

  v1 = _UIKBInlineTextCompletionLog_log;

  return v1;
}

void GetProcStatistics(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v6 = (a1 + 32);
  v7 = task_self_trap();
  task_info_outCnt = 8;
  task_info(v7, 6u, v6, &task_info_outCnt);
  task_info_outCnt = 8;
  task_info(v7, 2u, a1, &task_info_outCnt);
  v47 = 0;
  *thread_info_out = 0u;
  v46 = 0u;
  act_list = 0;
  act_listCnt = 0;
  if (task_threads(v7, &act_list, &act_listCnt))
  {
    NSLog(&cfstr_ErrorReturnedB.isa);
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    *(v36 + 6) = MEMORY[0x18CFE9270]();
    v8 = thread_selfcounts();
    *(v40 + 6) = v8;
    if (!v8)
    {
LABEL_5:
      *(a1 + 88) = v32;
      *(a1 + 104) = v34;
      goto LABEL_8;
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __GetProcStatistics_block_invoke;
    block[3] = &unk_1E7123F80;
    block[4] = &v35;
    block[5] = &v39;
    v28 = v32;
    v29 = v33;
    v30 = v34;
    v31 = 40;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
    v8 = *(v40 + 6);
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  NSLog(&cfstr_ErrorReturnedB_0.isa, v8);
LABEL_8:
  if (act_listCnt)
  {
    v9 = 0;
    v2.i32[0] = 999999;
    v3.i32[0] = 999999;
    do
    {
      task_info_outCnt = 10;
      if (!thread_info(act_list[v9], 3u, thread_info_out, &task_info_outCnt))
      {
        v10 = *thread_info_out;
        v11 = *&thread_info_out[2];
        v12 = vadd_s32(*(a1 + 52), *thread_info_out);
        *(a1 + 52) = vadd_s32(v12, vand_s8(vdup_lane_s32(vcgt_s32(vdup_lane_s32(v12, 1), v2), 0), 0xFFF0BDC000000001));
        v13 = vadd_s32(*(a1 + 60), v11);
        *(a1 + 60) = vadd_s32(v13, vand_s8(vdup_lane_s32(vcgt_s32(vdup_lane_s32(v13, 1), v2), 0), 0xFFF0BDC000000001));
        if (act_list[v9] == *(v36 + 6))
        {
          v14 = vadd_s32(*(a1 + 72), v10);
          v15 = vadd_s32(v14, vand_s8(vdup_lane_s32(vcgt_s32(vdup_lane_s32(v14, 1), v3), 0), 0xFFF0BDC000000001));
          v16 = vadd_s32(*(a1 + 80), v11);
          *(a1 + 72) = v15;
          *(a1 + 80) = v16;
          if (v16.i32[1] > 999999)
          {
            *(a1 + 80) = vadd_s32(v16, 0xFFF0BDC000000001);
          }
        }
      }

      ++v9;
    }

    while (v9 < act_listCnt);
    v17 = 8 * act_listCnt;
  }

  else
  {
    v17 = 0;
  }

  if (MEMORY[0x18CFEAAE0](*MEMORY[0x1E69E9A60], act_list, v17))
  {
    NSLog(&cfstr_ErrorReturnedB_1.isa);
  }

  if (a2)
  {
    v18 = vsubq_s32(*(a1 + 16), *(a2 + 16));
    *a1 = vsubq_s32(*a1, *a2);
    *(a1 + 16) = v18;
    if (!*(v40 + 6))
    {
      *(a1 + 88) = vsubq_s64(*(a1 + 88), *(a2 + 88));
      *(a1 + 104) -= *(a2 + 104);
    }

    v19 = *(a1 + 52);
    v20 = *(a1 + 56) - *(a2 + 56);
    *(a1 + 56) = v20;
    if (v20 < 0)
    {
      --v19;
      *(a1 + 56) = v20 + 1000000;
    }

    *(a1 + 52) = v19 - *(a2 + 52);
    v21 = *(a1 + 60);
    v22 = *(a1 + 64) - *(a2 + 64);
    *(a1 + 64) = v22;
    if (v22 < 0)
    {
      --v21;
      *(a1 + 64) = v22 + 1000000;
    }

    *(a1 + 60) = v21 - *(a2 + 60);
    v23 = *(a1 + 72);
    v24 = *(a1 + 76) - *(a2 + 76);
    *(a1 + 76) = v24;
    if (v24 < 0)
    {
      --v23;
      *(a1 + 76) = v24 + 1000000;
    }

    *(a1 + 72) = v23 - *(a2 + 72);
    v25 = *(a1 + 80);
    v26 = *(a1 + 84) - *(a2 + 84);
    *(a1 + 84) = v26;
    if (v26 < 0)
    {
      --v25;
      *(a1 + 84) = v26 + 1000000;
    }

    *(a1 + 80) = v25 - *(a2 + 80);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
}

void sub_188D40450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void __preFenceHandler_block_invoke_7()
{
  v0 = objc_autoreleasePoolPush();
  if (pthread_main_np() != 1)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"__preFenceHandler_block_invoke_7"];
    [v2 handleFailureInFunction:v3 file:@"UIWindow.m" lineNumber:5858 description:@"__preFenceHandler must be called on the main thread"];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __preFenceHandler_block_invoke_8;
  aBlock[3] = &__block_descriptor_33_e8_v12__0B8l;
  v7 = __caCommitState == 1;
  v1 = _Block_copy(aBlock);
  v1[2](v1, 0);
  [UIApp _synchronizeSystemAnimationFencesWithSpinCleanUpBlock:v1];
  if ([qword_1EA968EA0 count])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"__preFenceHandler_block_invoke_7"];
    [v4 handleFailureInFunction:v5 file:@"UIWindow.m" lineNumber:5892 description:@"we can't support registering new preFenceHandlers after the system animation synchronizes"];
  }

  if (__caCommitState != 1)
  {
    __caCommitState = 0;
  }

  byte_1EA968DCE = 0;

  objc_autoreleasePoolPop(v0);
}

uint64_t __preFenceHandler_block_invoke_8(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    __caCommitState = 2;
  }

  if (a2)
  {
    v2 = objc_autoreleasePoolPush();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v3 = __windowsWithContexts();
    v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v34;
      do
      {
        v7 = 0;
        do
        {
          if (*v34 != v6)
          {
            objc_enumerationMutation(v3);
          }

          WeakRetained = objc_loadWeakRetained((*(*(&v33 + 1) + 8 * v7) + 464));
          v9 = [WeakRetained layer];
          [v9 layoutIfNeeded];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v5);
    }

    objc_autoreleasePoolPop(v2);
  }

  for (result = [qword_1EA968EA0 count]; result; result = objc_msgSend(qword_1EA968EA0, "count"))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [qword_1EA968EA0 copy];
    [qword_1EA968EA0 removeAllObjects];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        v17 = 0;
        do
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          (*(*(*(&v29 + 1) + 8 * v17++) + 16))();
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v15);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = __windowsWithContexts();
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        v22 = 0;
        do
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = objc_loadWeakRetained((*(*(&v25 + 1) + 8 * v22) + 464));
          v24 = [v23 layer];
          [v24 layoutIfNeeded];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v20);
    }

    objc_autoreleasePoolPop(v11);
  }

  return result;
}

void FreeContextStack(int *a1)
{
  if (*a1 >= 1)
  {
    do
    {
      PopContextFromStack(a1);
    }

    while (*a1 > 0);
  }

  free(a1);
}

void __getTUISystemInputAssistantStyleStandardClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUISystemInputAssistantStyleStandard");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUISystemInputAssistantStyleStandardClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUISystemInputAssistantStyleStandardClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISystemInputAssistantViewController.m" lineNumber:104 description:{@"Unable to find class %s", "TUISystemInputAssistantStyleStandard"}];

    __break(1u);
  }
}

void sub_188D4314C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t UIKeyboardHasMultipleActiveSecureInputModes()
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v0 = UIKeyboardActiveInputModes;
  v1 = [v0 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *v11;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v11 != v4)
      {
        objc_enumerationMutation(v0);
      }

      v6 = *(*(&v10 + 1) + 8 * v5);
      if (([v6 isEqualToString:{@"autofillsignup", v10}] & 1) == 0 && UIKeyboardLayoutDefaultTypeForInputModeIsSecure(v6))
      {
        v7 = 1;
        v8 = v3 <= 0;
        v3 = 1;
        if (!v8)
        {
          break;
        }
      }

      if (v2 == ++v5)
      {
        v2 = [v0 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v2)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v7 = 0;
  }

  return v7;
}

void sub_188D45614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___fireBackgroundExpirationHandlers_block_invoke(uint64_t a1)
{
  v2 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2A8) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "On backgroundTaskAssertionQueue, clearing shared assertion", v8, 2u);
  }

  v3 = qword_1ED49E260;
  qword_1ED49E260 = 0;

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"UIApplicationBackgroundTaskWillExpireNotification" object:*(a1 + 32)];

  os_unfair_lock_lock(&stru_1ED49E204);
  v5 = [qword_1ED49E250 copy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  os_unfair_lock_unlock(&stru_1ED49E204);
}

void _StatusBar_UIGetDurationOfSpringAnimation(double a1, double a2, double a3, double a4)
{
  objc_opt_self();

  _durationOfSpringAnimation(a1, a2, a3, a4);
}

__CFString *_UIGestureRecognizerStateString(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E710B5F0[a1];
  }
}

void __UIContextBinderDisposeContextForBindable(void *a1, void *a2, char a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [v6 _boundContext];
  if (v6)
  {
    [v6 _bindingDescription];
  }

  if (v7 && (a3 & 1) != 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v8 = *(__UILogGetCategoryCachedImpl("ContextCreation", &__UIContextBinderDisposeContextForBindable___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = [v7 contextId];
        *buf = 138412802;
        v12 = v7;
        v13 = 1024;
        v14 = v10;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Disposing CAContext: %@; contextId: 0x%X; bindable: %@", buf, 0x1Cu);
      }
    }

    [v7 setLayer:0];
    [v7 invalidate];
    [v6 _setBoundContext:0];
    [v5[4] removeObject:v7];
  }
}

uint64_t stateMachineSpec_block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v7 = _NSStringFromUIDeferringAction[a4];
  v8 = [(_UIEventDeferringManager *)*a2 internalBehavior];
  v9 = [v8 wantsLocalIdealRules];

  if (v9)
  {
    v10 = [(_UIEventDeferringManager *)*a2 _localRecordForEnvironment:v6];
    v11 = v10;
    if (v10)
    {
      if ([(_UIEventDeferringRecord *)v10 needsRecreation])
      {
        v12 = 0;
      }

      else
      {
        v13 = v11[3];
        [v13 invalidate];

        v12 = 1;
      }

      [(_UIEventDeferringRecord *)v11 addRecreationReason:?];
      v14 = _UIEventDeferringShorterRecreationReasonStringForReason(*(a2 + 24));
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD10);
      if (*CategoryCachedImpl)
      {
        v36 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = *a2;
          *buf = 134350338;
          v53 = v37;
          v54 = 2114;
          v55 = v6;
          v56 = 2114;
          v57 = v7;
          v58 = 1026;
          v59 = v12;
          v60 = 2114;
          v61 = v14;
          v62 = 2114;
          v63 = v11;
          _os_log_impl(&dword_188A29000, v36, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@ Disabling local record: invalidated: %{public}d; added recreation reason: %{public}@; record: %{public}@", buf, 0x3Au);
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = [(_UIEventDeferringManager *)*a2 internalBehavior];
  v17 = [v16 wantsLocalCompatibilityRules];

  if (v17)
  {
    v18 = [(_UIEventDeferringManager *)*a2 _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
    if (v18)
    {
      [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:v18];
    }

    else
    {
      [MEMORY[0x1E698E3C8] builtinDisplay];
    }
    v20 = ;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__33;
    v50 = __Block_byref_object_dispose__33;
    v51 = 0;
    v21 = _eventDeferringCompatibilityQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = stateMachineSpec_block_invoke_9;
    block[3] = &unk_1E70FB728;
    v45 = &v46;
    v22 = v20;
    v43 = v22;
    v44 = v6;
    dispatch_sync(v21, block);

    v23 = *(a2 + 24);
    v24 = v47[5];
    if (v24 && (-[_UIEventDeferringRecord recreationReasons](v24), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 containsObject:v23], v25, (v27 = v47[5]) != 0) && (WeakRetained = objc_loadWeakRetained((v27 + 32)), v29 = WeakRetained != *(a2 + 8), WeakRetained, ((v29 | v26) & 1) == 0))
    {
      if ([(_UIEventDeferringRecord *)v47[5] needsRecreation])
      {
        v19 = 0;
      }

      else
      {
        v31 = v47[5];
        if (v31)
        {
          v31 = v31[3];
        }

        v32 = v31;
        [v32 invalidate];

        v19 = 1;
      }

      [(_UIEventDeferringRecord *)v47[5] addRecreationReason:?];
      v33 = _UIEventDeferringShorterRecreationReasonStringForReason(*(a2 + 24));
      v34 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD18);
      if (*v34)
      {
        log = *(v34 + 8);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v38 = *a2;
          v39 = v47[5];
          *buf = 134350338;
          v53 = v38;
          v54 = 2114;
          v55 = v6;
          v56 = 2114;
          v57 = v7;
          v58 = 1026;
          v59 = v19;
          v60 = 2114;
          v61 = v33;
          v62 = 2114;
          v63 = v39;
          _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@ Disabling local compatibility record: invalidated: %{public}d; added recreation reason: %{public}@; record: %{public}@", buf, 0x3Au);
        }
      }
    }

    else
    {
      v19 = 0;
    }

    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v19 = 0;
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD20))
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"disabledLocalRecord: %d disabledCompatibilityRecord: %d;", v12, v19];;
    _emitDebugLogForTransition(a3, a4, v35, a2);
  }

  return 5;
}

void sub_188D47920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void stateMachineSpec_block_invoke_8_0(uint64_t a1, id *a2)
{
  v2 = *a2;
  if (*a2)
  {
    if ([*a2 _supportsRapidRestart])
    {
      [v2 locationInView:0];
      [v2 _attemptDragLiftAtLocation:v2[51] useDefaultLiftAnimation:?];
    }

    if (v2[51])
    {
      v3 = [v2 _clickDragDriver];
      v4 = [v3 isPreparingToDrag];

      if ((v4 & 1) == 0)
      {

        [_UIClickPresentationInteraction _endInteractionDidComplete:v2 completion:0];
      }
    }

    else
    {
      v5 = [v2 exclusionRelationshipGestureRecognizer];
      [v5 _succeed];

      v6 = [v2 failureRelationshipGestureRecognizer];
      [v6 _succeed];

      v7 = [v2 activeDriver];
      v8 = _UIClickPresentationAllowableMovementForDriver(v7, 1);
      v9 = [v2 activeDriver];
      [v9 setAllowableMovement:v8];

      if (v2[49] == 1)
      {
        v11 = [v2 feedbackGenerator];
        v10 = [v2 view];
        [v2 locationInView:v10];
        [v11 previewedAtLocation:?];
      }
    }
  }
}

__CFString *_UIEventDeferringShorterRecreationReasonStringForReason(void *a1)
{
  if ([a1 isEqualToString:@"_UIEventDeferringRecreationReasonDetachedContext"])
  {
    return @"detachedContext";
  }

  if ([a1 isEqualToString:@"_UIEventDeferringRecreationReasonChangingScreenIdentifier"])
  {
    return @"changingScreenIdentifier";
  }

  if ([a1 isEqualToString:@"_UIEventDeferringRecreationReasonNoLongerTopRemoteRecord"])
  {
    return @"noLongerTopRemoteRecord";
  }

  if ([a1 isEqualToString:@"_UIEventDeferringRecreationReasonBehaviorDelegateSuppressed"])
  {
    return @"behaviorDelegateSuppressed";
  }

  if ([a1 isEqualToString:@"_UIEventDeferringRecreationReasonTopRemoteElementNotVisible"])
  {
    return @"topRemoteElementNotVisible";
  }

  return &stru_1EFB14550;
}

void _pasteboardCacheQueue_removePersistentPasteboardsFromNameToItemCollectionMap()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = _pasteboardCacheQueue_PasteboardNametoItemCollectionMap();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        v7 = [v1 objectForKeyedSubscript:v6];
        if ([v7 isPersistent])
        {
          [v0 addObject:v6];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  [v1 removeObjectsForKeys:v0];
}

char *sub_188D483A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a2;
  v48 = a1;
  v8 = *(*v4 + 80);
  v9 = sub_18A4A7D38();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v38 - v11;
  v39 = *(v8 - 8);
  v12 = v39;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v38 - v15;
  v45 = type metadata accessor for UIAnimatableProperty.ProtectedState();
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v38 - v16;
  v42 = sub_18A4A7A58();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v19 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v53 = 0;
  _s21RunningAnimationEntryCMa();
  sub_18A4A7D38();
  *(v4 + 4) = sub_188D499E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E0);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = 0;
  *(v4 + 5) = v20;
  v21 = *(v12 + 56);
  v21(&v5[*(*v5 + 128)], 1, 1, v8);
  v21(&v5[*(*v5 + 136)], 1, 1, v8);
  swift_unknownObjectWeakInit();
  sub_188D49AF4(v8, &v5[*(*v5 + 152)]);
  swift_unknownObjectWeakInit();
  v4[*(*v4 + 184)] = 0;
  v22 = &v5[*(*v5 + 192)];
  *v22 = a3;
  *(v22 + 1) = a4;
  v38 = a4;
  sub_188A5E418();

  sub_18A4A7A28();
  sub_18A4A6E38();
  (*(v40 + 104))(v41, *MEMORY[0x1E69E8090], v42);
  *(v4 + 2) = sub_18A4A7A98();
  v23 = v39;
  v24 = *(v39 + 16);
  v25 = v44;
  v26 = v48;
  v24(v44, v48, v8);
  v27 = v46;
  v24(v46, v26, v8);
  v28 = *(v23 + 32);
  v29 = v43;
  v28(v43, v25, v8);
  v30 = v45;
  v28(&v29[*(v45 + 36)], v27, v8);
  v31 = sub_188D499E0();
  (*(v47 + 8))(v29, v30);

  *(v5 + 3) = v31;
  v32 = v49;
  v21(v49, 1, 1, v8);
  v33 = *(*v5 + 136);
  swift_beginAccess();
  v34 = v51;
  v35 = *(v50 + 40);
  v35(&v5[v33], v32, v51);
  swift_endAccess();
  v21(v32, 1, 1, v8);
  v36 = *(*v5 + 128);
  swift_beginAccess();
  v35(&v5[v36], v32, v34);
  swift_endAccess();
  v5[*(*v5 + 168)] = 0;
  *&v5[*(*v5 + 176)] = 0;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t sub_188D48B28(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v49 = a6;
  v12 = sub_18A4A7D38();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - v14;
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v6 + 16);
  os_unfair_lock_lock(v19 + 4);
  swift_beginAccess();
  if (!*(*(v6 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v20 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v47 = v19;
    v48 = a2;
    v45 = v16;
    v46 = a3;
    if (Strong)
    {
      v23 = Strong;
      if (a1)
      {
        v24 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v24 = [Strong layer];
      }

      v25 = v24;

      v26 = sub_18A4A7258();
      v27 = [v25 valueForKeyPath_];

      if (v27)
      {
        sub_18A4A7DE8();
        v28 = swift_unknownObjectRelease();
      }

      else
      {
        memset(v51, 0, sizeof(v51));
      }

      MEMORY[0x1EEE9AC00](v28);
      v29 = v49;
      *(&v42 - 2) = a5;
      *(&v42 - 1) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
      sub_188D496D4(sub_188D4913C, (&v42 - 4), MEMORY[0x1E69E73E0], a5, v30, v15);
      sub_188A553EC(v51);
      if ((*(v16 + 48))(v15, 1, a5) != 1)
      {
        (*(v16 + 32))(v18, v15, a5);
        v31 = v18;
        v32 = a1;
LABEL_16:
        v33 = type metadata accessor for UIAnimatableProperty();
        v34 = swift_unknownObjectWeakLoadStrong();
        v35 = swift_allocObject();
        swift_weakInit();
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        v37 = v32 & 1;
        *(v36 + 24) = v32 & 1;
        v38 = v48;
        v39 = v46;
        *(v36 + 32) = v48;
        *(v36 + 40) = v39;

        v21 = sub_188D4997C(v31, v34, sub_188ABDE1C, v36);

        *(v21 + *(*v21 + 168)) = 1;
        swift_beginAccess();

        LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native();
        v50 = *(v7 + 48);
        *(v7 + 48) = 0x8000000000000000;
        WitnessTable = swift_getWitnessTable();
        sub_188D49CC0(v21, v37, v38, v39, v36, &v50, v33, WitnessTable);

        *(v7 + 48) = v50;
        swift_endAccess();
        (*(v45 + 8))(v31, a5);
        v19 = v47;
        goto LABEL_17;
      }
    }

    else
    {
      (*(v16 + 56))(v15, 1, 1, a5);
    }

    sub_18A4A8408();
    v31 = v18;
    v32 = a1;
    if ((*(v16 + 48))(v15, 1, a5) != 1)
    {
      (*(v43 + 8))(v15, v44);
    }

    goto LABEL_16;
  }

  swift_endAccess();
  type metadata accessor for UIAnimatableProperty();
  v21 = swift_dynamicCastClassUnconditional();
  swift_getWitnessTable();
  swift_unknownObjectRetain();
LABEL_17:
  os_unfair_lock_unlock(v19 + 4);
  return v21;
}

uint64_t sub_188D490C4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188D490FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188D4913C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_188A55598(a1, v5);
  return (*(v3 + 64))(v5, v2, v3);
}

uint64_t sub_188D49510(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = result;
  if (qword_1EA931CE8 != -1)
  {
    result = swift_once();
  }

  v10 = off_1EA935148;
  if (*(off_1EA935148 + 2))
  {
    result = sub_188B0944C(a2, a3);
    if (v11)
    {
      v12 = sub_188A59768(*(v10[7] + result));
      v14 = v13;
      if (![(UIView *)v5 __swiftAnimationInfo])
      {
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v16 = v5;
        v17 = sub_188A5DF40(v16, sub_188ABE008, v15);

        [(UIView *)v16 set__swiftAnimationInfo:v17];
      }

      sub_188D48B28(0, a2, a3, v12, v12, v14);
      v19 = v18;

      ObjectType = swift_getObjectType();
      sub_188D49E64(v9, a4 & 1, ObjectType, v19);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_188D496D4@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = (MEMORY[0x1EEE9AC00])();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_188D499E0()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_18A4A81A8();
  return sub_18A4A8198();
}

uint64_t sub_188D49A5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_188D49AF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = _s8ComposerVMa();
  v5 = v4[9];
  v11 = *(*(a1 - 8) + 56);
  v11(&a2[v5], 1, 1, a1);
  v6 = v4[10];
  v11(&a2[v6], 1, 1, a1);
  v7 = v4[12];
  v11(&a2[v7], 1, 1, a1);
  *a2 = 0;
  v8 = sub_18A4A7D38();
  v9 = *(*(v8 - 8) + 8);
  v9(&a2[v5], v8);
  v11(&a2[v5], 1, 1, a1);
  v9(&a2[v6], v8);
  v11(&a2[v6], 1, 1, a1);
  a2[v4[11]] = 0;
  v9(&a2[v7], v8);

  return (v11)(&a2[v7], 1, 1, a1);
}

uint64_t sub_188D49CC0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = *a6;
  v15 = a2 & 1;
  v16 = sub_188A5E664(a2 & 1, a3, a4);
  v18 = v14[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = v14[3];
  if (v23 < v21 || (a5 & 1) == 0)
  {
    if (v23 < v21 || (a5 & 1) != 0)
    {
      sub_188A5E734(v21, a5 & 1);
      v16 = sub_188A5E664(v15, a3, a4);
      if ((v22 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_18A4A87A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v24 = v16;
      sub_188FA23AC();
      v16 = v24;
    }
  }

  v26 = *a6;
  if (v22)
  {
    v27 = (v26[7] + 16 * v16);
    *v27 = a1;
    v27[1] = a8;

    return swift_unknownObjectRelease();
  }

  v26[(v16 >> 6) + 8] |= 1 << v16;
  v29 = v26[6] + 24 * v16;
  *v29 = v15;
  *(v29 + 8) = a3;
  *(v29 + 16) = a4;
  v30 = (v26[7] + 16 * v16);
  *v30 = a1;
  v30[1] = a8;
  v31 = v26[2];
  v20 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_188D49E64(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_18A4A7D38();
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v21 = a3;
  v22 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  sub_188D496D4(sub_188D4A1E8, v20, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v14, v9);
  v15 = *(v10 + 48);
  if (v15(v9, 1, AssociatedTypeWitness) == 1)
  {
    swift_getAssociatedConformanceWitness();
    sub_18A4A8408();
    if (v15(v9, 1, AssociatedTypeWitness) != 1)
    {
      (*(v18 + 8))(v9, v7);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  }

  (*(a4 + 168))(v13, v19 & 1, a3, a4);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_188D4A118(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_188A55598(a1, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 72))(v5, 1, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_188D4A208@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_188A55598(a1, v9);
  sub_188A55598(v9, v8);
  sub_188A34624(0, &qword_1ED48FD80);
  swift_dynamicCast();
  [v7 doubleValue];
  v5 = v4;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v9);
  *a2 = v5;
  return result;
}

uint64_t sub_188D4A2CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938AF0);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 48);
      v21 = *(v20 + 4 * v19);
      v22 = *(*(v5 + 56) + 8 * v19);
      if (v21 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = *(v20 + 4 * v19);
      }

      result = MEMORY[0x18CFE37B0](*(v7 + 40), LODWORD(v23), 4);
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_188D4A540(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1A0);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x18CFE37B0](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_188D4BB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11[-v7];
  sub_188A55598(a1, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a3 + 120))(v8, a2, a3);
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_188D4D6A4(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 112))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

void sub_188D4DA54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_188D4DBD0(uint64_t *a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = v2 + *(*v2 + 104);
  swift_beginAccess();
  sub_188A3F704(v8, v7, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v15 = *(v7 + 1);
      *v8 = *v7;
      *(v8 + 16) = v15;
      *(v8 + 32) = *(v7 + 2);
    }

    else
    {
      v10 = *(v7 + 7);
      *(v8 + 96) = *(v7 + 6);
      *(v8 + 112) = v10;
      v11 = *(v7 + 9);
      *(v8 + 128) = *(v7 + 8);
      *(v8 + 144) = v11;
      v12 = *(v7 + 3);
      *(v8 + 32) = *(v7 + 2);
      *(v8 + 48) = v12;
      v13 = *(v7 + 5);
      *(v8 + 64) = *(v7 + 4);
      *(v8 + 80) = v13;
      v14 = *(v7 + 1);
      *v8 = *v7;
      *(v8 + 16) = v14;
      *(v8 + 160) = a2;
      *(v8 + 168) = *(v7 + 168);
      *(v8 + 184) = *(v7 + 23);
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 3)
  {
    *v8 = *v7;
    *(v8 + 8) = a2;
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return swift_endAccess();
  }

  sub_188A3F5FC(v7, a1);
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t sub_188D4E7A0(char *a1, int a2, uint64_t a3, uint64_t a4)
{
  v111 = a4;
  LODWORD(v108) = a2;
  v99 = a1;
  v5 = *a3;
  v6 = *(*a3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v97 = v8;
  v98 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v89 - v10;
  v11 = sub_18A4A7D38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v105 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](&v89 - v15);
  v103 = &v89 - v16;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v26 = &v89 - v25;
  v27 = (v7 + 16);
  v28 = (v7 + 56);
  v110 = v22;
  v29 = (v22 + 16);
  v106 = v7;
  v107 = v5;
  v30 = (v7 + 48);
  v104 = a3;
  v101 = v27;
  v102 = v28;
  if (v108)
  {
    v99 = v20;
    v108 = v23;
    v31 = *(v5 + 128);
    swift_beginAccess();
    v96 = *v27;
    v96(v26, v111, v6);
    v97 = *v28;
    v97(v26, 0, 1, v6);
    v32 = *(TupleTypeMetadata2 + 48);
    v33 = *v29;
    v98 = v31;
    v34 = &v31[a3];
    v35 = v108;
    v33(v108, v34, v11);
    v33(&v35[v32], v26, v11);
    v36 = *v30;
    v37 = v6;
    if ((*v30)(v35, 1, v6) == 1)
    {
      v38 = *(v110 + 8);
      v38(v26, v11);
      if (v36(&v35[v32], 1, v6) == 1)
      {
        v38(v35, v11);
LABEL_15:
        v61 = v103;
        v96(v103, v111, v37);
        v62 = v97;
        v97(v61, 0, 1, v37);
        v63 = v104;
        v64 = v104 + *(*v104 + 152);
        swift_beginAccess();
        v65 = _s8ComposerVMa();
        v66 = *(v110 + 40);
        v66(v64 + *(v65 + 48), v61, v11);
        swift_endAccess();
        v62(v61, 1, 1, v37);
        v67 = v98;
        swift_beginAccess();
        v66(&v67[v63], v61, v11);
        return swift_endAccess();
      }
    }

    else
    {
      v50 = v99;
      v33(v99, v35, v11);
      if (v36(&v35[v32], 1, v37) != 1)
      {
        v54 = v106;
        v55 = &v35[v32];
        v56 = v50;
        v57 = v100;
        (*(v106 + 32))(v100, v55, v37);
        v58 = sub_18A4A7248();
        v59 = *(v54 + 8);
        v59(v57, v37);
        v60 = *(v110 + 8);
        v60(v26, v11);
        v59(v56, v37);
        result = (v60)(v35, v11);
        if ((v58 & 1) == 0)
        {
          return result;
        }

        goto LABEL_15;
      }

      (*(v110 + 8))(v26, v11);
      (*(v106 + 8))(v50, v37);
    }

    return (*(v105 + 8))(v35, TupleTypeMetadata2);
  }

  v95 = v24;
  v39 = *(v5 + 136);
  v40 = a3;
  v41 = (v22 + 16);
  v96 = v30;
  v42 = v19;
  v43 = v21;
  swift_beginAccess();
  v91 = *v27;
  v91(v42, v111, v6);
  v92 = *v28;
  v92(v42, 0, 1, v6);
  v44 = TupleTypeMetadata2;
  v45 = *(TupleTypeMetadata2 + 48);
  v46 = *v41;
  v93 = v39;
  v46(v43, v40 + v39, v11);
  v108 = v45;
  v94 = v41;
  v46(v43 + v45, v42, v11);
  v47 = *v96;
  if ((*v96)(v43, 1, v6) == 1)
  {
    v48 = *(v110 + 8);
    v48(v42, v11);
    if (v47(v43 + v108, 1, v6) == 1)
    {
      v48(v43, v11);
      v49 = v107;
      goto LABEL_17;
    }

    return (*(v105 + 8))(v43, v44);
  }

  v90 = v42;
  v52 = v95;
  v46(v95, v43, v11);
  v53 = v108;
  if (v47(v43 + v108, 1, v6) == 1)
  {
    (*(v110 + 8))(v90, v11);
    (*(v106 + 8))(v52, v6);
    return (*(v105 + 8))(v43, v44);
  }

  v68 = v106;
  v69 = v100;
  (*(v106 + 32))(v100, v43 + v53, v6);
  TupleTypeMetadata2 = v43;
  v70 = v107;
  v71 = sub_18A4A7248();
  v72 = *(v68 + 8);
  v72(v69, v6);
  v73 = *(v110 + 8);
  v73(v90, v11);
  v74 = v52;
  v49 = v70;
  v72(v74, v6);
  result = (v73)(TupleTypeMetadata2, v11);
  if ((v71 & 1) == 0)
  {
    return result;
  }

LABEL_17:
  v75 = v104;
  if (sub_188D385B0())
  {
    sub_1890E4524(v111);

    v76 = v103;
    v92(v103, 1, 1, v6);
    v77 = v93;
    swift_beginAccess();
    (*(v110 + 40))(v75 + v77, v76, v11);
    return swift_endAccess();
  }

  v78 = v98;
  v91(v98, v111, v6);
  v79 = v106;
  v80 = (*(v106 + 80) + 40) & ~*(v106 + 80);
  v81 = swift_allocObject();
  *(v81 + 2) = v6;
  *(v81 + 3) = *(v49 + 88);
  *(v81 + 4) = v75;
  (*(v79 + 32))(&v81[v80], v78, v6);
  v82 = swift_allocObject();
  *(v82 + 16) = sub_18909A288;
  *(v82 + 24) = v81;
  v83 = v99;
  swift_beginAccess();
  v84 = *(v83 + 14);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v83 + 14) = v84;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v84 = sub_188E4B69C(0, v84[2] + 1, 1, v84);
    *(v83 + 14) = v84;
  }

  v87 = v84[2];
  v86 = v84[3];
  if (v87 >= v86 >> 1)
  {
    v84 = sub_188E4B69C((v86 > 1), v87 + 1, 1, v84);
  }

  v84[2] = v87 + 1;
  v88 = &v84[2 * v87];
  v88[4] = sub_18909A2C4;
  v88[5] = v82;
  *(v83 + 14) = v84;
  swift_endAccess();
  sub_188AA7584();
}

uint64_t sub_188D4F2F8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_188D4F3B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id _UIKeyboardSmartReplyLog()
{
  if (_UIKeyboardSmartReplyLog_onceToken != -1)
  {
    dispatch_once(&_UIKeyboardSmartReplyLog_onceToken, &__block_literal_global_26_0);
  }

  v1 = _UIKeyboardSmartReplyLog_log;

  return v1;
}

void sub_188D4FF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_188D5085C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188D50B2C(uint64_t a1, int a2)
{
  v25 = *v2;
  v5 = *(v25 + 80);
  v6 = *(v5 - 8);
  v22 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v22 - v7;
  v8 = sub_18A4A7D38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v13 = *(v6 + 16);
  v23 = a1;
  v13(&v22 - v11, a1, v5, v10);
  (*(v6 + 56))(v12, 0, 1, v5);
  v14 = *v2;
  v15 = (v9 + 40);
  v26 = a2;
  if (a2)
  {
    v16 = *(v14 + 128);
  }

  else
  {
    v16 = *(v14 + 136);
  }

  swift_beginAccess();
  (*v15)(&v2[v16], v12, v8);
  swift_endAccess();
  type metadata accessor for InProcessAnimationManager();
  v17 = v24;
  (v13)(v24, v23, v5);
  v18 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = *(v25 + 88);
  *(v19 + 32) = v26 & 1;
  *(v19 + 40) = v2;
  (*(v6 + 32))(v19 + v18, v17, v5);

  sub_18920BFF0(v20, sub_188D4F3EC, v19);
}

uint64_t sub_188D50E14()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void _keybagLockStatusChanged(uint64_t a1, uint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___keybagLockStatusChanged_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v2 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v2[2](v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }
}

void ___keybagLockStatusChanged_block_invoke(uint64_t a1)
{
  v11 = *(a1 + 32);
  v1 = MKBGetDeviceLockState();
  if (!v1)
  {
    v8 = [v11 delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      v7 = @"UIApplicationProtectedDataDidBecomeAvailable";
      goto LABEL_11;
    }

    v6 = [v11 delegate];
    [v6 applicationProtectedDataDidBecomeAvailable:v11];
    v7 = @"UIApplicationProtectedDataDidBecomeAvailable";
    goto LABEL_8;
  }

  v2 = v1 == 2;
  v3 = v11;
  if (v2)
  {
    v4 = [v11 delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      v7 = @"UIApplicationProtectedDataWillBecomeUnavailable";
      goto LABEL_11;
    }

    v6 = [v11 delegate];
    [v6 applicationProtectedDataWillBecomeUnavailable:v11];
    v7 = @"UIApplicationProtectedDataWillBecomeUnavailable";
LABEL_8:

LABEL_11:
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:v7 object:v11 userInfo:0];

    v3 = v11;
  }
}

uint64_t _UIApplicationIsPasswordManagerExtension()
{
  if (qword_1EA992EC8 != -1)
  {
    dispatch_once(&qword_1EA992EC8, &__block_literal_global_1260_0);
  }

  return byte_1EA992DB2;
}

BOOL UIKeyboardLayoutDefaultTypeForInputModeIsSecure(void *a1)
{
  v1 = a1;
  v2 = TIInputModeGetNormalizedIdentifier();
  v3 = TIGetInputModeProperties();
  if (v3 || (+[UIKeyboardInputMode keyboardInputModeWithIdentifier:](UIKeyboardInputMode, "keyboardInputModeWithIdentifier:", v1), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isExtensionInputMode], v4, (v5 & 1) == 0))
  {
    v7 = [v3 objectForKey:*MEMORY[0x1E69D97A0]];
    v8 = v7;
    if (v7 && ![v7 BOOLValue])
    {
      v6 = 0;
    }

    else
    {
      v9 = TIInputModeGetMultilingualSet();
      v6 = 1;
      if ([v9 count] >= 2)
      {
        v10 = [v9 firstObject];
        v11 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v10];

        v12 = [v11 softwareLayout];
        v13 = [v12 containsString:@"-With-"];

        if (v13)
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapableExtended(void *a1)
{
  v1 = a1;
  v2 = _UIMainBundleIdentifier();
  v3 = [v2 isEqualToString:@"com.apple.sidecar.extension.display"];

  IsASCIICapable = UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(v1);
  v5 = v3 ^ 1 | IsASCIICapable;
  if ((v3 & 1) == 0 && (IsASCIICapable & 1) == 0)
  {
    v6 = TICanonicalInputModeName();
    v5 = [v6 isEqualToString:@"ja_JP-Kana"];
  }

  return v5 & 1;
}

uint64_t UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(void *a1)
{
  v1 = a1;
  v2 = TIInputModeGetNormalizedIdentifier();
  v3 = TIGetInputModeProperties();
  if (!v3)
  {
    v4 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v1];
    if ([v4 isExtensionInputMode])
    {
      v5 = [v4 defaultLayoutIsASCIICapable];
      goto LABEL_9;
    }
  }

  v6 = [v3 objectForKey:*MEMORY[0x1E69D9798]];
  v4 = v6;
  v5 = !v6 || [v6 BOOLValue];
LABEL_9:

  return v5;
}

id UIKeyboardGetDerivedKeyboard(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = UIKeyboardGetDerivedKeyboardForSpecificOrientation(v6, v5, a3, [v5 orientation]);

  return v7;
}

UIKBDerivedKeyboard *UIKeyboardGetDerivedKeyboardForSpecificOrientation(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  if (+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating") && +[UIKeyboardImpl floatingIdiom]!= 1)
  {
    v65 = 0;
    goto LABEL_217;
  }

  [v8 bounds];
  v10 = v9;
  [v8 bounds];
  v161 = ([v8 orientation] - 3) < 2;
  v162 = (a4 - 3) < 2;
  v167 = a4 - 3;
  v163 = a4;
  if (v162 != v161)
  {
    [v8 bounds];
    v10 = v11;
    [v8 bounds];
  }

  v12 = [v8 idiom];
  v165 = [v8 idiom];
  v13 = [v8 idiom];
  v164 = a3;
  if (v13 == 3)
  {
    v14 = +[UIKeyboardImpl activeInstance];
    v15 = [v14 requestedInteractionModel] != 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = UIKeyboardComputeKeyboardIdiomFromScreenTraits(v8, [v8 idiom], 0);
  v17 = v7;
  v18 = v17;
  v22 = v16 == 1 || (v16 & 0xFFFFFFFFFFFFFFFELL) == 24 || v16 == 26 || v16 == 23;
  v23 = v17;
  if (v16 - 23) >= 4 && v16 != 1 && ([v17 containsString:@"emoji"])
  {
    goto LABEL_27;
  }

  v24 = !v22;
  if (v16 == 24)
  {
    v24 = 1;
  }

  if ((v24 & 1) != 0 || ([v18 containsString:@"HWR"] & 1) == 0)
  {
    v25 = v7;
    v160 = 1;
  }

  else
  {
LABEL_27:
    v25 = v7;
    v160 = 0;
  }

  v26 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v27 = [v26 preferencesActions];
  if ([v27 inputModeSupportsCrescendo:v23 screenTraits:v8])
  {
    if (v164 == 127)
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  if (!v12)
  {
    [v8 keyboardScreenReferenceSize];
    v7 = v25;
    v37 = v23;
    if (*&qword_1ED49EF48 != v40 || (v41 = *&qword_1ED49EF50, *&qword_1ED49EF50 != v39))
    {
      [v8 keyboardScreenReferenceSize];
      qword_1ED49EF48 = v42;
      qword_1ED49EF50 = v43;
      v41 = _UIScreenReferenceBoundsSizeForType(6uLL);
      v44 = *&qword_1ED49EF48 == v41;
      if (*&qword_1ED49EF50 != v45)
      {
        v44 = 0;
      }

      byte_1ED49EEA2 = v44;
      if (v44)
      {
        goto LABEL_58;
      }

      if (*&qword_1ED49EF48 == _UIScreenReferenceBoundsSizeForType(0xDuLL))
      {
        v41 = *&qword_1ED49EF50;
        if (*&qword_1ED49EF50 == v46)
        {
          goto LABEL_58;
        }
      }

      v41 = _UIScreenReferenceBoundsSizeForType(0xFuLL);
      v47 = *&qword_1ED49EF48 == v41;
      if (*&qword_1ED49EF50 != v48)
      {
        v47 = 0;
      }

      byte_1ED49EEA1 |= v47;
      if (v47)
      {
        goto LABEL_58;
      }

      if (*&qword_1ED49EF48 == _UIScreenReferenceBoundsSizeForType(0x17uLL))
      {
        v41 = *&qword_1ED49EF50;
        if (*&qword_1ED49EF50 == v49)
        {
          goto LABEL_58;
        }
      }

      v41 = _UIScreenReferenceBoundsSizeForType(0x19uLL);
      v50 = *&qword_1ED49EF48 == v41;
      if (*&qword_1ED49EF50 != v51)
      {
        v50 = 0;
      }

      byte_1ED49EEA1 |= v50;
      if (v50)
      {
        goto LABEL_58;
      }

      if (*&qword_1ED49EF48 == _UIScreenReferenceBoundsSizeForType(0x1BuLL))
      {
        v41 = *&qword_1ED49EF50;
        if (*&qword_1ED49EF50 == v52)
        {
          goto LABEL_58;
        }
      }

      v41 = _UIScreenReferenceBoundsSizeForType(0x1DuLL);
      v53 = *&qword_1ED49EF48 == v41;
      if (*&qword_1ED49EF50 != v54)
      {
        v53 = 0;
      }

      byte_1ED49EEA1 |= v53;
      if (v53)
      {
LABEL_58:
        v55 = 1;
      }

      else
      {
        v41 = _UIScreenReferenceBoundsSizeForType(0x1FuLL);
        v55 = *&qword_1ED49EF48 == v41;
        if (*&qword_1ED49EF50 != v158)
        {
          v55 = 0;
        }
      }

      _MergedGlobals_1167 = v55;
    }

    if (v167 > 1)
    {
      if (_MergedGlobals_1167 == 1)
      {
        v78 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v23, v41];
        [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:v163 inputMode:v78];
        v81 = v10 - (v79 + v80);
        [0 setKeyboardSizeBasis:{v81, 215.0}];
        v82 = -1.0;
        if (byte_1ED49EEA2 == 1 && ([v23 containsString:@"HWR"] & 1) == 0)
        {
          v82 = 200.0;
          [0 setKeyboardSizeBasis:{v81, 200.0}];
        }

        v83 = objc_alloc_init(UIKBDerivedKeyboard);
        v65 = v83;
        v84 = @"iPhone-PortraitTruffle";
        if ((byte_1ED49EEA1 & 1) == 0)
        {
          if (v8)
          {
            if (!v8[35])
            {
              v84 = @"iPhone-PortraitChoco";
            }
          }

          else
          {
            v84 = @"iPhone-PortraitChoco";
          }
        }

        [(UIKBDerivedKeyboard *)v83 setDerivedKBStarPrefixName:v84];
        [(UIKBDerivedKeyboard *)v65 setKeyboardSize:v81, v82];

        goto LABEL_214;
      }

      goto LABEL_213;
    }

    v56 = v15;
    v57 = +[UIKeyboardImpl activeInstance];
    v58 = [v57 candidateController];
    [v58 candidateBarHeightForOrientation:v163];
    v60 = v59;

    if (_MergedGlobals_1167 == 1)
    {
      v61 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v37];
      [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:v163 inputMode:v61];
      v64 = v10 - (v62 + v63);
      v65 = objc_alloc_init(UIKBDerivedKeyboard);
      v66 = [v37 containsString:@"emoji"];
      if (v66)
      {
        v67 = @"iPhone-LandscapeTruffle";
      }

      else
      {
        v67 = @"iPhone-Caymen";
      }

      if (v66)
      {
        v68 = 200.0;
      }

      else
      {
        v68 = -1.0;
      }

      [(UIKBDerivedKeyboard *)v65 setDerivedKBStarPrefixName:v67];
      if (byte_1ED49EEA2)
      {
        v69 = 150.0;
      }

      else
      {
        v69 = v68;
      }

      [(UIKBDerivedKeyboard *)v65 setKeyboardSizeBasis:v64, v69];
      [(UIKBDerivedKeyboard *)v65 setKeyboardSize:v64, v69];
    }

    else
    {
      if (v10 >= 812.0)
      {
        v65 = objc_alloc_init(UIKBDerivedKeyboard);
        v130 = 662.0;
        v131 = 152.0;
        [(UIKBDerivedKeyboard *)v65 setKeyboardSizeBasis:662.0, 152.0];
        v15 = v56;
        if ([v37 containsString:@"emoji"])
        {
          v130 = 724.0;
        }

        else if (UIKeyboardShouldMatchHeightWithPredictionViewOnLandscapeLargePhoneKeyboard(v37))
        {
          v131 = v60 + 152.0;
        }

        else
        {
          v131 = 152.0;
        }

        if (v160)
        {
          v138 = v131;
        }

        else
        {
          v138 = -1.0;
        }

        [(UIKBDerivedKeyboard *)v65 setKeyboardSize:v130, v138];
        if (v160)
        {
          [(UIKBDerivedKeyboard *)v65 setDerivedKBStarPrefixName:@"iPhone-Caymen"];
        }

        goto LABEL_127;
      }

      v65 = 0;
    }

    v15 = v56;
LABEL_127:
    if (v65 || v10 < 667.0)
    {
      goto LABEL_214;
    }

    if (UIKeyboardShouldAddMarginOnLandscapeLargePhoneKeyboard(v37))
    {
      v65 = objc_alloc_init(UIKBDerivedKeyboard);
      [(UIKBDerivedKeyboard *)v65 setDerivedKBStarPrefixName:@"iPhone-Caymen"];
      [(UIKBDerivedKeyboard *)v65 setKeyboardSize:v10 + -144.0, -1.0];
      if (UIKeyboardShouldMatchHeightWithPredictionViewOnLandscapeLargePhoneKeyboard(v37))
      {
        [(UIKBDerivedKeyboard *)v65 keyboardSize];
        [(UIKBDerivedKeyboard *)v65 setKeyboardSize:?];
      }

      [(UIKBDerivedKeyboard *)v65 keyboardSize];
      [(UIKBDerivedKeyboard *)v65 setKeyboardSizeBasis:?];
      goto LABEL_214;
    }

    goto LABEL_213;
  }

  v7 = v25;
  if (v165 != 1)
  {
    v37 = v23;
    if (v13 != 3)
    {
      goto LABEL_213;
    }

    v70 = UIKeyboardPhoneLayoutToUseForCarPlayInputMode(v23);
    if (!v70)
    {
      goto LABEL_213;
    }

    v71 = v70;
    v72 = [v8 touchInput];

    if (!v72)
    {
      goto LABEL_213;
    }

    v65 = objc_alloc_init(UIKBDerivedKeyboard);
    v73 = [getTUIKeyboardLayoutFactoryClass() sharedKeyboardFactory];
    v74 = [v73 keyboardPrefixForWidth:0 andEdge:640.0];
    [(UIKBDerivedKeyboard *)v65 setDerivedKBStarPrefixName:v74];

    if (_UISolariumEnabled())
    {
      v75 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v76 = [v75 preferencesActions];
      v77 = [v76 colorAdaptiveKeyboardEnabled];

      if (((v77 | v15) & 1) == 0)
      {
LABEL_78:
        [(UIKBDerivedKeyboard *)v65 setKeyboardSize:fmin(v10 + -44.0, 356.0), 153.5];
        goto LABEL_217;
      }
    }

    else if (!v15)
    {
      goto LABEL_78;
    }

    [v8 bounds];
    v133 = v132;
    [v8 bounds];
    v135 = v134;
    [v8 bounds];
    if (v135 >= v136 * 0.7)
    {
      v137 = v133 + -24.0;
    }

    else
    {
      v137 = fmin(v133 + -44.0 + -24.0, 430.0);
    }

    v148 = round(v137 * 0.333333333);
    if (v148 >= 130.0)
    {
      v149 = v148;
    }

    else
    {
      v149 = 130.0;
    }

    v150 = +[UIKeyboardImpl activeInstance];
    v151 = [v150 textInputTraits];
    [v151 preferredInputViewHeight];
    v153 = v152 + -16.0;

    if (v153 >= v149 || v153 <= 0.0)
    {
      v127 = v149;
    }

    else
    {
      v127 = v153;
    }

    v128 = v65;
    v129 = v137;
LABEL_151:
    [(UIKBDerivedKeyboard *)v128 setKeyboardSize:v129, v127];
    goto LABEL_214;
  }

  v166 = v15;
  v28 = v162 ^ v161;
  v29 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v30 = [v29 preferencesActions];
  v31 = [v30 enableProKeyboard];

  v32 = [v8 screen];
  [v32 _referenceBounds];
  v37 = v23;
  v159 = v10;
  if (v162 != v161)
  {
    Width = CGRectGetWidth(*&v33);
  }

  else
  {
    Width = CGRectGetHeight(*&v33);
  }

  v85 = Width;

  v86 = [v8 screen];
  [v86 scale];
  v88 = v87;

  if (v88 == 0.0)
  {
    v89 = 1.0;
  }

  else
  {
    v89 = v88;
  }

  v90 = [v8 screen];
  [v90 nativeBounds];
  v92 = v91;
  v94 = v93;

  if (v28)
  {
    v95 = v92;
  }

  else
  {
    v95 = v94;
  }

  if (v28)
  {
    v96 = v94;
  }

  else
  {
    v96 = v92;
  }

  v97 = v95 / v89;
  v99 = _UIScreenReferenceBoundsSizeForType(0x23uLL);
  v100 = v98;
  if (v97 >= v85)
  {
    v101 = v97 > v98 && v97 > 1210.0;
  }

  else
  {
    v101 = 1;
  }

  v102 = v85 < v97 && v97 > 1210.0;
  if (v167 >= 2)
  {
    v103 = 323.0;
  }

  else
  {
    v103 = 416.0;
  }

  if (+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating") && +[UIKeyboardImpl floatingIdiom]== 1)
  {
    v65 = objc_alloc_init(UIKBDerivedKeyboard);
    +[UIKeyboardImpl floatingWidth];
    v105 = v104;
    +[UIKeyboardImpl floatingHeight];
    v107 = v106;
    [(UIKBDerivedKeyboard *)v65 setKeyboardSizeBasis:v105, v106];
LABEL_112:
    v15 = v166;
    goto LABEL_143;
  }

  if ((+[UIKeyboardImpl overrideNativeScreen]|| v97 <= 1210.0 || v101) && ((v31 ^ 1) & 1) == 0)
  {
    v65 = objc_alloc_init(UIKBDerivedKeyboard);
    if (v97 > 1210.0 && !v101)
    {
      v108 = [v8 screen];
      [v108 _unjailedReferenceBoundsForInterfaceOrientation:v163];
      v99 = v109;
      v111 = v110;
    }

    else
    {
      if (v167 >= 2)
      {
        v111 = v100;
      }

      else
      {
        v111 = v99;
      }

      if (v167 < 2)
      {
        v99 = v100;
      }
    }

    v15 = v166;
    v105 = v159;
    v122 = [getTUIKeyboardLayoutFactoryClass() sharedKeyboardFactory];
    v123 = [v122 keyboardPrefixForWidth:v167 > 1 andEdge:v99];
    [(UIKBDerivedKeyboard *)v65 setDerivedKBStarPrefixName:v123];

    [(UIKBDerivedKeyboard *)v65 setKeyboardSizeBasis:v159, v103];
    [v8 bounds];
    v107 = v103 * v124 / v111;
    goto LABEL_143;
  }

  if ((v97 <= 1210.0) | v31 & 1)
  {
    v112 = v102 & v31;
    if ((v16 == 24) | v112 & 1)
    {
      v65 = objc_alloc_init(UIKBDerivedKeyboard);
      [(UIKBDerivedKeyboard *)v65 setAddsSupplementaryControlKeys:1];
      if (v167 > 1)
      {
        v113 = v159;
        v139 = v159 < 834.0 || v101;
        v115 = v139 == 0;
        v116 = 258.0;
        v117 = 255.0;
      }

      else
      {
        v113 = v159;
        v114 = v159 < 1194.0 || v101;
        v115 = v114 == 0;
        v116 = 343.0;
        v117 = 337.0;
      }

      if (v115)
      {
        v107 = v116;
      }

      else
      {
        v107 = v117;
      }

      v140 = v96 / v89;
      [(UIKBDerivedKeyboard *)v65 setKeyboardSizeBasis:v113, v107];
      v105 = v113;
      if (v101)
      {
        v107 = v85 / v97 * v107;
        if ([v8 isKeyboardMinorEdgeWidth])
        {
          v141 = v140;
        }

        else
        {
          v141 = v97;
        }

        v142 = [getTUIKeyboardLayoutFactoryClass() sharedKeyboardFactory];
        v143 = [v142 keyboardPrefixForWidth:objc_msgSend(v8 andEdge:{"isKeyboardMinorEdgeWidth"), round(v141)}];
        [(UIKBDerivedKeyboard *)v65 setDerivedKBStarPrefixName:v143];
      }

      if (v112)
      {
        if ([v8 isKeyboardMinorEdgeWidth])
        {
          v144 = v140;
        }

        else
        {
          v144 = v97;
        }

        v145 = [getTUIKeyboardLayoutFactoryClass() sharedKeyboardFactory];
        v146 = [v145 keyboardPrefixForWidth:objc_msgSend(v8 andEdge:{"isKeyboardMinorEdgeWidth"), round(v144)}];
        [(UIKBDerivedKeyboard *)v65 setDerivedKBStarPrefixName:v146];
      }

      if ([v37 containsString:@"HWR"])
      {
        v147 = v105 < 1180.0;
        if (v167 >= 2)
        {
          v147 = v105 < 820.0;
        }

        if (!v147)
        {
          v107 = -1.0;
        }
      }

      goto LABEL_112;
    }

    if (v16 == 23)
    {
      v15 = v166;
      v105 = v159;
      if ([v23 containsString:@"emoji"])
      {
        v65 = objc_alloc_init(UIKBDerivedKeyboard);
        [(UIKBDerivedKeyboard *)v65 setAddsSupplementaryControlKeys:0];
        [(UIKBDerivedKeyboard *)v65 setKeyboardSizeBasis:v159, v103];
        if (v167 >= 2)
        {
          v156 = @"Wildcat-PortraitFudge";
        }

        else
        {
          v156 = @"Wildcat-LandscapeFudge";
        }

        [(UIKBDerivedKeyboard *)v65 setDerivedKBStarPrefixName:v156];
        v107 = v103;
        goto LABEL_143;
      }
    }

    else
    {
      v15 = v166;
      v105 = v159;
      if (v16 == 26)
      {
        v65 = objc_alloc_init(UIKBDerivedKeyboard);
        [(UIKBDerivedKeyboard *)v65 setAddsSupplementaryControlKeys:0];
        if (v167 >= 2)
        {
          v155 = @"Wildcat-Portrait";
        }

        else
        {
          v155 = @"Wildcat-Landscape";
        }

        [(UIKBDerivedKeyboard *)v65 setKeyboardSizeBasis:v159, dbl_18A67E740[v167 < 2]];
        [(UIKBDerivedKeyboard *)v65 setDerivedKBStarPrefixName:v155];
        goto LABEL_207;
      }

      if (v16 == 25)
      {
        v65 = objc_alloc_init(UIKBDerivedKeyboard);
        [(UIKBDerivedKeyboard *)v65 setAddsSupplementaryControlKeys:0];
        v105 = dbl_18A67E750[v167 < 2];
        [(UIKBDerivedKeyboard *)v65 setKeyboardSizeBasis:v105, dbl_18A67E740[v167 < 2]];
LABEL_207:
        v107 = -1.0;
        goto LABEL_143;
      }
    }

LABEL_213:
    v65 = 0;
    goto LABEL_214;
  }

  v107 = *(MEMORY[0x1E695F060] + 8);
  v65 = objc_alloc_init(UIKBDerivedKeyboard);
  v118 = [getTUIKeyboardLayoutFactoryClass() sharedKeyboardFactory];
  v119 = v118;
  v120 = 768.0;
  if (v167 < 2)
  {
    v120 = 1024.0;
  }

  v121 = [v118 keyboardPrefixForWidth:v167 > 1 andEdge:v120];
  [(UIKBDerivedKeyboard *)v65 setDerivedKBStarPrefixName:v121];

  v105 = v159;
  [(UIKBDerivedKeyboard *)v65 setKeyboardSizeBasis:v159, v103];
  v15 = v166;
  if (v16 == 24)
  {
    [(UIKBDerivedKeyboard *)v65 setAddsSupplementaryControlKeys:1];
  }

LABEL_143:
  if (v65)
  {
    v125 = -1.0;
    if (v107 != -1.0)
    {
      v126 = [v37 containsString:{@"emoji", -1.0}];
      v125 = v107 + 55.0;
      if (!v126)
      {
        v125 = v107;
      }
    }

    if (v160)
    {
      v127 = v125;
    }

    else
    {
      v127 = -1.0;
    }

    v128 = v65;
    v129 = v105;
    goto LABEL_151;
  }

LABEL_214:
  if (v15 && (UIKeyboardDynamicKeyboardShouldFallBackToStaticKeyboard(v8, v37) & 1) == 0)
  {
    [(UIKBDerivedKeyboard *)v65 setDerivedKBStarPrefixName:@"Dynamic"];
  }

LABEL_217:

  return v65;
}

void sub_188D546A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIKeyboardLog()
{
  if (_UIKeyboardLog_onceToken != -1)
  {
    dispatch_once(&_UIKeyboardLog_onceToken, &__block_literal_global_11);
  }

  v1 = _UIKeyboardLog_log;

  return v1;
}

void __getTUISystemInputAssistantViewClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUISystemInputAssistantView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUISystemInputAssistantViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUISystemInputAssistantViewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISystemInputAssistantViewController.m" lineNumber:98 description:{@"Unable to find class %s", "TUISystemInputAssistantView"}];

    __break(1u);
  }
}

Class __getTUISystemInputAssistantViewClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49A420)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_27;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E712C868;
    v8 = 0;
    qword_1ED49A420 = _sl_dlopen();
  }

  if (!qword_1ED49A420)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIHandwritingAssistantView.m" lineNumber:23 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUISystemInputAssistantView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUISystemInputAssistantViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIHandwritingAssistantView.m" lineNumber:24 description:{@"Unable to find class %s", "TUISystemInputAssistantView"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_3_24 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_188D55820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIKBEffectsForStyle(uint64_t a1, void *a2)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AXSEnhanceBackgroundContrastEnabled();
  if (v4)
  {
    v5 = a1 == 2030;
  }

  else
  {
    v5 = 0;
  }

  v6 = 2039;
  if (!v5)
  {
    v6 = a1;
  }

  if (v6 <= 3902)
  {
    if (v6 > 3899)
    {
      if (v6 != 3900)
      {
        if (v6 == 3901)
        {
          if (v4)
          {
            v7 = [UIColor colorWithRed:0.8184 green:0.8359 blue:0.8603 alpha:1.0];
            v8 = [UIVisualEffect effectCompositingColor:v7];
            v46 = v8;
            v9 = MEMORY[0x1E695DEC8];
            v10 = &v46;
            goto LABEL_27;
          }

          v7 = [UIBlurEffect effectWithBlurRadius:30.0];
          v45[0] = v7;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v24 = xmmword_18A67FF80;
          v25 = xmmword_18A67FF90;
          v26 = xmmword_18A67FFA0;
          v27 = xmmword_18A67FFB0;
          v28 = xmmword_18A67FFC0;
          v29 = xmmword_18A67FFD0;
          v33 = xmmword_18A67FFE0;
          v34 = xmmword_18A67FFF0;
          v35 = 0;
          v8 = [UIColorEffect colorEffectMatrix:&v24];
          v45[1] = v8;
          v9 = MEMORY[0x1E695DEC8];
          v10 = v45;
        }

        else
        {
          if (v4)
          {
            v7 = [UIColor colorWithRed:0.9324 green:0.9414 blue:0.964 alpha:1.0];
            v8 = [UIVisualEffect effectCompositingColor:v7];
            v44 = v8;
            v9 = MEMORY[0x1E695DEC8];
            v10 = &v44;
LABEL_27:
            v18 = 1;
LABEL_41:
            v11 = [v9 arrayWithObjects:v10 count:v18];
            goto LABEL_42;
          }

          v7 = [UIBlurEffect effectWithBlurRadius:20.0];
          v43[0] = v7;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v24 = xmmword_18A680010;
          v25 = xmmword_18A680020;
          v26 = xmmword_18A680030;
          v27 = xmmword_18A680040;
          v28 = xmmword_18A680050;
          v29 = xmmword_18A680060;
          v33 = xmmword_18A680070;
          v34 = xmmword_18A680080;
          v35 = 0;
          v8 = [UIColorEffect colorEffectMatrix:&v24];
          v43[1] = v8;
          v9 = MEMORY[0x1E695DEC8];
          v10 = v43;
        }

LABEL_40:
        v18 = 2;
        goto LABEL_41;
      }

      v7 = [UIBlurEffect effectWithBlurRadius:20.0];
      v40[0] = v7;
      v8 = [UIColorEffect colorEffectSaturate:2.0];
      v40[1] = v8;
      v25 = 0uLL;
      v31 = 0;
      v32 = 0;
      v24 = 0x3FEAE147AE147AE1uLL;
      *&v26 = 0;
      *(&v26 + 1) = 0x3FEAE147AE147AE1;
      v27 = 0u;
      v28 = 0u;
      v30 = 0;
      v29 = 0x3FEAE147AE147AE1uLL;
      v33 = xmmword_18A680000;
      v34 = vdupq_n_s64(0x3FC47AE147AE147BuLL);
      v35 = 0x3FC47AE147AE147BLL;
      v15 = [UIColorEffect colorEffectMatrix:&v24];
      v40[2] = v15;
      v16 = MEMORY[0x1E695DEC8];
      v17 = v40;
      goto LABEL_36;
    }

    if (v6 != 2030)
    {
      if (v6 == 2039)
      {
        v7 = [UIColor colorWithWhite:0.04 alpha:0.988];
        v8 = [UIVisualEffect effectCompositingColor:v7];
        v41 = v8;
        v9 = MEMORY[0x1E695DEC8];
        v10 = &v41;
        goto LABEL_27;
      }

LABEL_33:
      if (os_variant_has_internal_diagnostics())
      {
        v7 = [UIBlurEffect effectWithBlurRadius:20.0];
        v36[0] = v7;
        v8 = +[UIColor redColor];
        v15 = [UIColorEffect colorEffectMultiply:v8];
        v36[1] = v15;
        v16 = MEMORY[0x1E695DEC8];
        v17 = v36;
        v21 = 2;
        goto LABEL_37;
      }

LABEL_34:
      v11 = MEMORY[0x1E695E0F0];
      goto LABEL_44;
    }

    v7 = [UIBlurEffect effectWithBlurRadius:20.0];
    v42[0] = v7;
    v8 = [UIColorEffect colorEffectSaturate:1.8];
    v42[1] = v8;
    v25 = 0uLL;
    v31 = 0;
    v32 = 0;
    v24 = 0x3FD147AE147AE148uLL;
    *&v26 = 0;
    *(&v26 + 1) = 0x3FD147AE147AE148;
    v27 = 0u;
    v28 = 0u;
    v30 = 0;
    v29 = 0x3FD147AE147AE148uLL;
    v33 = xmmword_18A67FF70;
    v34 = vdupq_n_s64(0x3FC57DBF487FCB92uLL);
    v35 = 0x3FE75C28F5C28F5CLL;
    v15 = [UIColorEffect colorEffectMatrix:&v24];
    v42[2] = v15;
    v16 = MEMORY[0x1E695DEC8];
    v17 = v42;
LABEL_36:
    v21 = 3;
LABEL_37:
    v11 = [v16 arrayWithObjects:v17 count:v21];

LABEL_42:
    goto LABEL_43;
  }

  if (v6 <= 3904)
  {
    if (v6 != 3903)
    {
      v7 = [UIImage kitImageNamed:@"systemVariableBlurMask.png"];
      v12 = [objc_opt_self() mainScreen];
      [v12 scale];
      v14 = v13;

      v8 = [UIBlurEffect _effectWithVariableBlurRadius:v7 imageMask:0 scale:40.0 / v14 allowingAXAdaptation:1.0];
      v48[0] = v8;
      v9 = MEMORY[0x1E695DEC8];
      v10 = v48;
      goto LABEL_27;
    }

    goto LABEL_34;
  }

  if (v6 == 3905)
  {
    v7 = [UIBlurEffect effectWithBlurRadius:45.0];
    v47[0] = v7;
    v8 = [UIColorEffect colorEffectSaturate:1.4];
    v47[1] = v8;
    v9 = MEMORY[0x1E695DEC8];
    v10 = v47;
    goto LABEL_40;
  }

  if (v6 == 3908)
  {
    v19 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v20 = [v19 preferencesActions];
    if ([v20 colorAdaptiveKeyboardBackdropEnabled] && !_AXSEnhanceBackgroundContrastEnabled())
    {
      v23 = _AXDarkenSystemColors();

      if (!v23)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    if ([v3 lightKeyboard])
    {
      v7 = [UIBlurEffect effectWithBlurRadius:30.0];
      v39[0] = v7;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v24 = xmmword_18A67FF80;
      v25 = xmmword_18A67FF90;
      v26 = xmmword_18A67FFA0;
      v27 = xmmword_18A67FFB0;
      v28 = xmmword_18A67FFC0;
      v29 = xmmword_18A67FFD0;
      v33 = xmmword_18A67FFE0;
      v34 = xmmword_18A67FFF0;
      v35 = 0;
      v8 = [UIColorEffect colorEffectMatrix:&v24];
      v39[1] = v8;
      v9 = MEMORY[0x1E695DEC8];
      v10 = v39;
      goto LABEL_40;
    }

    v7 = [UIBlurEffect effectWithBlurRadius:20.0];
    v38[0] = v7;
    v8 = [UIColorEffect colorEffectSaturate:1.8];
    v38[1] = v8;
    v25 = 0uLL;
    v31 = 0;
    v32 = 0;
    v24 = 0x3FD147AE147AE148uLL;
    *&v26 = 0;
    *(&v26 + 1) = 0x3FD147AE147AE148;
    v27 = 0u;
    v28 = 0u;
    v30 = 0;
    v29 = 0x3FD147AE147AE148uLL;
    v33 = xmmword_18A67FF70;
    v34 = vdupq_n_s64(0x3FC57DBF487FCB92uLL);
    v35 = 0x3FE75C28F5C28F5CLL;
    v15 = [UIColorEffect colorEffectMatrix:&v24];
    v38[2] = v15;
    v16 = MEMORY[0x1E695DEC8];
    v17 = v38;
    goto LABEL_36;
  }

  if (v6 != 3909)
  {
    goto LABEL_33;
  }

  v7 = [UIBlurEffect effectWithBlurRadius:20.0];
  v37 = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
LABEL_43:

LABEL_44:

  return v11;
}

void *UIAssistantViewPlacement(void *a1)
{
  v1 = a1;
  v2 = [v1 assistantView];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  return v4;
}

void sub_188D56B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *UIKeyboardInputModeGetNumericLocale(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF58] preferredLocale];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  if (UIKeyboardInputModeLanguageMatchesLocaleLanguage(v1, v2))
  {
    v4 = v2;
LABEL_5:
    v5 = v4;
    goto LABEL_9;
  }

  if (UIKeyboardInputModeLanguageMatchesLocaleLanguage(v1, v3))
  {
    v4 = v3;
    goto LABEL_5;
  }

  v6 = MEMORY[0x1E695DF58];
  v7 = TIInputModeGetLanguageWithRegion();
  v8 = [v6 componentsFromLocaleIdentifier:v7];
  v9 = [v8 mutableCopy];

  v10 = UIKeyboardLocalizedString(@"UI-DefaultLocaleNumericID", v1, 0, 0);
  if ([v10 length])
  {
    [v9 setObject:v10 forKey:@"numbers"];
  }

  v11 = MEMORY[0x1E695DF58];
  v12 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v9];
  v5 = [v11 localeWithLocaleIdentifier:v12];

LABEL_9:
  v13 = v5;

  return v5;
}

uint64_t UIKeyboardUIPreferStringOverImageForInputMode(void *a1)
{
  v1 = a1;
  if (_UISolariumEnabled() && (+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController, "sharedPreferencesController"), v2 = objc_claimAutoreleasedReturnValue(), [v2 preferencesActions], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "colorAdaptiveKeyboardEnabled"), v3, v2, (v4 & 1) != 0))
  {
    v5 = 0;
  }

  else
  {
    v6 = TIInputModeGetRegion();
    v7 = TIInputModeGetBaseLanguage();
    v8 = [v7 isEqualToString:@"en"];

    if (!v8 || ([v6 isEqualToString:@"GB"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"JP") & 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v10 = +[UIKeyboardImpl keyboardScreen];
      v11 = +[UIKeyboard activeKeyboard];
      v12 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v10, [v11 interfaceOrientation]);

      v13 = UIKeyboardComputeKeyboardIdiomFromScreenTraits(v12, [v12 idiom], 0);
      v14 = KBStarLayoutString(v1);
      v15 = v14;
      if (v13 == 23)
      {
        if ([v14 isEqualToString:@"AZERTY"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"QWERTZ"))
        {
          v5 = 0;
        }

        else
        {
          v5 = [v15 isEqualToString:@"QWERTY-ISO"] ^ 1;
        }
      }

      else
      {
        v5 = 1;
      }
    }
  }

  return v5;
}

void sub_188D596F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _UIGetUseTwoFingerPhone()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_UseTwoFingerPhone, _UIInternalPreferencesRevisionVar == _UIInternalPreference_UseTwoFingerPhone))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_UseTwoFingerPhone, @"UseTwoFingerPhone", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_UseTwoFingerPhone;
    }

    while (v0 != _UIInternalPreference_UseTwoFingerPhone);
  }

  return byte_1ED48AAA4 && v1;
}

uint64_t UIKeyboardShowsTransliterationCandidatesForInputMode()
{
  v0 = TIInputModeGetNormalizedIdentifier();
  v1 = TIGetInputModeProperties();
  v2 = [v1 objectForKey:*MEMORY[0x1E69D97D0]];
  v3 = [v2 BOOLValue];

  return v3;
}

Class __getTUIPredictionViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED499408)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_20;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E711C910;
    v8 = 0;
    qword_1ED499408 = _sl_dlopen();
  }

  if (!qword_1ED499408)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKBMultilingualKeyboardIntroductionView.m" lineNumber:40 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIPredictionView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIPredictionViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKBMultilingualKeyboardIntroductionView.m" lineNumber:41 description:{@"Unable to find class %s", "TUIPredictionView"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1_21 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getTUIPredictionViewClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED499DB8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_26;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E712BDD8;
    v8 = 0;
    qword_1ED499DB8 = _sl_dlopen();
  }

  if (!qword_1ED499DB8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIPredictionViewController.m" lineNumber:50 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIPredictionView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIPredictionViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIPredictionViewController.m" lineNumber:51 description:{@"Unable to find class %s", "TUIPredictionView"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_9_16 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getTUISystemInputAssistantLayoutStandardClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUISystemInputAssistantLayoutStandard");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUISystemInputAssistantLayoutStandardClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUISystemInputAssistantLayoutStandardClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISystemInputAssistantViewController.m" lineNumber:99 description:{@"Unable to find class %s", "TUISystemInputAssistantLayoutStandard"}];

    __break(1u);
  }
}

void sub_188D5C12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id tailComponentOfName(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 substringFromIndex:{objc_msgSend(v1, "rangeOfString:options:", @"_", 4) + 1}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t UIKeyboardInputModeLanguageMatchesLocaleLanguage(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TIInputModeGetLanguageWithRegion();
  v4 = UIKeyboardGetComponentsFromLanguageIdentifier(v3);

  v5 = [v2 localeIdentifier];

  v6 = UIKeyboardGetComponentsFromLanguageIdentifier(v5);

  v7 = *MEMORY[0x1E695D9B0];
  v8 = [v4 objectForKey:*MEMORY[0x1E695D9B0]];
  v9 = [v6 objectForKey:v7];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = *MEMORY[0x1E695D9E8];
    v12 = [v4 objectForKey:*MEMORY[0x1E695D9E8]];
    v13 = [v6 objectForKey:v11];
    if (v12 | v13)
    {
      v14 = [v12 isEqualToString:v13];
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id _UIKBTrimKBStarName_iOS(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"_GeometrySet" withString:&stru_1EFB14550 options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"-Keyset" withString:&stru_1EFB14550 options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"-Display" withString:&stru_1EFB14550 options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"Wildcat-" withString:&stru_1EFB14550 options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

id _UIContextMenuCollectionViewDataSourceSnapshot(void *a1, int a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  __appendMenuToSnapshot(v3, v4, a2, 1);

  return v4;
}

void __appendMenuToSnapshot(void *a1, void *a2, int a3, char a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [v7 _resolvedElementSize] == 2 && (objc_msgSend(v7, "options") & 0x80) == 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__38;
  v20[4] = __Block_byref_object_dispose__38;
  v21 = 0;
  v10 = [v7 children];
  if ((a3 & v9) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ____appendMenuToSnapshot_block_invoke;
  v14[3] = &unk_1E70FE978;
  v12 = v8;
  v18 = a3;
  v15 = v12;
  v17 = v20;
  v13 = v7;
  v16 = v13;
  v19 = a4;
  [v10 enumerateObjectsWithOptions:v11 usingBlock:v14];

  _Block_object_dispose(v20, 8);
}

void sub_188D5D674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ____appendMenuToSnapshot_block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 _isVisible])
  {
    if ([v3 _isInlineGroup])
    {
      __appendMenuToSnapshot(v3, *(a1 + 32), *(a1 + 56), 0);
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;
    }

    else
    {
      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v6 = [_UIContextMenuSection sectionWithMenu:*(a1 + 40)];
        v7 = *(*(a1 + 48) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        [*(*(*(a1 + 48) + 8) + 40) setIsRoot:*(a1 + 57)];
        v9 = *(a1 + 32);
        v14[0] = *(*(*(a1 + 48) + 8) + 40);
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        [v9 appendSectionsWithIdentifiers:v10];
      }

      v11 = *(a1 + 32);
      v13 = v3;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      [v11 appendItemsWithIdentifiers:v12];
    }
  }
}

uint64_t _UIContextMenuCellSizeForElementSize(uint64_t result)
{
  if (result == -1)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIContextMenuCellSize _UIContextMenuCellSizeForElementSize(UIMenuElementSize)"];
    [v2 handleFailureInFunction:v3 file:@"_UIContextMenuCollectionViewUtilities.m" lineNumber:671 description:@"The element size should have been resolved and not automatic."];

    return 2;
  }

  else
  {
    v1 = 2;
    if (!result)
    {
      v1 = 0;
    }

    if (result != 1)
    {
      return v1;
    }
  }

  return result;
}

id _UIContextMenuItemPrimaryColor(uint64_t a1, uint64_t a2)
{
  v3 = _UIContextMenuGetPlatformMetrics(a1);
  v4 = +[UIColor labelColor];
  v5 = [v3 itemPrimaryColorProvider];
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 16))(v5, a2);

    v4 = v7;
  }

  return v4;
}

void sub_188D5FDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _UIContextMenuDefaultContentSpacing(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  v4 = _UIContextMenuGetPlatformMetrics(v3);
  [UIViewController _horizontalContentMarginForView:v1];
  v6 = v5;
  v7 = [v4 contentSpacingForContainer];
  v8 = v7;
  if (v7)
  {
    v6 = (*(v7 + 16))(v7, v1);
  }

  return v6;
}

double _UIContextMenuProjectFrameFromViewToView(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  [v11 convertRect:v12 toCoordinateSpace:{a3, a4, a5, a6}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v12 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v31.origin.x = v14;
  v31.origin.y = v16;
  v31.size.width = v18;
  v31.size.height = v20;
  if (!CGRectIsNull(v31))
  {
    if (v26 < v18)
    {
      v18 = v26;
    }

    v32.origin.x = v22;
    v32.origin.y = v24;
    v32.size.width = v26;
    v32.size.height = v28;
    MinX = CGRectGetMinX(v32);
    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    v14 = fmax(MinX, fmin(v14, CGRectGetMaxX(v33) - v18));
    v34.origin.x = v22;
    v34.origin.y = v24;
    v34.size.width = v26;
    v34.size.height = v28;
    CGRectGetMinY(v34);
    v35.origin.x = v22;
    v35.origin.y = v24;
    v35.size.width = v26;
    v35.size.height = v28;
    CGRectGetMaxY(v35);
  }

  return v14;
}

double _UIContextMenuProjectFrameFromViewToView_0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  [a1 convertRect:v11 toCoordinateSpace:{a3, a4, a5, a6}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v11 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v30.origin.x = v13;
  v30.origin.y = v15;
  v30.size.width = v17;
  v30.size.height = v19;
  if (!CGRectIsNull(v30))
  {
    if (v25 < v17)
    {
      v17 = v25;
    }

    v31.origin.x = v21;
    v31.origin.y = v23;
    v31.size.width = v25;
    v31.size.height = v27;
    MinX = CGRectGetMinX(v31);
    v32.origin.x = v21;
    v32.origin.y = v23;
    v32.size.width = v25;
    v32.size.height = v27;
    v13 = fmax(MinX, fmin(v13, CGRectGetMaxX(v32) - v17));
    v33.origin.x = v21;
    v33.origin.y = v23;
    v33.size.width = v25;
    v33.size.height = v27;
    CGRectGetMinY(v33);
    v34.origin.x = v21;
    v34.origin.y = v23;
    v34.size.width = v25;
    v34.size.height = v27;
    CGRectGetMaxY(v34);
  }

  return v13;
}

double _CGRectConstrainedWithinRect(char a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v42.origin.x = a6;
  v42.origin.y = a7;
  v42.size.width = a8;
  v42.size.height = a9;
  v53.origin.x = a2;
  v53.origin.y = a3;
  v53.size.width = a4;
  v53.size.height = a5;
  if (!CGRectContainsRect(v42, v53))
  {
    a2 = _CGRectScaledToAspectFitWithinRect(a2, a3, a4, a5, a6, a7, a8, a9);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v43.origin.x = a6;
    v43.origin.y = a7;
    v43.size.width = a8;
    v43.size.height = a9;
    v54.origin.x = a2;
    v54.origin.y = v19;
    v54.size.width = v21;
    v54.size.height = v23;
    if (!CGRectContainsRect(v43, v54))
    {
      v24 = 0.0;
      if ((a1 & 2) != 0)
      {
        v44.origin.x = a6;
        v44.origin.y = a7;
        v44.size.width = a8;
        v44.size.height = a9;
        MinX = CGRectGetMinX(v44);
        v45.origin.x = a2;
        v45.origin.y = v19;
        v45.size.width = v21;
        v45.size.height = v23;
        v24 = MinX - CGRectGetMinX(v45);
        if (v24 < 0.0)
        {
          v24 = 0.0;
        }
      }

      v41 = v24;
      v46.origin.x = a6;
      v46.origin.y = a7;
      v46.size.width = a8;
      v46.size.height = a9;
      MaxX = CGRectGetMaxX(v46);
      v47.origin.x = a2;
      v47.origin.y = v19;
      v47.size.width = v21;
      v47.size.height = v23;
      v25 = MaxX - CGRectGetMaxX(v47);
      v26 = 0.0;
      if (a1)
      {
        v48.origin.x = a6;
        v39 = v25;
        v48.origin.y = a7;
        v48.size.width = a8;
        v48.size.height = a9;
        MinY = CGRectGetMinY(v48);
        v49.origin.x = a2;
        v49.origin.y = v19;
        v49.size.width = v21;
        v49.size.height = v23;
        v27 = MinY - CGRectGetMinY(v49);
        if (v27 >= 0.0)
        {
          v26 = v27;
        }

        else
        {
          v26 = 0.0;
        }

        v25 = v39;
      }

      v28 = 0.0;
      v29 = fmin(v25, 0.0);
      if ((a1 & 4) != 0)
      {
        v50.origin.x = a6;
        v50.origin.y = a7;
        v30 = v26;
        v50.size.width = a8;
        v31 = v29;
        v50.size.height = a9;
        MaxY = CGRectGetMaxY(v50);
        v51.origin.x = a2;
        v51.origin.y = v19;
        v51.size.width = v21;
        v51.size.height = v23;
        v33 = CGRectGetMaxY(v51);
        v29 = v31;
        v26 = v30;
        v28 = fmin(MaxY - v33, 0.0);
      }

      v34 = v41 + v29;
      v35 = v26 + v28;
      v52.origin.x = a2;
      v52.origin.y = v19;
      v52.size.width = v21;
      v52.size.height = v23;
      *&a2 = CGRectOffset(v52, v34, v35);
    }
  }

  return a2;
}

double _UICornerInsetsFrameInBounds(CGFloat *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  *&v23[16] = a5;
  *&v23[24] = a6;
  *v23 = a3;
  *&v23[8] = a4;
  if (a2)
  {
    r2a = *(MEMORY[0x1E695F050] + 24);
    MinX = CGRectGetMinX(*&a3);
    v29.origin.x = a3;
    v29.origin.y = a4;
    v29.size.width = a5;
    v29.size.height = a6;
    v30.origin.y = CGRectGetMinY(v29);
    v30.size.width = *a1;
    v30.size.height = a1[1];
    v30.origin.x = MinX;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = r2a;
    v31 = CGRectUnion(v30, v37);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    if ((a2 & 2) == 0)
    {
LABEL_3:
      if ((a2 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      r2c = height;
      v21 = CGRectGetMinX(*v23);
      MaxY = CGRectGetMaxY(*v23);
      v34.size.width = a1[2];
      v34.size.height = a1[3];
      v34.origin.y = MaxY - v34.size.height;
      v34.origin.x = v21;
      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.width = width;
      v39.size.height = r2c;
      v35 = CGRectUnion(v34, v39);
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
      if ((a2 & 8) == 0)
      {
        return x;
      }

      goto LABEL_5;
    }
  }

  else if ((a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  r2b = height;
  v20 = CGRectGetMaxX(*v23) - a1[6];
  v32.origin.y = CGRectGetMinY(*v23);
  v32.size.width = a1[6];
  v32.size.height = a1[7];
  v32.origin.x = v20;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = r2b;
  v33 = CGRectUnion(v32, v38);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  if ((a2 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((a2 & 8) != 0)
  {
LABEL_5:
    r2 = height;
    v12 = CGRectGetMaxX(*v23) - a1[4];
    v13 = CGRectGetMaxY(*v23);
    v28.size.width = a1[4];
    v28.size.height = a1[5];
    v28.origin.y = v13 - v28.size.height;
    v28.origin.x = v12;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = r2;
    *&x = CGRectUnion(v28, v36);
  }

  return x;
}

void sub_188D60F6C()
{
  v63.super_class = _UIContentPlatterView;
  objc_msgSendSuper2(&v63, sel_layoutSubviews);
  v1 = [v0 morphView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [v0 bounds];
  v14 = sub_188D613F8([v0 preferredMorphingAxis], v64, v10, v11, v12, v13, v3, v5, v7, v9);
  v15 = v65;
  v16 = v66;
  v17 = [v0 morphView];
  v59 = v64[0];
  v60 = v64[1];
  *&v61 = v15;
  *(&v61 + 1) = v16;
  [v17 setTransform_];

  v18 = [v0 morphView];
  [v0 bounds];
  MidX = CGRectGetMidX(v67);
  [v0 bounds];
  [v18 setCenter_];

  [v0 _updateCornerRadii];
  v20 = &v0[OBJC_IVAR____UIContentPlatterView_backgroundCapture];
  v21 = *&v0[OBJC_IVAR____UIContentPlatterView_backgroundCapture];
  if (v21)
  {
    v23 = *(v20 + 1);
    v22 = *(v20 + 2);
    sub_188F14254(*&v0[OBJC_IVAR____UIContentPlatterView_backgroundCapture], v23, v22);
    v58 = v23;
    v24 = v22;
    v25 = [v0 morphView];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [v24 setBounds_];
    v34 = [v0 morphView];
    [v34 center];
    v36 = v35;
    v38 = v37;

    [v24 setCenter_];
    v39 = [v0 morphView];
    [v39 transform];
    v54 = v60;
    v56 = v59;
    v52 = v61;

    v59 = v56;
    v60 = v54;
    v61 = v52;
    [v24 setTransform_];
    v40 = [v24 layer];
    v41 = [v0 morphView];
    v42 = [v41 layer];

    [v42 cornerRadii];
    v55 = v60;
    v57 = v59;
    v51 = v62;
    v53 = v61;

    v59 = v57;
    v60 = v55;
    v61 = v53;
    v62 = v51;
    [v40 setCornerRadii_];

    v43 = [v24 layer];
    v44 = [v0 morphView];
    v45 = [v44 layer];

    v46 = [v45 cornerCurve];
    [v43 setCornerCurve_];

    v47 = v58;
    [v24 bounds];
    [v47 setCenter_];
  }
}

CGFloat sub_188D613F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>, CGFloat a9@<D6>, CGFloat a10@<D7>)
{
  v31.origin.x = a7;
  v31.origin.y = a8;
  v31.size.width = a9;
  v31.size.height = a10;
  v18 = 1.0;
  v19 = 1.0;
  if (CGRectGetWidth(v31) != 0.0)
  {
    v32.origin.x = a3;
    v32.origin.y = a4;
    v32.size.width = a5;
    v32.size.height = a6;
    v27 = a6;
    Width = CGRectGetWidth(v32);
    v33.origin.x = a7;
    v33.origin.y = a8;
    v33.size.width = a9;
    v33.size.height = a10;
    v19 = Width / CGRectGetWidth(v33);
    a6 = v27;
  }

  v34.origin.x = a7;
  v34.origin.y = a8;
  v34.size.width = a9;
  v34.size.height = a10;
  if (CGRectGetHeight(v34) != 0.0)
  {
    v35.origin.x = a3;
    v35.origin.y = a4;
    v35.size.width = a5;
    v35.size.height = a6;
    Height = CGRectGetHeight(v35);
    v36.origin.x = a7;
    v36.origin.y = a8;
    v36.size.width = a9;
    v36.size.height = a10;
    v18 = Height / CGRectGetHeight(v36);
  }

  if (a1 == 2)
  {
    v22 = v18;
  }

  else
  {
    v22 = v19;
  }

  if (a1 == 1)
  {
    v23 = v19;
  }

  else
  {
    v23 = v18;
  }

  if (a1 == 1)
  {
    v22 = v19;
  }

  CGAffineTransformMakeScale(&v30, v22, v23);
  result = v30.a;
  v25 = *&v30.c;
  v26 = *&v30.tx;
  *a2 = *&v30.a;
  a2[1] = v25;
  a2[2] = v26;
  return result;
}

uint64_t sub_188D61574()
{
  v1 = v0;
  if ([v0 expanded])
  {
    sub_188D81F20(&v36);
    v46 = v36;
    v47 = v37;
    v48 = v38;
    v49 = v39;
    v2 = v40;
  }

  else
  {
    v3 = [v0 collapsedPreview];
    if (v3)
    {
      v4 = v3;
      sub_188D6F5C4(&v46);
      v42 = v46;
      v43 = v47;
      v44 = v48;
      v45 = v49;
      v2 = v50;
    }

    else
    {
      CACornerRadiiMake_0(&v42);
      v2 = *MEMORY[0x1E69796E8];
    }

    v46 = v42;
    v47 = v43;
    v48 = v44;
    v49 = v45;
  }

  v50 = v2;
  v5 = [v1 morphView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v51.origin.x = v7;
  v51.origin.y = v9;
  v51.size.width = v11;
  v51.size.height = v13;
  IsEmpty = CGRectIsEmpty(v51);
  v16 = 1.0;
  if (!IsEmpty)
  {
    [v1 bounds];
    Width = CGRectGetWidth(v52);
    v18 = [v1 morphView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v53.origin.x = v20;
    v53.origin.y = v22;
    v53.size.width = v24;
    v53.size.height = v26;
    v16 = Width / CGRectGetWidth(v53);
  }

  v27 = [v1 morphView];
  v41 = 0;
  v28 = &v27[OBJC_IVAR____UIMagicMorphView_overrideCornerRadii];
  v30 = v48;
  v29 = v49;
  v31 = v47;
  *v28 = v46;
  v28[1] = v31;
  v28[2] = v30;
  v28[3] = v29;
  LOBYTE(v28[4].f64[0]) = 0;
  sub_188D6180C();

  v32 = [v1 layer];
  [v32 setCornerCurve_];

  v33 = [v1 layer];
  v36 = vmulq_n_f64(v46, v35);
  v37 = vmulq_n_f64(v47, v35);
  v38 = vmulq_n_f64(v48, v35);
  v39 = vmulq_n_f64(v49, v35);
  [v33 setCornerRadii_];

  return sub_188A3F5FC(&v46, &unk_1EA936D78);
}

void sub_188D6180C()
{
  v1 = &v0[OBJC_IVAR____UIMagicMorphView_overrideCornerRadii];
  if (v0[OBJC_IVAR____UIMagicMorphView_overrideCornerRadii + 64])
  {
    v2 = [v0 layer];
    [v2 cornerRadii];

    v3 = sub_188C8530C();
    sub_188D62EA4([v3 _value], objc_msgSend(v3, sel__length), v19);

    v20 = v24;
    v21 = v25;
    v22 = v26;
    v23 = v27;
    if (CACornerRadiiEqualToRadii())
    {
      return;
    }

    v4 = [*&v0[OBJC_IVAR____UIMagicMorphView_clippingView] layer];
    v5 = OBJC_IVAR____UIMagicMorphView____lazy_storage___cornerRadii;
    v6 = *&v0[OBJC_IVAR____UIMagicMorphView____lazy_storage___cornerRadii];
    sub_188D62EA4([v6 _value], objc_msgSend(v6, sel__length), v19);

    v20 = v19[0];
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    [v4 setCornerRadii_];

    v7 = [v0 layer];
    v8 = *&v0[v5];
    sub_188D62EA4([v8 _value], objc_msgSend(v8, sel__length), &v20);

    [v7 setCornerRadii_];
  }

  else
  {
    v10 = *(v1 + 6);
    v9 = *(v1 + 7);
    v12 = *(v1 + 4);
    v11 = *(v1 + 5);
    v14 = *(v1 + 2);
    v13 = *(v1 + 3);
    v16 = *v1;
    v15 = *(v1 + 1);
    v17 = [*&v0[OBJC_IVAR____UIMagicMorphView_clippingView] layer];
    *&v24 = v16;
    *(&v24 + 1) = v15;
    *&v25 = v14;
    *(&v25 + 1) = v13;
    *&v26 = v12;
    *(&v26 + 1) = v11;
    *&v27 = v10;
    *(&v27 + 1) = v9;
    [v17 setCornerRadii_];

    v7 = [v0 layer];
    *&v24 = v16;
    *(&v24 + 1) = v15;
    *&v25 = v14;
    *(&v25 + 1) = v13;
    *&v26 = v12;
    *(&v26 + 1) = v11;
    *&v27 = v10;
    *(&v27 + 1) = v9;
    [v7 setCornerRadii_];
  }
}

void sub_188D61A98()
{
  v5 = v0;
  v85.receiver = v0;
  v85.super_class = type metadata accessor for _UIMagicMorphView();
  objc_msgSendSuper2(&v85, sel_layoutSubviews);
  v6 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v7 = *&v0[v6];
  if (v7 >> 62)
  {
    v8 = sub_18A4A7F68();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_53;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_53:

    v9 = sub_188E494B4(v9, v7);

    goto LABEL_8;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v9 = *(v7 + 8 * v9 + 32);
LABEL_8:
  if (v5[OBJC_IVAR____UIMagicMorphView_overrideBounds + 32] == 1)
  {
    v3 = &qword_1EA93C000;
    v2 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
    if (v5[OBJC_IVAR____UIMagicMorphView_contentSizeDidChange] != 1)
    {
      goto LABEL_27;
    }

    v5[OBJC_IVAR____UIMagicMorphView_contentSizeDidChange] = 0;
    v7 = *&v5[v6];
    if (v7 >> 62)
    {
      goto LABEL_59;
    }

    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_12:
      v81 = v6;
      v82 = v5;
      v83 = v9;
      if (v10 >= 1)
      {

        v11 = 0;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v12 = sub_188E494B4(v11, v7);
          }

          else
          {
            v12 = *(v7 + 8 * v11 + 32);
          }

          v13 = v12;
          ++v11;
          [*&v12[OBJC_IVAR____UIMagicMorphDestination_transformView] sizeToFit];
          [*&v13[OBJC_IVAR____UIMagicMorphDestination_preview] size];
          v14 = &v13[OBJC_IVAR____UIMagicMorphDestination_previewSize];
          *v14 = v15;
          *(v14 + 1) = v16;
        }

        while (v10 != v11);

        v5 = v82;
        v9 = v83;
        v6 = v81;
        v2 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
        v3 = &qword_1EA93C000;
        goto LABEL_19;
      }

      __break(1u);
LABEL_62:
      __break(1u);
      return;
    }

    while (1)
    {
LABEL_19:
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v9 + v3[286]), *&UIEdgeInsetsZero.top), vceqq_f64(*(v9 + v3[286] + 16), *&UIEdgeInsetsZero.bottom)))))
      {
        v17 = OBJC_IVAR____UIMagicMorphView_currentMorphingAxis;
        if (*&v5[OBJC_IVAR____UIMagicMorphView_preferredMorphingAxis] != *&v5[OBJC_IVAR____UIMagicMorphView_currentMorphingAxis])
        {
          v18 = [v5 layer];
          v19 = [v18 presentationLayer];

          if (v19)
          {
            [v19 v2[143]];
            v21 = v20;
            v23 = v22;
            v25 = v24;
            v27 = v26;

            v28 = *(v9 + OBJC_IVAR____UIMagicMorphDestination_previewSize);
            v29 = *(v9 + OBJC_IVAR____UIMagicMorphDestination_previewSize + 8);
          }

          else
          {
            v28 = *(v9 + OBJC_IVAR____UIMagicMorphDestination_previewSize);
            v29 = *(v9 + OBJC_IVAR____UIMagicMorphDestination_previewSize + 8);
            v21 = 0.0;
            v23 = 0.0;
            v25 = v28;
            v27 = v29;
          }

          v86.origin.x = 0.0;
          v86.origin.y = 0.0;
          v86.size.width = v28;
          v86.size.height = v29;
          Width = CGRectGetWidth(v86);
          v87.origin.x = v21;
          v87.origin.y = v23;
          v87.size.width = v25;
          v87.size.height = v27;
          v31 = vabdd_f64(Width, CGRectGetWidth(v87));
          v88.origin.x = v21;
          v88.origin.y = v23;
          v88.size.width = v25;
          v88.size.height = v27;
          v32 = v31 / CGRectGetWidth(v88);
          v89.origin.x = 0.0;
          v89.origin.y = 0.0;
          v89.size.width = v28;
          v89.size.height = v29;
          Height = CGRectGetHeight(v89);
          v90.origin.x = v21;
          v90.origin.y = v23;
          v90.size.width = v25;
          v90.size.height = v27;
          v34 = vabdd_f64(Height, CGRectGetHeight(v90));
          v91.origin.x = v21;
          v91.origin.y = v23;
          v91.size.width = v25;
          v91.size.height = v27;
          v35 = CGRectGetHeight(v91);
          v36 = 2;
          if (v34 / v35 >= v32)
          {
            v36 = 1;
          }

          *&v5[v17] = v36;
        }
      }

LABEL_27:
      sub_188D6F2B8();
      v37 = sub_188C84C30();
      sub_188D70058(*(v9 + v3[286]), *(v9 + v3[286] + 8), *(v9 + v3[286] + 16), *(v9 + v3[286] + 24));

      [v5 v2[143]];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = *&v5[OBJC_IVAR____UIMagicMorphView____lazy_storage___insets];
      sub_188D70240(&selRef__value);
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v55 = UIRectInset(v39, v41, v43, v45, v48, v54, v52, v50);
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v62 = sub_1890DF270();
      v92.origin.x = v55;
      v92.origin.y = v57;
      v92.size.width = v59;
      v92.size.height = v61;
      v4 = &selRef_setUndockedWithOffset_animated_;
      [v62 setValue_];

      v7 = sub_1890DF348();
      v93.origin.x = v55;
      v93.origin.y = v57;
      v93.size.width = v59;
      v93.size.height = v61;
      [v7 setValue_];

      v1 = *&v5[v6];
      if (v1 >> 62)
      {
LABEL_56:
        v63 = sub_18A4A7F68();
        if (!v63)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v63 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v63)
        {
          goto LABEL_39;
        }
      }

      sub_188A34624(0, &qword_1ED490230);
      if (v63 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_59:
      v10 = sub_18A4A7F68();
      if (v10)
      {
        goto LABEL_12;
      }
    }

    v64 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v65 = sub_188E494B4(v64, v1);
      }

      else
      {
        v65 = *(v1 + 8 * v64 + 32);
      }

      v66 = v65;
      ++v64;
      if (sub_18A4A7C88())
      {
        v67 = 1.0;
      }

      else
      {
        v67 = 0.0;
      }

      v68 = sub_1890DEA5C();
      [v68 v4[206]];
    }

    while (v63 != v64);

LABEL_39:
    sub_188D79A58();
    v69 = [v5 _outermostLayer];
    if (!v69)
    {
      v69 = [v5 layer];
    }

    v70 = v9;
    type metadata accessor for _UIMorphAnimationSettingsDomain();
    v84.receiver = swift_getObjCClassFromMetadata();
    v84.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
    v71 = objc_msgSendSuper2(&v84, sel_rootSettings);
    if (!v71)
    {
      goto LABEL_62;
    }

    v72 = v71;
    type metadata accessor for _UIMorphAnimationSettings();
    v73 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_showBoundingBoxes);

    if (v73 == 1)
    {
      [v69 setBorderWidth_];
      v74 = [objc_opt_self() redColor];
      v75 = [v74 CGColor];

      [v69 setBorderColor_];
      v76 = v70;
    }

    else
    {
      v77 = [*&v70[OBJC_IVAR____UIMagicMorphDestination_preview] view];
      v78 = [v77 layer];

      [v78 borderWidth];
      [v69 setBorderWidth_];
      [v78 borderOffset];
      [v69 setBorderOffset_];
      [v78 borderWidth];
      if (v79 > 0.0)
      {
        v80 = [v78 borderColor];
        [v69 setBorderColor_];
      }

      v75 = v70;
      v76 = v69;
      v69 = v78;
    }

    v9 = v69;
  }
}

void sub_188D62314()
{
  v1 = v0;
  v2 = [v0 _destinationPreview];
  if (!v2)
  {
    sub_18A4A8398();
    __break(1u);
    return;
  }

  v3 = v2;
  objc_allocWithZone(type metadata accessor for _UIMagicMorphView.Destination());
  v4 = v3;
  v15 = sub_188D626CC(v4);

  if ([v1 expanded] && (objc_msgSend(v1, sel_alwaysCompact) & 1) == 0)
  {
    if ([v1 allowsUserInteractionInExpandedPreview])
    {
      [v4 _setSourceHostingBehavior_];
    }

    v8 = [v1 allowsUserInteractionInExpandedPreview];
    v15[OBJC_IVAR____UIMagicMorphDestination_allowsUserInteraction] = v8;
    v5 = &OBJC_IVAR____UIMagicMorphDestination_wantsMinificationFilter;
    v6 = &selRef_preventPreviewRasterization;
    goto LABEL_10;
  }

  v15[OBJC_IVAR____UIMagicMorphDestination_allowsUserInteraction] = 0;
  v5 = &OBJC_IVAR____UIMagicMorphDestination_hidesSourceView;
  if ([v1 hidesCollapsedSourceView])
  {
    v6 = &selRef_didTearOffPreviewForDrag;
LABEL_10:
    v7 = [v1 *v6] ^ 1;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:
  v15[*v5] = v7;
  v9 = [v1 shouldApplyClippingHandler];
  v10 = [v1 morphView];
  if (v9)
  {
    v11 = v9[2](v9, v4);
    _Block_release(v9);
  }

  else
  {
    v11 = 1;
  }

  [*&v10[OBJC_IVAR____UIMagicMorphView_clippingView] setClipsToBounds_];

  v12 = [v1 morphView];
  sub_1890E0B5C();

  v13 = [v1 morphView];
  sub_188D6C074(v15);

  [v1 _updateGlassAppearanceIfNeeded];
  [v1 _updateBackgroundCaptureFor_];
  v14 = sub_188D81B18();
  [v1 set:v14 shadowProperties:?];

  [v1 _updateShadowPath];
  [v1 _updateCornerRadii];
  [v1 setNeedsLayout];
}

id sub_188D626CC(void *a1)
{
  v3 = OBJC_IVAR____UIMagicMorphDestination_shadowProperties;
  *&v1[OBJC_IVAR____UIMagicMorphDestination_shadowProperties] = 0;
  v1[OBJC_IVAR____UIMagicMorphDestination_hidesSourceView] = 1;
  v1[OBJC_IVAR____UIMagicMorphDestination_allowsUserInteraction] = 1;
  v1[OBJC_IVAR____UIMagicMorphDestination_wantsMinificationFilter] = 0;
  *&v1[OBJC_IVAR____UIMagicMorphDestination_hidingAssertion] = 0;
  *&v1[OBJC_IVAR____UIMagicMorphDestination_backgroundSuppressionAssertion] = 0;
  v4 = OBJC_IVAR____UIMagicMorphDestination_shadowPath;
  *&v1[OBJC_IVAR____UIMagicMorphDestination_shadowPath] = 0;
  v5 = &v1[OBJC_IVAR____UIMagicMorphDestination_initialLuminance];
  *v5 = 0;
  v5[4] = 1;
  *&v1[OBJC_IVAR____UIMagicMorphDestination____lazy_storage___progress] = 0;
  v6 = OBJC_IVAR____UIMagicMorphDestination_transformView;
  type metadata accessor for _UIMagicMorphTransformView();
  *&v1[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (([a1 _hasCustomParameters] & 1) == 0)
  {
    v7 = [a1 parameters];
    v8 = [a1 view];
    v9 = [v8 backgroundColor];

    if (!v9)
    {
      v9 = [objc_opt_self() clearColor];
    }

    [v7 _setOverrideBackgroundColor_];
  }

  *&v1[OBJC_IVAR____UIMagicMorphDestination_preview] = a1;
  v10 = a1;
  v11 = [v10 view];
  [v11 _morphInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = &v1[OBJC_IVAR____UIMagicMorphDestination_insets];
  *v20 = v13;
  v20[1] = v15;
  v20[2] = v17;
  v20[3] = v19;
  [v10 size];
  v21 = &v1[OBJC_IVAR____UIMagicMorphDestination_previewSize];
  *v21 = v22;
  v21[1] = v23;
  v24 = [v10 view];
  v25 = [objc_opt_self() propertiesFromView_];

  v26 = [v10 target];
  [v26 _contentScale];
  v28 = v27;

  [v25 scaleBy_];
  v29 = *&v1[v3];
  *&v1[v3] = v25;
  v30 = v25;

  v31 = [v10 parameters];
  v32 = [v31 effectiveShadowPath];

  if (v32 && ([v32 copy], v32, sub_18A4A7DE8(), swift_unknownObjectRelease(), sub_188A34624(0, &qword_1EA92E890), (swift_dynamicCast() & 1) != 0))
  {
    v33 = v50;
    v34 = [v10 parameters];
    v35 = [v34 visiblePath];

    if (v35)
    {
      v36 = v1;
      v37 = v33;
      v38 = sub_18A4A7C88();

      if (v38)
      {
        [v37 bounds];
        x = v52.origin.x;
        y = v52.origin.y;
        width = v52.size.width;
        height = v52.size.height;
        v43 = -CGRectGetMinX(v52);
        v53.origin.x = x;
        v53.origin.y = y;
        v53.size.width = width;
        v53.size.height = height;
        MinY = CGRectGetMinY(v53);
        CGAffineTransformMakeTranslation(&v49, v43, -MinY);
        [v37 applyTransform_];
        v45 = v30;
      }

      else
      {
        v45 = v37;
        v37 = v30;
      }

      v1 = v36;
    }

    else
    {
      v45 = v33;
      v37 = v30;
    }

    v46 = *&v1[v4];
    *&v1[v4] = v33;
  }

  else
  {
  }

  v47 = type metadata accessor for _UIMagicMorphView.Destination();
  v51.receiver = v1;
  v51.super_class = v47;
  return objc_msgSendSuper2(&v51, sel_init);
}

void sub_188D62BFC(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for _UIMagicMorphTransformView();
  objc_msgSendSuper2(&v8, sel_setUserInteractionEnabled_, a1 & 1);
  v3 = OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView;
  v4 = *&v1[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView];
  if (v4)
  {
    v5 = v4;
    [v5 setAllowsHitTesting_];

    v6 = *&v1[v3];
    if (v6)
    {
      v7 = v6;
      [v7 setForwardsClientHitTestingToSourceView_];
    }
  }
}

uint64_t sub_188D62E50@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936368);
  *a1 = v3;
}

uint64_t sub_188D62EA4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 == 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 < 5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a2 == 5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a2 < 7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 != 7)
  {
    v3 = *(result + 8);
    v4 = *(result + 16);
    v5 = *(result + 24);
    v6 = *(result + 32);
    v7 = *(result + 40);
    *a3 = *result;
    *(a3 + 8) = v3;
    *(a3 + 16) = v4;
    *(a3 + 24) = v5;
    *(a3 + 32) = v6;
    *(a3 + 40) = v7;
    *(a3 + 48) = *(result + 48);
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_188D62F28()
{
  v1 = OBJC_IVAR____UIMagicMorphView____lazy_storage___traitObserver;
  if (*(v0 + OBJC_IVAR____UIMagicMorphView____lazy_storage___traitObserver))
  {
    v2 = *(v0 + OBJC_IVAR____UIMagicMorphView____lazy_storage___traitObserver);
  }

  else
  {
    type metadata accessor for _UIMorphTraitObserver();
    swift_allocObject();
    v2 = sub_188D62FD0();
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_188D62FD0()
{
  v0[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A6510E0;
  *(v1 + 32) = &type metadata for UITraitUserInterfaceStyle;
  *(v1 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v1 + 48) = &type metadata for UITraitActiveAppearance;
  *(v1 + 56) = &protocol witness table for UITraitActiveAppearance;
  *(v1 + 64) = &type metadata for _UITraitGlassElevationLevel;
  *(v1 + 72) = &protocol witness table for _UITraitGlassElevationLevel;
  *(v1 + 80) = &type metadata for GlassUserInterfaceStyleTrait;
  *(v1 + 88) = &off_1EE439CE8;
  *(v1 + 96) = &type metadata for GlassFrostTrait;
  *(v1 + 104) = &off_1ED48EED8;
  v0[3] = v1;
  v0[4] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return v0;
}

id sub_188D630A4(id result)
{
  if (result && *(v1 + 16))
  {
    result = [result unregisterForTraitChanges_];
  }

  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 traitCollection];
    v5 = v1;
    sub_1890916FC(v4, 0);

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong updateTraitsIfNeeded];
    [Strong layoutIfNeeded];

    v7 = *(v5 + 24);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = sub_188B095EC(v7, sub_189091B54, v8);

    *(v5 + 16) = v9;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_188D631C8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188D63234(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      if (qword_1EA9314C8 != -1)
      {
        swift_once();
      }

      if (qword_1EA9314E0 != -1)
      {
        swift_once();
      }

      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for UITraitUserInterfaceStyle, &protocol witness table for UITraitUserInterfaceStyle, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

id sub_188D635E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for _UITraitGlassElevationLevel, &protocol witness table for _UITraitGlassElevationLevel, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

void sub_188D63928(uint64_t a1, void *a2, char a3)
{
  v6 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v7 = a2;
  MEMORY[0x18CFE2450]();
  if (*((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
  swift_endAccess();
  v8 = OBJC_IVAR____UIMagicMorphDestination_preview;
  v9 = *&v7[OBJC_IVAR____UIMagicMorphDestination_preview];
  v10 = [v9 _isLikelyOpaque];
  if ((v10 & 1) == 0)
  {
    *(a1 + OBJC_IVAR____UIMagicMorphView_allDestinationsAreOpaque) = 0;
  }

  v11 = *&v7[OBJC_IVAR____UIMagicMorphDestination_transformView];
  v12 = [v11 layer];
  [v12 setAllowsEdgeAntialiasing_];

  v13 = *&v11[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview];
  *&v11[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview] = v9;
  v14 = v9;
  sub_188D81038(v13);

  if (v10 && (a3 & 1) == 0 && [*(a1 + OBJC_IVAR____UIMagicMorphView_clippingView) clipsToBounds])
  {
    v15 = [*&v7[v8] parameters];
    v16 = [v15 _effectiveBackgroundColor];

    [v11 setBackgroundColor_];
  }

  else
  {
    [v11 setBackgroundColor_];
  }

  v11[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_hidesSourceView] = v7[OBJC_IVAR____UIMagicMorphDestination_hidesSourceView];
  [*&v11[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView] setHidesSourceView_];
  v11[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_appliesMinificationFilter] = v7[OBJC_IVAR____UIMagicMorphDestination_wantsMinificationFilter];
  sub_188D797E4();
  [v11 setUserInteractionEnabled_];
  if (*(a1 + OBJC_IVAR____UIMagicMorphView_crossBlurWhenMorphing) == 1)
  {
    v17 = [v11 layer];
    v18 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_18A64BFB0;
    *(v19 + 56) = sub_188A34624(0, &qword_1ED48EE50);
    *(v19 + 32) = v18;
    v20 = v18;
    v21 = sub_18A4A7518();

    [v17 setFilters_];
  }

  [*(a1 + OBJC_IVAR____UIMagicMorphView_clippingView) addSubview_];
  v22 = [v11 layer];
  [v22 setAllowsGroupOpacity_];

  v23 = *(a1 + v6);
  if (v23 >> 62)
  {
    if (sub_18A4A7F68() < 2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_14:
    [v11 setAlpha_];
  }

LABEL_15:

  v24 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18A64B710;
  *(v25 + 32) = sub_1890DEA5C();
  sub_188A34624(0, &qword_1ED48F690);
  v26 = sub_18A4A7518();

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v39 = sub_188D70308;
  v40 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_188A4A8F0;
  v38 = &block_descriptor_198_3;
  v30 = _Block_copy(&aBlock);

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;
  v39 = sub_188D7EEB8;
  v40 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_188A4A8F0;
  v38 = &block_descriptor_206;
  v34 = _Block_copy(&aBlock);

  [v24 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v34);
  _Block_release(v30);
}

uint64_t sub_188D63F80()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188D65240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFAnalyticsTurnBasedInstrumentationContextClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49F568)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AssistantServicesLibraryCore_block_invoke_3;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71180C0;
    v8 = 0;
    qword_1ED49F568 = _sl_dlopen();
  }

  if (!qword_1ED49F568)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKBRTIPartner.m" lineNumber:127 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AFAnalyticsTurnBasedInstrumentationContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFAnalyticsTurnBasedInstrumentationContextClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKBRTIPartner.m" lineNumber:128 description:{@"Unable to find class %s", "AFAnalyticsTurnBasedInstrumentationContext"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49F560 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSBSKeyboardFocusServiceClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49DEC0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke_1;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7108C58;
    v8 = 0;
    qword_1ED49DEC0 = _sl_dlopen();
  }

  if (!qword_1ED49DEC0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"BKSHIDEventDeferringEnvironment+UIKitAdditions.m" lineNumber:12 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SBSKeyboardFocusService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSBSKeyboardFocusServiceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"BKSHIDEventDeferringEnvironment+UIKitAdditions.m" lineNumber:14 description:{@"Unable to find class %s", "SBSKeyboardFocusService"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49DEB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSBSKeyboardFocusServiceClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49E738)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke_2;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E710CA78;
    v8 = 0;
    qword_1ED49E738 = _sl_dlopen();
  }

  if (!qword_1ED49E738)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIKeyShortcutHUDServer.m" lineNumber:45 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SBSKeyboardFocusService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSBSKeyboardFocusServiceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIKeyShortcutHUDServer.m" lineNumber:47 description:{@"Unable to find class %s", "SBSKeyboardFocusService"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49E730 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSBSKeyboardFocusServiceClass_block_invoke_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A2A38)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke_8;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71294D0;
    v8 = 0;
    qword_1ED4A2A38 = _sl_dlopen();
  }

  if (!qword_1ED4A2A38)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIONavigationBarTitleRenamerConnectionAction.m" lineNumber:34 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SBSKeyboardFocusService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSBSKeyboardFocusServiceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIONavigationBarTitleRenamerConnectionAction.m" lineNumber:36 description:{@"Unable to find class %s", "SBSKeyboardFocusService"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1374 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAFUITargetDetectionControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49F980)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AutoFillUILibraryCore_block_invoke_1;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71195E8;
    v8 = 0;
    qword_1ED49F980 = _sl_dlopen();
  }

  if (!qword_1ED49F980)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AutoFillUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKBAutofillController.m" lineNumber:61 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AFUITargetDetectionController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFUITargetDetectionControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKBAutofillController.m" lineNumber:62 description:{@"Unable to find class %s", "AFUITargetDetectionController"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49F978 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _UIKBRT_ResetSystemUptimeOnResume()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  [v1 systemUptime];
  *&sSystemUptimeFromAbsoluteTimeDiff = v0 - CFAbsoluteTimeGetCurrent();
}

void __getTUISmartReplyGeneratorClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUISmartReplyGenerator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49D5C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUISmartReplyGeneratorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIKeyboardStateManager.m" lineNumber:255 description:{@"Unable to find class %s", "TUISmartReplyGenerator"}];

    __break(1u);
  }
}

void __getTUIKeyboardInputManagerMuxClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardInputManagerMux");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardInputManagerMuxClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardInputManagerMuxClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardInputManagerClient.h" lineNumber:23 description:{@"Unable to find class %s", "TUIKeyboardInputManagerMux"}];

    __break(1u);
  }
}

Class __getTUIKeyboardInputManagerMuxClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED499388)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_13;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E710E5E8;
    v8 = 0;
    qword_1ED499388 = _sl_dlopen();
  }

  if (!qword_1ED499388)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKeyboardInputManagerClient.h" lineNumber:22 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIKeyboardInputManagerMux");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardInputManagerMuxClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKeyboardInputManagerClient.h" lineNumber:23 description:{@"Unable to find class %s", "TUIKeyboardInputManagerMux"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED499380 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_188D675B0(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground) != 1)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView);
  if (!v4)
  {
    return;
  }

  v5 = [v4 customBackgroundView];
  v6 = v5;
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    v9 = *(v1 + v3);
    if (!v9)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!v5 || (sub_188A34624(0, &qword_1ED48F680), v7 = a1, v8 = sub_18A4A7C88(), v7, v6, (v8 & 1) == 0))
  {
    v9 = *(v1 + v3);
    if (v9)
    {
LABEL_10:

      [v9 setCustomBackgroundView_];
    }
  }
}

void sub_188D67908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188D67BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a3 + 176))(a1, a2, a3, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

unint64_t sub_188D67D20@<X0>(void *a1@<X8>)
{
  v3 = [objc_opt_self() valueWithCGPoint_];
  result = sub_188A921E4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

void UIKeyboardSetCurrentInputMode(void *a1)
{
  v1 = a1;
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v2 = [v3 inputModeWithIdentifier:v1];

  [v3 updateCurrentInputMode:v2];
}

void sub_188D68024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __TIGetExtendInputUIValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"ExtendInputUI" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

double _UIClampedCornerRadius(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v6 = a2;
  if (a2 > 0.0 && a1 != 0)
  {
    v8 = a1;
    v18.origin.x = a3;
    v18.origin.y = a4;
    v18.size.width = a5;
    v18.size.height = a6;
    if (!CGRectIsEmpty(v18))
    {
      v19.origin.x = a3;
      v19.origin.y = a4;
      v19.size.width = a5;
      v19.size.height = a6;
      if (!CGRectIsNull(v19))
      {
        v13 = 1;
        if ((~v8 & 0xA) != 0)
        {
          v14 = (v8 & 5) == 5 || (~v8 & 0xC) == 0;
          v13 = (v8 & 3) == 3 || v14;
        }

        v20.origin.x = a3;
        v20.origin.y = a4;
        v20.size.width = a5;
        v20.size.height = a6;
        Width = CGRectGetWidth(v20);
        v21.origin.x = a3;
        v21.origin.y = a4;
        v21.size.width = a5;
        v21.size.height = a6;
        Height = CGRectGetHeight(v21);
        if (Width < Height)
        {
          Height = Width;
        }

        if (v13)
        {
          Height = Height * 0.5;
        }

        if (Height <= v6)
        {
          return Height;
        }
      }
    }
  }

  return v6;
}

id sub_188D68D94()
{
  result = [objc_allocWithZone(_UIContextMenuModifierKeyService) init];
  qword_1EA930B70 = result;
  return result;
}

uint64_t sub_188D68DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9377A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_188D69160(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____UIContentPlatterView_morphView;
  type metadata accessor for _UIMagicMorphView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____UIContentPlatterView_collapsedPortalView] = 0;
  *&v4[OBJC_IVAR____UIContentPlatterView_collapsedPreviewBackgroundSuppression] = 0;
  v4[OBJC_IVAR____UIContentPlatterView_isFrozen] = 0;
  v4[OBJC_IVAR____UIContentPlatterView_didTearOffPreviewForDrag] = 0;
  v10 = &v4[OBJC_IVAR____UIContentPlatterView_backgroundCapture];
  *v10 = 0;
  v10[1] = 0;
  v10[2] = 0;
  *&v4[OBJC_IVAR____UIContentPlatterView__shadowProperties] = 0;
  v17.receiver = v4;
  v17.super_class = _UIContentPlatterView;
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____UIContentPlatterView_morphView;
  v13 = *&v11[OBJC_IVAR____UIContentPlatterView_morphView];
  v13[OBJC_IVAR____UIMagicMorphView_appliesBackgroundFromView] = 0;
  v14 = v11;
  v15 = v13;
  [v14 bounds];
  [v15 setFrame_];

  [v14 addSubview_];
  return v14;
}

id _UIClickPresentationBackgroundColor(int a1)
{
  if (!a1)
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    goto LABEL_7;
  }

  v1 = +[UIDevice currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 > 5)
  {
    if (v2 == 6)
    {
      v7 = +[UIColor clearColor];
      goto LABEL_21;
    }

    if (v2 != 8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v2 == 1)
    {
      v7 = +[UIColor _alertControllerDimmingViewColor];
      goto LABEL_21;
    }

    if (v2 != 2)
    {
LABEL_5:
      v3 = 0.0862745098;
      v4 = 0.0823529412;
      v5 = 0.164705882;
      v6 = 0.21;
LABEL_7:
      v7 = [UIColor colorWithRed:v3 green:v4 blue:v5 alpha:v6];
      goto LABEL_21;
    }
  }

  if (_UIInternalPreferenceUsesDefault_1(&_MergedGlobals_962, @"TVContextMenu_BackgroundDimWhite"))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *&qword_1ED48BA70;
  }

  if (_UIInternalPreferenceUsesDefault_1(algn_1ED48BA78, @"TVContextMenu_BackgroundDimAlpha"))
  {
    v9 = _UISolariumEnabled();
    v10 = 0.3;
    if (!v9)
    {
      v10 = 0.45;
    }
  }

  else
  {
    v10 = *&qword_1ED48BA80;
  }

  v7 = [UIColor colorWithWhite:v8 alpha:v10];
LABEL_21:

  return v7;
}

void sub_188D696DC()
{
  v10.super_class = _UIContentPlatterView;
  objc_msgSendSuper2(&v10, sel_didMoveToWindow);
  v1 = &v0[OBJC_IVAR____UIContentPlatterView_backgroundCapture];
  v2 = *&v0[OBJC_IVAR____UIContentPlatterView_backgroundCapture];
  if (v2)
  {
    v4 = *(v1 + 1);
    v3 = *(v1 + 2);
    v5 = v2;
    v6 = v4;
    v7 = v3;
    v8 = [v0 window];
    if (v8)
    {
      v9 = v8;

      v7 = v6;
      v6 = v5;
      v5 = v9;
    }

    else
    {
      [v5 removeFromSuperview];
      [v7 removeFromSuperview];
    }
  }
}

void sub_188D698F4(void *a1, uint64_t a2, void *a3, const char **a4, SEL *a5, void (*a6)(id))
{
  v14.receiver = a1;
  v14.super_class = _UIContentPlatterView;
  v9 = *a4;
  v10 = a3;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, v9);
  v13.receiver = v11;
  v13.super_class = _UIContentPlatterView;
  objc_msgSendSuper2(&v13, *a5, v10);
  a6(v12);
}

void sub_188D699B0(void *a1)
{
  v2 = v1;
  v4 = [v2 expandedPreview];
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_188A34624(0, &qword_1EA930100);
      v6 = a1;
      v7 = sub_18A4A7C88();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = [v2 collapsedPreview];
  if (v8)
  {
    v9 = v8;
    if ([v2 alwaysCompact])
    {
      v10 = [v2 expandedPreview];
      if (v10)
      {
        v11 = v10;
        [v10 _setPreviewMode_];
      }
    }
  }

  if ([v2 expanded])
  {

    sub_188D62314();
  }
}

double _UIContextMenuConvertCGPointBetweenViews(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v7;
  v10 = v8;
  v11 = [v9 traitCollection];
  v12 = _UIContextMenuGetPlatformMetrics([v11 userInterfaceIdiom]);
  v13 = [v12 convertPoint3DBetweenViews];

  if (!v13)
  {
    v15 = [v9 traitCollection];
    v16 = _UIContextMenuGetPlatformMetrics([v15 userInterfaceIdiom]);
    v17 = [v16 convertPointBetweenViews];

    if (v17)
    {
      v14 = (v17)[2](v17, v9, v10, a3, a4);
LABEL_25:

      goto LABEL_26;
    }

    v18 = v9;
    v19 = v10;
    v20 = [v18 layer];
    v21 = [v19 layer];
    v22 = [v20 presentationLayer];
    v63 = v21;
    if (v22)
    {
      v23 = v22;
      v24 = v20;
      v25 = [v21 presentationLayer];
      if (v25 && (_UILayerAncestorsHaveAllBeenCommitted_0(v24) & 1) != 0)
      {
        v59 = v19;
        HaveAllBeenCommitted_0 = _UILayerAncestorsHaveAllBeenCommitted_0(v21);

        if (!HaveAllBeenCommitted_0)
        {
          v19 = v59;
          v20 = v24;
          goto LABEL_12;
        }

        v20 = [v24 presentationLayer];

        [v21 presentationLayer];
        v63 = v23 = v21;
        v19 = v59;
      }

      else
      {

        v20 = v24;
      }
    }

LABEL_12:
    v27 = [v18 _window];
    v28 = [v19 _window];
    v29 = [v27 windowScene];
    v30 = [v28 windowScene];
    v61 = v30;
    v62 = v29;
    if (v27 == v28)
    {
      v43 = v63;
      [v20 convertPoint:v63 toLayer:{a3, a4}];
      v14 = v44;
    }

    else
    {
      v60 = v19;
      if (v30 && v29 && v29 != v30)
      {
        v54 = v27;
        v31 = v18;
        v32 = v30;
        [v29 screen];
        v33 = v57 = v20;
        v34 = [v33 fixedCoordinateSpace];
        [v34 convertPoint:v31 fromCoordinateSpace:{a3, a4}];
        v36 = v35;
        v38 = v37;

        v39 = v32;
        v18 = v31;
        v27 = v54;
        v40 = [v39 screen];
        v41 = [v40 fixedCoordinateSpace];
        v19 = v60;
        [v60 convertPoint:v41 fromCoordinateSpace:{v36, v38}];
        v14 = v42;

        v20 = v57;
        v43 = v63;
      }

      else
      {
        v45 = [v27 layer];
        v58 = [v28 layer];
        v46 = [v45 presentationLayer];
        if (v46)
        {
          v47 = v46;
          v48 = v20;
          v49 = [v58 presentationLayer];

          if (v49)
          {
            v50 = [v45 presentationLayer];

            v51 = [v58 presentationLayer];

            v58 = v51;
            v45 = v50;
          }

          v18 = v55;
          v20 = v48;
        }

        else
        {
          v18 = v55;
        }

        [v20 convertPoint:v45 toLayer:{a3, a4, v45}];
        v43 = v63;
        [v63 convertPoint:v58 fromLayer:?];
        v14 = v52;

        v19 = v60;
      }
    }

    goto LABEL_25;
  }

  v14 = (v13)[2](v13, v9, v10, a3, a4, 0.0);
LABEL_26:

  return v14;
}

void _validatedItemLayout(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[6];
  v21 = *a2;
  v16 = a2[7];
  v17 = *(a2 + 8);
  if ([v9 count])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v19 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_6;
      }

      v20 = [v9 componentsJoinedByString:{@", "}];
      *buf = 138412802;
      v23 = v8;
      v24 = 2112;
      v25 = v20;
      v26 = 2112;
      v27 = v7;
      _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "Encountered invalid context menu %@ layout output: [ %@ ], input: %@", buf, 0x20u);
LABEL_5:

LABEL_6:
      goto LABEL_7;
    }

    v18 = *(__UILogGetCategoryCachedImpl("Assert", &_validatedItemLayout___s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = [v9 componentsJoinedByString:{@", "}];
      *buf = 138412802;
      v23 = v8;
      v24 = 2112;
      v25 = v20;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Encountered invalid context menu %@ layout output: [ %@ ], input: %@", buf, 0x20u);
      goto LABEL_5;
    }
  }

LABEL_7:
  *a1 = v21;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = a2[15];
}

void sub_188D6C074(char *a1)
{
  v281 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v281);
  v284 = v272 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GlassState(0);
  v294 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v273 = v272 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v279 = v272 - v8;
  v9 = sub_18A4A56B8();
  v10 = *(v9 - 8);
  v282 = v9;
  v283 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v280 = v272 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = COERCE_DOUBLE(type metadata accessor for _Glass(0));
  v298 = *(v12 - 8);
  v299 = *&v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v272 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v288 = v272 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v286 = v272 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v285 = v272 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A490);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v291 = v272 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v272 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = (v272 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v274 = v272 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v297 = v272 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v290 = v272 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v275 = v272 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v289 = v272 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v292 = v272 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v300 = v272 - v42;
  v296 = *(v1 + OBJC_IVAR____UIMagicMorphView_lock);
  os_unfair_lock_lock(v296 + 4);
  v43 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v44 = *(v1 + v43);
  v287 = v14;
  if (v44 >> 62)
  {
LABEL_123:
    v301 = sub_18A4A7F68();
  }

  else
  {
    v301 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v303 = OBJC_IVAR____UIMagicMorphDestination_preview;
  v45 = &selRef_verticalMenuCornerRadius;
  v308 = [*&a1[OBJC_IVAR____UIMagicMorphDestination_preview] view];
  v302 = v1;
  v1 = *(v1 + v43);
  v304 = a1;
  v295 = v5;
  v293 = v43;
  v277 = v25;
  v278 = v28;
  v305 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    v307 = sub_18A4A7F68();
  }

  else
  {
    v307 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v306 = v1 & 0xC000000000000001;

  v25 = 0;
  v5 = &selRef_automaticallyPlacesContentView;
  while (1)
  {
    if (v307 == v25)
    {
      v53 = 0;
      goto LABEL_23;
    }

    if (v306)
    {
      v43 = v1;
      v46 = sub_188E494B4(v25, v1);
    }

    else
    {
      if (v25 >= *(v305 + 16))
      {
        __break(1u);
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v43 = v1;
      v46 = *(v1 + 8 * v25 + 32);
    }

    v47 = v46;
    v48 = v25;
    v2 = [v308 _sourceViewIfPortal];
    if (!v2)
    {
      v2 = v308;
    }

    v49 = OBJC_IVAR____UIMagicMorphDestination_preview;
    a1 = [*&v47[OBJC_IVAR____UIMagicMorphDestination_preview] v45[41]];
    v28 = v45;
    v50 = [a1 _sourceViewIfPortal];

    if (v50)
    {

      v51 = v50 == v2;
      v45 = v28;
      if (v51)
      {
        break;
      }

      goto LABEL_17;
    }

    a1 = [*&v47[v49] v28 + 2808];

    v45 = v28;
    if (a1 == v2)
    {
      break;
    }

LABEL_17:
    v52 = __OFADD__(v48, 1);
    v25 = v48 + 1;
    v1 = v43;
    if (v52)
    {
      goto LABEL_122;
    }
  }

  v25 = v48;
  v53 = v48;
LABEL_23:

  v54 = v302;
  v56 = v303;
  v55 = v304;
  if (!v301)
  {
    goto LABEL_40;
  }

  v57 = OBJC_IVAR____UIMagicMorphView_currentMorphingAxis;
  if (*&v302[OBJC_IVAR____UIMagicMorphView_currentMorphingAxis])
  {
    goto LABEL_40;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v304 + OBJC_IVAR____UIMagicMorphDestination_insets), *&UIEdgeInsetsZero.top), vceqq_f64(*(v304 + OBJC_IVAR____UIMagicMorphDestination_insets + 16), *&UIEdgeInsetsZero.bottom)))) & 1) == 0)
  {
    v58 = 1;
    goto LABEL_39;
  }

  v59 = [v302 layer];
  v60 = [v59 presentationLayer];

  if (v60)
  {
    [v60 bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    goto LABEL_37;
  }

  v69 = *(v54 + v293);
  if (!(v69 >> 62))
  {
    v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v70)
    {
      goto LABEL_31;
    }

LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v70 = sub_18A4A7F68();
  if (!v70)
  {
    goto LABEL_130;
  }

LABEL_31:
  v2 = v70 - 1;
  if (__OFSUB__(v70, 1))
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if ((v69 & 0xC000000000000001) != 0)
  {
LABEL_132:

    v71 = sub_188E494B4(v2, v69);

    goto LABEL_36;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_134;
  }

  if (v2 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_134:
    __break(1u);

    os_unfair_lock_unlock(v55[2]);
    __break(1u);
    return;
  }

  v71 = *(v69 + 8 * v2 + 32);
LABEL_36:
  v72 = *&v71[OBJC_IVAR____UIMagicMorphDestination_preview];

  [v72 size];
  v66 = v73;
  v68 = v74;

  v62 = 0.0;
  v64 = 0.0;
LABEL_37:
  [*(v56 + v55) size];
  v76 = v75;
  v78 = v77;
  v323.origin.x = 0.0;
  v323.origin.y = 0.0;
  v323.size.width = v76;
  v323.size.height = v78;
  Width = CGRectGetWidth(v323);
  v324.origin.x = v62;
  v324.origin.y = v64;
  v324.size.width = v66;
  v324.size.height = v68;
  v80 = vabdd_f64(Width, CGRectGetWidth(v324));
  v325.origin.x = v62;
  v325.origin.y = v64;
  v325.size.width = v66;
  v325.size.height = v68;
  v81 = v80 / CGRectGetWidth(v325);
  v326.origin.x = 0.0;
  v326.origin.y = 0.0;
  v326.size.width = v76;
  v326.size.height = v78;
  Height = CGRectGetHeight(v326);
  v327.origin.x = v62;
  v327.origin.y = v64;
  v327.size.width = v66;
  v327.size.height = v68;
  v83 = vabdd_f64(Height, CGRectGetHeight(v327));
  v328.origin.x = v62;
  v328.origin.y = v64;
  v328.size.width = v66;
  v328.size.height = v68;
  v84 = CGRectGetHeight(v328);
  v58 = 2;
  if (v83 / v84 >= v81)
  {
    v58 = 1;
  }

LABEL_39:
  *(v54 + v57) = v58;
LABEL_40:
  v306 = v53;
  v320 = 1;
  v85 = v54 + OBJC_IVAR____UIMagicMorphView_overrideCornerRadii;
  *v85 = 0u;
  *(v85 + 1) = 0u;
  *(v85 + 2) = 0u;
  *(v85 + 3) = 0u;
  v85[64] = 1;
  sub_188D6180C();
  v86 = v54 + OBJC_IVAR____UIMagicMorphView_overrideBounds;
  v87 = *(v54 + OBJC_IVAR____UIMagicMorphView_overrideBounds + 16);
  v321[0] = *(v54 + OBJC_IVAR____UIMagicMorphView_overrideBounds);
  v321[1] = v87;
  v322 = *(v54 + OBJC_IVAR____UIMagicMorphView_overrideBounds + 32);
  *v86 = 0u;
  *(v86 + 1) = 0u;
  v86[32] = 1;
  sub_188D794BC(v321);
  [*(v56 + v55) _sizeRespectingOverridesUsingPresentationLayer_];
  [v54 setBounds_];
  v90 = sub_188D62F28();
  v91 = v90[4];
  v92 = v308;
  v90[4] = v308;
  v93 = v92;
  sub_188D630A4(v91);

  v308 = v93;

  v94 = [*(v56 + v55) _effectiveBackgroundColorResolvesToMaterial];
  v95 = v94;
  if (*(v54 + OBJC_IVAR____UIMagicMorphView_appliesBackgroundFromView) != 1)
  {
    goto LABEL_72;
  }

  LODWORD(v305) = v94;
  v276 = v25;
  v96 = v298;
  v97 = v299;
  v98 = *(v298 + 56);
  v98(v300, 1, 1, *&v299);
  v272[0] = *(v294 + 56);
  v272[1] = v294 + 56;
  (v272[0])(v297, 1, 1, v295);
  v99 = *(v56 + v55);
  v100 = [(UITargetedPreview *)v99 _typedStorage];
  sub_18901EF08(&v313);

  if (*&v313.d)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
    v101 = v292;
    v102 = swift_dynamicCast();
    v98(v101, v102 ^ 1u, 1, *&v97);
    v103 = (*(v96 + 48))(v101, 1, COERCE_CGFLOAT(*&v97));
    v104 = &selRef_verticalMenuCornerRadius;
    v105 = v97;
    if (v103 != 1)
    {
      v106 = v300;
      sub_188A3F5FC(v300, &unk_1EA93BA10);
      v107 = v285;
      sub_188B65504(v101, v285, type metadata accessor for _Glass);
      sub_188B65504(v107, v106, type metadata accessor for _Glass);
      v98(v106, 0, 1, *&v97);
      v104 = &selRef_verticalMenuCornerRadius;
      v56 = v303;
      v25 = v276;
      goto LABEL_54;
    }
  }

  else
  {
    sub_188A3F5FC(&v313, &unk_1EA93C9A0);
    v101 = v292;
    v98(v292, 1, 1, *&v97);
    v104 = &selRef_verticalMenuCornerRadius;
    v105 = v97;
  }

  sub_188A3F5FC(v101, &unk_1EA93BA10);
  if (![(os_unfair_lock_s *)*(v55 + v303) _resolvedBackgroundMaterial])
  {
    memset(&v313, 0, 40);
    v25 = v276;
    goto LABEL_52;
  }

  swift_getObjectType();
  sub_18901EB8C(&v313);
  swift_unknownObjectRelease();
  v25 = v276;
  if (!*&v313.d)
  {
LABEL_52:
    sub_188A3F5FC(&v313, &unk_1EA93C9A0);
    v108 = v289;
    v98(v289, 1, 1, *&v105);
    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  v108 = v289;
  v109 = swift_dynamicCast();
  v98(v108, v109 ^ 1u, 1, *&v105);
  if ((*(v298 + 48))(v108, 1, COERCE_CGFLOAT(*&v105)) == 1)
  {
LABEL_53:
    sub_188A3F5FC(v108, &unk_1EA93BA10);
    v56 = v303;
    goto LABEL_54;
  }

  sub_188B65504(v108, v286, type metadata accessor for _Glass);
  v110 = [v308 traitCollection];
  v111 = [v54 traitCollection];
  v112 = sub_188B657E8();
  if (!v112)
  {

    v115 = v282;
    goto LABEL_93;
  }

  v113 = v112;
  Strong = swift_unknownObjectWeakLoadStrong();

  v115 = v282;
  v292 = Strong;
  if (!Strong)
  {
LABEL_93:
    v292 = v54;
  }

  v203 = sub_188E1AF8C();
  v204 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  v205 = v279;
  sub_188A3F29C(&v203[v204], v279, &qword_1EA935CD0);
  v206 = v283;
  v207 = (v283[6])(v205, 1, v115);
  v289 = v110;
  v285 = v203;
  if (v207 == 1)
  {
    sub_188A3F5FC(v205, &qword_1EA935CD0);
    v208 = sub_188B657E8();
    if (v208)
    {
      v209 = v208;
      v210 = swift_unknownObjectWeakLoadStrong();

      if (v210)
      {
        v211 = [(os_unfair_lock_s *)*(v55 + v303) view];
        v212 = sub_188B622F4(v211);

        if (v212)
        {
          v213 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
          swift_beginAccess();
          v214 = &v212[v213];
          v215 = v273;
          sub_1890E20EC(v214, v273, type metadata accessor for GlassState);

          v216 = v215 + *(v295 + 5);
          v217 = *v216;
          v218 = *(v216 + 8);
          sub_1890E208C(v215, type metadata accessor for GlassState);
          if ((v218 & 1) == 0)
          {
            goto LABEL_103;
          }
        }
      }
    }

    v219 = [(os_unfair_lock_s *)*(v55 + v303) view];
    v220 = [(UIView *)v219 _typedStorage];
    v221 = v274;
    sub_18901F140(v274);

    v222 = v295;
    if ((*(v294 + 48))(v221, 1, v295))
    {
      sub_188A3F5FC(v221, &qword_1EA93A490);
      goto LABEL_104;
    }

    v233 = v221 + *(v222 + 5);
    v217 = *v233;
    v234 = *(v233 + 8);
    sub_188A3F5FC(v221, &qword_1EA93A490);
    if ((v234 & 1) == 0)
    {
LABEL_103:
      v235 = v217;
      v236 = v55 + OBJC_IVAR____UIMagicMorphDestination_initialLuminance;
      *v236 = v235;
      v236[4] = 0;
    }

LABEL_104:
    v237 = [(UIView *)v292 _traitOverrides];
    v238 = [(_UITraitOverrides *)v237 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    inited = swift_initStackObject();
    *(inited + 16) = v238;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v240 = [(_UITraitOverrides *)*(inited + 16) _swiftImplCopy];
      v241 = swift_allocObject();
      *(v241 + 16) = v240;

      inited = v241;
    }

    v242 = qword_1ED491B40;
    v243 = *(inited + 16);
    if (v242 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v244 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    v245 = sub_18901AD54(&type metadata for MaterialBackdropContextTrait, 0);
    os_unfair_lock_unlock(v244[2]);
    [(_UITraitOverrides *)v243 _removeTraitToken:v245];

    swift_unknownObjectRelease();
    v246 = [(UIView *)v292 _traitOverrides];
    v247 = *(inited + 16);

    [(_UITraitOverrides *)v246 _replaceWithOverrides:v247];

    v55 = v304;
  }

  else
  {
    (v206[4])(v280, v205, v115);
    v223 = sub_18A4A5688();
    v224 = v55 + OBJC_IVAR____UIMagicMorphDestination_initialLuminance;
    *v224 = v223;
    v224[4] = BYTE4(v223) & 1;
    v225 = v203;
    v226 = v292;
    v227 = [(UIView *)v292 _traitOverrides];
    v228 = [(_UITraitOverrides *)v227 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v229 = swift_initStackObject();
    *(v229 + 16) = v228;
    *&v313.a = v229;
    sub_18901E6BC(v225);
    a = v313.a;
    v231 = [(UIView *)v226 _traitOverrides];
    v232 = *(*&a + 16);

    [(_UITraitOverrides *)v231 _replaceWithOverrides:v232];

    (v283[1])(v280, v282);
  }

  v248 = v299;
  if (*(v55 + OBJC_IVAR____UIMagicMorphDestination_initialLuminance + 4))
  {
    v249 = v300;
    sub_188A3F5FC(v300, &unk_1EA93BA10);
    sub_1890E20EC(v286, v249, type metadata accessor for _Glass);
    v98(v249, 0, 1, *&v248);
  }

  else
  {
    v250 = v286;
    v251 = v275;
    sub_1890E20EC(v286, v275, type metadata accessor for _Glass);
    v252 = v250 + *(*&v248 + 24);
    v253 = v284;
    sub_1890E20EC(v252, v284, type metadata accessor for _Glass._GlassVariant);
    v254 = sub_18A4A2F58();
    v283 = v272;
    v255 = *(v254 - 8);
    MEMORY[0x1EEE9AC00](v254);
    v257 = v272 - ((v256 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18A4A2E78();
    v258 = v300;
    sub_188A3F5FC(v300, &unk_1EA93BA10);
    (*(v255 + 40))(v253, v257, v254);
    v54 = v302;
    v55 = v304;
    sub_188F6D250(v253, v251 + *(*&v248 + 24));
    v98(v251, 0, 1, *&v248);
    sub_188A3F704(v251, v258, &unk_1EA93BA10);
  }

  v56 = v303;
  v259 = [(os_unfair_lock_s *)*(v55 + v303) view];
  v260 = sub_189021970();
  v25 = v276;
  if (v260)
  {
    v261 = v260;
    v262 = sub_188B622F4(v259);

    if (v262)
    {

      v263 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
      swift_beginAccess();
      v264 = v277;
      sub_1890E20EC(&v262[v263], v277, type metadata accessor for GlassState);

      v265 = v295;
      v266 = v272[0];
      (v272[0])(v264, 0, 1, v295);
      sub_1890E208C(v286, type metadata accessor for _Glass);
      v267 = v297;
      sub_188A3F5FC(v297, &qword_1EA93A490);
      v268 = v278;
      sub_188B65504(v264, v278, type metadata accessor for GlassState);
      v266(v268, 0, 1, v265);
      v104 = &selRef_verticalMenuCornerRadius;
      goto LABEL_120;
    }
  }

  else
  {
  }

  v269 = v277;
  (v272[0])(v277, 1, 1, v295);
  v104 = &selRef_verticalMenuCornerRadius;
  v270 = [*(v56 + v55) view];
  v271 = [(UIView *)v270 _typedStorage];
  v268 = v278;
  sub_18901F140(v278);

  sub_1890E208C(v286, type metadata accessor for _Glass);
  v267 = v297;
  sub_188A3F5FC(v297, &qword_1EA93A490);
  if ((*(v294 + 48))(v269, 1, v295) != 1)
  {
    sub_188A3F5FC(v269, &qword_1EA93A490);
  }

LABEL_120:
  sub_188A3F704(v268, v267, &qword_1EA93A490);
LABEL_54:
  v116 = [*(v56 + v55) v104[41]];
  v117 = [v116 _suppressBackground];

  *(v55 + OBJC_IVAR____UIMagicMorphDestination_backgroundSuppressionAssertion) = v117;
  swift_unknownObjectRelease();
  sub_1890217D8([*(v56 + v55) v104[41]]);
  v118 = v290;
  sub_188A3F29C(v300, v290, &unk_1EA93BA10);
  if ((*(v298 + 48))(v118, 1, COERCE_CGFLOAT(*&v299)) != 1)
  {
    v121 = v118;
    v122 = v288;
    sub_188B65504(v121, v288, type metadata accessor for _Glass);
    v123 = v287;
    sub_188B65504(v122, v287, type metadata accessor for _Glass);

    *(v123 + 8) = xmmword_18A665890;
    sub_188B65504(v123, v122, type metadata accessor for _Glass);
    v124 = *(v56 + v55);
    v125 = v122;
    v126 = v124;
    v127 = [(UITargetedPreview *)v126 _typedStorage];
    v128 = sub_18901EFE0();

    v129 = v299;
    if (v128)
    {
      sub_188B65504(v125, v123, type metadata accessor for _Glass);
      *(v123 + *(*&v129 + 56)) = 1;
      sub_188B65504(v123, v125, type metadata accessor for _Glass);
    }

    v313.d = v129;
    *&v313.tx = &protocol witness table for _Glass;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v313);
    sub_1890E20EC(v125, boxed_opaque_existential_0, type metadata accessor for _Glass);
    UIView._background.setter(&v313);
    sub_1890E208C(v125, type metadata accessor for _Glass);
    goto LABEL_69;
  }

  sub_188A3F5FC(v118, &unk_1EA93BA10);
  v119 = [*(v56 + v55) v104[41]];
  v120 = [(UIView *)v119 _typedStorage];
  sub_188A6852C(&v313);

  v309 = v313;
  v310 = v314;
  v311 = v315;
  v312 = v316;
  if (*&v313.d)
  {
    sub_188A53994(&v309, &v317);
    sub_188ACE668(&v309);
  }

  else
  {
    sub_188A3F5FC(&v309, &unk_1EA933EC0);
    v317 = 0u;
    v318 = 0u;
    v319 = 0;
  }

  v131 = v305;
  sub_188A3F29C(&v317, &v313, &unk_1EA93C9A0);
  v132 = *&v313.d == 0;
  sub_188A3F5FC(&v313, &unk_1EA93C9A0);
  if ((v132 & v131) == 1)
  {
    v133 = [*(v56 + v304) parameters];
    v134 = [v133 _effectiveBackgroundColor];

    v135 = sub_188A34624(0, qword_1ED4913C0);
    sub_188A3F5FC(&v317, &unk_1EA93C9A0);
    *&v317 = v134;
    *(&v318 + 1) = v135;
    v319 = &protocol witness table for UIColor;
  }

  sub_188A3F29C(&v317, &v309, &unk_1EA93C9A0);
  if (!*&v309.d)
  {
    if (qword_1EA931280 == -1)
    {
      goto LABEL_66;
    }

    goto LABEL_128;
  }

  sub_188A5EBAC(&v309, &v313);
  while (2)
  {
    UIView._background.setter(&v313);
    sub_188A3F5FC(&v317, &unk_1EA93C9A0);
LABEL_69:
    v139 = OBJC_IVAR____UIMagicMorphView_multiLayerAssertion;
    if (!*(v54 + OBJC_IVAR____UIMagicMorphView_multiLayerAssertion))
    {
      v140 = sub_18A4A7258();
      v141 = [(UIView *)v54 _takeMultiLayerAssertionForReason:v140];

      *(v54 + v139) = v141;
      swift_unknownObjectRelease();
    }

    v142 = v297;
    v143 = v291;
    sub_188A3F29C(v297, v291, &qword_1EA93A490);
    sub_189021B28(v143);
    sub_188A3F5FC(v142, &qword_1EA93A490);
    sub_188A3F5FC(v300, &unk_1EA93BA10);
    v55 = v304;
    v95 = v305;
LABEL_72:
    v144 = [*(v56 + v55) _previewMode] - 6 < 0xFFFFFFFFFFFFFFFELL;
    v145 = OBJC_IVAR____UIMagicMorphView_clippingView;
    [*(v54 + OBJC_IVAR____UIMagicMorphView_clippingView) setClipsToBounds_];
    if (v307 == v25)
    {
      v146 = objc_opt_self();
      v147 = swift_allocObject();
      v147[2] = v54;
      v147[3] = v55;
      *(v147 + 32) = v95;
      v148 = v54;
      v54 = swift_allocObject();
      v56 = sub_188D6391C;
      v54[2] = sub_188D6391C;
      v54[3] = v147;
      *&v313.tx = sub_188E3FE50;
      *&v313.ty = v54;
      *&v313.a = MEMORY[0x1E69E9820];
      *&v313.b = 1107296256;
      *&v313.c = sub_188A4A968;
      *&v313.d = &block_descriptor_178;
      v149 = _Block_copy(&v313);
      v150 = v148;
      v151 = v304;

      [v146 performWithoutAnimation_];
      _Block_release(v149);
      LOBYTE(v146) = swift_isEscapingClosureAtFileLocation();

      if ((v146 & 1) == 0)
      {
        v152 = v302;
        goto LABEL_79;
      }

      __break(1u);
LABEL_126:
      sub_18A4A7588();
      v55 = v304;
    }

    else
    {
      v153 = v293;
      swift_beginAccess();
      v147 = sub_188B747CC(v306, sub_188B8AD14);
      MEMORY[0x18CFE2450]();
      if (*((*(v54 + v153) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v54 + v153) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_126;
      }
    }

    sub_18A4A75F8();
    swift_endAccess();
    v154 = OBJC_IVAR____UIMagicMorphDestination_transformView;
    [*(v54 + v145) bringSubviewToFront_];
    v155 = *(v56 + v55);
    v156 = v55;
    v157 = OBJC_IVAR____UIMagicMorphDestination_preview;
    v158 = *(v147 + OBJC_IVAR____UIMagicMorphDestination_preview);
    *(v147 + OBJC_IVAR____UIMagicMorphDestination_preview) = v155;
    v159 = v155;

    v160 = *(v156 + OBJC_IVAR____UIMagicMorphDestination_shadowProperties);
    v161 = *(v147 + OBJC_IVAR____UIMagicMorphDestination_shadowProperties);
    *(v147 + OBJC_IVAR____UIMagicMorphDestination_shadowProperties) = v160;
    v162 = v160;

    v163 = *(v147 + v154);
    v164 = *(v147 + v157);
    v165 = *&v163[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview];
    *&v163[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview] = v164;
    v166 = v164;
    v167 = v163;
    sub_188D81038(v165);

    v152 = v302;
    v167[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_hidesSourceView] = *(v156 + OBJC_IVAR____UIMagicMorphDestination_hidesSourceView);
    [*&v167[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView] setHidesSourceView_];
    v167[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_appliesMinificationFilter] = *(v156 + OBJC_IVAR____UIMagicMorphDestination_wantsMinificationFilter);
    sub_188D797E4();
    [v167 setUserInteractionEnabled_];
    v152[OBJC_IVAR____UIMagicMorphView_contentSizeDidChange] = 1;
    [v152 setNeedsLayout];
    if ([objc_opt_self() _isInAnimationBlock])
    {
      [v152 layoutIfNeeded];
    }

    sub_1890E07A8();

    v56 = 0;
LABEL_79:
    v168 = [(os_unfair_lock_s *)*(v304 + v303) parameters];
    v169 = [v168 visiblePath];

    if (v169 && ([v169 copy], v169, sub_18A4A7DE8(), swift_unknownObjectRelease(), sub_188A34624(0, &qword_1EA92E890), (swift_dynamicCast() & 1) != 0))
    {
      v170 = v309.a;
      v171 = [(os_unfair_lock_s *)*(v304 + v303) view];
      if ([*&v170 _isRoundedRect])
      {
        [*&v170 bounds];
        v176 = UIRectRoundToViewScale(v171, v172, v173, v174, v175);
        v178 = v177;
        v180 = v179;
        v182 = v181;
        [v171 bounds];
        v332.origin.x = v183;
        v332.origin.y = v184;
        v332.size.width = v185;
        v332.size.height = v186;
        v329.origin.x = v176;
        v329.origin.y = v178;
        v329.size.width = v180;
        v329.size.height = v182;
        v187 = CGRectEqualToRect(v329, v332);

        if (v187)
        {

          v152 = v302;
          goto LABEL_84;
        }
      }

      else
      {
      }

      v188 = v302;
      [v302 bounds];
      v193 = [objc_allocWithZone(_UIShapeView) initWithFrame_];
      [*&v170 bounds];
      v194 = -CGRectGetMinX(v330);
      [*&v170 bounds];
      MinY = CGRectGetMinY(v331);
      CGAffineTransformMakeTranslation(&v313, v194, -MinY);
      [*&v170 applyTransform_];
      v196 = [v193 shapeLayer];
      v197 = [*&v170 CGPath];
      [v196 setPath_];

      [*&v188[v145] setMaskView_];
      v152 = v188;
    }

    else
    {
LABEL_84:
      [*&v152[v145] setMaskView_];
    }

    sub_188D6E5D0(v304);
    if (v301)
    {
      [v152 setNeedsLayout];
      [v152 layoutIfNeeded];

      v198 = 0;
      goto LABEL_91;
    }

    v307 = v56;
    v25 = objc_opt_self();
    v199 = swift_allocObject();
    *(v199 + 16) = v152;
    v54 = swift_allocObject();
    v198 = sub_188D6F26C;
    v54[2] = sub_188D6F26C;
    v54[3] = v199;
    *&v313.tx = sub_188E3FE50;
    *&v313.ty = v54;
    *&v313.a = MEMORY[0x1E69E9820];
    *&v313.b = 1107296256;
    *&v313.c = sub_188A4A968;
    *&v313.d = &block_descriptor_188_0;
    v200 = _Block_copy(&v313);
    v201 = v152;

    [v25 performWithoutAnimation_];

    _Block_release(v200);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_128:
      swift_once();
LABEL_66:
      v136 = __swift_project_value_buffer(v281, qword_1EA994F90);
      v137 = v284;
      sub_1890E20EC(v136, v284, type metadata accessor for _Glass._GlassVariant);
      v313.d = v299;
      *&v313.tx = &protocol witness table for _Glass;
      v138 = __swift_allocate_boxed_opaque_existential_0(&v313);
      _Glass.init(_:smoothness:)(v137, v138, 0.0);
      if (*&v309.d)
      {
        sub_188A3F5FC(&v309, &unk_1EA93C9A0);
      }

      continue;
    }

    break;
  }

  v56 = v307;
LABEL_91:
  os_unfair_lock_unlock(v296 + 4);
  sub_188A55B8C(v56);
  sub_188A55B8C(v198);
}