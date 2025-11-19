UIPressInfo *_UIAppGameControllerPressInfoForState(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = _UIGetGameControllerMinimumForce();
  v13 = objc_alloc_init(UIPressInfo);
  [(UIPressInfo *)v13 setType:a1];
  [(UIPressInfo *)v13 setSource:2];
  [(UIPressInfo *)v13 setGameControllerComponent:a2];
  [(UIPressInfo *)v13 setForce:a5];
  [(UIPressInfo *)v13 setTimestamp:a6];
  [(UIPressInfo *)v13 setContextID:a3];
  v14 = 3;
  v15 = 2;
  if (a5 != a4)
  {
    v15 = 1;
  }

  if (v12 >= a5)
  {
    v16 = 0;
  }

  else
  {
    v14 = v15;
    v16 = v13;
  }

  if (v12 >= a4)
  {
    v17 = 0;
  }

  else
  {
    v17 = v14;
  }

  if (v12 >= a4)
  {
    v18 = v16;
  }

  else
  {
    v18 = v13;
  }

  [(UIPressInfo *)v13 setPhase:v17];
  v19 = v18;

  return v18;
}

double _UIGetGameControllerMinimumForce()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    return 0.001953125;
  }

  v2 = _UIInternalPreference_GameControllerMinimumForce;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_GameControllerMinimumForce)
  {
    return 0.001953125;
  }

  while (v0 >= v2)
  {
    _UIInternalPreferenceSync(v0, &_UIInternalPreference_GameControllerMinimumForce, @"GameControllerMinimumForce", _UIInternalPreferenceUpdateDouble);
    v2 = _UIInternalPreference_GameControllerMinimumForce;
    result = 0.001953125;
    if (v0 == _UIInternalPreference_GameControllerMinimumForce)
    {
      return result;
    }
  }

  return *&qword_1EA95E6F0;
}

void _UIAppGameControllerProcessGenericStick(uint64_t a1, double *a2, double *a3, void *a4, _BYTE *a5, _BYTE *a6, double a7)
{
  v35 = a4;
  [v35 _hidEvent];
  v13 = BKSHIDEventGetBaseAttributes();
  v14 = [v13 contextID];

  v15 = _UIAppGameControllerPressInfoForState(0, a1, v14, *a2, *a3, a7);
  v16 = _UIAppGameControllerPressInfoForState(1, a1, v14, a2[1], a3[1], a7);
  v17 = _UIAppGameControllerPressInfoForState(2, a1, v14, a2[2], a3[2], a7);
  v18 = _UIAppGameControllerPressInfoForState(3, a1, v14, a2[3], a3[3], a7);
  if (v15)
  {
    [UIApp _prepareButtonEvent:v35 withPressInfo:v15];
  }

  if (v16)
  {
    [UIApp _prepareButtonEvent:v35 withPressInfo:v16];
  }

  if (v17)
  {
    [UIApp _prepareButtonEvent:v35 withPressInfo:v17];
  }

  if (v18)
  {
    [UIApp _prepareButtonEvent:v35 withPressInfo:v18];
  }

  if (a5 && (v15 || v16 || v17 || v18))
  {
    *a5 = 1;
  }

  v19 = v15;
  v20 = _UIGetGameControllerMinimumForce();
  if (([v19 phase] || (objc_msgSend(v19, "force"), v21 > v20)) && objc_msgSend(v19, "phase") != 3)
  {
    v22 = [v19 phase];

    if (v22 != 4)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v23 = v16;
  v24 = _UIGetGameControllerMinimumForce();
  if (([v23 phase] || (objc_msgSend(v23, "force"), v25 > v24)) && objc_msgSend(v23, "phase") != 3)
  {
    v26 = [v23 phase];

    if (v26 != 4)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v27 = v17;
  v28 = _UIGetGameControllerMinimumForce();
  if (([v27 phase] || (objc_msgSend(v27, "force"), v29 > v28)) && objc_msgSend(v27, "phase") != 3)
  {
    v30 = [v27 phase];

    if (v30 != 4)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v31 = v18;
  v32 = _UIGetGameControllerMinimumForce();
  v34 = ![v31 phase] && (objc_msgSend(v31, "force"), v33 <= v32) || objc_msgSend(v31, "phase") == 3 || objc_msgSend(v31, "phase") == 4;

  if (a6 && v34)
  {
    *a6 = 1;
  }

LABEL_38:
}

id _titleAndMessageLabelTextColor()
{
  if (_UISolariumEnabled())
  {
    if (_UISolariumEnabled())
    {
      +[UIColor labelColor];
    }

    else
    {
      +[UIColor systemGrayColor];
    }
    v0 = ;
    if (_AXDarkenSystemColors())
    {
      v1 = [UIColor _accessibilityDarkenedColorForColor:v0];

      v0 = v1;
    }
  }

  else
  {
    v0 = +[UIColor whiteColor];
  }

  return v0;
}

uint64_t __SystemStatusUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED49AD00 = result;
  return result;
}

void sub_189FD5DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189FD7D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ResolvedReplacementColorForTypingAttributes(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKey:*off_1E70EC920];
  if (!v4)
  {
    v4 = v3;
    if (!v4)
    {
      v4 = +[UIColor labelColor];
    }
  }

  v5 = v4;

  return v5;
}

void PerformStandardAnimatedColorInsertionAnimation(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:2.0];
  v9 = v4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __PerformStandardAnimatedColorInsertionAnimation_block_invoke;
  v10[3] = &unk_1E70F3590;
  v11 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PerformStandardAnimatedColorInsertionAnimation_block_invoke_2;
  v8[3] = &unk_1E7103030;
  v6 = v4;
  v7 = v3;
  [UIView _animateUsingSpringBehavior:v5 tracking:0 animations:v10 completion:v8];
}

void sub_189FD89C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

CGFloat _UIAdjustedLocationForScreenTouchLocation(void *a1, CGFloat a2)
{
  v3 = a1;
  v4 = [v3 windowScene];
  v5 = [v4 statusBarManager];
  [v5 statusBarFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    goto LABEL_2;
  }

  v15 = [objc_opt_self() mainScreen];
  [v15 bounds];
  v17 = v16;

  v18 = [v3 windowScene];
  v19 = [v18 _interfaceOrientation];

  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v22.origin.x = v7;
      v22.origin.y = v9;
      v22.size.width = v11;
      v22.size.height = v13;
      a2 = v17 - (CGRectGetWidth(v22) + 1.0);
    }

    else if (v19 == 4)
    {
      v21.origin.x = v7;
      v21.origin.y = v9;
      v21.size.width = v11;
      v21.size.height = v13;
      a2 = CGRectGetWidth(v21) + 1.0;
    }
  }

  else if (v19 == 1 || v19 == 2)
  {
LABEL_2:
    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    CGRectGetHeight(v20);
  }

  return a2;
}

id _UIDictationGlowEffectLog()
{
  if (qword_1ED4A0EE0 != -1)
  {
    dispatch_once(&qword_1ED4A0EE0, &__block_literal_global_547);
  }

  v1 = _MergedGlobals_1295;

  return v1;
}

uint64_t __TextInputUILibraryCore_block_invoke_22()
{
  result = _sl_dlopen();
  qword_1ED4A0EF0 = result;
  return result;
}

void sub_189FE77E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189FE8B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189FE8E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id _UIFirstPopoverSeguePresentedControllerInUnwindingResponderChain(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  v7 = 0;
  v8 = v5;
  if (v5 && v5 != v4)
  {
    v9 = v5;
    while (1)
    {
      v10 = [v9 _popoverController];
      if (v10)
      {
        v11 = v10;
        v12 = [v9 _sourceViewControllerIfPresentedViaPopoverSegue];

        if (v12)
        {
          break;
        }
      }

      v8 = [v9 _nextViewControllerForUnwindSegueSearch];

      v7 = 0;
      if (v8)
      {
        v9 = v8;
        if (v8 != v4)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    v7 = v9;
    v8 = v7;
  }

LABEL_10:

  return v7;
}

uint64_t __ShouldUseLegacyUnwindSegueFactory_block_invoke()
{
  _MergedGlobals_1296 = sel_segueForUnwindingToViewController_fromViewController_identifier_;
  qword_1ED4A0F00 = objc_opt_class();
  result = objc_opt_class();
  qword_1ED4A0F08 = result;
  return result;
}

void sub_189FEE9E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

BOOL _canReuseExistingSwipeOccurrenceForSwipeDirection(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 direction] == (a2 == 2) && (objc_msgSend(v3, "state") & 0xFFFFFFFFFFFFFFFELL) != 4;

  return v4;
}

__CFString *NSStringFromUISwipeState(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7122A98[a1];
  }
}

__CFString *NSStringFromUISwipeDirection(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7122AB0[a1];
  }
}

id NSStringFromUISwipeConfig(void *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  if (*a1 > 2uLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7122AB0[*a1];
  }

  v4 = NSStringFromBOOL();
  v5 = [v2 stringWithFormat:@"{ %@, destructive: %@, open: %f, confirm: %f}", v3, v4, a1[2], a1[3]];

  return v5;
}

id NSStringFromUISwipeInfo(void *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  if (*a1 > 2uLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7122AB0[*a1];
  }

  v4 = NSStringFromBOOL();
  v5 = [v2 stringWithFormat:@"{ %@, animated: %@, x: %f, velocity: %f, stiffness: %f}", v3, v4, a1[3], a1[4], a1[5]];

  return v5;
}

double _UIDirectionalMultiplierForSwipeDirection(uint64_t a1)
{
  result = 1.0;
  if (a1 == 1)
  {
    return -1.0;
  }

  return result;
}

id _UIEffectiveActivityItemsConfiguration(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 _effectiveActivityItemsConfiguration];
  }

  else
  {
    [v1 activityItemsConfiguration];
  }
  v2 = ;

  return v2;
}

__CFString *_NSStringFromSwipeOccurrenceState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @".closed";
  }

  else
  {
    return off_1E7122B78[a1 - 1];
  }
}

void UIContextualActionAlertForOutdatedCompletionHandlerExecution(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *(__UILogGetCategoryCachedImpl("UIContextualAction", &UIContextualActionAlertForOutdatedCompletionHandlerExecution___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "The completion handler of an outdated contextual action was called after another action was performed. This will be ignored. Set a symbolic breakpoint on UIContextualActionAlertForOutdatedCompletionHandlerExecution to catch this in the debugger.\nOutdated action: %@", &v3, 0xCu);
  }
}

void sub_189FF607C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 120), 8);
  _Unwind_Resume(a1);
}

double _UISwipeActionGestureRecognizerEffectiveVelocity(void *a1)
{
  v1 = a1;
  v2 = [v1 view];
  [v1 velocityInView:v2];
  v4 = v3;

  if ([v2 _flipsHorizontalAxis])
  {
    v4 = -v4;
  }

  return v4;
}

double _UISwipeActionGestureRecognizerEffectiveTranslation(void *a1)
{
  v1 = a1;
  v2 = [v1 view];
  [v1 translationInView:v2];
  v4 = v3;

  if ([v2 _flipsHorizontalAxis])
  {
    v4 = -v4;
  }

  return v4;
}

void sub_189FFE848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189FFEBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _isRenderingText(void *a1)
{
  v1 = a1;
  v2 = [v1 currentImage];

  if (v2)
  {
    [v1 bounds];
    v3 = [v1 _defaultLayoutForHeight:CGRectGetHeight(v10)];
    v4 = [v1 titleLabel];
    if ([v4 isHidden])
    {
      v5 = 0;
    }

    else
    {
      v7 = [v1 titleLabel];
      v8 = [v7 text];
      v5 = [v8 length] != 0;
    }

    v6 = (v3 == 0) & v5;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_18A004F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _UITableViewCellLayoutIntrinsicSizeForCellStackingLabels(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 _textLabel:0];
  v8 = [v7 font];
  [v8 pointSize];
  v10 = v9;

  if (v10 == 0.0)
  {
    v11 = [v5 defaultTextLabelFontForCell:v6];
    [v7 setFont:v11];
  }

  [v6 frame];
  v13 = v12;
  v14 = [v6 textLabel];
  v15 = [v14 numberOfLines];

  if (v7)
  {
    [v7 font];
  }

  else
  {
    [v5 defaultTextLabelFontForCell:v6];
  }
  v16 = ;
  v17 = [v6 imageView];
  v18 = [v17 image];
  [v18 size];
  v20 = v19;

  if (v20 > 0.0)
  {
    [v7 numberOfLines];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v5 shouldIncreaseMarginForImageViewInCell:v6];
    v22 = 0.0;
    if ((v21 & 1) == 0)
    {
      [v5 requiredIndentationForFirstLineOfCell:v6 rowWidth:1 forSizing:a3];
    }

    [v7 _setFirstParagraphFirstLineHeadIndent:v22];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  [v5 getTextLabelRect:&v39 detailTextLabelRect:&v37 forCell:v6 rowWidth:1 forSizing:a3];
  v23 = *&v40;
  v24 = *MEMORY[0x1E695EFF8];
  v25 = *(MEMORY[0x1E695EFF8] + 8);
  v26 = [v6 textLabel];
  [v26 textRectForBounds:v15 limitedToNumberOfLines:{v24, v25, v23, 1.79769313e308}];

  v27 = *&v38;
  v28 = [v6 detailTextLabel];
  v29 = [v6 detailTextLabel];
  [v28 textRectForBounds:objc_msgSend(v29 limitedToNumberOfLines:{"numberOfLines"), v24, v25, v27, 1.79769313e308}];

  [v16 _bodyLeading];
  if ([v6 separatorStyle])
  {
    [v6 _separatorFrame];
    CGRectGetHeight(v41);
  }

  if ([v5 shouldStackAccessoryViewVerticallyForCell:v6 editing:{objc_msgSend(v6, "isEditing")}])
  {
    v30 = [v5 customAccessoryViewForCell:v6 editing:{objc_msgSend(v6, "isEditing")}];
    [v30 frame];
  }

  v31 = [v6 _detailTextLabel:0];
  v32 = [v31 text];
  v33 = [v32 length] != 0;

  v34 = [v6 _constants];
  v35 = [v6 _tableView];
  [v34 defaultRowHeightForTableView:v35 cellStyle:objc_msgSend(v6 hasDetailText:{"style"), v33}];

  return v13;
}

__CFString *_logResponderChain(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_new();
    do
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      [v3 addObject:v5];

      v6 = [v2 nextResponder];

      v2 = v6;
    }

    while (v6);
    v7 = [v3 componentsJoinedByString:@" > "];
  }

  else
  {
    v7 = &stru_1EFB14550;
  }

  return v7;
}

void sub_18A0165A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18A01E3F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18A025CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A025FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSYDocumentAttributesClass_block_invoke(uint64_t a1)
{
  SynapseLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SYDocumentAttributes");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSYDocumentAttributesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSYDocumentAttributesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIReturnToDocumentAction.m" lineNumber:25 description:{@"Unable to find class %s", "SYDocumentAttributes"}];

    __break(1u);
  }
}

void SynapseLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SynapseLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SynapseLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7122F90;
    v5 = 0;
    SynapseLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SynapseLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SynapseLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"_UIReturnToDocumentAction.m" lineNumber:19 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SynapseLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SynapseLibraryCore_frameworkLibrary = result;
  return result;
}

void __getSYDocumentWorkflowsClientClass_block_invoke(uint64_t a1)
{
  SynapseLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SYDocumentWorkflowsClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4A0F60 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSYDocumentWorkflowsClientClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIReturnToDocumentAction.m" lineNumber:27 description:{@"Unable to find class %s", "SYDocumentWorkflowsClient"}];

    __break(1u);
  }
}

void __getSYReturnToDocumentRequestClass_block_invoke(uint64_t a1)
{
  SynapseLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SYReturnToDocumentRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4A0F68 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSYReturnToDocumentRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIReturnToDocumentAction.m" lineNumber:28 description:{@"Unable to find class %s", "SYReturnToDocumentRequest"}];

    __break(1u);
  }
}

BOOL UIWebCurrentUserInterfaceIdiomIsSmallScreen()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return (v1 & 0xFFFFFFFFFFFFFFFBLL) == 0;
}

void sub_18A0271FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A028288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A02E424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_18A02E904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A02ECC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18A02F204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18A02FCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UIRecursiveDescription(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AD60] string];
  v7 = objc_autoreleasePoolPush();
  visit(a1, a2, a3, v6, 0);
  objc_autoreleasePoolPop(v7);

  return v6;
}

{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___Z23_UIRecursiveDescriptionP11objc_objectP13objc_selectorU13block_pointerFP8NSStringS0_iPU15__autoreleasingS4_E_block_invoke;
  v5[3] = &__block_descriptor_48_e8__16__0_8l;
  v5[4] = MEMORY[0x1E69E5918];
  v5[5] = a2;
  v3 = _UIRecursiveDescription(a1, v5, a3);

  return v3;
}

void visit(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  appendDescription(a1, a3, a4, @"   | ", a5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = (*(a2 + 16))(a2, a1);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        visit(*(*(&v15 + 1) + 8 * v14++), a2, a3, a4, a5 + 1);
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

id _UIAncestralDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_new();
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E695DF70] arrayWithObject:a1];
  v9 = (*(a2 + 16))(a2, a1);
  if (v9)
  {
    v10 = v9;
    do
    {
      [v8 insertObject:v10 atIndex:0];
      v10 = (*(a2 + 16))(a2, v10);
    }

    while (v10);
  }

  if ([v8 count])
  {
    v11 = 0;
    do
    {
      v12 = [v8 objectAtIndexedSubscript:v11];
      appendDescription(v12, a3, v6, @"    ", v11);

      ++v11;
    }

    while (v11 < [v8 count]);
  }

  objc_autoreleasePoolPop(v7);

  return v6;
}

{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___Z23_UIAncestralDescriptionP11objc_objectP13objc_selectorU13block_pointerFP8NSStringS0_iPU15__autoreleasingS4_E_block_invoke;
  v5[3] = &__block_descriptor_48_e8__16__0_8l;
  v5[4] = MEMORY[0x1E69E5918];
  v5[5] = a2;
  v3 = _UIAncestralDescription(a1, v5, a3);

  return v3;
}

void appendDescription(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    v11 = 0;
    v8 = (*(a2 + 16))(a2, a1, a5, &v11);
    v9 = v11;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = [a1 description];
    v9 = 0;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if ([a3 length])
  {
    [a3 appendString:@"\n"];
  }

  if (v9)
  {
    [a3 appendString:v9];
  }

  else if (a5)
  {
    v10 = 1;
    do
    {
      [a3 appendString:a4];
      ++v10;
    }

    while (v10 <= a5);
  }

  [a3 appendString:v8];
LABEL_13:
}

void sub_18A035908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t UIKeyboardIsModularKeyboardPlatformEnabled()
{
  if (qword_1ED4A0F88 != -1)
  {
    dispatch_once(&qword_1ED4A0F88, &__block_literal_global_563);
  }

  return _MergedGlobals_1301;
}

uint64_t __UIKeyboardIsModularKeyboardPlatformEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    _MergedGlobals_1301 = 1;
  }

  return result;
}

uint64_t _UITableConstantsEffectiveBackgroundFillStyleFromProperties(uint64_t *a1)
{
  v1 = a1[6];
  v2 = v1 > 0xC;
  v3 = (1 << v1) & 0x1081;
  if (v2 || v3 == 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *a1;
  }

  __destructor_8_s8_s16_s24_s80(a1);
  return v5;
}

__n128 __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_t48w56(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  result = *(a2 + 80);
  v6 = *(a2 + 48);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = result;
  *(a1 + 48) = v6;
  return result;
}

void sub_18A03D524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __destructor_8_s8_s16_s24_s80(&a9);
  __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(v9);
  _Unwind_Resume(a1);
}

CGColor *DKUCGColorCreateConvertedToSRGB(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = [UIColor colorWithCGColor:a1];
  [v1 getRed:&v5 green:&v6 blue:&v7 alpha:v8];

  v2 = [UIColor colorWithRed:v5 green:v6 blue:v7 alpha:v8[0]];
  v3 = [v2 CGColor];

  CGColorRetain(v3);
  return v3;
}

void DKUColorGetRGBAComponents(CGColor *a1, _OWORD *a2)
{
  if (a1)
  {
    ConvertedToSRGB = a1;
    ColorSpace = CGColorGetColorSpace(a1);
    if (ColorSpace)
    {
      if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
      {
        v5 = 0;
      }

      else
      {
        ConvertedToSRGB = DKUCGColorCreateConvertedToSRGB(ConvertedToSRGB);
        v5 = ConvertedToSRGB;
      }

      if (CGColorGetNumberOfComponents(ConvertedToSRGB) == 4)
      {
        Components = CGColorGetComponents(ConvertedToSRGB);
        v7 = *(Components + 1);
        *a2 = *Components;
        a2[1] = v7;
      }

      if (v5)
      {

        CGColorRelease(v5);
      }
    }
  }
}

double DKUCalculateHue(double a1, double a2, double a3)
{
  v3 = a3 + -6.0;
  if (a3 < 6.0)
  {
    v3 = a3;
  }

  if (a3 < 0.0)
  {
    v4 = a3 + 6.0;
  }

  else
  {
    v4 = v3;
  }

  if (v4 >= 1.0)
  {
    if (v4 < 3.0)
    {
      return a2;
    }

    if (v4 >= 4.0)
    {
      return a1;
    }

    v5 = a2 - a1;
    v4 = 4.0 - v4;
  }

  else
  {
    v5 = a2 - a1;
  }

  return v5 * v4 + a1;
}

void DKUConvertHSLToSRGB(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (fabs(v4) >= 0.00999999978)
  {
    v8 = *a1;
    v9 = v4 + v5 - v4 * v5;
    v10 = v5 * (v4 + 1.0);
    if (v5 <= 0.5)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    v12 = v5 + v5 - v11;
    v13 = v8 * 6.0;
    v5 = DKUCalculateHue(v12, v11, v8 * 6.0 + 2.0);
    v6 = DKUCalculateHue(v12, v11, v13);
    v7 = DKUCalculateHue(v12, v11, v13 + -2.0);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = v6;
  }

  v14 = *(a1 + 24);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v14;
}

uint64_t DKUConvertsRGBToHSL(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = fmax(fmax(*result, v3), v4);
  v6 = fmin(fmin(*result, v3), v4);
  v7 = v5 - v6;
  v8 = 0.0;
  v9 = 0.0;
  if (vabdd_f64(v5, v6) >= 0.00999999978)
  {
    if (v5 == v2)
    {
      v10 = (v3 - v4) / v7 * 60.0;
      v11 = 360.0;
    }

    else
    {
      if (v5 == v3)
      {
        v10 = (v4 - v2) / v7 * 60.0;
        v12 = 0x405E000000000000;
      }

      else
      {
        v10 = (v2 - v3) / v7 * 60.0;
        v12 = 0x406E000000000000;
      }

      v11 = *&v12;
    }

    v9 = v10 + v11;
  }

  v13 = v5 + v6;
  v14 = v13 * 0.5;
  if (v7 != 0.0)
  {
    if (v14 <= 0.5)
    {
      v8 = v7 / v13;
    }

    else
    {
      v8 = v7 / (2.0 - v13);
    }
  }

  v15 = v9 + -360.0;
  if (v9 < 360.0)
  {
    v15 = v9;
  }

  v16 = *(result + 24);
  *a2 = v15 / 360.0;
  *(a2 + 8) = v8;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  return result;
}

id _UITextFormattingViewControllerFormattingStyleClasses()
{
  if (qword_1ED4A1008 != -1)
  {
    dispatch_once(&qword_1ED4A1008, &__block_literal_global_567);
  }

  v1 = _MergedGlobals_1305;

  return v1;
}

id KeyboardUIServiceLog()
{
  if (qword_1ED4A1018 != -1)
  {
    dispatch_once(&qword_1ED4A1018, &__block_literal_global_568);
  }

  v1 = _MergedGlobals_1306;

  return v1;
}

void __KeyboardUIServiceLog_block_invoke()
{
  v0 = os_log_create("com.apple.keyboard", "KeyboardUIService");
  v1 = _MergedGlobals_1306;
  _MergedGlobals_1306 = v0;
}

BOOL TableShouldUseExtraPaddingForCells(void *a1)
{
  v1 = [a1 _scrollView];
  v2 = [v1 _screen];
  v3 = v2;
  v12 = 0;
  if (v2)
  {
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v1 frame];
    if (CGRectGetHeight(v14) >= 916.0)
    {
      v15.origin.x = v5;
      v15.origin.y = v7;
      v15.size.width = v9;
      v15.size.height = v11;
      if (CGRectGetWidth(v15) >= 1366.0 || (v16.origin.x = v5, v16.origin.y = v7, v16.size.width = v9, v16.size.height = v11, CGRectGetHeight(v16) >= 1366.0))
      {
        v12 = 1;
      }
    }
  }

  return v12;
}

id ImageWithOpacity(void *a1)
{
  v1 = a1;
  [v1 size];
  v4 = 0;
  if (v2 > 0.0)
  {
    v5 = v3;
    if (v3 > 0.0)
    {
      v6 = v2;
      v7 = *MEMORY[0x1E695EFF8];
      v8 = *(MEMORY[0x1E695EFF8] + 8);
      _UIGraphicsBeginImageContextWithOptions(0, 0, v2, v3, 0.0);
      [v1 drawInRect:0 blendMode:v7 alpha:{v8, v6, v5, 0.4}];
      v4 = _UIGraphicsGetImageFromCurrentImageContext(0);
      ContextStack = GetContextStack(0);
      PopContextFromStack(ContextStack);
    }
  }

  return v4;
}

void sub_18A04518C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_18A0461AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A046984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A046BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UIHomeAffordanceSingleTapGatingEnabled()
{
  result = _UIDeviceSupportsGlobalEdgeSwipeTouches();
  if (result)
  {

    return _UIApplicationSupportsHomeAffordanceObservation();
  }

  return result;
}

void sub_18A04FF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_UIEventDeferringEnvironmentsContainerSetDescription(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [a1 count];
  v3 = @"(empty)";
  if (a1)
  {
    v4 = v2;
    if (v2)
    {
      v5 = objc_opt_new();
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      obj = a1;
      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v18;
        do
        {
          v10 = 0;
          v11 = v8;
          do
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v8 = v11 + 1;
            v12 = [*(*(&v17 + 1) + 8 * v10) description];
            v13 = v12;
            v14 = @", ";
            if (v4 - 1 == v11)
            {
              v14 = &stru_1EFB14550;
            }

            [v5 appendFormat:@"%@%@", v12, v14];

            ++v10;
            ++v11;
          }

          while (v7 != v10);
          v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v7);
      }

      v3 = [v5 copy];
    }
  }

  return v3;
}

void sub_18A051A38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t shouldAllowDrop(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 _activeSourceDragSession];
  if (v5)
  {
    v6 = [v4 localDragSession];

    if (v6)
    {
      v7 = [v4 localDragSession];

      if (v5 == v7)
      {
        v6 = [v3 _shouldAllowInternalDrop];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_18A0526E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A052FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_UITableViewStringFromDropIntent(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown Drop Intent";
  }

  else
  {
    return off_1E7123408[a1];
  }
}

void sub_18A058460(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id realCellForRowAtIndexPath(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__193;
  v17 = __Block_byref_object_dispose__193;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __realCellForRowAtIndexPath_block_invoke;
  v9[3] = &unk_1E70FB728;
  v12 = &v13;
  v5 = v3;
  v10 = v5;
  v6 = v4;
  v11 = v6;
  [v5 _performUsingPresentationValues:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void sub_18A05AAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A05AEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __realCellForRowAtIndexPath_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cellForRowAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id _UICalendarFontWithWeight(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a2];
  if (a4 > 0.0)
  {
    v18 = *off_1E70ECCC0;
    v16 = *off_1E70ECD38;
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v17 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v12 = [v8 fontDescriptorByAddingAttributes:v11];

    v8 = v12;
  }

  if (v7 && ([v7 isEqual:*off_1E70ECCA8] & 1) == 0)
  {
    v13 = [v8 fontDescriptorWithDesign:v7];

    v8 = v13;
  }

  v14 = [off_1E70ECC18 fontWithDescriptor:v8 size:0.0];

  return v14;
}

double _UIAXAdjustContentOffsetForDifferentialScrollingIfNecessary(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [v8 item];
  v10 = _UIFocusBehaviorForEnvironment(v9);

  if ([v10 shouldCallAccessibilityOverrides] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 _ax_adjustedContentOffsetForDifferentialScrollingToShowFocusItemWithInfo:v8 proposedContentOffset:{a3, a4}];
    a3 = v11;
  }

  return a3;
}

uint64_t localizedObjectSort(void *a1, void *a2, void *a3)
{
  v6 = a3[1];
  v7 = [a1 methodForSelector:v6];
  v8 = [a2 methodForSelector:v6];
  v9 = *a3;
  v10 = v7(a1, v6);
  v11 = [v9 transformedCollationStringForString:v10];

  v12 = *a3;
  v13 = v8(a2, v6);
  v14 = [v12 transformedCollationStringForString:v13];

  if (v11)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"A nil string was passed for sorting."];
  }

  v16 = [v11 compare:v14 options:64 range:0 locale:{objc_msgSend(v11, "length"), *(*a3 + 8)}];

  return v16;
}

_UIDisplayInfoProvider *_UIDisplayInfoNullProvider()
{
  v0 = objc_alloc_init(_UIDisplayInfoProvider);

  return v0;
}

double _UITableViewDefaultSectionCornerRadiusForTraitCollection(void *a1)
{
  v1 = [a1 userInterfaceIdiom];
  if (v1 == 6)
  {
    return 16.0;
  }

  if (v1 == 3)
  {
    return 10.0;
  }

  v3 = _UISolariumEnabled();
  result = 10.0;
  if (v3)
  {
    return 26.0;
  }

  return result;
}

void sub_18A060278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A06BA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A06BB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _tagObjectForSelector(void *a1, uint64_t a2)
{
  v3 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___tagObjectForSelector_block_invoke;
  v5[3] = &unk_1E70F32F0;
  v6 = v3;
  v7 = a2;
  v4 = v3;
  [UIView _performForcedAppearanceModifications:v5];
}

void _tagObjectForBackgroundColorIfNecessary(void *a1)
{
  v5 = a1;
  v1 = [v5 backgroundColor];
  if (v1)
  {
    v2 = [v5 _metricsAdapter];
    v3 = [(UITableMetricsAdapter *)v2 tableBackgroundColor];
    v4 = [v1 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      _tagObjectForSelector(v5, sel_setBackgroundColor_);
    }
  }
}

void sub_18A06E928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A06ED88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void UITableViewAlertForCellForRowAtIndexPathAccessDuringUpdate(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (os_variant_has_internal_diagnostics())
  {
    v3 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "Attempted to call -cellForRowAtIndexPath: on the table view while it was in the process of updating its visible cells, which is not allowed. Make a symbolic breakpoint at UITableViewAlertForCellForRowAtIndexPathAccessDuringUpdate to catch this in the debugger and see what caused this to occur. Perhaps you are trying to ask the table view for a cell from inside a table view callback about a specific row? Table view: %@", &v4, 0xCu);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &UITableViewAlertForCellForRowAtIndexPathAccessDuringUpdate___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Attempted to call -cellForRowAtIndexPath: on the table view while it was in the process of updating its visible cells, which is not allowed. Make a symbolic breakpoint at UITableViewAlertForCellForRowAtIndexPathAccessDuringUpdate to catch this in the debugger and see what caused this to occur. Perhaps you are trying to ask the table view for a cell from inside a table view callback about a specific row? Table view: %@", &v4, 0xCu);
    }
  }
}

void UITableViewAlertForVisibleCellsAccessDuringUpdate(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (os_variant_has_internal_diagnostics())
  {
    v3 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "Attempted to access the table view's visibleCells while they were in the process of being updated, which is not allowed. Make a symbolic breakpoint at UITableViewAlertForVisibleCellsAccessDuringUpdate to catch this in the debugger and see what caused this to occur. Perhaps you are trying to ask the table view for the visible cells from inside a table view callback about a specific row? Table view: %@", &v4, 0xCu);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &UITableViewAlertForVisibleCellsAccessDuringUpdate___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Attempted to access the table view's visibleCells while they were in the process of being updated, which is not allowed. Make a symbolic breakpoint at UITableViewAlertForVisibleCellsAccessDuringUpdate to catch this in the debugger and see what caused this to occur. Perhaps you are trying to ask the table view for the visible cells from inside a table view callback about a specific row? Table view: %@", &v4, 0xCu);
    }
  }
}

void sub_18A080138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __destructor_8_s8_s16_s24_s80(va);
  _Unwind_Resume(a1);
}

id _focusedCellForSelectionInteraction(void *a1)
{
  v1 = a1;
  v2 = [v1 _focusSystem];
  v3 = [v2 focusedItem];
  if (_IsKindOfUIView(v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5 && ([v1 _visibleCellsUsingPresentationValues:1], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v5), v6, v7))
  {
    v8 = v5;
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_18A083C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A08C834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __UITableViewAlertForForcedLayout_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("TableView", &_UIInternalPreference_TableViewHeadersFootersUseModernConfiguration_block_invoke_10___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Warning once only: UITableView was forced to perform an immediate layout of its visible cells and other contents, due to an API method being called on the table view while it was waiting for the next layout pass. This will cause unnecessary performance overhead, and may also cause bugs by forcing views inside the table view to load and perform layout too early. For best results, if the UITableView API must be called, you should defer it until after the table view receives -layoutSubviews during a regular layout pass. Make a symbolic breakpoint at UITableViewAlertForForcedLayout to catch this in the debugger and see which API method caused this to occur. Table view: %{public}@", &v4, 0xCu);
  }
}

void sub_18A09C1EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18A0A0E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A0A2904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A0A2B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL _UIRemoteViewControllerSceneShimEnabledForBundleIdentifierAndExtensionPointIdentifier(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"bundleIdentifier"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIRemoteViewControllerSceneShimEnabledForBundleIdentifierAndExtensionPointIdentifier(NSString * _Nullable __strong, NSString * _Nullable __strong)"}];
      *buf = 138544130;
      v19 = v16;
      v20 = 2114;
      v21 = @"_UIRemoteViewControllerSceneShimAvailability.m";
      v22 = 1024;
      v23 = 159;
      v24 = 2114;
      v25 = v15;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A0B275CLL);
  }

  v5 = v4;
  if (qword_1ED499D28 != -1)
  {
    dispatch_once(&qword_1ED499D28, &__block_literal_global_19_2);
  }

  if (byte_1ED499D19 != 1)
  {
    v9 = 0;
    goto LABEL_30;
  }

  v6 = v3;
  if (_UIInternalPreferenceUsesDefault_2(&_MergedGlobals_954, @"ForceSceneHostingRemoteViewControllerForService"))
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_1ED48B5A0;
  }

  if (([v6 isEqualToString:v7] & 1) == 0)
  {
    if (_UIInternalPreferenceUsesDefault_2(&unk_1ED48B5A8, @"ForceLegacyHostingRemoteViewControllerForService"))
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_1ED48B5B0;
    }

    if ([v6 isEqualToString:v10] & 1) != 0 || (objc_msgSend(&unk_1EFE2DA08, "containsObject:", v6))
    {
      goto LABEL_16;
    }

    v14 = v6;
    if (!os_variant_has_internal_diagnostics() || (_os_feature_enabled_impl() & 1) != 0)
    {
      goto LABEL_32;
    }

    if (qword_1ED499D30 != -1)
    {
      dispatch_once(&qword_1ED499D30, &__block_literal_global_33_8);
    }

    if (byte_1ED499D1A)
    {
      v17 = [v14 hasPrefix:@"com.apple."];

      if ((v17 & 1) == 0)
      {
LABEL_16:
        v8 = 1;
        goto LABEL_17;
      }
    }

    else
    {
LABEL_32:
    }

    v8 = [&unk_1EFE2DA20 containsObject:v5];
    goto LABEL_18;
  }

  v8 = 3;
LABEL_17:

LABEL_18:
  if (v8 == 1)
  {
    v11 = 1;
  }

  else
  {
    if (qword_1ED499D40 != -1)
    {
      dispatch_once(&qword_1ED499D40, &__block_literal_global_38_1);
    }

    v11 = qword_1ED499D38;
    if (!qword_1ED499D38)
    {
      v11 = v8;
    }
  }

  v9 = v11 == 3 || v11 == 0;
LABEL_30:

  return v9;
}

uint64_t _UIRemoteViewControllerSceneShimEnabledForCurrentProcessIfViewService()
{
  if (qword_1ED499D20 != -1)
  {
    dispatch_once(&qword_1ED499D20, &__block_literal_global_579);
  }

  return _MergedGlobals_9_10;
}

id supplementalItemQueue()
{
  if (qword_1ED4A2060 != -1)
  {
    dispatch_once(&qword_1ED4A2060, &__block_literal_global_580);
  }

  v1 = _MergedGlobals_1313;

  return v1;
}

void __supplementalItemQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.UIKit.supplementalItemQueue", v2);
  v1 = _MergedGlobals_1313;
  _MergedGlobals_1313 = v0;
}

id supplementalItemMap()
{
  if (qword_1ED4A2070 != -1)
  {
    dispatch_once(&qword_1ED4A2070, &__block_literal_global_4_15);
  }

  v1 = qword_1ED4A2068;

  return v1;
}

void __supplementalItemMap_block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = qword_1ED4A2068;
  qword_1ED4A2068 = v0;
}

id supplementalItem(uint64_t a1)
{
  if (!a1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Invalid supplemental item identifier", buf, 2u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &supplementalItem___s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Invalid supplemental item identifier", buf, 2u);
      }
    }
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__196;
  v12 = __Block_byref_object_dispose__196;
  v13 = 0;
  v2 = supplementalItemQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __supplementalItem_block_invoke;
  v7[3] = &unk_1E7101790;
  v7[4] = buf;
  v7[5] = a1;
  dispatch_sync(v2, v7);

  v3 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  return v3;
}

void __supplementalItem_block_invoke(uint64_t a1)
{
  v6 = supplementalItemMap();
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
  v3 = [v6 objectForKey:v2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void _UIMenuLeafCopyValidatablePropertiesFromValidatedLeaf(void *a1, void *a2)
{
  if (a2 && a1 != a2)
  {
    v3 = a2;
    v11 = a1;
    v4 = [v3 title];
    [v11 setTitle:v4];

    v5 = [v3 attributedTitle];
    [v11 setAttributedTitle:v5];

    v6 = [v3 subtitle];
    [v11 setSubtitle:v6];

    v7 = [v3 image];
    [v11 setImage:v7];

    v8 = [v3 selectedImage];
    [v11 setSelectedImage:v8];

    [v11 setState:{objc_msgSend(v3, "state")}];
    v9 = [v3 discoverabilityTitle];
    [v11 setDiscoverabilityTitle:v9];

    [v11 setAttributes:{objc_msgSend(v3, "attributes")}];
    v10 = [v3 repeatBehavior];

    [v11 setRepeatBehavior:v10];
  }
}

BOOL _UIMenuLeafIsLikelyToConflictWithTextInput(void *a1)
{
  v1 = [a1 _keyboardShortcut];
  v2 = [v1 baseKeyCombination];
  v3 = [v2 modifierFlags];

  return (*&v3 & 0x940000) == 0;
}

uint64_t _UIMenuLeafIsLikelyToUnintentionallyConflictWithTextInputResponderWithOriginatingResponder(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 _keyboardShortcut];

  if (v8)
  {
    v9 = [v5 _keyboardShortcut];
    v10 = [v9 baseKeyCombination];
    v11 = [v10 keyEquivalent];

    if (v6 && ([v7 _nextResponderChainContainsResponder:v6] & 1) != 0 || !_UIMenuLeafIsLikelyToConflictWithTextInput(v5))
    {
      v12 = 0;
    }

    else
    {
      v12 = [v11 isEqualToString:@"UIKeyInputEscape"] ^ 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id _UIMenuLeafPresentationSourceItemFromSender(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [v1 _preferredPresentationSourceItem];
    }

    else
    {
      v3 = _UIMenuLeafAPISenderFromSender(v1);
      v2 = _UIPopoverPresentationControllerSourceItemUpCast(v3);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _UIMenuLeafAPISenderFromSender(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 _preferredSender];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

id _UIMenuLeafAlternateForModifierFlags(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 _leafAlternates];
  v5 = _UIMenuLeafAlternateForModifierFlagsUsingAlternates(v3, v4, a2);

  return v5;
}

id _UIMenuLeafAlternateForModifierFlagsUsingAlternates(void *a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v21;
    v12 = ~a3;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 modifierFlags];
        v16 = vcnt_s8(v15);
        v16.i16[0] = vaddlv_u8(v16);
        if ((*&v15 & v12) != 0)
        {
          v17 = -1;
        }

        else
        {
          v17 = v16.i32[0];
        }

        if (v9 < v17)
        {
          v18 = v14;

          v9 = v17;
          v10 = v18;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id _UIMenuElementAlternateForModifierFlags(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 _isLeaf])
  {
    v4 = v3;
    v5 = _UIMenuLeafAlternateForModifierFlags(v4, a2);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 alternateLeafWithBaseLeaf:v4];

      goto LABEL_6;
    }
  }

  v7 = v3;
LABEL_6:

  return v7;
}

void _UIMenuStateObserverableLeafRemoveObserver(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = [v7 _getStateObservers];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = 0;
    while ([v5 pointerAtIndex:v6] != v3)
    {
      if (++v6 >= [v5 count])
      {
        goto LABEL_10;
      }
    }

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 removePointerAtIndex:v6];
      if (![v5 count])
      {
        [v7 _setStateObservers:0];
      }
    }
  }

LABEL_10:
}

void _UIMenuStateObserverableLeafWillPerformAction(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 _getStateObservers];
  v3 = v2;
  if (v2)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) _elementWillPerformAction:v1];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

void sub_18A0B55C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFontPickerClientFontContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_1314;
  v7 = _MergedGlobals_1314;
  if (!_MergedGlobals_1314)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFontPickerClientFontContextClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getFontPickerClientFontContextClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A0B56A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFontPickerClientFontContextClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A2080)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __FontServicesLibraryCore_block_invoke_1;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7123BB8;
    v8 = 0;
    qword_1ED4A2080 = _sl_dlopen();
  }

  if (!qword_1ED4A2080)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FontServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIFontPickerFontInfo.m" lineNumber:35 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("FontPickerClientFontContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFontPickerClientFontContextClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIFontPickerFontInfo.m" lineNumber:36 description:{@"Unable to find class %s", "FontPickerClientFontContext"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1314 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FontServicesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1ED4A2080 = result;
  return result;
}

void sub_18A0B82D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGFloat _UITableRowHeightForExtraSeparators(void *a1, void *a2, CGFloat Height)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (Height <= 2.0)
  {
    v8 = [(UITableViewRowData *)v6 numberOfRows];
    if (v8 >= 1)
    {
      v13.origin.x = [(UITableViewRowData *)v7 rectForGlobalRow:1 heightCanBeGuessed:?];
      Height = CGRectGetHeight(v13);
    }

    if (Height <= 2.0)
    {
      [v5 rowHeight];
      Height = v9;
      if (v9 <= 2.0)
      {
        v10 = [v5 _constants];
        [v10 defaultRowHeightForTableView:v5];
        Height = v11;
      }
    }
  }

  return Height;
}

void _UITableInsertSubviewInContainerAboveAllCells(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v8 subviews];
  v5 = [v4 indexOfObjectWithOptions:2 passingTest:&__block_literal_global_582];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 insertSubview:v3 atIndex:0];
  }

  else
  {
    v6 = [v8 subviews];
    v7 = [v6 objectAtIndexedSubscript:v5];
    [v8 insertSubview:v3 aboveSubview:v7];
  }
}

id _UITableAnimateSwipeDeletion(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v93 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v91 = a8;
  v21 = [v15 _scrollView];
  v22 = [v17 superview];
  [v16 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v16 superview];
  [v22 convertRect:v31 fromView:{v24, v26, v28, v30}];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v18 offset];
  v41 = v40;
  +[UISwipeActionDeleteScanlineView lineHeight];
  v43 = v42;
  [v16 separatorInset];
  v45 = v44;
  v92 = v43;
  v46 = [UISwipeActionDeleteScanlineView alloc];
  v47 = [(UISwipeActionDeleteScanlineView *)v46 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v89 = v19;
  [(UISwipeActionDeleteScanlineView *)v47 setDeleteLineColor:v19];
  [(UIView *)v47 setAlpha:0.0];
  [(UIView *)v47 setFrame:v45, v35 - v43, v37, v39 - v43];
  v88 = v22;
  _UITableInsertSubviewInContainerAboveAllCells(v22, v47);
  [v21 setUserInteractionEnabled:0];
  [v16 setAutoresizesSubviews:0];
  [v16 _setSkipsLayout:1];
  [v16 _setDeleteAnimationInProgress:1];
  [v18 velocity];
  if (v48 < 0.0)
  {
    v48 = -v48;
  }

  v49 = v48 <= 0.00000011920929;
  v50 = 0.08;
  if (!v49)
  {
    v50 = 0.0;
  }

  v95 = v50;
  v94 = v18;
  v51 = [_UISwipeAnimationFactory animatorForTentativeWithOccurrence:v18];
  v52 = +[_UISwipeAnimationFactory animatorForCollapse];
  v53 = +[_UISwipeAnimationFactory animatorForScanlineCollapse];
  v137[0] = 0;
  v137[1] = v137;
  v137[2] = 0x2020000000;
  v137[3] = 2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___UITableAnimateSwipeDeletion_block_invoke;
  aBlock[3] = &unk_1E7123C10;
  v136 = v137;
  v54 = v16;
  v132 = v54;
  v55 = v47;
  v133 = v55;
  v56 = v21;
  v134 = v56;
  v57 = v20;
  v135 = v57;
  v58 = _Block_copy(aBlock);
  [v51 addCompletion:v58];
  [v52 addCompletion:v58];
  [v17 frame];
  v60 = v59;
  v62 = v61;
  v63 = v33 - v41;
  v139.origin.x = v63;
  v139.origin.y = v35;
  v139.size.width = v37;
  v139.size.height = v39;
  Width = CGRectGetWidth(v139);
  v86 = v58;
  v87 = v57;
  v90 = v63;
  if ([v94 direction])
  {
    v140.origin.x = v63;
    v140.origin.y = v35;
    v140.size.width = v37;
    v140.size.height = v39;
    v65 = CGRectGetWidth(v140);
    v66 = v37;
    v67 = v35;
    v68 = v60;
    v69 = 0.0;
  }

  else
  {
    v141.origin.x = v63;
    v141.origin.y = v35;
    v141.size.width = v37;
    v141.size.height = v39;
    v70 = CGRectGetWidth(v141);
    v142.origin.x = v63;
    v142.origin.y = v35;
    v142.size.width = v37;
    v142.size.height = v39;
    v71 = CGRectGetWidth(v142);
    v72 = v63;
    v66 = v37;
    v67 = v35;
    v68 = v60;
    v69 = v70 * -0.5;
    v65 = v72 - v71;
  }

  v73 = Width * 1.5;
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = ___UITableAnimateSwipeDeletion_block_invoke_2;
  v120[3] = &unk_1E70F8980;
  v74 = v17;
  v121 = v74;
  v123 = v69;
  v124 = v68;
  v125 = v73;
  v126 = v62;
  v75 = v54;
  v122 = v75;
  v127 = v65;
  v128 = v67;
  v129 = v66;
  v130 = v39;
  [v51 addAnimations:v120];
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = ___UITableAnimateSwipeDeletion_block_invoke_3;
  v106[3] = &unk_1E711B008;
  v85 = v15;
  v107 = v85;
  v76 = v93;
  v108 = v76;
  v77 = v56;
  v109 = v77;
  v78 = v74;
  v110 = v78;
  v112 = v69;
  v113 = v68;
  v114 = v73;
  v115 = 0;
  v79 = v75;
  v111 = v79;
  v116 = v65;
  v117 = v67;
  v118 = v66;
  v119 = 0;
  [v52 addAnimations:v106];
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = ___UITableAnimateSwipeDeletion_block_invoke_4;
  v99[3] = &unk_1E7116870;
  v80 = v55;
  v100 = v80;
  v101 = v90;
  v102 = v67;
  v103 = v66;
  v104 = v39;
  v105 = v92;
  [v53 addAnimations:v99];
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = ___UITableAnimateSwipeDeletion_block_invoke_5;
  v96[3] = &unk_1E7104B90;
  v81 = v80;
  v97 = v81;
  v82 = v91;
  v98 = v82;
  [v53 addCompletion:v96];
  [v51 startAnimationAfterDelay:v95];
  [v52 startAnimationAfterDelay:v95];
  [v53 startAnimationAfterDelay:v95];
  v83 = [MEMORY[0x1E695DFD8] setWithObjects:{v51, v52, v53, 0}];

  _Block_object_dispose(v137, 8);

  return v83;
}

BOOL _UITableCellSupportsHorizontalCenteringBehaviorForTraitCollection(void *a1)
{
  v1 = a1;
  if (dyld_program_sdk_at_least())
  {
    v2 = [v1 preferredContentSizeCategory];
    v3 = !UIContentSizeCategoryIsAccessibilityCategory(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_18A0BA244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A0C22A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A0C25D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_getCHUDSymbol(char *__symbol)
{
  result = _getCHUDSymbol_CHUDHandle;
  if (_getCHUDSymbol_CHUDHandle || (result = dlopen("/Developer/Library/PrivateFrameworks/CHUD.framework/CHUD", 1), (_getCHUDSymbol_CHUDHandle = result) != 0) || (v3 = dlerror(), NSLog(&cfstr_CouldnTLoadChu.isa, v3), (result = _getCHUDSymbol_CHUDHandle) != 0))
  {
    result = dlsym(result, __symbol);
    if (!result)
    {
      v4 = dlerror();
      NSLog(&cfstr_CouldnTLoadChu_0.isa, __symbol, v4);
      return 0;
    }
  }

  return result;
}

void sub_18A0C8A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __GetProcStatistics_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = MEMORY[0x18CFE9270]();
  result = thread_selfcounts();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_18A0CA62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose((v56 - 232), 8);
  _Block_object_dispose((v56 - 200), 8);
  _Block_object_dispose((v56 - 168), 8);
  _Block_object_dispose((v56 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_18A0CAC40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_18A0CB870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UISceneErrorWithCode(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1 == 100)
  {
    v3 = _UILocalizedString(@"UIWindowScene.invalidGeometryPreferencesRequest", @"Error for invalid UIWindowSceneGeometryPreferences object", @"Invalid UIWindowSceneGeometryPreferences object. Make sure you are using the correct subclass for your target system.");
  }

  else
  {
    if (a1)
    {
      v4 = 0;
      goto LABEL_11;
    }

    if (_UISystemShellAllowsSceneRequests())
    {
      v2 = @"The application does not support multiple scenes.";
    }

    else
    {
      v2 = @"The current device does not support multiple scenes.";
    }

    v3 = _UINSLocalizedStringWithDefaultValue(v2, v2);
  }

  v4 = v3;
  if (v3)
  {
    v8 = *MEMORY[0x1E696A578];
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
LABEL_12:
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UISceneErrorDomain" code:a1 userInfo:v5];

  return v6;
}

id _UISceneErrorWithCodeAndDescription(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = *MEMORY[0x1E696A578];
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UISceneErrorDomain" code:a1 userInfo:v5];

  return v6;
}

id _UISceneErrorForActivationRequestOfInvalidRole(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = _UILocalizedFormat(@"UISceneSessionActivation.InvalidRole", @"An error message for developers that is produced when they try to activate a scene session using an invalid role.", @"Scene session activation failed because the requested role %@ is not supported.", a4, a5, a6, a7, a8, a1);
  v9 = _UISceneErrorWithCodeAndDescription(1, v8);

  return v9;
}

NSString *_UIContentSizeCategoryMax(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (UIContentSizeCategoryCompareToCategory(v4, v3) == NSOrderedAscending)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

NSString *_UIContentSizeCategoryClamp(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = UIContentSizeCategoryCompareToCategory(v6, v5);
    v9 = v6;
    if (v8 == NSOrderedAscending)
    {
      if (UIContentSizeCategoryCompareToCategory(v5, v7) == NSOrderedAscending)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t _UISSlotContentSizeCategoryFromContentSizeCategory(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [&unk_1EFE34A90 objectForKeyedSubscript:v1];
  if (os_variant_has_internal_diagnostics())
  {
    if (v2)
    {
      goto LABEL_3;
    }

    v5 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 138412290;
      v8 = v1;
      _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Unexpected content size category for slot: %@", &v7, 0xCu);
    }

LABEL_11:
    v3 = 2;
    goto LABEL_4;
  }

  if (!v2)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &_UISSlotContentSizeCategoryFromContentSizeCategory___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v1;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unexpected content size category for slot: %@", &v7, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_3:
  v3 = [v2 integerValue];
LABEL_4:

  return v3;
}

void sub_18A0CDD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A0D0F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__309(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void _preferredContentSizeChangedCallback(uint64_t a1, uint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___preferredContentSizeChangedCallback_block_invoke;
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

double _labelFrame(void *a1, uint64_t a2, double a3, double a4, double a5, CGFloat a6, double a7)
{
  v10 = a1;
  v11 = *a2;
  v12 = *(a2 + 8);
  [v10 setTextAlignment:*(a2 + 16)];
  [v10 textRectForBounds:1 limitedToNumberOfLines:{v11, 0.0, v12, a6}];
  v14 = v13;
  v16 = v15;
  v25.origin.y = 0.0;
  v25.origin.x = v11;
  v25.size.width = v12;
  v25.size.height = a6;
  MidY = CGRectGetMidY(v25);
  v18 = [v10 font];
  [v18 capHeight];
  v20 = v19;

  if (*(a2 + 16) == 1)
  {
    UIRoundToScale(v11 + (v12 - v14) * 0.5, 1.0);
    v11 = v21;
  }

  [v10 _baselineOffsetFromBottom];
  v23 = UIRectIntegralWithScale(v11, MidY + v20 * 0.5 + v22 - v16, v14, v16, a7);

  return v23;
}

void sub_18A0D9F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A0DABE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A0DB1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A0E29BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A0E44F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _CentroidOfTouchesInView(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x1E69792C8];
  v6 = *(MEMORY[0x1E69792C8] + 8);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v4 _window];
        v14 = [(UITouch *)v12 _locationInWindow:v13];
        v16 = v15;
        v17 = [v4 _window];
        [v4 convertPoint:v17 fromView:{v14, v16}];
        v19 = v18;
        v21 = v20;

        v5 = v5 + v19;
        v6 = v6 + v21;
      }

      v9 += v8;
      v8 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
    v5 = v5 / v9;
  }

  return v5;
}

void _UIMainMenuElementEnumerateElements(void *a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___UIMainMenuElementEnumerateElements_block_invoke;
  v9[3] = &unk_1E71248C8;
  v10 = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UIMainMenuElementEnumerateElements_block_invoke_2;
  v7[3] = &unk_1E71248F0;
  v8 = v10;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___UIMainMenuElementEnumerateElements_block_invoke_3;
  v5[3] = &unk_1E7124918;
  v6 = v8;
  v4 = v8;
  _UIMainMenuElementEnumerateElementTypesHelper(a1, 0, &v11, v9, v7, v5);
}

void _UIMainMenuElementEnumerateElementTypesHelper(void *a1, void *a2, _BYTE *a3, void *a4, void *a5, void *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v40 = a1;
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = v40;
    if (!v12 || ((*(v12 + 2))(v12, v11, v17, a3), (*a3 & 1) == 0))
    {
      v39 = v11;
      v18 = [v17 children];
LABEL_5:
      v19 = v18;
LABEL_10:
      v24 = v19;
      v25 = v40;
      v26 = v12;
      v38 = v13;
      v27 = v13;
      v37 = v14;
      v28 = v14;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v29 = v24;
      v30 = [v29 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v42;
LABEL_12:
        v33 = 0;
        while (1)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(v29);
          }

          _UIMainMenuElementEnumerateElementTypesHelper(*(*(&v41 + 1) + 8 * v33), v25, a3, v26, v27, v28);
          if (*a3)
          {
            break;
          }

          if (v31 == ++v33)
          {
            v31 = [v29 countByEnumeratingWithState:&v41 objects:v45 count:16];
            if (v31)
            {
              goto LABEL_12;
            }

            break;
          }
        }
      }

      v13 = v38;
      v11 = v39;
      v14 = v37;
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v20 = objc_opt_self();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v22 = v40;
    if (!v13 || ((*(v13 + 2))(v13, v11, v22, a3), (*a3 & 1) == 0))
    {
      v39 = v11;
      v23 = [v22 alternates];
      v19 = [v23 bs_map:&__block_literal_global_590];

      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v34 = objc_opt_self();
  v35 = objc_opt_isKindOfClass();

  if (v35)
  {
    v36 = v40;
    if (!v14 || ((*(v14 + 2))(v14, v11, v36, a3), (*a3 & 1) == 0))
    {
      v39 = v11;
      v18 = [v36 _localProvidedElements];
      goto LABEL_5;
    }

LABEL_19:
  }
}

uint64_t __URLFormattingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  URLFormattingLibraryCore_frameworkLibrary = result;
  return result;
}

id _UIKeyModiferFlagsDescription(int a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if ((a1 & 0x10000) != 0)
  {
    [v2 addObject:@"AlphaShift"];
    if ((a1 & 0x200000) == 0)
    {
LABEL_3:
      if ((a1 & 0x40000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"NumPad"];
  if ((a1 & 0x40000) == 0)
  {
LABEL_4:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:@"Ctrl"];
  if ((a1 & 0x80000) == 0)
  {
LABEL_5:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 addObject:@"Opt"];
  if ((a1 & 0x20000) == 0)
  {
LABEL_6:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 addObject:@"Shift"];
  if ((a1 & 0x100000) == 0)
  {
LABEL_7:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  [v3 addObject:@"Cmd"];
  if ((a1 & 0x800000) != 0)
  {
LABEL_8:
    [v3 addObject:@"Globe"];
  }

LABEL_9:
  v4 = [v3 componentsJoinedByString:@"-"];

  return v4;
}

void sub_18A0FB1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __IsMailCompositionService_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1ED49AC01 = [v0 isEqualToString:@"com.apple.MailCompositionService"];
}

void sub_18A106CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t _canTransitionBetweenEffects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 compatibleDescriptors];
  if ([v5 containsObject:objc_opt_class()])
  {
    v6 = [v4 compatibleDescriptors];
    if ([v6 containsObject:objc_opt_class()] && objc_msgSend(v3, "canTransitionInPlaceToEffectWithDescriptor:", v4))
    {
      v7 = [v4 canTransitionInPlaceToEffectWithDescriptor:v3];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_18A10AA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 192), 8);
  _Block_object_dispose((v22 - 160), 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_18A10BD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A10C2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A10C8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A10FE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v46 - 216), 8);
  _Block_object_dispose((v46 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_18A110280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _UIContextMenuGetFromPreview_0(void *a1, void *a2, double *a3, _OWORD *a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  [v10 size];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = v11;
  a2[3] = v12;
  v13 = [v10 target];
  [v13 center];
  v15 = v14;
  v17 = v16;
  v18 = [v10 target];
  v19 = [v18 container];
  v20 = _UIContextMenuConvertCGPointBetweenViews(v19, v9, v15, v17);
  v22 = v21;

  *a3 = v20;
  *(a3 + 1) = v22;
  a3[2] = 0.0;
  v23 = [v10 target];

  if (v23)
  {
    [v23 transform];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
  }

  *a4 = v24;
  a4[1] = v25;
  a4[2] = v26;
}

void sub_18A114570(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18A114F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_UIPortalView *_UIDocumentUnavailablePortalViewForAnimationInfo(void *a1)
{
  v2 = [_UIPortalView alloc];
  [a1 sourceFrame];
  v3 = [(_UIPortalView *)v2 initWithFrame:?];
  v4 = [a1 sourceContextId];
  v5 = [(_UIPortalView *)v3 portalLayer];
  [v5 setSourceContextId:v4];

  v6 = [a1 sourceLayerRenderId];
  v7 = [(_UIPortalView *)v3 portalLayer];
  [v7 setSourceLayerRenderId:v6];

  v8 = [(_UIPortalView *)v3 portalLayer];
  [v8 setHidesSourceLayer:1];

  [(_UIPortalView *)v3 setName:@"Document"];
  [(_UIPortalView *)v3 setAllowsBackdropGroups:1];
  [(_UIPortalView *)v3 setAllowsHitTesting:1];
  [(_UIPortalView *)v3 setForwardsClientHitTestingToSourceView:1];
  v9 = [a1 sourcePath];
  LODWORD(v7) = [v9 _isRoundedRect];

  if (v7)
  {
    v10 = [a1 sourcePath];
    [v10 _cornerRadius];
    v12 = v11;
    v13 = [(UIView *)v3 layer];
    [v13 setCornerRadius:v12];

    v14 = [a1 sourcePath];
    v15 = [v14 _hasContinuousCorners];
    v16 = MEMORY[0x1E69796E8];
    if (!v15)
    {
      v16 = MEMORY[0x1E69796E0];
    }

    v17 = *v16;
    v18 = [(UIView *)v3 layer];
    [v18 setCornerCurve:v17];

    v19 = [a1 sourcePath];
    v20 = [v19 _cornerMask];
    v21 = [(UIView *)v3 layer];
    [v21 setMaskedCorners:v20];
  }

  else
  {
    v19 = [MEMORY[0x1E69794A0] layer];
    v22 = [a1 sourcePath];
    [v19 setPath:{objc_msgSend(v22, "CGPath")}];

    v21 = [(UIView *)v3 layer];
    [v21 setMask:v19];
  }

  return v3;
}

id _UIDocumentUnavailableBrowserViewController(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 72);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = _MergedGlobals_83;
  v14 = _MergedGlobals_83;
  if (!_MergedGlobals_83)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getUIDocumentBrowserViewControllerClass_block_invoke_1;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getUIDocumentBrowserViewControllerClass_block_invoke_1(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (a1)
    {
      v7 = *(a1 + 72);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_18A115B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A117B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 - 208));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ___uip_documentBrowser_sendAnalyticsEvent_block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"eventType";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

Class __getUIDocumentBrowserViewControllerClass_block_invoke_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED494438)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DocumentManagerLibraryCore_block_invoke_2;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7125060;
    v8 = 0;
    qword_1ED494438 = _sl_dlopen();
  }

  if (!qword_1ED494438)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DocumentManagerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIDocumentLaunchViewController.m" lineNumber:41 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("UIDocumentBrowserViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIDocumentBrowserViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIDocumentLaunchViewController.m" lineNumber:43 description:{@"Unable to find class %s", "UIDocumentBrowserViewController"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_83 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DocumentManagerLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  qword_1ED494438 = result;
  return result;
}

void sub_18A1186E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRVItemClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A2268)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __RevealCoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7125078;
    v8 = 0;
    qword_1ED4A2268 = _sl_dlopen();
  }

  if (!qword_1ED4A2268)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RevealCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIRevealInteraction.m" lineNumber:41 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("RVItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRVItemClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIRevealInteraction.m" lineNumber:42 description:{@"Unable to find class %s", "RVItem"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1324 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RevealCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED4A2268 = result;
  return result;
}

id createRVItem(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL || a2 + a3 > [v5 length])
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(getRVItemClass()) initWithText:v6 selectedRange:{a2, a3}];
  }

  return v7;
}

void sub_18A119CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRVItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED49A3C8;
  v7 = qword_1ED49A3C8;
  if (!qword_1ED49A3C8)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRVItemClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getRVItemClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A11ACD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getDDRevealBridgeClass_block_invoke(uint64_t a1)
{
  DataDetectorsUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DDRevealBridge");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_3_19 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDRevealBridgeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UITextContextMenuInteraction.m" lineNumber:58 description:{@"Unable to find class %s", "DDRevealBridge"}];

    __break(1u);
  }
}

void *DataDetectorsUILibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DataDetectorsUILibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7125250;
    v6 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = DataDetectorsUILibraryCore_frameworkLibrary_0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DataDetectorsUILibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UITextContextMenuInteraction.m" lineNumber:56 description:{@"%s", v4[0]}];

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

uint64_t __DataDetectorsUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getkDataDetectorsSourceRectKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_0();
  result = dlsym(v2, "kDataDetectorsSourceRectKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A3A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDDContextNoRoomForSubtitlesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_0();
  result = dlsym(v2, "kDDContextNoRoomForSubtitlesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49A3B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBETextDocumentRequestClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49A3C0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __BrowserEngineKitLibraryCore_block_invoke_1;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7125268;
    v8 = 0;
    qword_1ED49A3C0 = _sl_dlopen();
  }

  if (!qword_1ED49A3C0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BrowserEngineKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UITextContextMenuInteraction.m" lineNumber:47 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("BETextDocumentRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBETextDocumentRequestClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UITextContextMenuInteraction.m" lineNumber:48 description:{@"Unable to find class %s", "BETextDocumentRequest"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49A3B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BrowserEngineKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1ED49A3C0 = result;
  return result;
}

Class __getRVItemClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49A3D0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __RevealCoreLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7125280;
    v8 = 0;
    qword_1ED49A3D0 = _sl_dlopen();
  }

  if (!qword_1ED49A3D0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RevealCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UITextContextMenuInteraction.m" lineNumber:62 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("RVItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRVItemClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UITextContextMenuInteraction.m" lineNumber:63 description:{@"Unable to find class %s", "RVItem"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49A3C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RevealCoreLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED49A3D0 = result;
  return result;
}

void *__getPKScribbleInteractionInViewSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED4A2288)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PencilKitLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7125308;
    v7 = 0;
    qword_1ED4A2288 = _sl_dlopen();
  }

  v2 = qword_1ED4A2288;
  if (!qword_1ED4A2288)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PencilKitLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"UITextInteraction.m" lineNumber:58 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "PKScribbleInteractionInView");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED4A2280 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __PencilKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1ED4A2288 = result;
  return result;
}

id getDDContextMenuConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_11_10;
  v7 = _MergedGlobals_11_10;
  if (!_MergedGlobals_11_10)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDContextMenuConfigurationClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getDDContextMenuConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A12308C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDDContextMenuConfigurationClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49AA08)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DataDetectorsUILibraryCore_block_invoke_2;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7125320;
    v8 = 0;
    qword_1ED49AA08 = _sl_dlopen();
  }

  if (!qword_1ED49AA08)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DataDetectorsUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UITextLinkInteraction.m" lineNumber:38 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("DDContextMenuConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDContextMenuConfigurationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UITextLinkInteraction.m" lineNumber:39 description:{@"Unable to find class %s", "DDContextMenuConfiguration"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_11_10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  qword_1ED49AA08 = result;
  return result;
}

double _UIGetTextRefinement_AllowableMovement()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  result = 8.0;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v2 = _UIInternalPreference_TextRefinement_AllowableMovement;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_TextRefinement_AllowableMovement)
    {
      while (v0 >= v2)
      {
        _UIInternalPreferenceSync(v0, &_UIInternalPreference_TextRefinement_AllowableMovement, @"TextRefinement_AllowableMovement", _UIInternalPreferenceUpdateDouble);
        v2 = _UIInternalPreference_TextRefinement_AllowableMovement;
        if (v0 == _UIInternalPreference_TextRefinement_AllowableMovement)
        {
          return 8.0;
        }
      }

      return *&qword_1ED48AA30;
    }
  }

  return result;
}

void sub_18A12B900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A12C8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A1302E0(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_18A130FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_18A1313A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id _getResponderForEditing()
{
  v0 = +[UIKeyboardImpl activeInstance];
  v1 = [v0 delegateAsResponder];
  v2 = [v1 _responderForEditing];

  return v2;
}

id _getStylingDictionaryForResponder(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 selectedTextRange];
    v3 = [v2 start];

    if (v3)
    {
      v4 = [v1 textStylingAtPosition:v3 inDirection:{objc_msgSend(v1, "selectionAffinity")}];
    }

    else
    {
      v4 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

id getPKTextInputInteractionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED499080;
  v7 = qword_1ED499080;
  if (!qword_1ED499080)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPKTextInputInteractionClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getPKTextInputInteractionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A13DCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id TIGetTypoTrackerButtonValue_0()
{
  if (TIGetTypoTrackerButtonValue_onceToken_0 != -1)
  {
    dispatch_once(&TIGetTypoTrackerButtonValue_onceToken_0, &__block_literal_global_511_0);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"TypoTrackerButton"];

  return v1;
}

Class __getPKTextInputInteractionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED499088)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PencilKitLibraryCore_block_invoke_2;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71255D8;
    v8 = 0;
    qword_1ED499088 = _sl_dlopen();
  }

  if (!qword_1ED499088)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PencilKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIAssistantBarButtonItemProvider.m" lineNumber:64 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PKTextInputInteraction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPKTextInputInteractionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIAssistantBarButtonItemProvider.m" lineNumber:65 description:{@"Unable to find class %s", "PKTextInputInteraction"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED499080 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PencilKitLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  qword_1ED499088 = result;
  return result;
}

void __TIGetTypoTrackerButtonValue_block_invoke_0()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"TypoTrackerButton" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

void sub_18A146FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKTextInputInteractionClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49AD38)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PencilKitLibraryCore_block_invoke_3;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71256A8;
    v8 = 0;
    qword_1ED49AD38 = _sl_dlopen();
  }

  if (!qword_1ED49AD38)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PencilKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIEditingOverlayViewController.m" lineNumber:31 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PKTextInputInteraction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPKTextInputInteractionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIEditingOverlayViewController.m" lineNumber:32 description:{@"Unable to find class %s", "PKTextInputInteraction"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_7_9 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PencilKitLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  qword_1ED49AD38 = result;
  return result;
}

double pixelAlignedRectForRect(void *a1)
{
  v1 = a1;
  UIRoundToViewScale(v1);
  v3 = v2;
  UIRoundToViewScale(v1);
  UIRoundToViewScale(v1);
  UIRoundToViewScale(v1);

  return v3;
}

void sub_18A14BF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_18A155BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TISmartSelectionOptionFromUISmartSelectionOption(uint64_t a1)
{
  if (a1 == 511)
  {
    v1 = 511;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 256)
  {
    v1 = 256;
  }

  if (a1 == 128)
  {
    v1 = 128;
  }

  if (a1 == 64)
  {
    v2 = 64;
  }

  else
  {
    v2 = 0;
  }

  if (a1 == 32)
  {
    v2 = 32;
  }

  if (a1 <= 127)
  {
    v1 = v2;
  }

  if (a1 == 16)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == 8)
  {
    v3 = 8;
  }

  if (a1 == 4)
  {
    v3 = 4;
  }

  if (a1 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 1)
  {
    v4 = 1;
  }

  if (a1 <= 3)
  {
    v3 = v4;
  }

  if (a1 <= 31)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t TISmartSelectionOptionsFromUISmartSelectionOptions(unint64_t a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v3 |= TISmartSelectionOptionFromUISmartSelectionOption((1 << v2++) & a1);
  }

  while (v2 != 64);
  return v3;
}

void sub_18A161A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t gestureTypeForGestureRecognizer(void *a1, char a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a1 numberOfTouchesRequired] <= 1)
    {
      if ([a1 numberOfTapsRequired] <= 1)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 10;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 tapCount];
      if (v5 == 3)
      {
        return 9;
      }

      else if (v5 == 2 || v5 == 1 && (a2 & 1) == 0)
      {
        return 8;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }
  }
}

double _UIGetTextRefinement_NearCaretDistance()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    return 40.0;
  }

  v2 = _UIInternalPreference_TextRefinement_NearCaretDistance;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_TextRefinement_NearCaretDistance)
  {
    return 40.0;
  }

  while (v0 >= v2)
  {
    _UIInternalPreferenceSync(v0, &_UIInternalPreference_TextRefinement_NearCaretDistance, @"TextRefinement_NearCaretDistance", _UIInternalPreferenceUpdateDouble);
    v2 = _UIInternalPreference_TextRefinement_NearCaretDistance;
    result = 40.0;
    if (v0 == _UIInternalPreference_TextRefinement_NearCaretDistance)
    {
      return result;
    }
  }

  return *&qword_1EA95E168;
}

uint64_t _UIViewControllerHierarchyWantsInteractivePopGesturesEnabled(void *a1)
{
  v1 = a1;
  if ([v1 _isNavigationController])
  {
    v2 = v1;
    if (_UINavigationControllerWantsInteractivePopGesturesEnabled(v2))
    {
      v3 = 1;
    }

    else
    {
      v4 = [v2 topViewController];
      if ([v4 _isNavigationController])
      {
        v3 = _UIViewControllerHierarchyWantsInteractivePopGesturesEnabled(v4);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL _UINavigationControllerWantsInteractivePopGesturesEnabled(void *a1)
{
  v1 = a1;
  if ([v1 _isNestedNavigationController])
  {
    v2 = [v1 childViewControllersCount] > 1;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

BOOL _UITraitTokenSetIsNULL(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v2 = vorrq_s8(*(a1 + 8), *(a1 + 24));
  return vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) == 0;
}

id _UITraitTokenSetRetain(id *a1)
{
  result = *a1;
  if (result)
  {
    return result;
  }

  return result;
}

void _UITraitTokenSetRelease(void **a1)
{
  v1 = *a1;
  if (v1)
  {
  }
}

uint64_t _UITraitTokenSetHash(uint64_t a1)
{
  if (*a1)
  {
    return [*a1 hash];
  }

  else
  {
    return vaddvq_s64(vpadalq_u32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(a1 + 8))))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(a1 + 24))))));
  }
}

__n128 _UITraitTokenSetCopy(uint64_t a1, uint64_t a2)
{
  *a2 = [*a1 mutableCopy];
  result = *(a1 + 24);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = result;
  return result;
}

void _UICollectionViewListHeaderFooterCommonInit(void *a1)
{
  v1 = a1;
  [v1 _updateConstants];
  [v1 setEdgesPreservingSuperviewLayoutMargins:10];
  [v1 setEdgesInsettingLayoutMarginsFromSafeArea:{objc_msgSend(v1, "edgesInsettingLayoutMarginsFromSafeArea") & 0xA}];
  [v1[67] setEdgesPreservingSuperviewLayoutMargins:15];
  *(v1 + 250) |= 8u;
  *(v1 + 250) |= 0x80u;
  *(v1 + 250) |= 0x100u;
}

void sub_18A17767C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UITextFieldCanvasViewCommonInit(void *a1)
{
  v2 = a1;
  [v2 setTilingEnabled:0];
  [v2 setUserInteractionEnabled:0];
  v1 = +[UIColor clearColor];
  [v2 setBackgroundColor:v1];

  [v2 setContentMode:3];
  [v2 setOpaque:0];
}

id _UITextAttributesAtIndexWithDirection(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a3 != 1)
  {
    if (a3 || [v5 length] <= a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = [v6 attributesAtIndex:a2 effectiveRange:0];
    goto LABEL_11;
  }

  if ([v5 length])
  {
    if (a2)
    {
      --a2;
    }

    else
    {
      a2 = 0;
    }

    goto LABEL_9;
  }

LABEL_10:
  v7 = 0;
LABEL_11:

  return v7;
}

void sub_18A1801B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_sync_exit(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_18A1804B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A182414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _UIHIDPathSynchronizationFilterConfigurationDefault()
{
  if (_UIInternalPreferenceUsesDefault_1(&_MergedGlobals_955, @"HIDPathSynchronizationMinTimeScale"))
  {
    v0 = 1.02;
  }

  else
  {
    v0 = *&qword_1ED48B5F0;
  }

  _UIInternalPreferenceUsesDefault_1(algn_1ED48B5F8, @"HIDPathSynchronizationMaxTimeScale");
  _UIInternalPreferenceUsesDefault_1(algn_1ED48B608, @"HIDPathSynchronizationPeakThreshold");
  return v0;
}

void sub_18A18C6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UISplitViewControllerAdaptiveLayoutClassCollapsed()
{
  v0 = objc_opt_class();

  return v0;
}

void sub_18A18D1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A18E11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A18E2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A18E518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A18E744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1905BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A197DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A199000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIDocumentCreationIntentForActionIdentifier(void *a1)
{
  if ([a1 hasPrefix:@"com.apple.documents.action.create.document."])
  {
    v2 = [a1 substringFromIndex:{objc_msgSend(@"com.apple.documents.action.create.document.", "length")}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

Class __getUIDocumentBrowserViewControllerClass_block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A2300)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DocumentManagerLibraryCore_block_invoke_3;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7126060;
    v8 = 0;
    qword_1ED4A2300 = _sl_dlopen();
  }

  if (!qword_1ED4A2300)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DocumentManagerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIDocumentViewControllerLaunchOptions.m" lineNumber:30 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("UIDocumentBrowserViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIDocumentBrowserViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIDocumentViewControllerLaunchOptions.m" lineNumber:32 description:{@"Unable to find class %s", "UIDocumentBrowserViewController"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4A22F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DocumentManagerLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  qword_1ED4A2300 = result;
  return result;
}

void sub_18A19B8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A19C3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A19CE94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18A1A2B00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_18A1A6420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1A80DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18A1ACD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1AFAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _GetTextFieldClearButton(uint64_t a1, uint64_t a2)
{
  v4 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v5 = _GetTextFieldClearButtonWithCustomColorContrastSettings(a1, a2, 0, 0, v4, 1, 0);

  return v5;
}

void _recursivelyLayoutUIButtons(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [a1 subviews];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 setNeedsLayout];
        }

        else
        {
          _recursivelyLayoutUIButtons(v6);
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

id getUndoActionNameTyping()
{
  if (qword_1ED4A2310 != -1)
  {
    dispatch_once(&qword_1ED4A2310, &__block_literal_global_623);
  }

  v1 = _MergedGlobals_1331;

  return v1;
}

void __getUndoActionNameTyping_block_invoke()
{
  v2 = _UIKitBundle();
  v0 = [v2 localizedStringForKey:@"Typing" value:@"Typing" table:@"Localizable"];
  v1 = _MergedGlobals_1331;
  _MergedGlobals_1331 = v0;
}

void sub_18A1C2254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_18A1C2DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1C62DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1C66F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1C69F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1C725C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_18A1C7F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_18A1C844C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1C970C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1C9B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1C9CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1CBED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v16 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_18A1CCC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1CD0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18A1CDAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18A1CDD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18A1CE7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1CF7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1CFEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_18A1D21DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1D2B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A1D2D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A1D2FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A1D53C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t UITextGranularityFromNSTextSelectionGranularity(unint64_t a1)
{
  if (a1 > 4)
  {
    return -1;
  }

  else
  {
    return qword_18A682DF0[a1];
  }
}

uint64_t UITextGranularityToNSTextSelectionGranularity(unint64_t a1)
{
  if (a1 > 5)
  {
    return -1;
  }

  else
  {
    return qword_18A682E18[a1];
  }
}

uint64_t UITextDirectionToNSTextSelectionAffinity(uint64_t a1)
{
  if ((a1 - 2) > 3)
  {
    return -1;
  }

  else
  {
    return qword_18A682E48[a1 - 2];
  }
}

__CFString *UITextStorageDirectionToString(uint64_t a1)
{
  v1 = @"?";
  if (a1 == 1)
  {
    v1 = @"backward";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"forward";
  }
}

void sub_18A1D9108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_18A1D99FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UISceneSendOpenURLActionCallbackForScene(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = [v3 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v3 delegate];
    [v6 scene:v3 openURLContexts:v7];
  }
}

void *__getFPCreateDocumentURLFromBookmarkableStringSymbolLoc_block_invoke_0(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED4A2370)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __FileProviderLibraryCore_block_invoke_4;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7126CB8;
    v7 = 0;
    qword_1ED4A2370 = _sl_dlopen();
  }

  v2 = qword_1ED4A2370;
  if (!qword_1ED4A2370)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"_UISceneOpenURLBSActionsHandler.m" lineNumber:28 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "FPCreateDocumentURLFromBookmarkableString");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED4A2368 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __FileProviderLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  qword_1ED4A2370 = result;
  return result;
}

void __addChildFocusGroupsRecursively(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  [v4 addObject:v3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v3 childGroups];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        __addChildFocusGroupsRecursively(*(*(&v10 + 1) + 8 * v9++), v4);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

uint64_t selectorDescription_0(const char *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  Name = sel_getName(a1);

  return [v1 stringWithUTF8String:Name];
}

void _UIWindowSceneActivationPrepareConfiguration(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v36 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v36 _sceneActivator];

  if (v10 && !v13)
  {
    [v36 _setSceneActivator:v10];
  }

  v14 = [v36 _sceneActivator];
  if ([v14 conformsToProtocol:&unk_1EFFF5F30])
  {
    v15 = [v36 _sceneActivator];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      [v10 _prepareSceneActivationConfiguration:v36];
    }
  }

  else
  {
  }

  v17 = [v36 preview];

  if (v9 && !v17)
  {
    v18 = objc_opt_new();
    v19 = [v9 backgroundColor];
    [v18 setBackgroundColor:v19];

    v20 = [[UITargetedPreview alloc] initWithView:v9 parameters:v18];
    [v36 setPreview:v20];
  }

  v21 = [v36 options];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = objc_alloc_init(UIWindowSceneActivationRequestOptions);
  }

  v24 = v23;

  v25 = [(UIWindowSceneActivationRequestOptions *)v24 placement];

  if (!v25)
  {
    if (v12)
    {
      v26 = v12[2](v12);
    }

    else
    {
      v26 = 0;
    }

    if (_UIWindowSceneActivationRequestOptionsHaveModifiedStyleOrSize(v24))
    {
      v27 = _UIWindowScenePresentationStyleFromPlacement(v26);
      v28 = _UIWindowScenePlacementForStyleAndSizeCategory([(UIWindowSceneActivationRequestOptions *)v24 preferredPresentationStyle], [(UIWindowSceneActivationRequestOptions *)v24 _preferredSizeCategory], v27);
      [(UIWindowSceneActivationRequestOptions *)v24 setPlacement:v28];
    }

    v29 = [(UIWindowSceneActivationRequestOptions *)v24 placement];

    if (!v29)
    {
      [(UIWindowSceneActivationRequestOptions *)v24 setPlacement:v26];
    }
  }

  v30 = [(UISceneActivationRequestOptions *)v24 requestingScene];

  if (!v30)
  {
    if (v11)
    {
      [(UISceneActivationRequestOptions *)v24 setRequestingScene:v11];
    }

    else
    {
      v31 = [v36 preview];
      v32 = [v31 target];
      v33 = [v32 container];

      if (v33)
      {
        v34 = [v33 _window];
        v35 = [v34 windowScene];
        [(UISceneActivationRequestOptions *)v24 setRequestingScene:v35];
      }
    }
  }

  [v36 setOptions:v24];
}

uint64_t _UIWindowSceneActivationIsAnimatable(void *a1)
{
  v1 = a1;
  v2 = [v1 _sceneActivator];
  v3 = v2;
  v4 = UIApp;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  if ([v5 conformsToProtocol:&unk_1EFFF5F30])
  {
    v6 = [v1 options];
    v7 = [v6 requestingScene];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 _transitionCoordinator];
      v9 = [v8 allowedAsMorphTransitionSource];

      v10 = v9 ^ 1;
    }

    else
    {
      v10 = 1;
    }

    v12 = [v1 preview];

    v13 = [v6 _effectivelyWantsProminence];
    if (objc_opt_respondsToSelector())
    {
      v14 = [v5 _canAnimateSceneActivationWithConfiguration:v1];
    }

    else
    {
      v14 = 1;
    }

    if (v12)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v11 = 0;
    }

    else
    {
      v11 = v13 & v14;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void _UIWindowSceneActivateConfiguration(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v7 _sceneActivator];
  v9 = v8;
  v10 = UIApp;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  [v11 _requestSceneActivationWithConfiguration:v7 animated:_UIWindowSceneActivationIsAnimatable(v7) sender:v6 errorHandler:v5];
}

void _UITextViewEnablingCompatibilityMode(void *a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (a2)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Text", &qword_1ED499898) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 134349314;
      v7 = v3;
      v8 = 2082;
      v9 = "void _UITextViewEnablingCompatibilityMode(UITextView *__strong, BOOL)";
      v5 = "UITextView %{public}p is switching to TextKit 1 compatibility mode because its layoutManager was accessed. Break on %{public}s to debug.";
LABEL_6:
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, v5, &v6, 0x16u);
    }
  }

  else
  {
    v4 = *(__UILogGetCategoryCachedImpl("Text", &qword_1ED4998A0) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 134349314;
      v7 = v3;
      v8 = 2082;
      v9 = "void _UITextViewEnablingCompatibilityMode(UITextView *__strong, BOOL)";
      v5 = "UITextView %{public}p is switching to TextKit 1 compatibility mode because its textStorage contains attributes which are not compatible with TextKit 2. Break on %{public}s to debug.";
      goto LABEL_6;
    }
  }
}

void sub_18A1E129C(void *a1)
{
  objc_begin_catch(a1);
  *(*(v1 + 32) + 2232) &= ~0x1000uLL;
  objc_exception_rethrow();
}

void sub_18A1E552C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1E5FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  _Block_object_dispose((v27 - 144), 8);
  _UIEmitSignpostEvent(&a27);
  _Unwind_Resume(a1);
}

_DWORD *_UIEmitSignpostEvent(_DWORD *result)
{
  if (*result)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_18A1E8EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A1EE848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1EF3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1EFF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A1F3768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_18A1F3C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_18A1F4AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void ___customTextViewSubclassRequiresTextKit1_block_invoke_2()
{
  v0 = _UIMainBundleIdentifier();
  v1 = qword_1ED4998E0;
  qword_1ED4998E0 = v0;

  v2 = [qword_1ED4998D0 objectForKeyedSubscript:qword_1ED4998E0];
  byte_1ED499891 = v2 != 0;
}

void ___customTextViewSubclassUsesIllegalDoubleInit_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  v1 = qword_1ED4998F0;
  qword_1ED4998F0 = v0;

  v2 = [&unk_1EFE34AE0 objectForKeyedSubscript:qword_1ED4998F0];
  byte_1ED499892 = v2 != 0;

  if (byte_1ED499892 == 1)
  {
    v3 = [&unk_1EFE34AE0 objectForKeyedSubscript:qword_1ED4998F0];
    qword_1ED4998F8 = NSClassFromString(v3);
  }
}

void ___downgradeToTextKit1IfNecessary_block_invoke_2()
{
  v0 = _UIMainBundleIdentifier();
  v1 = qword_1ED499918;
  qword_1ED499918 = v0;

  v2 = [qword_1ED499908 objectForKeyedSubscript:qword_1ED499918];
  byte_1ED499893 = v2 != 0;
}

uint64_t ___downgradeToTextKit1IfNecessary_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

__CFString *_UIFontDescriptorDescriptionForSymbolicTraits(unsigned int a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"UIFontDescriptorTraitItalic "];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 appendString:@"UIFontDescriptorTraitBold "];
  if ((a1 & 0x20) == 0)
  {
LABEL_4:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 appendString:@"UIFontDescriptorTraitExpanded "];
  if ((a1 & 0x40) == 0)
  {
LABEL_5:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 appendString:@"UIFontDescriptorTraitCondensed "];
  if ((a1 & 0x400) == 0)
  {
LABEL_6:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 appendString:@"UIFontDescriptorTraitMonoSpace "];
  if ((a1 & 0x800) == 0)
  {
LABEL_7:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 appendString:@"UIFontDescriptorTraitVertical "];
  if ((a1 & 0x1000) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 appendString:@"UIFontDescriptorTraitUIOptimized "];
  if ((a1 & 0x8000) == 0)
  {
LABEL_9:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 appendString:@"UIFontDescriptorTraitTightLeading "];
  if ((a1 & 0x10000) == 0)
  {
LABEL_10:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 appendString:@"UIFontDescriptorTraitLooseLeading "];
  if ((a1 & 0x10000000) == 0)
  {
LABEL_11:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_40:
  [v3 appendString:@"UIFontDescriptorClassOldStyleSerifs "];
  if ((a1 & 0x20000000) != 0)
  {
LABEL_12:
    [v3 appendString:@"UIFontDescriptorClassTransitionalSerifs "];
  }

LABEL_13:
  if ((a1 & 0x30000000) != 0)
  {
    [v3 appendString:@"UIFontDescriptorClassModernSerifs "];
  }

  if ((a1 & 0x40000000) != 0)
  {
    [v3 appendString:@"UIFontDescriptorClassClarendonSerifs "];
  }

  if ((a1 & 0x50000000) != 0)
  {
    [v3 appendString:@"UIFontDescriptorClassSlabSerifs "];
  }

  if ((a1 & 0x70000000) != 0)
  {
    [v3 appendString:@"UIFontDescriptorClassFreeformSerifs "];
  }

  if ((a1 & 0x80000000) != 0)
  {
    [v3 appendString:@"UIFontDescriptorClassSansSerif "];
  }

  if ((a1 & 0x90000000) != 0)
  {
    [v3 appendString:@"UIFontDescriptorClassOrnamentals "];
  }

  if ((a1 & 0xA0000000) != 0)
  {
    [v3 appendString:@"UIFontDescriptorClassScripts "];
  }

  if (a1 >> 30)
  {
    [v3 appendString:@"UIFontDescriptorClassSymbolic "];
  }

  if ([v3 length])
  {
    v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];
  }

  else
  {
    v4 = @"(none)";
  }

  return v4;
}

id _UIUpdateInputAggregateCacheDebugDescription(unsigned int *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = MEMORY[0x1E696AEC0];
    v5 = a1[8];
    v6 = MEMORY[0x1E696AEC0];
  }

  else
  {
    v7 = mach_absolute_time();
    v6 = MEMORY[0x1E696AEC0];
    v5 = a1[8];
    if (v7)
    {
      v3 = v7;
    }

    else
    {
      v3 = mach_absolute_time();
    }

    v4 = MEMORY[0x1E696AEC0];
  }

  v8 = _UIUpdateInputExtentDebugDescription(a1, v3);
  v9 = [v8 UTF8String];
  v10 = _UIUpdateInputExtentDebugDescription(a1 + 4, v3);
  v11 = [v4 stringWithFormat:@"Input Aggregate, extents:\n - complete: %s\n\n - lowLatency: %s", v9, objc_msgSend(v10, "UTF8String")];

  v12 = [v6 stringWithFormat:@"Input Aggregate Cache, alignment=%u (valid=%u), %s", v5, v5 != 2, objc_msgSend(v11, "UTF8String")];

  return v12;
}

void sub_18A1FAE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 80), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAnalyticsLibrary();
  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreAnalyticsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7127340;
    v6 = 0;
    CoreAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreAnalyticsLibraryCore_frameworkLibrary;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreAnalyticsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UIGestureStudyInteraction.m" lineNumber:21 description:{@"%s", v4[0]}];

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

uint64_t __CoreAnalyticsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAnalyticsIsEventUsedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAnalyticsLibrary();
  result = dlsym(v2, "AnalyticsIsEventUsed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAnalyticsIsEventUsedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _UIStickerUtilLog()
{
  if (qword_1ED4A23B0 != -1)
  {
    dispatch_once(&qword_1ED4A23B0, &__block_literal_global_630);
  }

  v1 = _MergedGlobals_1335;

  return v1;
}

CGImageRef _UIStickerCreateImageFromData(const __CFData *a1)
{
  v1 = CGImageSourceCreateWithData(a1, 0);
  CGImageSourceGetCount(v1);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, 0, 0);
  CFRelease(v1);
  return ImageAtIndex;
}

CGImageRef _UIStickerCreateFramedSizedSticker(CGImage *a1, size_t a2, size_t a3, unint64_t a4, unint64_t a5)
{
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(0, a2, a3, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSetInterpolationQuality(v12, kCGInterpolationHigh);
  v15.origin.x = vcvtd_n_f64_u64(a2 - a4, 1uLL);
  v15.origin.y = vcvtd_n_f64_u64(a3 - a5, 1uLL);
  v15.size.width = a4;
  v15.size.height = a5;
  CGContextDrawImage(v12, v15, a1);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  return Image;
}

CGImageRef _UIStickerCreateSquareSticker(CGImage *a1, size_t a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (Width <= Height)
  {
    v6 = Height;
  }

  else
  {
    v6 = Width;
  }

  v7 = 1.0;
  if (v6 >= a2 && v6 != 0)
  {
    v7 = a2 / v6;
  }

  return _UIStickerCreateFramedSizedSticker(a1, a2, a2, (v7 * Width), (v7 * Height));
}

double _UIStickerImageScaleForMaxLength(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  result = 1.0;
  if (v3 >= a3 && v3 != 0)
  {
    return a3 / v3;
  }

  return result;
}

id _UIStickerCreateDownsampledHEICS(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  arg = 0;
  v1 = a1;
  *buf = 0;
  Container = CMPhotoDecompressionSessionCreate();
  if (Container || (CFAutorelease(*buf), v18[0] = 0, (Container = CMPhotoDecompressionSessionCreateContainer()) != 0) || (CFAutorelease(v18[0]), (Container = CMPhotoDecompressionContainerCreateSequenceContainer()) != 0))
  {

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  CFAutorelease(arg);

  v13 = 0;
  v14 = 0;
  v16[0] = 0;
  Container = CMPhotoCompressionSessionCreate();
  if (Container)
  {
    goto LABEL_5;
  }

  CFAutorelease(v16[0]);
  v8 = *MEMORY[0x1E6991860];
  v18[0] = *MEMORY[0x1E6991870];
  v18[1] = v8;
  *buf = &unk_1EFE33820;
  *&buf[8] = &unk_1EFE33838;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v18 count:2];
  Container = CMPhotoCompressionSessionOpenEmptyContainer();
  if (Container || (Container = CMPhotoCompressionSessionStartImageSequence()) != 0 || (Container = CMPhotoDecompressionContainerGetImageCount()) != 0 || (v17 = 0, (Container = CMPhotoDecompressionContainerCreateDictionaryDescription()) != 0))
  {

    goto LABEL_5;
  }

  CFAutorelease(v17);
  Value = CFDictionaryGetValue(v17, *MEMORY[0x1E6991A88]);

  v12 = Value;
  if (CMPhotoCompressionSessionEndImageSequence() || (v16[0] = 0, CMPhotoCompressionSessionCloseContainerAndCopyBacking()))
  {
    v3 = 0;
  }

  else
  {
    v3 = v16[0];
    v11 = v16[0];
  }

  Container = 0;
LABEL_6:

  v4 = v3;
  v5 = v4;
  if (Container || !v4)
  {
    v6 = _UIStickerUtilLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "NSData * _Nullable _UIStickerCreateDownsampledHEICS(NSData *__strong _Nonnull, size_t)";
      *&buf[12] = 1024;
      *&buf[14] = Container;
      _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s could not resize animated sticker: %d", buf, 0x12u);
    }
  }

  return v5;
}

CGImageRef _UIStickerCreateDownsampledImage(CGImage *a1, unint64_t a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (Width <= Height)
  {
    v6 = Height;
  }

  else
  {
    v6 = Width;
  }

  v7 = 1.0;
  if (v6 >= a2 && v6 != 0)
  {
    v7 = a2 / v6;
  }

  return _UIStickerCreateFramedSizedSticker(a1, (v7 * Width), (v7 * Height), (v7 * Width), (v7 * Height));
}

__CFData *_UIStickerDataFromImageWithMetadata(CGImage *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF88];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  v9 = CGImageDestinationCreateWithData(v8, v7, 1uLL, 0);

  v10 = [getSTKEmojiMetadataHelperClass() metadataDictionaryFromData:v6];

  CGImageDestinationAddImage(v9, a1, v10);
  CGImageDestinationFinalize(v9);
  CFRelease(v9);

  return v8;
}

id getSTKEmojiMetadataHelperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED4A23C8;
  v7 = qword_1ED4A23C8;
  if (!qword_1ED4A23C8)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSTKEmojiMetadataHelperClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSTKEmojiMetadataHelperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A1FF09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIStickerItemProviderWithMetadata(void *a1, void *a2, void *a3, int a4, void *a5, double a6)
{
  v79 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v65 = a3;
  v61 = a5;
  v12 = [v10 hasPrefix:@"sticker:///emoji"];
  v13 = [v10 hasPrefix:@"sticker:///memoji"];
  v63 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (!v15)
  {

    goto LABEL_38;
  }

  v16 = v15;
  v59 = v10;
  v68 = 0;
  v64 = v12 | v13;
  v17 = *v75;
  v67 = *MEMORY[0x1E6982F28];
  v66 = *MEMORY[0x1E6982E00];
  v18 = 160.0;
  if (v12)
  {
    v18 = 96.0;
  }

  v19 = v18 * a6;
  if (v19 < 300.0)
  {
    v19 = 300.0;
  }

  v60 = v19;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v75 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v74 + 1) + 8 * i);
      v22 = [v21 role];
      v23 = [v22 isEqualToString:@"com.apple.stickers.role.keyboard"];

      if ((v23 & 1) == 0)
      {
        v24 = [v21 role];
        v25 = [v24 containsString:@"com.apple.stickers.role.stillVariant_"];

        if ((v25 & 1) == 0)
        {
          v26 = v14;
          v27 = [v21 type];
          v28 = [v27 isEqualToString:@"com.apple.sticker"];

          v68 |= v28;
          v29 = [v21 type];
          v30 = [v67 identifier];
          v31 = [v29 isEqualToString:v30];

          v32 = [v21 type];
          v33 = [v66 identifier];
          v34 = [v32 isEqualToString:v33];

          v35 = [v21 role];
          if ([v35 isEqualToString:@"com.apple.stickers.role.still"])
          {

LABEL_15:
            v36 = [v21 data];
            if (v65)
            {
              v37 = [v65 data];

              v36 = v37;
            }

            if ((v34 | v31))
            {
              ImageFromData = _UIStickerCreateImageFromData(v36);
              if (ImageFromData)
              {
                v39 = ImageFromData;
                if (a4)
                {
                  SquareSticker = _UIStickerCreateSquareSticker(ImageFromData, v60);
                  v41 = [v21 type];
                  v42 = _UIStickerDataFromImageWithMetadata(SquareSticker, v41, v61);

                  CGImageRelease(SquareSticker);
                  v36 = v42;
                }

                else
                {
                  v54 = [v21 type];
                  v55 = _UIStickerDataFromImageWithMetadata(v39, v54, v61);

                  v36 = v55;
                }

                CGImageRelease(v39);
                v56 = [[UIImage alloc] initWithData:v36 scale:a6];
                [v63 registerObject:v56 visibility:3];
                v72[0] = MEMORY[0x1E69E9820];
                v72[1] = 3221225472;
                v72[2] = ___UIStickerItemProviderWithMetadata_block_invoke;
                v72[3] = &unk_1E70F6AD0;
                v73 = v56;
                v57 = v56;
                [v63 registerDataRepresentationForTypeIdentifier:@"com.apple.png-sticker" visibility:0 loadHandler:v72];
              }
            }

            v14 = v26;
            continue;
          }

          if (v64 & v31)
          {
            goto LABEL_15;
          }

          v43 = [v21 role];
          if (([v43 isEqualToString:@"com.apple.stickers.role.animated"] & 1) == 0)
          {

            v14 = v26;
LABEL_29:
            v53 = [v21 type];
            v69[0] = MEMORY[0x1E69E9820];
            v69[1] = 3221225472;
            v69[2] = ___UIStickerItemProviderWithMetadata_block_invoke_3;
            v69[3] = &unk_1E70F6AD0;
            v69[4] = v21;
            [v63 registerDataRepresentationForTypeIdentifier:v53 visibility:0 loadHandler:v69];

            continue;
          }

          v44 = [v21 type];
          v45 = [v44 isEqualToString:@"public.heics"];

          v14 = v26;
          if (!v45)
          {
            goto LABEL_29;
          }

          v46 = [v21 data];
          v47 = v46;
          if (a4)
          {
            v48 = _UIStickerCreateDownsampledHEICS(v46);
            v49 = v48;
            if (v48)
            {
              v50 = v48;

              v47 = v50;
            }
          }

          v51 = [v21 type];
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = ___UIStickerItemProviderWithMetadata_block_invoke_2;
          v70[3] = &unk_1E70F6AD0;
          v71 = v47;
          v52 = v47;
          [v63 registerDataRepresentationForTypeIdentifier:v51 visibility:0 loadHandler:v70];
        }
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v74 objects:v78 count:16];
  }

  while (v16);

  v10 = v59;
  if ((v68 & 1) == 0)
  {
LABEL_38:
    [v63 registerDataRepresentationForTypeIdentifier:@"com.apple.sticker" visibility:0 loadHandler:&__block_literal_global_33_9];
  }

  return v63;
}

id _UIStickerCreateEmojiTextAttachmentFromSticker(void *a1)
{
  v73 = *MEMORY[0x1E69E9840];
  v1 = a1;
  getSTKEmojiMetadataHelperClass();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = _UIStickerUtilLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v46 = [v1 identifier];
      *buf = 136315394;
      v68 = "NSEmojiImageTextAttachment * _Nullable _UIStickerCreateEmojiTextAttachmentFromSticker(_UISticker *__strong _Nonnull)";
      v69 = 2114;
      v70 = v46;
      _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "[%s] Could not find method to load representations as emoji text attachments directly from sticker %{public}@", buf, 0x16u);
    }

LABEL_11:
    v6 = v1;
    v7 = [v6 bakedInRep];
    v50 = v6;
    v52 = v1;
    if (!v7)
    {
      v24 = [v6 externalURI];
      v25 = [v24 hasPrefix:@"sticker:///emoji"];

      v26 = [v6 externalURI];
      v27 = [v26 hasPrefix:@"sticker:///memoji"];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = [v6 representations];
      v28 = [obj countByEnumeratingWithState:&v59 objects:buf count:16];
      if (v28)
      {
        v29 = v28;
        v30 = v25 | v27;
        v31 = *v60;
        v32 = *MEMORY[0x1E6982F28];
LABEL_27:
        v33 = 0;
        while (1)
        {
          if (*v60 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v59 + 1) + 8 * v33);
          v35 = [v34 type];
          v36 = [v32 identifier];
          v37 = [v35 isEqualToString:v36];

          v38 = [v34 role];
          if ([v38 isEqualToString:@"com.apple.stickers.role.still"])
          {
            break;
          }

          if (v30 & v37)
          {
            goto LABEL_41;
          }

          if (v29 == ++v33)
          {
            v29 = [obj countByEnumeratingWithState:&v59 objects:buf count:16];
            if (v29)
            {
              goto LABEL_27;
            }

            goto LABEL_34;
          }
        }

LABEL_41:
        v8 = v34;

        if (v8)
        {
          goto LABEL_13;
        }
      }

      else
      {
LABEL_34:
      }

      v8 = _UIStickerUtilLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v20 = v50;
        v49 = [v50 identifier];
        *v63 = 136315394;
        v64 = "NSEmojiImageTextAttachment *_UIStickerGenerateEmojiTextAttachmentRepsNonEmojiSticker(_UISticker *__strong)";
        v65 = 2114;
        v66 = v49;
        _os_log_error_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "[%s] Could not find still representation in sticker collection for sticker %{public}@", v63, 0x16u);

        v2 = 0;
        v1 = v52;
      }

      else
      {
        v2 = 0;
        v20 = v50;
        v1 = v52;
      }

      goto LABEL_44;
    }

    v8 = v7;
LABEL_13:
    v9 = [v8 data];
    ImageFromData = _UIStickerCreateImageFromData(v9);

    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(&unk_1EFE2DDB0, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v12 = [&unk_1EFE2DDB0 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v56;
      v15 = *MEMORY[0x1E695F060];
      v16 = *(MEMORY[0x1E695F060] + 8);
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v56 != v14)
          {
            objc_enumerationMutation(&unk_1EFE2DDB0);
          }

          SquareSticker = _UIStickerCreateSquareSticker(ImageFromData, [*(*(&v55 + 1) + 8 * i) unsignedIntValue]);
          v19 = [objc_alloc(MEMORY[0x1E69655E8]) initWithImage:SquareSticker alignmentInset:{v15, v16}];
          CGImageRelease(SquareSticker);
          [v11 addObject:v19];
        }

        v13 = [&unk_1EFE2DDB0 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v13);
    }

    CGImageRelease(ImageFromData);
    v20 = v51;
    v21 = [v51 accessibilityName];
    v22 = v21;
    if (v21 && -[__CFString length](v21, "length") || ([v51 sanitizedPrompt], v23 = objc_claimAutoreleasedReturnValue(), v22, (v22 = v23) != 0))
    {
      v1 = v52;
      if ([(__CFString *)v22 length])
      {
LABEL_37:
        if ([(__CFString *)v22 length])
        {
LABEL_39:
          v40 = objc_alloc(MEMORY[0x1E69655E0]);
          v41 = [v51 identifier];
          v42 = [v40 initWithContentIdentifier:v41 shortDescription:v22 strikeImages:v11];

          v43 = [off_1E70ECB60 alloc];
          v44 = [v42 imageData];
          v2 = [v43 initWithData:v44];

LABEL_44:
          goto LABEL_45;
        }

LABEL_38:

        v22 = @"missing description";
        goto LABEL_39;
      }
    }

    else
    {
      v1 = v52;
    }

    v39 = [v51 searchText];

    v22 = v39;
    if (!v39)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v54 = 0;
  v2 = [v1 stk_asEmojiTextAttachmentWithError:&v54];
  v3 = v54;
  if (v3)
  {
    v4 = _UIStickerUtilLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v47 = [v1 identifier];
      v48 = [v3 localizedDescription];
      *buf = 136315650;
      v68 = "NSEmojiImageTextAttachment * _Nullable _UIStickerCreateEmojiTextAttachmentFromSticker(_UISticker *__strong _Nonnull)";
      v69 = 2114;
      v70 = v47;
      v71 = 2114;
      v72 = v48;
      _os_log_error_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "[%s] Representations could not be loaded as emoji text attachments directly from sticker %{public}@. %{public}@", buf, 0x20u);
    }
  }

  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_45:

  return v2;
}

id _UIStickerCreateAdaptiveImageGlyphFromSticker(void *a1)
{
  v1 = _UIStickerCreateEmojiTextAttachmentFromSticker(a1);
  v2 = [v1 adaptiveImageGlyph];

  return v2;
}

id _UIStickerCreateTextInputPayloadFromSticker(void *a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 identifier];
  if (v2)
  {
    v3 = [v1 representations];
    v4 = [v3 count];

    if (v4)
    {
      v5 = MEMORY[0x1E695DF90];
      v22[0] = @"identifier";
      v6 = [v1 identifier];
      v23[0] = v6;
      v22[1] = @"representations";
      v7 = [v1 representations];
      v23[1] = v7;
      v22[2] = @"attributionInfo";
      v8 = [v1 attributionInfo];
      v9 = v8;
      v10 = MEMORY[0x1E695E0F8];
      if (v8)
      {
        v10 = v8;
      }

      v23[2] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
      v2 = [v5 dictionaryWithDictionary:v11];

      v12 = [v1 bakedInRep];
      [v2 setObject:v12 forKeyedSubscript:@"bakedInRep"];

      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "effectType")}];
      [v2 setObject:v13 forKeyedSubscript:@"effectType"];

      v14 = [v1 name];
      [v2 setObject:v14 forKeyedSubscript:@"name"];

      v15 = [v1 externalURI];
      [v2 setObject:v15 forKeyedSubscript:@"externalURI"];

      v16 = [v1 searchText];
      [v2 setObject:v16 forKeyedSubscript:@"searchText"];

      v17 = [v1 sanitizedPrompt];
      [v2 setObject:v17 forKeyedSubscript:@"sanitizedPrompt"];

      v18 = [v1 accessibilityName];
      [v2 setObject:v18 forKeyedSubscript:@"accessibilityName"];

      v19 = [v1 accessibilityLabel];
      [v2 setObject:v19 forKeyedSubscript:@"accessibilityLabel"];

      v20 = [v1 metadata];
      [v2 setObject:v20 forKeyedSubscript:@"metadata"];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id _UIStickerCreateStickerFromTextInputPayload(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 objectForKeyedSubscript:@"identifier"];
  [v2 setIdentifier:v3];

  v4 = [v1 objectForKeyedSubscript:@"representations"];
  [v2 setRepresentations:v4];

  v5 = [v1 objectForKeyedSubscript:@"bakedInRep"];
  [v2 setBakedInRep:v5];

  v6 = [v1 objectForKeyedSubscript:@"attributionInfo"];
  [v2 setAttributionInfo:v6];

  v7 = [v1 objectForKeyedSubscript:@"effectType"];
  v8 = v7;
  if (!v7)
  {
    v7 = &unk_1EFE33898;
  }

  [v2 setEffectType:{objc_msgSend(v7, "integerValue")}];

  v9 = [v1 objectForKeyedSubscript:@"name"];
  [v2 setName:v9];

  v10 = [v1 objectForKeyedSubscript:@"externalURI"];
  [v2 setExternalURI:v10];

  v11 = [v1 objectForKeyedSubscript:@"searchText"];
  [v2 setSearchText:v11];

  v12 = [v1 objectForKeyedSubscript:@"sanitizedPrompt"];
  [v2 setSanitizedPrompt:v12];

  v13 = [v1 objectForKeyedSubscript:@"accessibilityName"];
  [v2 setAccessibilityName:v13];

  v14 = [v1 objectForKeyedSubscript:@"accessibilityLabel"];
  [v2 setAccessibilityLabel:v14];

  v15 = [v1 objectForKeyedSubscript:@"metadata"];
  [v2 setMetadata:v15];

  v16 = [v1 objectForKeyedSubscript:@"dictionaryRepresentations"];
  if (v16)
  {
    v34 = v1;
    v35 = v2;
    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v33 = v16;
    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          v22 = [v21 objectForKeyedSubscript:@"data"];
          v23 = [v21 objectForKeyedSubscript:@"type"];
          v24 = [v21 objectForKeyedSubscript:@"size"];
          v25 = [v21 objectForKeyedSubscript:@"role"];
          v26 = v25;
          if (v22)
          {
            v27 = v23 == 0;
          }

          else
          {
            v27 = 1;
          }

          if (v27 || v24 == 0 || v25 == 0)
          {
            v31 = _UIStickerUtilLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "Received a nil value in Sticker representation", buf, 2u);
            }
          }

          else
          {
            v30 = [_UIStickerRepresentation alloc];
            [v24 CGSizeValue];
            v31 = [(_UIStickerRepresentation *)v30 initWithData:v22 type:v23 size:v26 role:?];
            [v36 addObject:v31];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v18);
    }

    v2 = v35;
    [v35 setRepresentations:v36];

    v16 = v33;
    v1 = v34;
  }

  return v2;
}

void *__getCMTimeMakeFromDictionarySymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED4A23C0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreMediaLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7127358;
    v7 = 0;
    qword_1ED4A23C0 = _sl_dlopen();
  }

  v2 = qword_1ED4A23C0;
  if (!qword_1ED4A23C0)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreMediaLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"_UIStickerUtil.m" lineNumber:32 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CMTimeMakeFromDictionary");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED4A23B8 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __CoreMediaLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED4A23C0 = result;
  return result;
}

Class __getSTKEmojiMetadataHelperClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A23D0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __StickerKitLibraryCore_block_invoke_2;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7127370;
    v8 = 0;
    qword_1ED4A23D0 = _sl_dlopen();
  }

  if (!qword_1ED4A23D0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *StickerKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIStickerUtil.m" lineNumber:36 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("STKEmojiMetadataHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSTKEmojiMetadataHelperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIStickerUtil.m" lineNumber:37 description:{@"Unable to find class %s", "STKEmojiMetadataHelper"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4A23C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StickerKitLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  qword_1ED4A23D0 = result;
  return result;
}

void sub_18A20157C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _detailByApplyingSmartQuotes(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1];
  v5 = [v4 objectForKey:@"NSGrammarCorrections"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithArray:v5];
      if ([v6 count])
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = [v6 objectAtIndex:v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 rangeOfString:@"'"];
            if (v10)
            {
              v11 = _stringByApplyingSmartQuotes(v9, v3);
              [v6 replaceObjectAtIndex:v8 withObject:v11];

              v7 = 1;
            }
          }

          ++v8;
        }

        while (v8 < [v6 count]);
        if (v7)
        {
          [v4 setObject:v6 forKey:@"NSGrammarCorrections"];
        }
      }
    }
  }

  return v4;
}

id _stringByApplyingSmartQuotes(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [a2 smartPunctuationedStringForString:v3];
    v6 = v5;
    v4 = v3;
    if (v5)
    {
      v4 = v5;
    }
  }

  return v4;
}

id _resultByApplyingSmartQuotesToResult(void *a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 resultType];
  v6 = [v3 replacementString];
  v7 = v6;
  if (v5 == 512 && v6)
  {
    [v6 rangeOfString:@"'"];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E696AB48]);
      v10 = [v3 range];
      v12 = v11;
      v13 = _stringByApplyingSmartQuotes(v7, v4);
      v14 = [v9 initWithRange:v10 replacementString:{v12, v13}];

      v3 = v14;
    }
  }

  else if (v5 == 4)
  {
    [v3 grammarDetails];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v15 = v47 = 0u;
    v39 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v39)
    {
      v36 = v7;
      v37 = v4;
      v16 = *v45;
      v38 = v15;
      v35 = *v45;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(v15);
          }

          v18 = *(*(&v44 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v18 objectForKey:@"NSGrammarCorrections"];
            if (v19)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                v20 = v19;
                v21 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
                if (v21)
                {
                  v22 = v21;
                  v23 = *v41;
                  while (2)
                  {
                    for (j = 0; j != v22; ++j)
                    {
                      if (*v41 != v23)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v25 = *(*(&v40 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v25 rangeOfString:@"'"];
                        if (v26)
                        {

                          v27 = objc_alloc(MEMORY[0x1E696AC50]);
                          v28 = [v3 range];
                          v30 = v29;
                          v31 = [v3 grammarDetails];
                          v4 = v37;
                          v32 = _detailsByApplyingSmartQuotes(v31, v37);
                          v33 = [v27 initWithRange:v28 details:{v30, v32}];

                          v3 = v33;
                          goto LABEL_29;
                        }
                      }
                    }

                    v22 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
                    if (v22)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v15 = v38;
                v16 = v35;
              }
            }
          }
        }

        v39 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v39);

      v4 = v37;
LABEL_29:
      v7 = v36;
    }

    else
    {
    }
  }

  return v3;
}

void sub_18A2060A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

id alternativesMatchingLanguage(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = v4;
        v13 = [v12 length];
        if (!v4 || !v11 || (v14 = v13, ![v11 hasPrefix:v12]))
        {

          continue;
        }

        if ([v11 length] <= v14)
        {

LABEL_15:
          [v5 addObject:v11];
          continue;
        }

        v15 = [v11 characterAtIndex:v14];

        if (v15 == 95 || v15 == 45)
        {
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

char *strHashNoCase(char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strchr(result, 10);
    if (v2)
    {
      v3 = v2 - v1;
    }

    else
    {
      v3 = strlen(v1);
    }

    v4 = CFStringCreateWithBytesNoCopy(0, v1, v3, 0x8000100u, 0, *MEMORY[0x1E695E498]);
    MutableCopy = CFStringCreateMutableCopy(0, 0, v4);
    CFStringNormalize(MutableCopy, kCFStringNormalizationFormC);
    CFStringFold(MutableCopy, 1uLL, 0);
    v6 = CFHash(MutableCopy);
    CFRelease(MutableCopy);
    CFRelease(v4);
    return v6;
  }

  return result;
}

BOOL strIsEqualNoCase(char *__s, char *a2)
{
  if (!(__s | a2))
  {
    return 1;
  }

  v3 = 0;
  if (__s && a2)
  {
    v5 = strchr(__s, 10);
    v6 = strchr(a2, 10);
    v7 = v6;
    if (v5)
    {
      v8 = v5 - __s;
      if (v6)
      {
LABEL_6:
        v9 = v7 - a2;
LABEL_10:
        v10 = *MEMORY[0x1E695E498];
        v11 = CFStringCreateWithBytesNoCopy(0, __s, v8, 0x8000100u, 0, *MEMORY[0x1E695E498]);
        v12 = CFStringCreateWithBytesNoCopy(0, a2, v9, 0x8000100u, 0, v10);
        v3 = CFStringCompare(v11, v12, 0x11uLL) == kCFCompareEqualTo;
        CFRelease(v11);
        CFRelease(v12);
        return v3;
      }
    }

    else
    {
      v8 = strlen(__s);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v9 = strlen(a2);
    goto LABEL_10;
  }

  return v3;
}

void appendWordToDictionary(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = v3;
  if (!v3 || [v3 isEqualToString:*MEMORY[0x1E696A400]])
  {
    v5 = connectionToRemoteDataServer();
    v6 = [v5 remoteObjectProxy];

    [v6 appendWordToTextCheckerLocalDictionary:v7];
  }
}

void setCachedExemptionForString(void *a1, uint64_t a2)
{
  v6 = a1;
  v3 = qword_1ED49AD98;
  objc_sync_enter(v3);
  v4 = qword_1ED49AD98;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v4 setObject:v5 forKey:v6];

  objc_sync_exit(v3);
}

id _detailsByApplyingSmartQuotes(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:a1];
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      v6 = [v4 objectAtIndex:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = _detailByApplyingSmartQuotes(v6, v3);
        [v4 replaceObjectAtIndex:v5 withObject:v7];
      }

      ++v5;
    }

    while (v5 < [v4 count]);
  }

  return v4;
}

uint64_t __ProofReaderLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49ADF8 = result;
  return result;
}

Class __getTCPostEditorClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49AE08)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextComposerLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7127450;
    v8 = 0;
    qword_1ED49AE08 = _sl_dlopen();
  }

  if (!qword_1ED49AE08)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextComposerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UITextChecker.m" lineNumber:63 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TCPostEditor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTCPostEditorClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UITextChecker.m" lineNumber:64 description:{@"Unable to find class %s", "TCPostEditor"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49AE00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextComposerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49AE08 = result;
  return result;
}

void __UITextCheckerUsePostEditingUnderlines_block_invoke()
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = [v2 objectForKey:@"UITextCheckerUsePostEditingUnderlines"];

  if (v0)
  {
    v1 = [v2 BOOLForKey:@"UITextCheckerUsePostEditingUnderlines"];
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      goto LABEL_6;
    }

    v1 = 1;
  }

  byte_1ED49AD63 = v1;
LABEL_6:
}

void __UITextCheckerPerformPostEditingOnSend_block_invoke()
{
  if (qword_1ED49AE30 != -1)
  {
    dispatch_once(&qword_1ED49AE30, &__block_literal_global_544_0);
  }

  if (byte_1ED49AD65 == 1)
  {
    if (_os_feature_enabled_impl())
    {
      byte_1ED49AD64 = 1;
    }
  }
}

void __UITextCheckerInMessages_block_invoke()
{
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = _UIMainBundleIdentifier();
  if (([v0 isEqualToString:@"com.apple.MobileSMS"] & 1) != 0 || objc_msgSend(v0, "isEqualToString:", @"com.apple.mobilesms.compose"))
  {
    byte_1ED49AD65 = 1;
  }
}

id connectionToRemoteDataServer()
{
  if (qword_1ED49AE40 != -1)
  {
    dispatch_once(&qword_1ED49AE40, &__block_literal_global_559_0);
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = __Block_byref_object_copy__219;
  v7 = __Block_byref_object_dispose__219;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __connectionToRemoteDataServer_block_invoke_2;
  block[3] = &unk_1E70F2F20;
  block[4] = &v3;
  dispatch_sync(qword_1ED49AE38, block);
  v0 = v4[5];
  _Block_object_dispose(&v3, 8);

  return v0;
}

intptr_t __dataWithContentsOfUserDictionary_block_invoke(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_SRequestedData.isa, "dataWithContentsOfUserDictionary_block_invoke", a2);
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

void __dataWithContentsOfUserDictionary_block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __connectionToRemoteDataServer_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UITextChecker.xpc", 0);
  v1 = qword_1ED49AE38;
  qword_1ED49AE38 = v0;
}

void __connectionToRemoteDataServer_block_invoke_2(uint64_t a1)
{
  v2 = qword_1ED49AE48;
  if (!qword_1ED49AE48)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput.rdt" options:4096];
    v4 = qword_1ED49AE48;
    qword_1ED49AE48 = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016DDD0];
    [qword_1ED49AE48 setRemoteObjectInterface:v5];

    [qword_1ED49AE48 _setQueue:qword_1ED49AE38];
    [qword_1ED49AE48 resume];
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__219;
    v14 = __Block_byref_object_dispose__219;
    v15 = 0;
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __connectionToRemoteDataServer_block_invoke_3;
    v9[3] = &unk_1E71082E8;
    v9[4] = &v10;
    v7 = [v6 addObserverForName:@"UIApplicationSuspendedNotification" object:UIApp queue:0 usingBlock:v9];
    v8 = v11[5];
    v11[5] = v7;

    _Block_object_dispose(&v10, 8);
    v2 = qword_1ED49AE48;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v2);
}

void __connectionToRemoteDataServer_block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 32) + 8) + 40)];

  v3 = qword_1ED49AE38;

  dispatch_async(v3, &__block_literal_global_617);
}

void __connectionToRemoteDataServer_block_invoke_4()
{
  [qword_1ED49AE48 invalidate];
  v0 = qword_1ED49AE48;
  qword_1ED49AE48 = 0;
}

intptr_t __stringIsExemptFromChecker_block_invoke(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_UitextcheckerS.isa, a2);
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

uint64_t __UITextCheckerUseProofreadingReview_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    byte_1ED49AD66 = 1;
  }

  return result;
}

void __UITextCheckerPerformPostEditingOnPause_block_invoke()
{
  if (qword_1ED49AE30 != -1)
  {
    dispatch_once(&qword_1ED49AE30, &__block_literal_global_544_0);
  }

  if (byte_1ED49AD65 == 1)
  {
    if (_os_feature_enabled_impl())
    {
      byte_1ED49AD67 = 1;
    }
  }
}

__CFString *UITextAlignmentGetStylePropertyString(unint64_t a1)
{
  if (a1 > 3)
  {
    return &stru_1EFB14550;
  }

  else
  {
    return off_1E7127650[a1];
  }
}

uint64_t _UICorrespondingUserInterfaceStyleForKeyboardAppearanceOfView(void *a1)
{
  v1 = a1;
  v2 = [v1 keyboardAppearance];
  switch(v2)
  {
    case 1:
      v3 = 2;
      break;
    case 2:
      v3 = 1;
      break;
    case 9:
      v3 = 1000;
      break;
    default:
      v4 = [v1 traitCollection];
      v3 = [v4 userInterfaceStyle];

      break;
  }

  return v3;
}

void sub_18A212274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A212430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A2129C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id getLTUITranslationViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLTUITranslationViewControllerClass_softClass;
  v7 = getLTUITranslationViewControllerClass_softClass;
  if (!getLTUITranslationViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLTUITranslationViewControllerClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getLTUITranslationViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A214380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A215134(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 224));
  _Unwind_Resume(a1);
}

void __getLTUITranslationViewControllerClass_block_invoke(uint64_t a1)
{
  TranslationUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LTUITranslationViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLTUITranslationViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLTUITranslationViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UITextServiceSession.m" lineNumber:55 description:{@"Unable to find class %s", "LTUITranslationViewController"}];

    __break(1u);
  }
}

void TranslationUIServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TranslationUIServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TranslationUIServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7127800;
    v5 = 0;
    TranslationUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TranslationUIServicesLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TranslationUIServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UITextServiceSession.m" lineNumber:54 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __TranslationUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TranslationUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __getLTUISourceMetaClass_block_invoke(uint64_t a1)
{
  TranslationUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LTUISourceMeta");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4A23F0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLTUISourceMetaClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UITextServiceSession.m" lineNumber:56 description:{@"Unable to find class %s", "LTUISourceMeta"}];

    __break(1u);
  }
}

id UIOLog()
{
  if (UIOLog_onceToken != -1)
  {
    dispatch_once(&UIOLog_onceToken, &__block_literal_global_633);
  }

  v1 = UIOLog_log;

  return v1;
}

void __UIOLog_block_invoke()
{
  v0 = os_log_create("com.apple.uikit.uioverlayd", "General");
  v1 = UIOLog_log;
  UIOLog_log = v0;
}

void UIResetDateFormats()
{
  if (__LocaleDateFormats)
  {
    CFRelease(__LocaleDateFormats);
    __LocaleDateFormats = 0;
  }

  if (todayFormatter)
  {
    CFRelease(todayFormatter);
    todayFormatter = 0;
  }

  if (relativeFormatter)
  {
    CFRelease(relativeFormatter);
    relativeFormatter = 0;
  }

  if (dayFormatter)
  {
    CFRelease(dayFormatter);
    dayFormatter = 0;
  }

  if (longFormatter)
  {
    CFRelease(longFormatter);
    longFormatter = 0;
  }
}

CFStringRef UIFormatDateWithLongFormat(const __CFDate *a1, const __CFString *a2)
{
  v4 = CFTimeZoneCopySystem();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Current = CFAbsoluteTimeGetCurrent();
  v7 = *&CFAbsoluteTimeGetGregorianDate(Current, v5);
  *&v27.year = v7 & 0xFFFFFFFFFFFFLL;
  v27.second = 0.0;
  AbsoluteTime = CFGregorianDateGetAbsoluteTime(v27, v5);
  *&v28.year = (v7 + 0x10000000000) & 0xFF0000000000 | v7 & 0xFFFFFFFFFFLL;
  v28.second = 0.0;
  v9 = CFGregorianDateGetAbsoluteTime(v28, v5);
  CFRelease(v5);
  v10 = MEMORY[0x18CFE4640](a1);
  if (v10 >= v9)
  {
    goto LABEL_13;
  }

  if (AbsoluteTime - v10 < 0.0)
  {
    v11 = CFLocaleCopyCurrent();
    v12 = _UITimeFormatIs24HourMode();
    if (todayFormatter && v12 != __use24HourFormat)
    {
      __use24HourFormat = v12;
    }

    StringWithDate = CFDateFormatterCreateStringWithDate(0, todayFormatter, a1);
    if (StringWithDate)
    {
      v14 = StringWithDate;
      MutableCopy = CFStringCreateMutableCopy(0, 20, StringWithDate);
      if (MutableCopy)
      {
        v16 = MutableCopy;
        CFRelease(v14);
        CFStringLowercase(v16, v11);
        if (v11)
        {
          CFRelease(v11);
        }

        return v16;
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v23 = v14;
      goto LABEL_38;
    }

    if (v11)
    {
      v23 = v11;
LABEL_38:
      CFRelease(v23);
    }

    return 0;
  }

  if (AbsoluteTime - v10 <= 86400.0)
  {
    v17 = relativeFormatter;
    if (!relativeFormatter)
    {
      v21 = CFLocaleCopyCurrent();
      v22 = CFDateFormatterCreate(0, v21, kCFDateFormatterShortStyle, kCFDateFormatterNoStyle);
      relativeFormatter = v22;
      if (v21)
      {
        CFRelease(v21);
        v22 = relativeFormatter;
      }

      if (!v22)
      {
        return 0;
      }

      CFDateFormatterSetProperty(v22, *MEMORY[0x1E695E550], *MEMORY[0x1E695E4D0]);
      v17 = relativeFormatter;
    }

    goto LABEL_14;
  }

  if (v9 - v10 <= 604800.0)
  {
    v17 = dayFormatter;
    if (!dayFormatter)
    {
      v24 = CFLocaleCopyCurrent();
      v25 = CFDateFormatterCreate(0, v24, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
      dayFormatter = v25;
      if (v24)
      {
        CFRelease(v24);
        v25 = dayFormatter;
      }

      if (!v25)
      {
        return 0;
      }

      CFDateFormatterSetFormat(v25, @"cccc");
      v17 = dayFormatter;
    }
  }

  else
  {
LABEL_13:
    v17 = longFormatter;
    if (!longFormatter)
    {
      v19 = CFLocaleCopyCurrent();
      v20 = CFDateFormatterCreate(0, v19, (2 * (a2 == 0)), kCFDateFormatterNoStyle);
      longFormatter = v20;
      if (v19)
      {
        CFRelease(v19);
        v17 = longFormatter;
        if (!longFormatter)
        {
          return 0;
        }
      }

      else
      {
        v17 = v20;
        if (!v20)
        {
          return 0;
        }
      }

      if (a2)
      {
        CFDateFormatterSetFormat(v17, a2);
        v17 = longFormatter;
      }
    }
  }

LABEL_14:

  return CFDateFormatterCreateStringWithDate(0, v17, a1);
}

const __CFString *_UITimeFormatIs24HourMode()
{
  _RegisterForLocaleChangeNotificationIfNecessary();
  v0 = todayFormatter;
  if (!todayFormatter)
  {
    v1 = CFLocaleCopyCurrent();
    todayFormatter = CFDateFormatterCreate(0, v1, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
    CFRelease(v1);
    v0 = todayFormatter;
  }

  result = CFDateFormatterGetFormat(v0);
  if (result)
  {
    v3 = result;
    if (CFStringFind(result, @"H", 0).location == -1)
    {
      return (CFStringFind(v3, @"k", 0).location != -1);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const void *UIDateFormatStringForFormatTypeForLocale(const __CFLocale *a1, void *key)
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = __LocaleDateFormats;
  if (!__LocaleDateFormats)
  {
    _RegisterForLocaleChangeNotificationIfNecessary();
    __LocaleDateFormats = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:{objc_msgSend(CPSharedResourcesDirectory(), "stringByAppendingPathComponent:", @"Library/Caches/DateFormats.plist"}];
    v5 = MEMORY[0x1E695E890];
    if (!__LocaleDateFormats)
    {
      goto LABEL_15;
    }

    VersionString = _CreateVersionString();
    v7 = *v5;
    v8 = CFPreferencesCopyAppValue(@"AppleICUForce12HourTime", *v5);
    v9 = CFPreferencesCopyAppValue(@"AppleICUForce24HourTime", v7);
    v10 = __LocaleDateFormats;
    v11 = MEMORY[0x18CFE4780](a1);
    if (!_CachedValueIsEqualToExpectedValue(v10, @"Locale", v11) || !_CachedValueIsEqualToExpectedValue(__LocaleDateFormats, @"Version", VersionString) || !_CachedValueIsEqualToExpectedValue(__LocaleDateFormats, @"AppleICUForce12HourTime", v8) || !_CachedValueIsEqualToExpectedValue(__LocaleDateFormats, @"AppleICUForce24HourTime", v9))
    {
      CFRelease(__LocaleDateFormats);
      __LocaleDateFormats = 0;
    }

    if (VersionString)
    {
      CFRelease(VersionString);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v4 = __LocaleDateFormats;
    if (!__LocaleDateFormats)
    {
LABEL_15:
      v75 = xmmword_1E7127A18;
      v76 = *&off_1E7127A28;
      v77 = xmmword_1E7127A38;
      v78 = @"y";
      *values = xmmword_1E71279D8;
      v72 = *&off_1E71279E8;
      v73 = xmmword_1E71279F8;
      v74 = *&off_1E7127A08;
      __LocaleDateFormats = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v12 = CFDateFormatterCreate(0, a1, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
      v13 = CFDateFormatterCopyProperty(v12, *MEMORY[0x1E695E538]);
      v69 = key;
      if (v13 || (v13 = CFDateFormatterCopyProperty(v12, *MEMORY[0x1E695E580])) != 0)
      {
        CFRelease(v13);
        v14 = 0;
      }

      else
      {
        v14 = 1;
      }

      Format = CFDateFormatterGetFormat(v12);
      v70 = CFRetain(Format);
      CFRelease(v12);
      v16 = CFDateFormatterCreate(0, a1, kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle);
      v17 = CFDateFormatterGetFormat(v16);
      v18 = CFRetain(v17);
      CFRelease(v16);
      v19 = CFArrayCreate(0, values, 15, MEMORY[0x1E695E9C0]);
      v20 = MEMORY[0x18CFE45D0](0, v19, 0, a1);
      CFRelease(v19);
      Count = CFArrayGetCount(v20);
      if (Count >= 1)
      {
        v22 = Count;
        for (i = 0; i != v22; ++i)
        {
          v24 = __LocaleDateFormats;
          v25 = *(&off_1E7127960 + i);
          ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
          CFDictionarySetValue(v24, v25, ValueAtIndex);
        }
      }

      CFRelease(v20);
      Length = CFStringGetLength(v18);
      MutableCopy = CFStringCreateMutableCopy(0, Length, v18);
      v80.location = 0;
      v80.length = Length;
      v29 = CFStringFindAndReplace(MutableCopy, @",", @" ", v80, 0);
      v81.location = 0;
      v81.length = Length;
      v30 = CFStringFindAndReplace(MutableCopy, @"/", @" ", v81, 0) + v29;
      v82.location = 0;
      v82.length = Length;
      v31 = CFStringFindAndReplace(MutableCopy, @"-", @" ", v82, 0);
      v83.location = 0;
      v83.length = Length;
      if (v30 + v31 + CFStringFindAndReplace(MutableCopy, @"  ", @" ", v83, 0) < 1)
      {
        CFRetain(v18);
        Copy = v18;
      }

      else
      {
        Copy = CFStringCreateCopy(0, MutableCopy);
      }

      CFRelease(MutableCopy);
      CFDictionarySetValue(__LocaleDateFormats, @"UIAbbreviatedDateFormatWithoutCommas", Copy);
      CFRelease(Copy);
      key = v69;
      v33 = v70;
      if (v14)
      {
        CFDictionarySetValue(__LocaleDateFormats, @"UINoAMPMTimeFormat", v70);
        Value = CFDictionaryGetValue(__LocaleDateFormats, @"UIMinutelessTimeFormat");
        CFDictionarySetValue(__LocaleDateFormats, @"UIHourFormat", Value);
      }

      else
      {
        v35 = _StripAMPMAndCopy(v70);
        CFDictionarySetValue(__LocaleDateFormats, @"UINoAMPMTimeFormat", v35);
        CFRelease(v35);
        v36 = CFDictionaryGetValue(__LocaleDateFormats, @"UIMinutelessTimeFormat");
        v37 = _StripAMPMAndCopy(v36);
        CFDictionarySetValue(__LocaleDateFormats, @"UIHourFormat", v37);
        CFRelease(v37);
      }

      CFDictionarySetValue(__LocaleDateFormats, @"UINotesFormatWithYear", v18);
      v38 = MEMORY[0x18CFE4780](a1);
      v39 = _UIKitBundle();
      v40 = [v39 pathForResource:v38 ofType:@"plist" inDirectory:@"DateFormats"];
      if (!v40)
      {
        v64 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
        [v64 setObject:CFLocaleGetValue(a1 forKey:{*MEMORY[0x1E695E6F0]), *MEMORY[0x1E695D9B0]}];
        v65 = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F8]);
        if (v65)
        {
          [v64 setObject:v65 forKey:*MEMORY[0x1E695D9E8]];
        }

        v66 = CFLocaleGetValue(a1, *MEMORY[0x1E695E6D0]);
        v67 = MEMORY[0x1E695D978];
        if (v66)
        {
          [v64 setObject:v66 forKey:*MEMORY[0x1E695D978]];
        }

        v68 = CFLocaleGetValue(a1, *MEMORY[0x1E695E6C0]);
        if (v68)
        {
          [v64 setObject:v68 forKey:@"calendar"];
        }

        v40 = [v39 pathForResource:objc_msgSend(MEMORY[0x1E695DF58] ofType:"localeIdentifierFromComponents:" inDirectory:{v64, v69), @"plist", @"DateFormats"}];
        if (v66 && !v40)
        {
          [v64 removeObjectForKey:*v67];
          v40 = [v39 pathForResource:objc_msgSend(MEMORY[0x1E695DF58] ofType:"localeIdentifierFromComponents:" inDirectory:{v64), @"plist", @"DateFormats"}];
        }

        if (v68)
        {
          v33 = v70;
          if (!v40)
          {
            [v64 removeObjectForKey:@"calendar"];
            if (v66)
            {
              [v64 setObject:v66 forKey:*v67];
            }

            v40 = [v39 pathForResource:objc_msgSend(MEMORY[0x1E695DF58] ofType:"localeIdentifierFromComponents:" inDirectory:{v64), @"plist", @"DateFormats"}];
            if (v66 && !v40)
            {
              [v64 removeObjectForKey:*v67];
              v40 = [v39 pathForResource:objc_msgSend(MEMORY[0x1E695DF58] ofType:"localeIdentifierFromComponents:" inDirectory:{v64), @"plist", @"DateFormats"}];
            }
          }
        }

        else
        {
          v33 = v70;
        }
      }

      v41 = v40;
      v42 = MEMORY[0x1E695E890];
      if (v41)
      {
        v43 = v41;
        v44 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v41];
        if (v44)
        {
          v45 = v44;
          CFDictionaryApplyFunction(v44, _AddOverrideToFormatsDictionary, __LocaleDateFormats);
          CFRelease(v45);
        }

        CFRelease(v43);
      }

      v46 = CFDictionaryGetValue(__LocaleDateFormats, @"UIAbbreviatedMonthDayFormat");
      if (v46)
      {
        v47 = v46;
        v48 = CFStringGetLength(v46);
        v49 = CFStringCreateMutableCopy(0, v48, v47);
        CFStringAppend(v49, @"   ");
        CFStringAppend(v49, v33);
        CFDictionarySetValue(__LocaleDateFormats, @"UINotesDisplayFormat", v49);
        CFRelease(v49);
      }

      v50 = CFDictionaryGetValue(__LocaleDateFormats, @"UINotesFormatWithYear");
      if (v50)
      {
        v51 = v50;
        v52 = CFStringGetLength(v50);
        v53 = CFStringCreateMutableCopy(0, v52, v51);
        CFStringAppend(v53, @"   ");
        CFStringAppend(v53, v33);
        CFDictionarySetValue(__LocaleDateFormats, @"UINotesDisplayFormatWithYear", v53);
        CFRelease(v53);
      }

      CFRelease(v18);
      CFRelease(v33);
      v54 = _CreateVersionString();
      if (v54)
      {
        v55 = v54;
        v56 = *v42;
        v57 = CFPreferencesCopyAppValue(@"AppleICUForce24HourTime", *v42);
        if (v57)
        {
          v58 = v57;
          CFDictionaryAddValue(__LocaleDateFormats, @"AppleICUForce24HourTime", v57);
          CFRelease(v58);
        }

        v59 = CFPreferencesCopyAppValue(@"AppleICUForce12HourTime", v56);
        if (v59)
        {
          v60 = v59;
          CFDictionaryAddValue(__LocaleDateFormats, @"AppleICUForce12HourTime", v59);
          CFRelease(v60);
        }

        v61 = __LocaleDateFormats;
        v62 = MEMORY[0x18CFE4780](a1);
        CFDictionaryAddValue(v61, @"Locale", v62);
        CFDictionaryAddValue(__LocaleDateFormats, @"Version", v55);
        [objc_msgSend(MEMORY[0x1E696AE40] dataWithPropertyList:__LocaleDateFormats format:200 options:0 error:{0), "writeToFile:options:error:", objc_msgSend(CPSharedResourcesDirectory(), "stringByAppendingPathComponent:", @"Library/Caches/DateFormats.plist", 1, 0}];
        CFRelease(v55);
      }

      v4 = __LocaleDateFormats;
    }
  }

  return CFDictionaryGetValue(v4, key);
}

void _RegisterForLocaleChangeNotificationIfNecessary()
{
  if ((_RegisterForLocaleChangeNotificationIfNecessary___registeredForLocaleWillChange & 1) == 0)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, 0, _LocaleWillChangeCallback, @"kCFLocaleCurrentLocaleDidChangeNotification-2", 0, CFNotificationSuspensionBehaviorDrop);
    _RegisterForLocaleChangeNotificationIfNecessary___registeredForLocaleWillChange = 1;
  }
}

CFStringRef _CreateVersionString()
{
  v3 = *MEMORY[0x1E69E9840];
  *versionArray = 0;
  ulocdata_getCLDRVersion();
  u_versionToString(versionArray, versionString);
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d-%s", 6, versionString);
}

BOOL _CachedValueIsEqualToExpectedValue(const __CFDictionary *a1, const void *a2, unint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  v5 = Value;
  return a3 && Value && CFEqual(Value, a3) || (a3 | v5) == 0;
}

CFStringRef _StripAMPMAndCopy(CFStringRef theString)
{
  Copy = theString;
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v6.length = CFStringGetLength(MutableCopy);
  v6.location = 0;
  v3 = CFStringFindAndReplace(MutableCopy, @"a ", &stru_1EFB14550, v6, 0);
  v7.length = CFStringGetLength(MutableCopy);
  v7.location = 0;
  v4 = CFStringFindAndReplace(MutableCopy, @" a", &stru_1EFB14550, v7, 0) + v3;
  v8.length = CFStringGetLength(MutableCopy);
  v8.location = 0;
  if (v4 + CFStringFindAndReplace(MutableCopy, @"a", &stru_1EFB14550, v8, 0) < 1)
  {
    CFRetain(Copy);
  }

  else
  {
    Copy = CFStringCreateCopy(0, MutableCopy);
  }

  CFRelease(MutableCopy);
  return Copy;
}

const void *UIDateFormatStringForFormatType(void *a1)
{
  v2 = CFLocaleCopyCurrent();
  v3 = UIDateFormatStringForFormatTypeForLocale(v2, a1);
  CFRelease(v2);
  return v3;
}

Class __getLNUserActivityHelperClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A2400)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AppIntentsLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7127A80;
    v8 = 0;
    qword_1ED4A2400 = _sl_dlopen();
  }

  if (!qword_1ED4A2400)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppIntentsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIActivityContinuationManager.m" lineNumber:32 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("LNUserActivityHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNUserActivityHelperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIActivityContinuationManager.m" lineNumber:33 description:{@"Unable to find class %s", "LNUserActivityHelper"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1337 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppIntentsLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED4A2400 = result;
  return result;
}

void sub_18A220DC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void ___isDraggingSystemConnection_block_invoke()
{
  if ([UIApp isFrontBoard])
  {
    _MergedGlobals_1338 = 1;
  }

  else
  {
    v0 = [_UIDraggingSystemConnectionEntitlement copy];
    _MergedGlobals_1338 = UISelfHasEntitlement(v0);
  }
}

id UIDebuggingViewControllerAtTopLevel(void *a1, objc_class *a2)
{
  v3 = a1;
  v4 = +[UIDebuggingInformationOverlay overlay];
  v5 = [v4 rootTableViewController];
  v6 = [v5 topLevelViewControllerForName:v3];
  if (!v6)
  {
    v6 = objc_alloc_init(a2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 addTopLevelViewController:v6 forName:v3];
      [v6 setTitle:v3];
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

void registerTouchObserver(void *a1)
{
  v1 = a1;
  v3 = +[UIDebuggingInformationOverlay overlay];
  v2 = [v3 touchObservers];
  [v2 addObject:v1];
}

void sub_18A228518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_18A22B964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A22BBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _shortCandidateDescr(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = MEMORY[0x1E696AD98];
  v3 = a1;
  v4 = [v3 candidate];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
  v6 = MEMORY[0x1E696AD98];
  v7 = [v3 input];

  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
  v9 = [v1 stringWithFormat:@"Predicted %@ characters based on %@ characters", v5, v8];

  return v9;
}

id _shortCompletionDescr(void *a1)
{
  v1 = [a1 completion];
  v2 = _shortCandidateDescr(v1);

  return v2;
}

BOOL _outputIsSimpleDeletion(void *a1)
{
  v1 = a1;
  v2 = [v1 insertionText];
  v3 = [v2 length];
  v5 = !v3 && ![v1 forwardDeletionCount] && (objc_msgSend(v1, "acceptedCandidate"), v4 = ;
  return v5;
}

void sub_18A233DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A2390C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _UIPFloat(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = +[_UIPrototypingSettingsManager sharedManager];
  v11 = [v10 settingOfType:1 withName:v9];

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [v11 setMinimumValue:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v11 setMaximumValue:v13];

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v11 setDefaultValue:v14];

  v15 = -a5;
  if (a5 >= 0.0)
  {
    v15 = a5;
  }

  [v11 setStepSize:v15];
  v16 = [v11 currentValue];
  [v16 floatValue];
  v18 = v17;

  return v18;
}

uint64_t _UIPBool(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[_UIPrototypingSettingsManager sharedManager];
  v5 = [v4 settingOfType:2 withName:v3];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v5 setDefaultValue:v6];

  v7 = [v5 currentValue];
  v8 = [v7 BOOLValue];

  return v8;
}

uint64_t _UIPInt(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a1;
  v10 = +[_UIPrototypingSettingsManager sharedManager];
  v11 = [v10 settingOfType:0 withName:v9];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v11 setMinimumValue:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v11 setMaximumValue:v13];

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v11 setDefaultValue:v14];

  [v11 setStepSize:a5];
  v15 = [v11 currentValue];
  v16 = [v15 integerValue];

  return v16;
}

void sub_18A2469A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A24BBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A24BF9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18A24E480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A250B54(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

id _UICatalystFaultLog()
{
  if (qword_1ED4A2538 != -1)
  {
    dispatch_once(&qword_1ED4A2538, &__block_literal_global_643);
  }

  v1 = _MergedGlobals_1344;

  return v1;
}

void __UILogSyncCategories()
{
  os_unfair_lock_lock(&_MergedGlobals_1345);
  for (i = qword_1ED4A2548; i; i = *(i + 32))
  {
    v1 = *i;
    v2 = *(i + 8);
    v3 = [*(i + 16) objectForKey:*(i + 24)];
    __updateCategoryFlagValueLocked(v1, v2, v3);
  }

  os_unfair_lock_unlock(&_MergedGlobals_1345);
}

NSObject *__UILogRegulatoryLog(_BYTE *__s2)
{
  if (qword_1ED4A2558 != -1)
  {
    dispatch_once(&qword_1ED4A2558, &__block_literal_global_644);
  }

  if (!qword_1ED4A2550)
  {
    return 0;
  }

  v2 = *(__UILogCategoryGetNode(__s2, qword_1ED4A2550, __UILogRegulatoryCategoryNewNode) - 8);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    return 0;
  }

  return v2;
}

char *__UILogRegulatoryCategoryNewNode(const char *a1)
{
  v2 = (g_UILogCategoriesAllocator_1 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 < g_UILogCategoriesAllocator_1 || v2 > 0x26E0)
  {
    v4 = malloc_type_malloc(0x2800uLL, 0x100004077774924uLL);
    v2 = 0;
    qword_1ED4A2560 = v4;
  }

  else
  {
    v4 = qword_1ED4A2560;
  }

  g_UILogCategoriesAllocator_1 = v2 + 288;
  v5 = &v4[v2];
  *(v5 + 1) = os_log_create("com.apple.greentea", a1);
  *(v5 + 1) = 0;
  *v5 = 0;
  return v5 + 16;
}

uint64_t _UIApplicationHasAppLinkEntitlements()
{
  if (qword_1ED4A2578 != -1)
  {
    dispatch_once(&qword_1ED4A2578, &__block_literal_global_645);
  }

  return _MergedGlobals_1346;
}

id _UIAppLinkForURL(void *a1)
{
  v1 = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__226;
  v14 = __Block_byref_object_dispose__226;
  v15 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x1E69635C0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UIAppLinkForURL_block_invoke;
  v7[3] = &unk_1E7127F88;
  v9 = &v10;
  v4 = v2;
  v8 = v4;
  [v3 getAppLinkWithURL:v1 completionHandler:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void sub_18A253BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *currentUpdateInfo()
{
  if (_UIUpdateCycleMainScheduler && *(_UIUpdateCycleMainScheduler + 568) == 1)
  {
    v0 = [[UIUpdateInfo alloc] initWithUpdateParameters:?];
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

double _UIClassicControllerScaleFactorForZoomedIn(double a1, double a2)
{
  v4 = [objc_opt_self() mainScreen];
  [v4 _unjailedReferenceBounds];
  v6 = v5;
  v8 = v7;

  v9 = [objc_opt_self() mainScreen];
  v10 = v9;
  if (v6 / a1 <= v8 / a2)
  {
    v11 = v6 / a1;
  }

  else
  {
    v11 = v8 / a2;
  }

  _UIAdditionalScaleFactorForClassicPresentationWithHomeAffordance(v9);
  v13 = v11 * v12;

  v15.origin.y = v8 + -72.0;
  v16.size.width = a1 * v13;
  v16.size.height = a2 * v13;
  v16.origin.y = round(v8 * 0.5 - a2 * v13 * 0.5);
  v16.origin.x = round(v6 * 0.5 - a1 * v13 * 0.5);
  v15.size.width = 72.0;
  v15.origin.x = 0.0;
  v15.size.height = 72.0;
  if (CGRectIntersectsRect(v15, v16))
  {
    if ((v6 + -144.0) / a1 <= (v8 + -144.0) / a2)
    {
      return (v6 + -144.0) / a1;
    }

    else
    {
      return (v8 + -144.0) / a2;
    }
  }

  return v13;
}

double _UIClassicControllerStatusBarInsetsForPadOnRoundedPad(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 && !UIApplicationSceneClassicModeExpectsRoundedCorners(a2) && UIApplicationSceneClassicModeRepresentsPad(a2))
  {
    [v3 _displayCornerRadius];
    v6 = 0.0;
    if (v7 > 0.0)
    {
      +[UIStatusBar _roundedPadEdgeInsets];
      +[UIStatusBar _regularPadEdgeInsets];
      +[UIStatusBar _regularPadBaselineOffset];
      v9 = v8;
      +[UIStatusBar _roundedPadBaselineOffset];
      v6 = v9 - v10;
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

id UIArrayByKeepingObjectsInSet(void *a1, void *a2)
{
  v3 = a1;
  v16 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([a2 containsObject:v9])
          {
            [v4 addObject:v9];
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    return v4;
  }

  return v3;
}

void sub_18A2554E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _buttonTapStatisticWithSuffix_SubclassName()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = [_UIStatistics controlTapCountWithCategory:@"button" suffix:v1];

  return v2;
}

id _controlTapStatisticWithSuffix_SubclassName()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = [_UIStatistics controlTapCountWithCategory:@"control" suffix:v1];

  return v2;
}

id _controlValueChangeStatisticWithSuffix_SubclassName()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = [_UIStatistics controlValueChangeEmittedCountWithCategory:@"control" suffix:v1];

  return v2;
}

id _sliderInteractionDurationStatisticWithSuffix_SubclassName()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = [_UIStatistics controlInteractionDurationDistributionWithCategory:@"slider" suffix:v1];

  return v2;
}

void _UIFocusSystemAssertIfNotSafari()
{
  if (qword_1ED4A2598 != -1)
  {
    dispatch_once(&qword_1ED4A2598, &__block_literal_global_646);
  }

  if ((_MergedGlobals_1348 & 1) == 0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIFocusSystemAssertIfNotSafari(void)"];
    [v1 handleFailureInFunction:v0 file:@"UIFocusSystem_SafariOnly.m" lineNumber:32 description:@"You are calling out to a method prefixed with '_safari_' but it looks like you are not Safari. I mean... what did you expect to happen?"];
  }
}

void UIKVCAccessProhibited(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Access to %@'s %@ ivar is prohibited. This is an application bug", a2, a1}];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    if (qword_1ED4A25B8 != -1)
    {
      dispatch_once(&qword_1ED4A25B8, &__block_literal_global_647);
    }

    v5 = qword_1ED4A25B0;
    if (os_log_type_enabled(qword_1ED4A25B0, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v7 = a2;
      v8 = 2112;
      v9 = a1;
      _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Access to %@'s %@ ivar is prohibited. This is an application bug and will become a hard crash in a future release", buf, 0x16u);
    }
  }

  else
  {
    v4 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1349) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v7 = a2;
      v8 = 2112;
      v9 = a1;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Access to %@'s %@ ivar is prohibited. This is an application bug and will become a hard crash in a future release", buf, 0x16u);
    }
  }
}

__CFString *_UIDebugRelationshipBetween(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = @"One of the objects is nil.";
  if (!a1)
  {
    return v3;
  }

  v4 = a2;
  if (!a2)
  {
    return v3;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return @"Both specified objects are the same";
  }

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = 1;
  v11 = 1;
  v3 = @"No relationship found between the objects.";
  while (!v11)
  {
    v5 = 0;
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_8:
    v4 = 0;
LABEL_12:
    v11 = v5 != 0;
    v10 = v4 != 0;
    if (!(v5 | v4))
    {
      return v3;
    }
  }

  [v8 addObject:v5];
  if ([v7 containsObject:v5])
  {
    v13 = [v9 subarrayWithRange:{0, objc_msgSend(v9, "indexOfObject:", v5) + 1}];
    v14 = v8;
    goto LABEL_18;
  }

  [v7 addObject:v5];
  v5 = a3(v5);
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_10:
  [v9 addObject:v4];
  if (![v7 containsObject:v4])
  {
    [v7 addObject:v4];
    v4 = a3(v4);
    goto LABEL_12;
  }

  v14 = [v8 subarrayWithRange:{0, objc_msgSend(v8, "indexOfObject:", v4) + 1}];
  v13 = v9;
LABEL_18:

  return ___UIDebugRelationshipBetween_block_invoke(v14, v13);
}

uint64_t RELATIONSHIP_FOCUS(void *a1)
{
  if (![a1 conformsToProtocol:&unk_1EFE40A90])
  {
    return 0;
  }

  return [a1 parentFocusEnvironment];
}

id RELATIONSHIP_VIEW_AND_VIEWCONTROLLER(void *a1)
{
  if (_IsKindOfUIView(a1))
  {
    result = [UIViewController viewControllerForView:a1];
    if (!result)
    {

      return [a1 superview];
    }
  }

  else if ([a1 __isKindOfUIViewController])
  {
    result = [a1 parentViewController];
    if (!result)
    {

      return [a1 presentingViewController];
    }
  }

  else
  {
    return 0;
  }

  return result;
}

void __UIKIT_SOFT_ASSERT_FAIL(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1ED4A25B8 != -1)
    {
      dispatch_once(&qword_1ED4A25B8, &__block_literal_global_647);
    }

    v3 = qword_1ED4A25B0;
    if (os_log_type_enabled(qword_1ED4A25B0, OS_LOG_TYPE_FAULT))
    {
      v4 = 138412290;
      v5 = a1;
      _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "%@", &v4, 0xCu);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A25A8) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = a1;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "%@", &v4, 0xCu);
    }
  }
}

__CFString *_UIDebugObjectTypeDescription(const char *a1)
{
  v2 = *a1;
  if (v2 <= 0x5A)
  {
    if (*a1 > 0x41u)
    {
      if (*a1 <= 0x48u)
      {
        if (v2 == 66)
        {
          if (a1[1])
          {
            goto LABEL_80;
          }

          return @"BOOL";
        }

        else
        {
          if (v2 != 67 || a1[1])
          {
            goto LABEL_80;
          }

          return @"unsigned char";
        }
      }

      else if (v2 == 73)
      {
        if (a1[1])
        {
          goto LABEL_80;
        }

        return @"unsigned int";
      }

      else if (v2 == 81)
      {
        if (a1[1])
        {
          goto LABEL_80;
        }

        return @"unsigned long";
      }

      else
      {
        if (v2 != 83 || a1[1])
        {
          goto LABEL_80;
        }

        return @"unsigned short";
      }
    }

    if (*a1 > 0x29u)
    {
      switch(v2)
      {
        case '*':
          if (a1[1])
          {
            goto LABEL_80;
          }

          return @"char*";
        case ':':
          if (a1[1])
          {
            goto LABEL_80;
          }

          return @"SEL";
        case '@':
          if (a1[1])
          {
            if (a1[1] != 63 || a1[2])
            {
              if (strlen(a1) >= 4)
              {
                v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 2 length:strlen(a1) - 3 encoding:1];
                v4 = MEMORY[0x1E696AEC0];
                v21 = v3;
                v5 = @"%@*";
                return [v4 stringWithFormat:v5, v21, v22];
              }

LABEL_80:
              if (strlen(a1) >= 2)
              {
                if (v2 <= 85)
                {
                  switch(v2)
                  {
                    case 'N':
                      v19 = @"inout";
                      goto LABEL_98;
                    case 'O':
                      v19 = @"bycopy";
                      goto LABEL_98;
                    case 'R':
                      v19 = @"byref";
                      goto LABEL_98;
                  }
                }

                else if (v2 > 110)
                {
                  if (v2 == 111)
                  {
                    v19 = @"out";
                    goto LABEL_98;
                  }

                  if (v2 == 114)
                  {
                    v19 = @"const";
                    goto LABEL_98;
                  }
                }

                else
                {
                  if (v2 == 86)
                  {
                    v19 = @"oneway";
                    goto LABEL_98;
                  }

                  if (v2 == 110)
                  {
                    v19 = @"in";
LABEL_98:
                    v20 = _UIDebugObjectTypeDescription(a1 + 1);
                    v4 = MEMORY[0x1E696AEC0];
                    v21 = v19;
                    v22 = v20;
LABEL_99:
                    v5 = @"%@ %@";
                    return [v4 stringWithFormat:v5, v21, v22];
                  }
                }
              }

              return [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", a1, v22];
            }

            return @"^block";
          }

          else
          {
            return @"id";
          }

        default:
          goto LABEL_80;
      }
    }

    if (v2 != 35)
    {
      if (v2 != 40)
      {
        goto LABEL_80;
      }

LABEL_32:
      if (strlen(a1) < 4)
      {
        goto LABEL_80;
      }

      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 1 length:strlen(a1) - 2 encoding:1];
      v7 = [v6 componentsSeparatedByString:@"="];
      if ([v7 count] >= 2)
      {
        v8 = [v7 objectAtIndex:0];
        v4 = MEMORY[0x1E696AEC0];
        if (*a1 == 123)
        {
          v9 = @"struct";
        }

        else
        {
          v9 = @"union";
        }

        v21 = v9;
        v22 = v8;
        goto LABEL_99;
      }

      return v6;
    }

    if (a1[1])
    {
      goto LABEL_80;
    }

    return @"Class";
  }

  if (*a1 > 0x68u)
  {
    if (*a1 <= 0x72u)
    {
      if (v2 == 105)
      {
        if (a1[1])
        {
          goto LABEL_80;
        }

        return @"int";
      }

      else
      {
        if (v2 != 113 || a1[1])
        {
          goto LABEL_80;
        }

        return @"long";
      }
    }

    switch(v2)
    {
      case 's':
        if (a1[1])
        {
          goto LABEL_80;
        }

        return @"short";
      case 'v':
        if (a1[1])
        {
          goto LABEL_80;
        }

        return @"void";
      case '{':
        goto LABEL_32;
      default:
        goto LABEL_80;
    }
  }

  if (*a1 > 0x62u)
  {
    if (v2 == 99)
    {
      if (a1[1])
      {
        goto LABEL_80;
      }

      return @"char";
    }

    else if (v2 == 100)
    {
      if (a1[1])
      {
        goto LABEL_80;
      }

      return @"double";
    }

    else
    {
      if (v2 != 102 || a1[1])
      {
        goto LABEL_80;
      }

      return @"float";
    }
  }

  if (v2 != 91)
  {
    if (v2 != 94)
    {
      goto LABEL_80;
    }

    if (a1[1] != 118 || a1[2])
    {
      if (strlen(a1) > 1)
      {
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@*", _UIDebugObjectTypeDescription(a1 + 1), v22];
      }

      goto LABEL_80;
    }

    return @"void*";
  }

  v11 = strlen(a1);
  if (v11 < 4)
  {
    goto LABEL_80;
  }

  v12 = 1;
  v13 = malloc_type_calloc(1uLL, v11 + 1, 0xC508D464uLL);
  do
  {
    v14 = a1[v12++] - 48;
  }

  while (v14 < 0xA);
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 1 length:v12 - 2 encoding:1];
  v16 = strlen(a1);
  v17 = strncpy(v13, &a1[v12 - 1], v16 - v12);
  v18 = _UIDebugObjectTypeDescription(v17);
  free(v13);
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%@]", v18, v15];
}

__CFString *_UIDebugIvarValue(__CFString *a1, char *__s, int a3)
{
  v6 = strlen(__s);
  v7 = malloc_type_calloc(v6 + 1, 1uLL, 0x16AD7782uLL);
  v8 = v7;
  v9 = 0;
  v10 = __s;
  v11 = v7;
  while (1)
  {
    v12 = *v10;
    if (v12 == 34)
    {
      v9 ^= 1u;
      goto LABEL_8;
    }

    if (!*v10)
    {
      break;
    }

    if (v9)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0;
      *v11++ = v12;
    }

LABEL_8:
    ++v10;
  }

  v13 = *__s;
  if (v13 != 64)
  {
    if (!strcmp(v7, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
    {
      [objc_msgSend(MEMORY[0x1E696B098] valueWithBytes:a1 objCType:{__s), "CGRectValue"}];
      v17 = NSStringFromRect(v35);
      goto LABEL_56;
    }

    if (!strcmp(v8, "{CGPoint=dd}"))
    {
      [objc_msgSend(MEMORY[0x1E696B098] valueWithBytes:a1 objCType:{__s), "CGPointValue"}];
      v17 = NSStringFromPoint(v33);
      goto LABEL_56;
    }

    if (!strcmp(v8, "{CGSize=dd}"))
    {
      [objc_msgSend(MEMORY[0x1E696B098] valueWithBytes:a1 objCType:{__s), "CGSizeValue"}];
      v17 = NSStringFromSize(v34);
      goto LABEL_56;
    }

    if (!strcmp(v8, "{_NSRange=QQ}"))
    {
      v32.location = [objc_msgSend(MEMORY[0x1E696B098] valueWithBytes:a1 objCType:{__s), "rangeValue"}];
      v17 = NSStringFromRange(v32);
      goto LABEL_56;
    }

    if (!strcmp(v8, "{UIEdgeInsets=dddd}"))
    {
      [objc_msgSend(MEMORY[0x1E696B098] valueWithBytes:a1 objCType:{__s), "UIEdgeInsetsValue"}];
      v17 = NSStringFromUIEdgeInsets(v36);
      goto LABEL_56;
    }

    if (*v8 == 94 && v8[1] == 118 && !v8[2])
    {
      v14 = MEMORY[0x1E696AEC0];
      isa = a1->isa;
      goto LABEL_12;
    }

    if (v13 > 97)
    {
      if (v13 > 104)
      {
        if (v13 > 112)
        {
          if (v13 == 113)
          {
            v17 = [MEMORY[0x1E696AD98] numberWithLongLong:a1->isa];
            goto LABEL_56;
          }

          if (v13 == 123)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v13 == 105)
          {
            v17 = [MEMORY[0x1E696AD98] numberWithInt:LODWORD(a1->isa)];
            goto LABEL_56;
          }

          if (v13 == 108)
          {
            v17 = [MEMORY[0x1E696AD98] numberWithLong:a1->isa];
            goto LABEL_56;
          }
        }
      }

      else if (v13 > 99)
      {
        if (v13 == 100)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:*&a1->isa];
          goto LABEL_56;
        }

        if (v13 == 102)
        {
          LODWORD(v16) = a1->isa;
          v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
          goto LABEL_56;
        }
      }

      else
      {
        if (v13 != 98)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithChar:SLOBYTE(a1->isa)];
          goto LABEL_56;
        }

        a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i (?)", a1->isa & ~(-1 << atoi(__s + 1))];
        if (a1)
        {
          goto LABEL_57;
        }
      }
    }

    else if (v13 > 72)
    {
      if (v13 > 80)
      {
        if (v13 == 81)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1->isa];
          goto LABEL_56;
        }

        if (v13 == 94)
        {
          v14 = MEMORY[0x1E696AEC0];
          if (!a3)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p -> %p", a1, a1->isa, v30, v31];
            goto LABEL_56;
          }

          goto LABEL_11;
        }
      }

      else
      {
        if (v13 == 73)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(a1->isa)];
          goto LABEL_56;
        }

        if (v13 == 76)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a1->isa];
          goto LABEL_56;
        }
      }
    }

    else
    {
      if (v13 <= 57)
      {
        if (v13 != 35)
        {
          if (v13 != 40)
          {
            goto LABEL_88;
          }

LABEL_81:
          if ((a3 & 1) == 0)
          {
            v17 = _UIKitStructDescription(a1, __s);
            goto LABEL_56;
          }

          a1 = @"unknown";
          goto LABEL_57;
        }

        if (!a3)
        {
          goto LABEL_57;
        }

        goto LABEL_92;
      }

      if (v13 == 58)
      {
        if (!a3)
        {
          v17 = NSStringFromSelector(a1->isa);
          goto LABEL_56;
        }

LABEL_92:
        v14 = MEMORY[0x1E696AEC0];
LABEL_11:
        isa = a1;
LABEL_12:
        v15 = @"%p";
LABEL_55:
        v17 = [v14 stringWithFormat:v15, isa, v29, v30, v31];
        goto LABEL_56;
      }

      if (v13 == 66)
      {
        if (LOBYTE(a1->isa))
        {
          a1 = @"YES";
        }

        else
        {
          a1 = @"NO";
        }

        goto LABEL_57;
      }
    }

LABEL_88:
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value not representable, %s", v8, v29, v30, v31];
    goto LABEL_56;
  }

  a1 = a1->isa;
  v14 = MEMORY[0x1E696AEC0];
  if (a3)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@%@", a1, v29, v30, v31];
    goto LABEL_56;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@%@", a1, v29, v30, v31];
      goto LABEL_56;
    }

    if (a1)
    {
      v17 = ([MEMORY[0x1E69E58C0] instanceMethodForSelector:sel_description])(a1, sel_description);
      goto LABEL_56;
    }

    a1 = @"nil";
    goto LABEL_57;
  }

  v18 = MEMORY[0x18CFE8480](a1);
  v19 = _CFURLPromiseCopyPhysicalURL();
  v20 = MEMORY[0x18CFE8480]();
  if (v19)
  {
    v21 = v20;
    if (([v19 isEqual:a1] & 1) == 0)
    {
      v23 = MEMORY[0x1E696AEC0];
      if (v18)
      {
        v24 = @"s";
      }

      else
      {
        v24 = @"n";
      }

      v25 = [v19 lastPathComponent];
      if (v21)
      {
        v26 = @"s";
      }

      else
      {
        v26 = @"n";
      }

      v30 = v25;
      v31 = v26;
      isa = a1;
      v29 = v24;
      v15 = @"%@, %@ -> %@, %@";
      v14 = v23;
      goto LABEL_55;
    }
  }

  v22 = @"s";
  if (!v18)
  {
    v22 = @"n";
  }

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", a1, v22, v30, v31];
LABEL_56:
  a1 = v17;
LABEL_57:
  free(v8);
  return a1;
}

void *_UIKitStructDescription(_DWORD *a1, char *__s1)
{
  v4 = strdup(__s1);
  v5 = *__s1;
  v6 = @"{";
  if (v5 == 40)
  {
    v6 = CFSTR("(values are interpreted) (");
  }

  v33 = v4;
  v7 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@\n", v6];
  v4[strlen(v4) - 1] = 0;
  do
  {
    v8 = *v4++;
  }

  while (v8 != 61);
  [MEMORY[0x1E695DF90] dictionary];
  v9 = 0;
  do
  {
    while (1)
    {
      v10 = (*v4 == 34 ? v4 + 1 : v4);
      v11 = v10 + 3;
      v12 = v10;
      do
      {
        v13 = v11;
        v14 = *v12++;
        ++v11;
      }

      while (v14 != 34);
      v15 = 0;
      *(v12 - 1) = 0;
      v16 = v12;
      do
      {
        v4 = v13;
        v17 = *v16;
        if (v17 == 40 || v17 == 123 || v17 == 91)
        {
          ++v15;
        }

        if (v17 == 41 || v17 == 125 || v17 == 93)
        {
          --v15;
        }

        ++v16;
        v13 = v4 + 1;
      }

      while (v15 > 0);
      while (*(v4 - 1))
      {
        if (*(v4 - 1) == 34)
        {
          *(v4 - 1) = 0;
          goto LABEL_27;
        }

        ++v4;
      }

      v4 = 0;
LABEL_27:
      if (*v12 != 98)
      {
        break;
      }

      v18 = atoi(v12 + 1);
      v19 = v18;
      if ((v9 + v18) <= 0x20)
      {
        v20 = 0;
      }

      else
      {
        v9 = 0;
        v20 = 4 * (v5 != 40);
      }

      a1 = (a1 + v20);
      v21 = (*a1 >> v9) & ~(-1 << v18);
      if (v18 == 1)
      {
        v23 = v21 == 0;
        v22 = @"YES";
        if (v23)
        {
          v22 = @"NO";
        }

        [v7 appendFormat:@"\t\t%s (%s): %@\n", v10, v12, v22];
      }

      else
      {
        [v7 appendFormat:@"\t\t%s (%s): %u\n", v10, v12, v21];
      }

      v30 = v19;
      if (v5 == 40)
      {
        v30 = 0;
      }

      v9 += v30;
      if (!v4)
      {
        goto LABEL_49;
      }
    }

    alignp = 0;
    sizep = 0;
    NSGetSizeAndAlignment(v12, &sizep, &alignp);
    if (v9)
    {
      v23 = v5 == 40;
    }

    else
    {
      v23 = 1;
    }

    v24 = !v23;
    v25 = alignp;
    v26 = _UIDebugObjectTypeDescription(v12);
    v27 = &a1[v24 - 1] + v25 + 3;
    v28 = v27 & -v25;
    [v7 appendFormat:@"\t\t%s (%@): %@\n", v10, v26, _UIDebugIvarValue(v27 & -v25, v12)];
    v9 = 0;
    v29 = sizep;
    if (v5 == 40)
    {
      v29 = 0;
    }

    a1 = (v28 + v29);
  }

  while (v4);
LABEL_49:
  v31 = @"}";
  if (v5 == 40)
  {
    v31 = @"");
  }

  [v7 appendFormat:@"\t%@", v31];
  free(v33);
  return v7;
}

void sub_18A257E34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x18A257E08);
  }

  free(a12);
  objc_exception_rethrow();
}

void *_UIKitPropertyDescription(objc_property *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"@property "];
  v3 = [MEMORY[0x1E695DF70] array];
  outCount = 0;
  v4 = property_copyAttributeList(a1, &outCount);
  v5 = v4;
  if (outCount)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    p_value = &v4->value;
    while (1)
    {
      v11 = *(p_value - 1);
      v12 = *v11;
      if (v12 > 0x51)
      {
        if (*v11 <= 0x53u)
        {
          if (v12 != 82)
          {
            if (v12 != 83 || v11[1])
            {
              goto LABEL_37;
            }

            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setter=%s", *p_value];
LABEL_35:
            v14 = v15;
            v13 = v3;
LABEL_36:
            [v13 addObject:v14];
            goto LABEL_37;
          }

          if (!v11[1])
          {
            v13 = v3;
            v14 = @"readonly";
            goto LABEL_36;
          }
        }

        else
        {
          if (v12 == 84)
          {
            if (!v11[1])
            {
              v9 = _UIDebugObjectTypeDescription(*p_value);
            }

            goto LABEL_37;
          }

          if (v12 == 86)
          {
            if (!v11[1])
            {
              v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*p_value];
            }

            goto LABEL_37;
          }

          if (v12 == 87 && !v11[1])
          {
            v13 = v3;
            v14 = @"weak";
            goto LABEL_36;
          }
        }
      }

      else if (*v11 <= 0x43u)
      {
        if (v12 != 38)
        {
          if (v12 != 67 || v11[1])
          {
            goto LABEL_37;
          }

          v13 = v3;
          v14 = @"copy";
          goto LABEL_36;
        }

        if (!v11[1])
        {
          v13 = v3;
          v14 = @"retain";
          goto LABEL_36;
        }
      }

      else
      {
        if (v12 == 68)
        {
          if (!v11[1])
          {
            v7 = 1;
          }

          goto LABEL_37;
        }

        if (v12 != 71)
        {
          if (v12 != 78 || v11[1])
          {
            goto LABEL_37;
          }

          v13 = v3;
          v14 = @"nonatomic";
          goto LABEL_36;
        }

        if (!v11[1])
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"getter=%s", *p_value];
          goto LABEL_35;
        }
      }

LABEL_37:
      ++v6;
      p_value += 2;
      if (v6 >= outCount)
      {
        goto LABEL_42;
      }
    }
  }

  v9 = 0;
  v8 = 0;
  v7 = 0;
LABEL_42:
  free(v5);
  if ([v3 count])
  {
    [v2 appendFormat:@"(%@) ", objc_msgSend(v3, "componentsJoinedByString:", @", ")];
  }

  [v2 appendFormat:@"%@ %s;", v9, property_getName(a1)];
  if (v8)
  {
    [v2 appendFormat:@"  (@synthesize %s = %@;)", property_getName(a1), v8];
  }

  else if (v7)
  {
    [v2 appendFormat:@"  (@dynamic %s;)", property_getName(a1), v17];
  }

  return v2;
}

void *_UIKitMethodDescription(objc_method *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = @"-";
  }

  else
  {
    v3 = @"+";
  }

  v4 = [MEMORY[0x1E696AD60] stringWithString:v3];
  v5 = method_copyReturnType(a1);
  [v4 appendFormat:@" (%@)", _UIDebugObjectTypeDescription(v5)];
  free(v5);
  Name = method_getName(a1);
  v7 = [NSStringFromSelector(Name) componentsSeparatedByString:@":"];
  v8 = [MEMORY[0x1E695DF70] array];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___UIKitMethodComponents_block_invoke;
  v20[3] = &unk_1E7128020;
  v20[5] = @":";
  v20[6] = v21;
  v20[4] = v8;
  [(NSArray *)v7 enumerateObjectsUsingBlock:v20];
  _Block_object_dispose(v21, 8);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v9)
  {
    v10 = *v17;
    v11 = 2;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v4 appendFormat:@" %@", v13];
        if ([v13 hasSuffix:@":"])
        {
          v14 = method_copyArgumentType(a1, v11);
          [v4 appendFormat:@"(%@)arg%ld", _UIDebugObjectTypeDescription(v14), v11 - 1];
          free(v14);
        }

        ++v11;
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v9);
  }

  [v4 appendFormat:@"; (%p)", method_getImplementation(a1)];
  return v4;
}

void _UIViewRecursivelyRemoveDebugColorBoundsViews(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [a1 subviews];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 removeFromSuperview];
        }

        else
        {
          _UIViewRecursivelyRemoveDebugColorBoundsViews(v6);
          v6[12] &= ~0x20000000000000uLL;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void _UIViewRecursivelySetNeedsLayout(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 setNeedsLayout];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [v1 subviews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        _UIViewRecursivelySetNeedsLayout(*(*(&v7 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_18A25BEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    if (os_variant_has_internal_diagnostics())
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v9;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Exception: %@", &a9, 0xCu);
      }
    }

    else
    {
      v10 = *(__UILogGetCategoryCachedImpl("Assert", &appendKey____s_category) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v9;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Exception: %@", &a9, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x18A25BE6CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_18A25C0B4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (os_variant_has_internal_diagnostics())
    {
      v19 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "Exception: %@", &buf, 0xCu);
      }
    }

    else
    {
      v18 = *(__UILogGetCategoryCachedImpl("Assert", &appendKeys____s_category) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Exception: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x18A25C078);
  }

  _Unwind_Resume(a1);
}

void sub_18A25C6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A25F120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t UIAuditTokenRefHasEntitlement(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698E620];
  v4 = a2;
  v5 = [v3 tokenFromAuditTokenRef:a1];
  HasEntitlement = UIAuditTokenHasEntitlement(v5, v4);

  return HasEntitlement;
}

id UIMediaFilesDirectory()
{
  v0 = UIMediaFilesDirectory___mediaFilesDirectory;
  if (!UIMediaFilesDirectory___mediaFilesDirectory)
  {
    v1 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Media"];
    v2 = UIMediaFilesDirectory___mediaFilesDirectory;
    UIMediaFilesDirectory___mediaFilesDirectory = v1;

    v0 = UIMediaFilesDirectory___mediaFilesDirectory;
  }

  return v0;
}

id _UITemporaryFileURL(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E696AD60];
  v5 = a1;
  v6 = [[v4 alloc] initWithFormat:@".%@.XXXXXX", v5];

  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:v6];

  [v8 fileSystemRepresentation];
  __strlcpy_chk();
  if (mktemp(v15))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
    v10 = [v9 mutableCopy];

    if (v3)
    {
      v11 = [MEMORY[0x1E6982C40] typeWithIdentifier:v3];
      v12 = [v11 preferredFilenameExtension];
    }

    else
    {
      v12 = 0;
    }

    if (![(__CFString *)v12 length])
    {

      v12 = @"tmp";
    }

    [v10 appendFormat:@".%@", v12];
    v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id _UITemporaryFolderURL(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@.XXXXXX", a1];
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:v1];

  [v3 getFileSystemRepresentation:v7 maxLength:1024];
  if (mkdtemp(v7))
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4 isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _UITemporaryFileWithUniqueName(void *a1, void *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v6)
  {
    v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:v6];
    v8 = [v7 preferredFilenameExtension];
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@".%@.XXXXXX", v5];
  if (![(__CFString *)v8 length])
  {

    v8 = @"tmp";
  }

  [v9 appendFormat:@".%@", v8];
  v10 = NSTemporaryDirectory();
  v11 = [v10 stringByAppendingPathComponent:v9];

  [v11 fileSystemRepresentation];
  __strlcpy_chk();
  v12 = mkstemps(v18, [(__CFString *)v8 length]+ 1);
  if (v12 == -1)
  {
    v15 = __error();
    v16 = strerror(*v15);
    NSLog(&cfstr_CouldNotCreate_1.isa, v16);
    v14 = 0;
  }

  else
  {
    v13 = v12;
    v14 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v18 isDirectory:0 relativeToURL:0];
    if (a3)
    {
      *a3 = v13;
    }

    else
    {
      close(v13);
    }
  }

  return v14;
}

uint64_t _UICloneFile(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 path];
  v5 = [v4 fileSystemRepresentation];
  v6 = [v3 path];

  v7 = copyfile(v5, [v6 fileSystemRepresentation], 0, 0x10C800Fu);
  return v7;
}

id _UIFirstTypeIdentifierEligibleForMassStorage(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (qword_1ED4A25E0 != -1)
  {
    dispatch_once(&qword_1ED4A25E0, &__block_literal_global_650);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    v6 = 0x1E6982000uLL;
    v7 = &unk_1ED4A2000;
    v19 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v10 = [*(v6 + 3136) _typeWithIdentifier:v9 allowUndeclared:1];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = v7;
        v12 = v7[187];
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([v10 conformsToType:*(*(&v20 + 1) + 8 * i)])
              {
                v17 = v9;

                goto LABEL_21;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        ++v8;
        v6 = 0x1E6982000;
        v5 = v19;
        v7 = v11;
      }

      while (v8 != v4);
      v4 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v17 = 0;
    }

    while (v4);
  }

  else
  {
    v17 = 0;
  }

LABEL_21:

  return v17;
}

id _UINavigationTitleAppearanceDefaultSubtitleTextAttributesWithProvider(void *a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSAttributedStringKey, id> *_UINavigationTitleAppearanceDefaultSubtitleTextAttributesWithProvider(_UINavigationBarTitleFontProvider *__strong)"}];
    [v7 handleFailureInFunction:v8 file:@"_UINavTitleAppearanceData.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"provider != nil"}];
  }

  v2 = [v1 defaultSubtitleFont];
  if (!v2)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSAttributedStringKey, id> *_UINavigationTitleAppearanceDefaultSubtitleTextAttributesWithProvider(_UINavigationBarTitleFontProvider *__strong)"}];
    [v9 handleFailureInFunction:v10 file:@"_UINavTitleAppearanceData.m" lineNumber:376 description:{@"UIKit internal bug: Received nil font from provider %@", v1}];
  }

  v3 = [v1 defaultSubtitleColor];
  if (!v3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSAttributedStringKey, id> *_UINavigationTitleAppearanceDefaultSubtitleTextAttributesWithProvider(_UINavigationBarTitleFontProvider *__strong)"}];
    [v11 handleFailureInFunction:v12 file:@"_UINavTitleAppearanceData.m" lineNumber:379 description:{@"UIKit internal bug: Received nil font from provider %@", v1}];
  }

  v4 = *off_1E70EC920;
  v13[0] = *off_1E70EC918;
  v13[1] = v4;
  v14[0] = v2;
  v14[1] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v5;
}

id _UINavigationTitleAppearanceDefaultLargeSubtitleTextAttributesWithProvider(void *a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSAttributedStringKey, id> *_UINavigationTitleAppearanceDefaultLargeSubtitleTextAttributesWithProvider(_UINavigationBarTitleFontProvider *__strong)"}];
    [v7 handleFailureInFunction:v8 file:@"_UINavTitleAppearanceData.m" lineNumber:394 description:{@"Invalid parameter not satisfying: %@", @"provider != nil"}];
  }

  v2 = [v1 defaultLargeSubtitleFont];
  if (!v2)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSAttributedStringKey, id> *_UINavigationTitleAppearanceDefaultLargeSubtitleTextAttributesWithProvider(_UINavigationBarTitleFontProvider *__strong)"}];
    [v9 handleFailureInFunction:v10 file:@"_UINavTitleAppearanceData.m" lineNumber:397 description:{@"UIKit internal bug: Received nil font from provider %@", v1}];
  }

  v3 = [v1 defaultLargeSubtitleColor];
  if (!v3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSAttributedStringKey, id> *_UINavigationTitleAppearanceDefaultLargeSubtitleTextAttributesWithProvider(_UINavigationBarTitleFontProvider *__strong)"}];
    [v11 handleFailureInFunction:v12 file:@"_UINavTitleAppearanceData.m" lineNumber:400 description:{@"UIKit internal bug: Received nil font from provider %@", v1}];
  }

  v4 = *off_1E70EC920;
  v13[0] = *off_1E70EC918;
  v13[1] = v4;
  v14[0] = v2;
  v14[1] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v5;
}

id _UINavigationTitleAppearanceDefaultSubtitleTextAttributes(uint64_t a1)
{
  v1 = [_UINavigationBarTitleFontProvider providerForIdiom:a1];
  v2 = _UINavigationTitleAppearanceDefaultSubtitleTextAttributesWithProvider(v1);

  return v2;
}

id _UINavigationTitleAppearanceDefaultLargeSubtitleTextAttributes(uint64_t a1)
{
  v1 = [_UINavigationBarTitleFontProvider providerForIdiom:a1];
  v2 = _UINavigationTitleAppearanceDefaultLargeSubtitleTextAttributesWithProvider(v1);

  return v2;
}

void notificationHandler()
{
  if (_UIInternalPreferencesRevisionVar <= 2147483645)
  {
    _UIInternalPreferencesRevisionVar += 2;
  }

  v5 = _UIKitUserDefaults();
  v1 = [v5 dictionaryRepresentation];
  v2 = _revisionDefaults;
  _revisionDefaults = v1;

  if (&_UIInternalPreferencesListener___COUNTER__ != &webGeolocationCacheFileAccessQueue)
  {
    v3 = &_UIInternalPreferencesListener___COUNTER__;
    do
    {
      v4 = *v3++;
      (*(v4 + 16))();
    }

    while (v3 != &webGeolocationCacheFileAccessQueue);
  }
}

uint64_t _UIInternalPreferenceUpdateDouble(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  *(a1 + 8) = v3;
  return 1;
}

uint64_t _UIOneOfTypesConformsToAcceptableTypes(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    v20 = *v27;
    v21 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E6982C40] _typeWithIdentifier:*(*(&v26 + 1) + 8 * i) allowUndeclared:{1, v20}];
        if (v10)
        {
          v11 = v10;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v12 = v4;
          v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v23;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v23 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [MEMORY[0x1E6982C40] _typeWithIdentifier:*(*(&v22 + 1) + 8 * j) allowUndeclared:1];
                if (v17 && ([v11 conformsToType:v17] & 1) != 0)
                {

                  v18 = 1;
                  v4 = v21;
                  goto LABEL_22;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v8 = v20;
          v4 = v21;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v18 = 0;
    }

    while (v7);
  }

  else
  {
    v18 = 0;
  }

LABEL_22:

  return v18;
}

id getWKInterfaceDeviceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED4A26A8;
  v7 = qword_1ED4A26A8;
  if (!qword_1ED4A26A8)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWKInterfaceDeviceClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getWKInterfaceDeviceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A26482C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A264DD8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&stru_1ED4A261C);
  objc_exception_rethrow();
}

void sub_18A265670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A267164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A267384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A267578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A268120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWKInterfaceDeviceClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A26B0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __WatchKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71282A8;
    v8 = 0;
    qword_1ED4A26B0 = _sl_dlopen();
  }

  if (!qword_1ED4A26B0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WatchKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIAssetManager.m" lineNumber:57 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("WKInterfaceDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWKInterfaceDeviceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIAssetManager.m" lineNumber:58 description:{@"Unable to find class %s", "WKInterfaceDevice"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4A26A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WatchKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED4A26B0 = result;
  return result;
}

void ____preferredIdiomSubtypeForIdiom_block_invoke()
{
  v0 = [objc_opt_self() mainScreen];
  v1 = [v0 _artworkSubtype];

  if (v1)
  {
    qword_1ED4A26C0 = v1;
  }

  else
  {
    v2 = MGCopyAnswer();
    v3 = v2;
    if (v2 && ([v2 objectForKeyedSubscript:@"ArtworkDeviceSubType"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      v6 = [v4 integerValue];
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assets", &qword_1ED4A26C8) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Could not determine device type", v8, 2u);
      }

      v6 = 320;
    }

    qword_1ED4A26C0 = v6;
  }
}

id _UIAutologgingVoidBlock(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(_UIAutologgingDeallocSentinel);
  [(_UIAutologgingDeallocSentinel *)v5 setMessage:v4];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___UIAutologgingVoidBlock_block_invoke;
  v10[3] = &unk_1E70F37C0;
  v11 = v5;
  v12 = v3;
  v6 = v3;
  v7 = v5;
  v8 = [v10 copy];

  return v8;
}

id _UIAutologgingBackgroundFetchBlock(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(_UIAutologgingDeallocSentinel);
  [(_UIAutologgingDeallocSentinel *)v5 setMessage:v4];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___UIAutologgingBackgroundFetchBlock_block_invoke;
  v10[3] = &unk_1E711B7A0;
  v11 = v5;
  v12 = v3;
  v6 = v3;
  v7 = v5;
  v8 = [v10 copy];

  return v8;
}

id _UIBundleIDFromAuditToken()
{
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v0 = 0;
  }

  else
  {
    v0 = CPCopyBundleIdentifierFromAuditToken();
  }

  if (!v0)
  {
    NSLog(&cfstr_CannotGetBundl.isa);
  }

  return v0;
}

uint64_t _UIPreferredSystemLanguageForBundle(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___UIPreferredSystemLanguageForBundle_block_invoke;
  block[3] = &unk_1E70F3590;
  v8 = v1;
  v2 = _UIPreferredSystemLanguageForBundle_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&_UIPreferredSystemLanguageForBundle_onceToken, block);
  }

  v4 = _UIPreferredSystemLanguageForBundle_primaryLanguage;
  v5 = _UIPreferredSystemLanguageForBundle_primaryLanguage;

  return v4;
}

id _UIPrivateMainBundleIdentifier()
{
  if (qword_1ED4A26E8 != -1)
  {
    dispatch_once(&qword_1ED4A26E8, &__block_literal_global_10_14);
  }

  if (_MergedGlobals_1355 == 1)
  {
    v0 = _UIMainBundleIdentifier();
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t _UIIsPrivateMainBundleNotIncludingTestHarness()
{
  if (qword_1ED4A26F0 != -1)
  {
    dispatch_once(&qword_1ED4A26F0, &__block_literal_global_15_10);
  }

  return byte_1ED4A26D1;
}

uint64_t _UIIsOpenInRestrictionInEffect()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v1 = [v0 isOpenInRestrictionInEffect];

  return v1;
}

uint64_t _UIShouldEnforceOpenInRulesInAccountBasedApp()
{
  if (qword_1ED4A2710 != -1)
  {
    dispatch_once(&qword_1ED4A2710, &__block_literal_global_655);
  }

  if (_MergedGlobals_1357 != 1)
  {
    return 0;
  }

  return _UIIsOpenInRestrictionInEffect();
}

uint64_t _UIDropAllowedBetweenApps(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 1;
  if (v5 && v6)
  {
    v9 = [MEMORY[0x1E69ADFB8] sharedConnection];
    if (![v9 isOpenInRestrictionInEffect])
    {
      goto LABEL_19;
    }

    if (!a1)
    {
      goto LABEL_19;
    }

    if (a1 == 3)
    {
      goto LABEL_19;
    }

    v10 = [v9 dragDropTargetManagementStateForBundleID:v7];
    if ((v10 - 4) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_19;
    }

    if (a1 == 1)
    {
      if (v10 != 1 || ([v9 mayOpenFromUnmanagedToManaged] & 1) != 0)
      {
        goto LABEL_19;
      }

      v11 = *(__UILogGetCategoryCachedImpl("Dragging", &qword_1ED4A2728) + 8);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_18:
        v8 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v14 = 138543618;
      v15 = v5;
      v16 = 2114;
      v17 = v7;
      v12 = "Disallowing drag of unmanaged data from app %{public}@ to managed app %{public}@";
    }

    else
    {
      if (a1 != 2 || v10 || ([v9 mayOpenFromManagedToUnmanaged] & 1) != 0)
      {
        goto LABEL_19;
      }

      v11 = *(__UILogGetCategoryCachedImpl("Dragging", &qword_1ED4A2730) + 8);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v14 = 138543618;
      v15 = v5;
      v16 = 2114;
      v17 = v7;
      v12 = "Disallowing drag of managed data from app %{public}@ to unmanaged app %{public}@";
    }

    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, v12, &v14, 0x16u);
    goto LABEL_18;
  }

LABEL_20:

  return v8;
}

uint64_t _UIDropAllowedWithinAccountBasedApp(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([v4 isOpenInRestrictionInEffect])
  {
    if (a1 == 2)
    {
      if (a2 == 1 && ([v4 mayOpenFromManagedToUnmanaged] & 1) == 0)
      {
        v5 = *(__UILogGetCategoryCachedImpl("Dragging", &qword_1ED4A2740) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v10 = 0;
          v6 = "Disallowing drag of managed data to unmanaged account.";
          v7 = &v10;
          goto LABEL_14;
        }

LABEL_15:
        v8 = 0;
        goto LABEL_11;
      }
    }

    else if (a1 == 1 && a2 == 2 && ([v4 mayOpenFromUnmanagedToManaged] & 1) == 0)
    {
      v5 = *(__UILogGetCategoryCachedImpl("Dragging", &qword_1ED4A2738) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v11 = 0;
        v6 = "Disallowing drag of unmanaged data to managed account.";
        v7 = &v11;
LABEL_14:
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

uint64_t _UIEffectiveSourceDataOwnerForReportedDataOwner(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((_UIBundleIDIsAccountBased(v3) & 1) == 0)
  {
    v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v5 = [v4 isAppManaged:v3];

    if (v5)
    {
      a1 = 2;
    }

    else
    {
      a1 = 1;
    }
  }

  return a1;
}

__CFString *_UIDataOwnerDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E71282C0[a1];
  }
}

void ___shouldValidateAccountBasedDelegates_block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = _UIKitUserDefaults();
  v2 = @"shouldValidateAccountBasedDelegates";
  v3[0] = &unk_1EFE33988;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  [v0 registerDefaults:v1];
}

id _UIStepperDividerKey(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{?=QQ}"];

  return v2;
}

void sub_18A26DA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NSStringFromPopoverArrowDirection(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:30];
  v3 = v2;
  if (a1 == 15)
  {
    v4 = @"Any";
    goto LABEL_5;
  }

  if (!a1)
  {
    v4 = @"Unknown";
LABEL_5:
    [v2 appendString:v4];
    goto LABEL_12;
  }

  if ((a1 & 2) != 0)
  {
    [v2 appendString:@"Below "];
    if ((a1 & 1) == 0)
    {
LABEL_8:
      if ((a1 & 4) == 0)
      {
        goto LABEL_9;
      }

LABEL_17:
      [v3 appendString:@"Left "];
      if ((a1 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  [v3 appendString:@"Above "];
  if ((a1 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((a1 & 8) != 0)
  {
LABEL_10:
    [v3 appendString:@"Right "];
  }

LABEL_11:
  [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 1, 1}];
LABEL_12:

  return v3;
}

__CFString *_UITextInputActionsSourceString(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"Unspecified";
  }

  else
  {
    return *(&off_1E7128348 + a1 - 1);
  }
}

__CFString *_UITextInputActionsTypeString(uint64_t a1)
{
  if ((a1 - 1) > 0xF)
  {
    return @"Unspecified";
  }

  else
  {
    return *(&off_1E71283A8 + a1 - 1);
  }
}

uint64_t _UITextInputActionsSessionActionsEnumValueFromSourceAndType(unint64_t a1, uint64_t a2)
{
  result = _UITextInputActionsSessionActionsEnumValueFromSource(a1);
  if (result == 1)
  {
    switch(a1)
    {
      case 0xCuLL:
        if (a2 != 15)
        {
          return 0;
        }

        break;
      case 4uLL:
        if (a2 <= 14)
        {
          if (a2 == 1)
          {
            return 6;
          }

          if (a2 == 2)
          {
            return 7;
          }

          return 0;
        }

        if (a2 != 15)
        {
          if (a2 == 16)
          {
            return 11;
          }

          return 0;
        }

        break;
      case 3uLL:
        if (a2 == 15)
        {
          return 10;
        }

        else
        {
          return 5;
        }

      default:
        return 0;
    }

    return 10;
  }

  return result;
}

uint64_t _UITextInputActionsSessionActionsEnumValueFromSource(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_18A6830D0[a1];
  }
}

__CFString *_UITextInputActionsSessionActionsStringFromEnumValue(uint64_t a1)
{
  if ((a1 - 2) > 9)
  {
    return &stru_1EFB14550;
  }

  else
  {
    return *(&off_1E7128428 + a1 - 2);
  }
}

__CFString *_UITextInputActionsValidateLanguage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ![v1 length])
  {
    v6 = 0;
    goto LABEL_24;
  }

  if (qword_1ED4A2798 != -1)
  {
    dispatch_once(&qword_1ED4A2798, &__block_literal_global_139_2);
  }

  v3 = [qword_1ED4A2790 objectForKey:v2];
  if (!v3)
  {
    v7 = v2;
    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{@"emoji", @"dictation", 0}];
    v9 = 0;
    if (([v8 containsObject:v7] & 1) == 0)
    {
      if ([v7 length] == 2 || objc_msgSend(v7, "length") == 3 || objc_msgSend(v7, "length") == 7 || objc_msgSend(v7, "length") == 8)
      {
        if (qword_1ED4A2788 != -1)
        {
          dispatch_once(&qword_1ED4A2788, &__block_literal_global_656);
        }

        if ([_MergedGlobals_1359 numberOfMatchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}] == 1)
        {
          v9 = 0;
        }

        else
        {
          v9 = @"L";
        }
      }

      else
      {
        v9 = @"L";
      }
    }

    v10 = v9;
    v11 = qword_1ED4A2790;
    if (v10)
    {
      v6 = v10;
      [qword_1ED4A2790 setObject:v10 forKey:v7];
      goto LABEL_23;
    }

    v12 = [MEMORY[0x1E695DFB0] null];
    [v11 setObject:v12 forKey:v7];

LABEL_22:
    v6 = 0;
    goto LABEL_23;
  }

  v4 = [MEMORY[0x1E695DFB0] null];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    goto LABEL_22;
  }

  v6 = v3;
LABEL_23:

LABEL_24:

  return v6;
}

__CFString *_UITextInputActionsValidateRegion(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ![v1 length])
  {
    v6 = 0;
    goto LABEL_21;
  }

  if (qword_1ED4A27B8 != -1)
  {
    dispatch_once(&qword_1ED4A27B8, &__block_literal_global_148);
  }

  v3 = [qword_1ED4A27B0 objectForKey:v2];
  if (!v3)
  {
    v7 = v2;
    if ([v7 length] >= 2)
    {
      v8 = @"R";
      if ([v7 length] <= 4)
      {
        if (qword_1ED4A27A8 != -1)
        {
          dispatch_once(&qword_1ED4A27A8, &__block_literal_global_143_2);
        }

        if ([qword_1ED4A27A0 numberOfMatchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}] == 1)
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = @"R";
    }

    v9 = v8;
    v10 = qword_1ED4A27B0;
    if (v9)
    {
      v6 = v9;
      [qword_1ED4A27B0 setObject:v9 forKey:v7];
      goto LABEL_20;
    }

    v11 = [MEMORY[0x1E695DFB0] null];
    [v10 setObject:v11 forKey:v7];

LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  v4 = [MEMORY[0x1E695DFB0] null];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    goto LABEL_19;
  }

  v6 = v3;
LABEL_20:

LABEL_21:

  return v6;
}

uint64_t _UITextInputActionsNSIntegerToLog10Integer(uint64_t a1)
{
  if (a1 < -9999)
  {
    return 0;
  }

  if (a1 < -999)
  {
    return 1;
  }

  if (a1 < -99)
  {
    return 2;
  }

  if (a1 < -9)
  {
    return 3;
  }

  if (a1 < 0)
  {
    return 4;
  }

  if (!a1)
  {
    return 5;
  }

  if (a1 < 0xA)
  {
    return 6;
  }

  if (a1 < 0x64)
  {
    return 7;
  }

  if (a1 < 0x3E8)
  {
    return 8;
  }

  if (a1 >> 4 < 0x271)
  {
    return 9;
  }

  return 10;
}

id getTUIKeyboardAnimationInfoClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUIKeyboardAnimationInfoClass_softClass_3;
  v7 = getTUIKeyboardAnimationInfoClass_softClass_3;
  if (!getTUIKeyboardAnimationInfoClass_softClass_3)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIKeyboardAnimationInfoClass_block_invoke_3;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIKeyboardAnimationInfoClass_block_invoke_3(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A2706C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TextInputUILibraryCore_block_invoke_23()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_10 = result;
  return result;
}

void sub_18A27109C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _ArchivePath(void *a1)
{
  v1 = a1;
  if (qword_1ED4A27C8 != -1)
  {
    dispatch_once(&qword_1ED4A27C8, &__block_literal_global_657);
  }

  v2 = [v1 pathExtension];
  v3 = [v2 isEqualToString:@"plist"];

  if ((v3 & 1) == 0)
  {
    v4 = [v1 stringByAppendingPathExtension:@"plist"];

    v1 = v4;
  }

  v5 = [_MergedGlobals_1360 stringByAppendingPathComponent:v1];

  return v5;
}

void *_NumberForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void _UIDragStatisticLogItemsInDragByType(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = dispatch_get_global_queue(17, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___UIDragStatisticLogItemsInDragByType_block_invoke;
  v8[3] = &unk_1E70F35B8;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

void _UIDragStatisticsLogTextDelegateItems(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = dispatch_get_global_queue(17, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___UIDragStatisticsLogTextDelegateItems_block_invoke;
  v8[3] = &unk_1E70F35B8;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

void _UIPowerLogPeekBegan()
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = +[_UIStatistics previewInteractionPeekForce];
  [v0 recordDistributionValue:_currentMaxRawForce()];

  v4[0] = @"Process-ID";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  v5[0] = v1;
  v5[1] = &unk_1EFE339A0;
  v4[1] = @"Status";
  v4[2] = @"Timestamp";
  v2 = [MEMORY[0x1E695DF00] date];
  v5[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  PLLogRegisteredEvent();
}

double _currentMaxRawForce()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = UIApp;
  v1 = [UIApp keyWindow];
  v2 = [v0 _touchesEventForWindow:v1];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 allTouches];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) _pressure];
        if (v7 < v9)
        {
          v7 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

void _UIPowerLogPeekEnded()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"Process-ID";
  v0 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  v4[0] = v0;
  v4[1] = &unk_1EFE339B8;
  v3[1] = @"Status";
  v3[2] = @"Timestamp";
  v1 = [MEMORY[0x1E695DF00] date];
  v4[2] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];

  PLLogRegisteredEvent();
}

void _UIPowerLogPopOccured()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = +[_UIStatistics previewInteractionPopForce];
  [v0 recordDistributionValue:_currentMaxRawForce()];

  v4[0] = @"Process-ID";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  v4[1] = @"Timestamp";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF00] date];
  v5[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  PLLogRegisteredEvent();
}

void sub_18A276164(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void _UIGetHSBValuesForColor(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v8 = v7;
  if (CGColorGetNumberOfComponents([v8 CGColor]) == 2)
  {
    [v8 getWhite:a4 alpha:0];
  }

  else
  {
    [v8 getHue:a2 saturation:a3 brightness:a4 alpha:0];
  }
}

id _UISplitViewControllerResizeMeshTransform(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, double a14, double a15, double a16)
{
  v100 = *MEMORY[0x1E69E9840];
  IsEmpty = CGRectIsEmpty(*&a1);
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  if (!IsEmpty)
  {
    v102.origin.x = a1;
    v102.origin.y = a2;
    v102.size.width = a3;
    v102.size.height = a4;
    IsNull = CGRectIsNull(v102);
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    if (!IsNull)
    {
      v103.origin.x = a1;
      v103.origin.y = a2;
      v103.size.width = a3;
      v103.size.height = a4;
      v30 = a5 / CGRectGetHeight(v103);
      v104.origin.x = a1;
      v104.origin.y = a2;
      v104.size.width = a3;
      v104.size.height = a4;
      v53 = a6 / CGRectGetWidth(v104);
      v105.origin.x = a1;
      v105.origin.y = a2;
      v105.size.width = a3;
      v105.size.height = a4;
      v50 = a7 / CGRectGetHeight(v105);
      v106.origin.x = a1;
      v106.origin.y = a2;
      v106.size.width = a3;
      v106.size.height = a4;
      v33 = a8 / CGRectGetWidth(v106);
      v32 = v50;
      v31 = v53;
    }
  }

  v48 = v33;
  v51 = v32;
  v54 = v31;
  v107.origin.x = a9;
  v107.origin.y = a10;
  v107.size.width = a11;
  v107.size.height = a12;
  if (CGRectIsEmpty(v107))
  {
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
  }

  else
  {
    v108.origin.x = a9;
    v108.origin.y = a10;
    v108.size.width = a11;
    v108.size.height = a12;
    v38 = CGRectIsNull(v108);
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    if (!v38)
    {
      v109.origin.x = a9;
      v109.origin.y = a10;
      v109.size.width = a11;
      v109.size.height = a12;
      v29 = a13 / CGRectGetHeight(v109);
      v110.origin.x = a9;
      v110.origin.y = a10;
      v110.size.width = a11;
      v110.size.height = a12;
      v35 = a14 / CGRectGetWidth(v110);
      v111.origin.x = a9;
      v111.origin.y = a10;
      v111.size.width = a11;
      v111.size.height = a12;
      v36 = a15 / CGRectGetHeight(v111);
      v112.origin.x = a9;
      v112.origin.y = a10;
      v112.size.width = a11;
      v112.size.height = a12;
      v37 = a16 / CGRectGetWidth(v112);
    }
  }

  memset(v56, 0, 32);
  v56[2] = xmmword_18A67EE50;
  v56[3] = xmmword_18A64B720;
  v56[4] = xmmword_18A67BA20;
  v57 = 0;
  v58 = v30;
  v59 = 0;
  v60 = v29;
  v61 = xmmword_18A67EE50;
  v62 = v30;
  v63 = 0x3FF0000000000000;
  v64 = v29;
  v65 = 0x3FE0000000000000;
  v66 = v54;
  v67 = v30;
  v68 = v35;
  v69 = v29;
  v70 = 0x3FE0000000000000;
  v71 = 1.0 - v48;
  v72 = v30;
  v73 = 1.0 - v37;
  v74 = v29;
  v75 = 0x3FE0000000000000;
  v76 = v54;
  v77 = 1.0 - v51;
  v78 = v35;
  v79 = 1.0 - v36;
  v80 = 0x3FE0000000000000;
  v81 = 1.0 - v48;
  v82 = 1.0 - v51;
  v83 = 1.0 - v37;
  v84 = 1.0 - v36;
  v85 = 0x3FE0000000000000;
  v86 = 0;
  v87 = 1.0 - v51;
  v88 = 0;
  v89 = 1.0 - v36;
  v90 = xmmword_18A67EE50;
  v91 = 1.0 - v51;
  v92 = 0x3FF0000000000000;
  v93 = 1.0 - v36;
  v94 = 0x3FE0000000000000;
  v95 = xmmword_18A64B720;
  v96 = xmmword_18A64B720;
  __asm { FMOV            V0.2D, #1.0 }

  v97 = xmmword_18A67EE50;
  v98 = _Q0;
  v99 = xmmword_18A655850;
  v55[10] = xmmword_18A6831D8;
  v55[11] = unk_18A6831E8;
  v55[12] = xmmword_18A6831F8;
  v55[13] = unk_18A683208;
  v55[6] = xmmword_18A683198;
  v55[7] = unk_18A6831A8;
  v55[8] = xmmword_18A6831B8;
  v55[9] = unk_18A6831C8;
  v55[2] = xmmword_18A683158;
  v55[3] = unk_18A683168;
  v55[4] = xmmword_18A683178;
  v55[5] = unk_18A683188;
  v55[0] = xmmword_18A683138;
  v55[1] = unk_18A683148;
  v44 = [MEMORY[0x1E69793F8] meshTransformWithVertexCount:12 vertices:v56 faceCount:7 faces:v55 depthNormalization:{*MEMORY[0x1E6979700], *&a5}];
  [v44 setSubdivisionSteps:0];

  return v44;
}

id _UIKBEventDeferralPolicyAssistantLogger()
{
  if (qword_1ED4A28B0 != -1)
  {
    dispatch_once(&qword_1ED4A28B0, &__block_literal_global_659);
  }

  v1 = _MergedGlobals_1362;

  return v1;
}

void sub_18A278D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

id _UIVisualEffectSubviewFilterIdentityValueForKeypath(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 componentsSeparatedByString:@"."];
  if ([v4 count] == 3)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 filterName];
          v12 = [v11 isEqualToString:v5];

          if (v12)
          {
            v13 = [v10 identityValues];
            v14 = [v4 objectAtIndexedSubscript:2];
            v7 = [v13 objectForKeyedSubscript:v14];

            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t _UIVisualEffectSubviewShouldAnimateKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 viewEffects];
  ShouldAnimateKeyInternal = _UIVisualEffectSubviewShouldAnimateKeyInternal(v4, v3);

  return ShouldAnimateKeyInternal;
}

BOOL _UIVisualEffectSubviewAddInternalOverrides(objc_class *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIVisualEffectSubviewAddInternalOverrides(__unsafe_unretained Class _Nonnull)"];
    v5 = NSStringFromClass(a1);
    [v3 handleFailureInFunction:v4 file:@"_UIVisualEffectSubview.m" lineNumber:348 description:{@"Class %@ does not subclass UIView", v5}];
  }

  if (([(objc_class *)a1 conformsToProtocol:&unk_1EFEDA810]& 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIVisualEffectSubviewAddInternalOverrides(__unsafe_unretained Class _Nonnull)"];
    v8 = NSStringFromClass(a1);
    [v6 handleFailureInFunction:v7 file:@"_UIVisualEffectSubview.m" lineNumber:349 description:{@"Class %@ does not conform to protocol _UIVisualEffectViewParticipating", v8}];
  }

  strcpy(types, "@@:@@B");
  return class_addMethod(a1, sel__initialValueForLayer_keyPath_usePresentationValue_, _UIVisualEffectSubviewInitialValueForLayer, types);
}

id _UIVisualEffectSubviewInitialValueForLayer(void *a1, const char *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a4;
  v11 = objc_msgSendSuper(v9, a2, a3, v10, a5);
  if (!v11)
  {
    if ([v10 hasPrefix:@"filters."])
    {
      v12 = [(objc_super *)v9 filters];
      v11 = _UIVisualEffectSubviewFilterIdentityValueForKeypath(v12, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

void sub_18A27B9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *formatAbsoluteTime(CFAbsoluteTime a1)
{
  if (qword_1ED4A28D0 != -1)
  {
    dispatch_once(&qword_1ED4A28D0, &__block_literal_global_660);
  }

  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(*MEMORY[0x1E695E480], qword_1ED4A28C8, a1);

  return StringWithAbsoluteTime;
}

void sub_18A27C3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getGEOAlmanacClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A28C0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __GeoServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71284B8;
    v8 = 0;
    qword_1ED4A28C0 = _sl_dlopen();
  }

  if (!qword_1ED4A28C0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GeoServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UISunScheduleController.m" lineNumber:39 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("GEOAlmanac");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGEOAlmanacClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UISunScheduleController.m" lineNumber:40 description:{@"Unable to find class %s", "GEOAlmanac"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1363 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GeoServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED4A28C0 = result;
  return result;
}

CFDateFormatterRef __formatAbsoluteTime_block_invoke()
{
  result = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E480], 0xFF3uLL);
  qword_1ED4A28C8 = result;
  return result;
}

double _UIQOSMaxFrameDurationSeconds()
{
  if (qword_1ED4A28F8 != -1)
  {
    dispatch_once(&qword_1ED4A28F8, &__block_literal_global_7_4);
  }

  v1 = qword_1ED4A2910;

  return _UIMediaTimeForMachTime(v1);
}

id _UIQOSDescription()
{
  _MergedGlobals_1364 = 0;
  if (qword_1ED4A28F8 != -1)
  {
    dispatch_once(&qword_1ED4A28F8, &__block_literal_global_7_4);
  }

  v0 = MEMORY[0x1E696AEC0];
  v1 = _MergedGlobals_1364;
  if (!_MergedGlobals_1364)
  {
    v1 = mach_absolute_time();
    _MergedGlobals_1364 = v1;
  }

  v2 = _UIMediaTimeForMachTime(v1);
  v3 = _UIMediaTimeForMachTime(qword_1ED4A2918);
  v4 = _UIMediaTimeForMachTime(qword_1ED4A2920);
  v5 = MEMORY[0x1E696AEC0];
  v6 = qword_1ED4A2900;
  v7 = dword_1ED4A2908;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___managedCommitsDescription_block_invoke;
  v15[3] = &unk_1E70F7970;
  v15[4] = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v15];
  v9 = MEMORY[0x1E696AEC0];
  v10 = [v8 componentsJoinedByString:@" "];;
  v11 = [v9 stringWithFormat:@"{%@}", v10];

  v12 = [v5 stringWithFormat:@"processing=%u, managedCommits=%@, waitingCommitEnd=%u, now=%.06f, begin=%+.06f, deadline=%+.06f, length=%.06f, intervalActive=%u, intervalOptions=0x%llx, intervalRelevant=%u", v7, v11, byte_1ED4A290C, *&v2, v3 - v2, v4 - v2, v4 - v3, word_1ED4A2938, qword_1ED4A2940, HIBYTE(word_1ED4A2938)];

  v13 = [v0 stringWithFormat:@"%@, maxCommitDuration=%.06f, processingToken=%llu, transactionCurrentState=%u", v12, _UIMediaTimeForMachTime(qword_1ED4A2910), qword_1ED4A28E0, objc_msgSend(MEMORY[0x1E6979518], "currentState")];

  return v13;
}

void ___managedCommitsDescription_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 allObjects];
  v11 = [v6 componentsJoinedByString:{@", "}];

  v7 = *(a1 + 32);
  v8 = MEMORY[0x1E696AEC0];
  Class = object_getClass(v5);
  v10 = [v8 stringWithFormat:@"%s@%p: %@", class_getName(Class), v5, v11];

  [v7 addObject:v10];
}

void sub_18A27FD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A2818A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Block_object_dispose((v2 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_18A2820DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18A2823B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A2827CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A282B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A282DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _obscuredTraitCollectionFromTraitCollection(void *a1)
{
  v1 = a1;
  if (!_UIDeviceNativeUserInterfaceIdiom())
  {
    if (os_variant_has_internal_diagnostics())
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_25;
      }
    }

    else
    {
      v2 = [MEMORY[0x1E698E730] sharedInstance];
      if ([v2 isCarrierInstall])
      {
        v3 = dyld_program_sdk_at_least();

        if ((v3 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }
    }
  }

  if (![v1 userInterfaceIdiom])
  {
    [v1 displayCornerRadius];
    if (fabs(v4 + -39.0) >= 0.1)
    {
      [v1 displayCornerRadius];
      if (fabs(v5 + -33.3333) >= 0.1)
      {
        [v1 displayCornerRadius];
        if (fabs(v6 + -35.3333) >= 0.1)
        {
          [v1 displayCornerRadius];
          if (fabs(v7 + -41.5) >= 0.1)
          {
            [v1 displayCornerRadius];
            if (fabs(v8 + -37.5) >= 0.1)
            {
              [v1 displayCornerRadius];
              if (fabs(v9 + -44.0) >= 0.1)
              {
                [v1 displayCornerRadius];
                if (fabs(v10 + -37.3333) >= 0.1)
                {
                  [v1 displayCornerRadius];
                  if (fabs(v11 + -47.3333) >= 0.1)
                  {
                    [v1 displayCornerRadius];
                    if (fabs(v12 + -38.6667) >= 0.1)
                    {
                      [v1 displayCornerRadius];
                      if (fabs(v13 + -53.3333) >= 0.1)
                      {
                        [v1 displayCornerRadius];
                        if (fabs(v14 + -46.6667) >= 0.1)
                        {
                          [v1 displayCornerRadius];
                          if (fabs(v15 + -55.0) >= 0.1)
                          {
                            [v1 displayCornerRadius];
                            if (fabs(v16 + -44.6667) >= 0.1)
                            {
                              [v1 displayCornerRadius];
                              if (fabs(v17 + -48.0) >= 0.1)
                              {
                                [v1 displayCornerRadius];
                                if (fabs(v18) >= 0.1)
                                {
                                  v19 = [v1 _traitCollectionByReplacingCGFloatValue:0x1EFE32548 forTraitToken:39.0];

                                  v1 = v19;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_25:
  v20 = v1;

  return v1;
}

void sub_18A283714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A2840A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A2850F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 112));
  _Unwind_Resume(a1);
}

id _UIRemoteViewControllerHalfDisconnectionInvocationForProxy(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___UIRemoteViewControllerHalfDisconnectionInvocationForProxy_block_invoke;
  v5[3] = &unk_1E7103900;
  v6 = v1;
  v2 = v1;
  v3 = [_UIAsyncInvocation invocationWithBlock:v5];

  return v3;
}

void sub_18A28A684(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t _isPerformingSystemSnapshot(void *a1)
{
  v1 = [a1 viewIfLoaded];
  v2 = [v1 window];
  v3 = [v2 windowScene];
  v4 = [v3 _isPerformingSystemSnapshot];

  return v4;
}

double _UIGetRemoteViewControllerSnapshotDelay()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  result = 0.08;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v2 = _UIInternalPreference_RemoteViewControllerSnapshotDelay;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_RemoteViewControllerSnapshotDelay)
    {
      while (v0 >= v2)
      {
        _UIInternalPreferenceSync(v0, &_UIInternalPreference_RemoteViewControllerSnapshotDelay, @"RemoteViewControllerSnapshotDelay", _UIInternalPreferenceUpdateDouble);
        v2 = _UIInternalPreference_RemoteViewControllerSnapshotDelay;
        if (v0 == _UIInternalPreference_RemoteViewControllerSnapshotDelay)
        {
          return 0.08;
        }
      }

      return *&qword_1EA95E798;
    }
  }

  return result;
}

uint64_t _shouldDeferSendingTraitCollectionChangeToService(void *a1)
{
  v1 = a1;
  v2 = [v1 _existingView];
  v3 = [v2 window];
  v4 = [v3 _isHostedInAnotherProcess];

  if ((v4 & 1) != 0 || ![v1 _isUpdatingSize])
  {
    v7 = 0;
  }

  else
  {
    v5 = [v1 _owningRemoteViewController];
    isPerformingSystemSnapshot = _isPerformingSystemSnapshot(v5);

    if (isPerformingSystemSnapshot)
    {
      v7 = [v1 _isUpdatingSizeInHost];
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

void sub_18A28FE60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_18A290164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A2904D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A290834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A29202C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A2923D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A292A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  _Block_object_dispose((v14 - 80), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A29387C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 136), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void __getAPExtensionSubjectMonitorRegistryClass_block_invoke_0(uint64_t a1)
{
  AppProtectionLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("APExtensionSubjectMonitorRegistry");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAPExtensionSubjectMonitorRegistryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAPExtensionSubjectMonitorRegistryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:180 description:{@"Unable to find class %s", "APExtensionSubjectMonitorRegistry"}];

    __break(1u);
  }
}

void AppProtectionLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AppProtectionLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppProtectionLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7128830;
    v5 = 0;
    AppProtectionLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!AppProtectionLibraryCore_frameworkLibrary_0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppProtectionLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:177 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AppProtectionLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  AppProtectionLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getAPBaseExtensionShieldViewClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4971F8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AppProtectionUILibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7128848;
    v8 = 0;
    qword_1ED4971F8 = _sl_dlopen();
  }

  if (!qword_1ED4971F8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppProtectionUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:182 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("APBaseExtensionShieldView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAPBaseExtensionShieldViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:183 description:{@"Unable to find class %s", "APBaseExtensionShieldView"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4971F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppProtectionUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED4971F8 = result;
  return result;
}

void __getAPGuardClass_block_invoke_0(uint64_t a1)
{
  AppProtectionLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("APGuard");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED497200 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAPGuardClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:179 description:{@"Unable to find class %s", "APGuard"}];

    __break(1u);
  }
}

void sub_18A296918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIVisibilityEnvironmentForSceneIdentityToken(void *a1)
{
  v1 = [a1 stringRepresentation];
  v2 = _UISVisibilityEnvironmentForSceneIdentityTokenString();

  return v2;
}

void sub_18A299A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A29A4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A29BDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __userNotificationCallback_0(__CFUserNotification *a1, uint64_t a2)
{
  v15 = [_MergedGlobals_1_31 objectForKey:a1];
  v4 = CFUserNotificationGetResponseDictionary(a1);
  v5 = [v4 objectForKey:*MEMORY[0x1E695EEA8]];
  v6 = [v15 alertViewStyle];
  if ((v6 - 1) < 2)
  {
    v9 = [v15 textFieldAtIndex:0];
    [v9 setText:v5];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    if (v6 != 3)
    {
      goto LABEL_23;
    }

    v7 = [v15 textFieldAtIndex:0];
    v8 = [v5 objectAtIndex:0];
    [v7 setText:v8];

    v9 = [v15 textFieldAtIndex:1];
    v10 = [v5 objectAtIndex:1];
    [v9 setText:v10];
  }

LABEL_7:
  if (a2 > 1)
  {
    v11 = v15;
    if (a2 == 2)
    {
      v12 = 1;
      goto LABEL_17;
    }

    if (a2 == 3)
    {
      [v15 cancelAlertView];
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v11 = v15;
  if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0;
      goto LABEL_17;
    }

LABEL_23:
    abort();
  }

  v13 = [v15 numberOfButtons];
  if (!v13)
  {
    goto LABEL_20;
  }

  v12 = v13 - 1;
  v11 = v15;
LABEL_17:
  v14 = [v11 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v14 alertView:v15 clickedButtonAtIndex:v12];
  }

  [v15 dismissWithClickedButtonIndex:v12 animated:0];

LABEL_20:
}

BOOL isAlertViewDelegateMethod(SEL aSel)
{
  v2 = 1;
  if (!protocol_getMethodDescription(&unk_1EFF8BBD0, aSel, 0, 1).name)
  {
    return protocol_getMethodDescription(&unk_1EFF8BBD0, aSel, 1, 1).name != 0;
  }

  return v2;
}

void *__getSBUserNotificationAllowMenuButtonDismissalSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_2();
  result = dlsym(v2, "SBUserNotificationAllowMenuButtonDismissal");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4994F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_7()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary_3 = result;
  return result;
}

void *__getSBUserNotificationDismissOnLockSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_2();
  result = dlsym(v2, "SBUserNotificationDismissOnLock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4994F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBUserNotificationTextAutocorrectionTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_2();
  result = dlsym(v2, "SBUserNotificationTextAutocorrectionType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED499500 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBUserNotificationTextAutocapitalizationTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_2();
  result = dlsym(v2, "SBUserNotificationTextAutocapitalizationType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED499508 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18A29DD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A29E054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIDragEventPasteConfigurationForOwner(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 _effectivePasteConfiguration];
  }

  else
  {
    [v1 pasteConfiguration];
  }
  v2 = ;

  if (v2)
  {
    v3 = v1;
  }

  else if ([v1 __isKindOfUIView])
  {
    v4 = v1;
    v5 = [(UIView *)v4 __viewDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 _effectivePasteConfiguration];
    }

    else
    {
      [v5 pasteConfiguration];
    }
    v3 = ;

    if (v3)
    {
      v3 = [(UIView *)v4 __viewDelegate];
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = [v3 pasteConfiguration];

  return v6;
}

uint64_t _UIDragEventCanPasteItemProvidersForOwner(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 _effectivePasteConfiguration];
  }

  else
  {
    [v3 pasteConfiguration];
  }
  v5 = ;

  if (v5)
  {
    v6 = v3;
  }

  else if ([v3 __isKindOfUIView])
  {
    v7 = v3;
    v8 = [(UIView *)v7 __viewDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 _effectivePasteConfiguration];
    }

    else
    {
      [v8 pasteConfiguration];
    }
    v6 = ;

    if (v6)
    {
      v6 = [(UIView *)v7 __viewDelegate];
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = [v6 canPasteItemProviders:v4];
  return v9;
}

void _UIDragEventPasteItemProvidersForOwner(void *a1, void *a2)
{
  v8 = a2;
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v8 _effectivePasteConfiguration];
  }

  else
  {
    [v8 pasteConfiguration];
  }
  v4 = ;

  if (v4)
  {
    v5 = v8;
  }

  else if ([v8 __isKindOfUIView])
  {
    v6 = v8;
    v7 = [(UIView *)v6 __viewDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 _effectivePasteConfiguration];
    }

    else
    {
      [v7 pasteConfiguration];
    }
    v5 = ;

    if (v5)
    {
      v5 = [(UIView *)v6 __viewDelegate];
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 pasteItemProviders:v3];
}

BOOL _UIEventHIDIsDragEventLocusType(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  Children = IOHIDEventGetChildren();
  if (!Children)
  {
    return 0;
  }

  v4 = Children;
  if (CFArrayGetCount(Children) < 1)
  {
    return 0;
  }

  CFArrayGetValueAtIndex(v4, 0);
  v5 = BKSHIDEventGetDigitizerAttributes();
  IntegerValue = IOHIDEventGetIntegerValue();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 pathAttributes];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 pathIndex] == IntegerValue)
        {
          v13 = v12;
          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_14:

  v14 = [v13 locus] == a2;
  return v14;
}

void sub_18A2A0C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A2A53E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A2A57DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A2A886C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void beginInheritingCoreMediaApplicationState(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [getAVSystemControllerClass() sharedAVSystemController];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v5 = getAVSystemController_PIDToInheritApplicationStateFrom();
  v12 = 0;
  v6 = [v3 setAttribute:v4 forKey:v5 error:&v12];
  v7 = v12;

  if ((v6 & 1) == 0)
  {
    NSLog(&cfstr_FailedToInheri.isa, a1, v7);
  }

  if ((_UIApplicationIsExtension() & 1) == 0)
  {
    if (qword_1ED4999A0 != -1)
    {
      dispatch_once(&qword_1ED4999A0, &__block_literal_global_954);
    }

    [qword_1ED499998 lock];
    if (!qword_1ED499990)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      v9 = [MEMORY[0x1E696ADC8] mainQueue];
      v10 = [v8 addObserverForName:@"UIApplicationWillEnterForegroundNotification" object:0 queue:v9 usingBlock:&__block_literal_global_959_0];
      v11 = qword_1ED499990;
      qword_1ED499990 = v10;
    }

    [qword_1ED499998 unlock];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_18A2AB414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void stopStealingStatusBar(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 windowScene];
  if (!v2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v5 = 138412290;
        v6 = v1;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Attempting to end update of view service orientation for hosted window not in window scene: %@", &v5, 0xCu);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &stopStealingStatusBar___s_category) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = 138412290;
        v6 = v1;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Attempting to end update of view service orientation for hosted window not in window scene: %@", &v5, 0xCu);
      }
    }
  }
}

id _supportedInterfaceOrientationsForMask(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___supportedInterfaceOrientationsForMask_block_invoke;
  v7[3] = &unk_1E7128E10;
  v9 = a1;
  v3 = v2;
  v8 = v3;
  v4 = _Block_copy(v7);
  v4[2](v4, 1);
  v4[2](v4, 2);
  v4[2](v4, 4);
  v4[2](v4, 3);
  v5 = v3;

  return v3;
}

void sub_18A2AC838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _unobscuredTraitCollectionFromTraitCollection(void *a1)
{
  v1 = a1;
  v2 = [objc_opt_self() mainScreen];
  [v2 _displayCornerRadius];
  v4 = v3;

  [v1 displayCornerRadius];
  if (vabdd_f64(v5, v4) >= 0.1)
  {
    v6 = [v1 _traitCollectionByReplacingCGFloatValue:0x1EFE32548 forTraitToken:v4];

    v1 = v6;
  }

  return v1;
}

void sub_18A2AD02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A2AD28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A2ADB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A2AE874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void stealStatusBar(uint64_t a1, void *a2, void *a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [v8 windowScene];
  v10 = v9;
  if (v9)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  if ((v11 & 1) == 0 && a4)
  {
    if (!os_variant_has_internal_diagnostics())
    {
      v12 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4999A8) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v24 = 138412290;
        v25 = v8;
        v13 = "Attempting to update view service orientation for hosted window not in window scene: %@";
        v14 = v12;
        v15 = 12;
LABEL_15:
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, v13, &v24, v15);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v20 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v24 = 138412290;
      v25 = v8;
      v21 = "Attempting to update view service orientation for hosted window not in window scene: %@";
      v22 = v20;
      v23 = 12;
LABEL_26:
      _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, v21, &v24, v23);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (a1)
  {
    if (v9)
    {
      v16 = [v9 _interfaceOrientation];
      v17 = v10;
    }

    else
    {
      v16 = [UIApp statusBarOrientation];
      v17 = [UIApp _findUISceneForLegacyInterfaceOrientation];
    }

    v19 = v17;
    if (v16 != a1)
    {
      [UIKeyboardSceneDelegate setInterfaceOrientation:a1];
      [UIApp setStatusBarOrientation:a1 fromOrientation:objc_msgSend(v10 windowScene:"_interfaceOrientation") animationParameters:v19 updateBlock:{0, 0}];
    }

    goto LABEL_20;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v20 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v24) = 0;
      v21 = "Attempting to update view service orientation with an unknown interface orientation";
      v22 = v20;
      v23 = 2;
      goto LABEL_26;
    }

LABEL_24:

    goto LABEL_20;
  }

  v18 = *(__UILogGetCategoryCachedImpl("Assert", qword_1ED4999B0) + 8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    v13 = "Attempting to update view service orientation with an unknown interface orientation";
    v14 = v18;
    v15 = 2;
    goto LABEL_15;
  }

LABEL_20:
}

id getAVSystemControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVSystemControllerClass_softClass;
  v7 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVSystemControllerClass_block_invoke_1;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getAVSystemControllerClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A2B68BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAVSystemController_PIDToInheritApplicationStateFrom()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVSystemController_PIDToInheritApplicationStateFromSymbolLoc_ptr;
  v9 = getAVSystemController_PIDToInheritApplicationStateFromSymbolLoc_ptr;
  if (!getAVSystemController_PIDToInheritApplicationStateFromSymbolLoc_ptr)
  {
    v1 = MediaExperienceLibrary_1();
    v7[3] = dlsym(v1, "AVSystemController_PIDToInheritApplicationStateFrom");
    getAVSystemController_PIDToInheritApplicationStateFromSymbolLoc_ptr = v7[3];
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
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_PIDToInheritApplicationStateFrom(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIViewServiceViewControllerOperator.m" lineNumber:321 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18A2B6A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __beginInheritingCoreMediaApplicationState_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = qword_1ED499998;
  qword_1ED499998 = v0;
}

uint64_t __beginInheritingCoreMediaApplicationState_block_invoke_2()
{
  v0 = [getAVSystemControllerClass() sharedAVSystemController];
  v1 = getAVSystemController_PIDToInheritApplicationStateFrom();
  [v0 setAttribute:0 forKey:v1 error:0];

  [qword_1ED499998 lock];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:qword_1ED499990];

  v3 = qword_1ED499990;
  qword_1ED499990 = 0;

  v4 = qword_1ED499998;

  return [v4 unlock];
}

uint64_t __MediaExperienceLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void ___supportedInterfaceOrientationsForMask_block_invoke(uint64_t a1, uint64_t a2)
{
  if (_UIInterfaceOrientationMaskContainsOrientation(*(a1 + 40), a2))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v4 addObject:v5];
  }
}

void sub_18A2B82B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A2B8478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTUIStatusBarCellularSignalViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A2990)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SystemStatusUILibraryCore_block_invoke_1;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7128F48;
    v8 = 0;
    qword_1ED4A2990 = _sl_dlopen();
  }

  if (!qword_1ED4A2990)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SystemStatusUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UICellularSignalView.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("STUIStatusBarCellularSignalView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSTUIStatusBarCellularSignalViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UICellularSignalView.m" lineNumber:20 description:{@"Unable to find class %s", "STUIStatusBarCellularSignalView"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1368 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SystemStatusUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1ED4A2990 = result;
  return result;
}

uint64_t _UITabIsRepresentedInListItems(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___UITabIsRepresentedInListItems_block_invoke;
    v9[3] = &unk_1E70F8890;
    v5 = v3;
    v10 = v5;
    if ([v4 indexOfObjectPassingTest:v9] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v5 _parentGroup];
      IsRepresentedInListItems = _UITabIsRepresentedInListItems(v6, v4);
    }

    else
    {
      IsRepresentedInListItems = 1;
    }
  }

  else
  {
    IsRepresentedInListItems = 0;
  }

  return IsRepresentedInListItems;
}

BOOL _UITabIsAncestorOfTabsInListItems(void *a1, void *a2)
{
  v3 = a1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UITabIsAncestorOfTabsInListItems_block_invoke;
  v7[3] = &unk_1E70F8890;
  v8 = v3;
  v4 = v3;
  v5 = [a2 indexOfObjectPassingTest:v7] != 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

id _UIProtocolConformingToProtocols(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__233;
  v13 = __Block_byref_object_dispose__233;
  v14 = 0;
  if (qword_1ED4A29C8 != -1)
  {
    dispatch_once(&qword_1ED4A29C8, &__block_literal_global_672);
  }

  v2 = _MergedGlobals_1370;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___UIProtocolConformingToProtocols_block_invoke;
  v6[3] = &unk_1E70FE3F8;
  v7 = v1;
  v8 = &v9;
  v3 = v1;
  dispatch_sync(v2, v6);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_18A2C08A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getLPLinkViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLPLinkViewClass_softClass;
  v7 = getLPLinkViewClass_softClass;
  if (!getLPLinkViewClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLPLinkViewClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getLPLinkViewClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A2C1604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A2C2684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLPMetadataProviderClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPMetadataProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPMetadataProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPMetadataProviderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDocumentProperties.m" lineNumber:32 description:{@"Unable to find class %s", "LPMetadataProvider"}];

    __break(1u);
  }
}

void LinkPresentationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __LinkPresentationLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7128FF0;
    v5 = 0;
    LinkPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkPresentationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIDocumentProperties.m" lineNumber:31 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __LinkPresentationLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary = result;
  return result;
}

void __getLPLinkMetadataClass_block_invoke_0(uint64_t a1)
{
  LinkPresentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPLinkMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPLinkMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPLinkMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDocumentProperties.m" lineNumber:33 description:{@"Unable to find class %s", "LPLinkMetadata"}];

    __break(1u);
  }
}

void __getLPLinkViewClass_block_invoke_0(uint64_t a1)
{
  LinkPresentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPLinkView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPLinkViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPLinkViewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDocumentProperties.m" lineNumber:34 description:{@"Unable to find class %s", "LPLinkView"}];

    __break(1u);
  }
}

void __getLPLinkRendererSizeClassParametersClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPLinkRendererSizeClassParameters");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPLinkRendererSizeClassParametersClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPLinkRendererSizeClassParametersClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDocumentProperties.m" lineNumber:36 description:{@"Unable to find class %s", "LPLinkRendererSizeClassParameters"}];

    __break(1u);
  }
}

void sub_18A2C7484(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_18A2C93EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_18A2CAF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t B519BehaviorEnabled()
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_B519_SimulateRemoteConnected, @"B519_SimulateRemoteConnected", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E7B4)
  {
    return 1;
  }

  v1 = +[UIDevice currentDevice];
  v0 = [v1 _remoteTouchSurfaceType] == 2;

  return v0;
}

void sub_18A2D65DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A2D7D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_8()
{
  result = _sl_dlopen();
  qword_1ED4A2A38 = result;
  return result;
}

void sub_18A2DB148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UILayoutEngineSolutionIsInRationalEdgesConsultingDelegate(void *a1)
{
  if (dyld_program_sdk_at_least())
  {
    return 1;
  }

  if (!a1)
  {
    return 0;
  }

  return [a1 _forceLayoutEngineSolutionInRationalEdges];
}

uint64_t _UIViewEnumerateLayoutConstraintsAndAdjustForSelectedLayoutVariables(void *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___UIViewEnumerateLayoutConstraintsAndAdjustForSelectedLayoutVariables_block_invoke;
  v4[3] = &unk_1E7129538;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  return [a1 _withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:v4];
}

uint64_t _UIViewSortedConstraintsForDebugging(void *a1)
{
  v1 = [a1 sortedArrayUsingFunction:compareConstraintsAlphabetically context:&__block_literal_global_378_2];

  return [v1 sortedArrayUsingFunction:compareConstraintsAlphabetically context:&__block_literal_global_380];
}

BOOL _UISubclassOverridesSelector(objc_class *a1, objc_class *a2, SEL name)
{
  MethodImplementation = class_getMethodImplementation(a1, name);
  v6 = class_getMethodImplementation(a2, name);
  if (MethodImplementation)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7 && MethodImplementation != v6;
}

uint64_t _UIViewRecursivelyRemoveDebugAlignmentViews(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [a1 _allSubviews];
  result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 removeFromSuperview];
        }

        else
        {
          _UIViewRecursivelyRemoveDebugAlignmentViews(v6);
          v6[12] &= ~0x40000000000000uLL;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t _debuggableDescriptionForConstraintsWithHeader(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", a2];
  }

  else
  {
    v3 = &stru_1EFB14550;
  }

  v4 = [a1 valueForKey:@"_debuggableEquationLegendDescription"];
  v5 = [a1 valueForKey:@"_debuggableEquationDescriptionWithoutLegend"];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@legends\n%@%@\n\nconstraints\n%@%@\n\n", v3, @"-------------------------------\n", objc_msgSend(v4, "componentsJoinedByString:", @"\n", @"-------------------------------\n", objc_msgSend(v5, "componentsJoinedByString:", @", \n")];
}

uint64_t _layoutVariablesWithAmbiguousValueForLayoutItem(void *a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [a1 nsli_layoutEngine];
  v9[0] = [a1 nsli_minXVariable];
  v9[1] = [a1 nsli_minYVariable];
  v9[2] = [a1 nsli_boundsWidthVariable];
  v3 = [a1 nsli_boundsHeightVariable];
  v4 = 0;
  v5 = 0;
  v9[3] = v3;
  do
  {
    v6 = v9[v4];
    if ([v2 valueOfVariableIsAmbiguous:v6])
    {
      v8[v5++] = v6;
    }

    ++v4;
  }

  while (v4 != 4);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:v5];
}

id _UIViewPotentiallyDisrubtibleConstraintsForView(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = [a1 _layoutEngine];
  if (!v6 || [v6 delegate] == a1)
  {
    goto LABEL_42;
  }

  for (i = 0; a2; a2 = [a2 superview])
  {
    if (!a3 || ([a3 isDescendantOfView:a2] & 1) == 0)
    {
      v8 = [a2 _constraintsExceptingSubviewAutoresizingConstraints];
      v9 = [v8 count];
      if (v9)
      {
        v10 = v9 - 1;
        do
        {
          v11 = [v8 objectAtIndex:v10];
          if ((NSLayoutConstraintIsPotentiallyDanglyInContainer() & 1) != 0 || a2 == [v11 container] && (!v11 ? (v12 = 0, v13 = 0) : (v12 = objc_msgSend(objc_msgSend(v11, "firstItem"), "_referenceView"), v13 = objc_msgSend(objc_msgSend(v11, "secondItem"), "_referenceView")), (objc_msgSend(v12, "isDescendantOfView:", a1) & 1) != 0 || objc_msgSend(v13, "isDescendantOfView:", a1)))
          {
            if (!i)
            {
              i = [MEMORY[0x1E695DF70] array];
            }

            [i addObject:v11];
          }

          --v10;
        }

        while (v10 != -1);
      }
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = [i countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = 0;
    v18 = *v30;
    *&v15 = 138412290;
    v28 = v15;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(i);
        }

        v20 = *(*(&v29 + 1) + 8 * v19);
        if (!v17)
        {
          v17 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
        }

        v21 = [v20 container];
        if (v21)
        {
          v22 = v21;
          v23 = [v17 objectForKey:v21];
          if (!v23)
          {
            v23 = [MEMORY[0x1E695DF70] array];
            [v17 setObject:v23 forKey:v22];
          }

          [v23 addObject:v20];
        }

        else if (os_variant_has_internal_diagnostics())
        {
          v25 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            *buf = v28;
            v34 = v20;
            _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "UIKit Debug Assert: We should have a non-nil container for this constraint that we're trying to protect: %@", buf, 0xCu);
          }
        }

        else
        {
          v24 = *(__UILogGetCategoryCachedImpl("Assert", &_UIViewPotentiallyDisrubtibleConstraintsForView___s_category) + 8);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = v28;
            v34 = v20;
            _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "UIKit Debug Assert: We should have a non-nil container for this constraint that we're trying to protect: %@", buf, 0xCu);
          }
        }

        ++v19;
      }

      while (v16 != v19);
      v26 = [i countByEnumeratingWithState:&v29 objects:v35 count:16];
      v16 = v26;
    }

    while (v26);
  }

  else
  {
LABEL_42:
    v17 = 0;
  }

  return v17;
}

uint64_t _UIViewReactivatePotentiallyDisruptedConstraintsForView(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [a1 keyEnumerator];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) addConstraints:{objc_msgSend(a1, "objectForKey:", *(*(&v7 + 1) + 8 * v6))}];
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_18A2EA0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void NSLayoutConstraintFailedToFindDefaultResolvedValueForSymbolicConstant(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &NSLayoutConstraintFailedToFindDefaultResolvedValueForSymbolicConstant___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Could not resolve symbolic constant for constraint, because: %@\nUse a symbolic breakpoint at NSLayoutConstraintFailedToFindDefaultResolvedValueForSymbolicConstant to debug.", &v4, 0xCu);
  }
}

double _UIViewATVButtonVertPaddingForBaselineSpacing(int a1, int a2)
{
  result = 72.0;
  if (((a2 - 5) | (a1 - 5)) >= 2)
  {
    return 24.0;
  }

  return result;
}

double _UIViewBaselineToBaselineSpacing(void *a1, void *a2)
{
  [a2 lineHeight];
  v5 = v4;
  [a2 leading];
  v7 = v5 + v6;
  [a1 lineHeight];
  v9 = v8;
  [a1 leading];
  if (vabdd_f64(v9 + v10, v7) > 2.22044605e-16)
  {
    [a2 lineHeight];
    v12 = v11;
    [a2 descender];
    v14 = v12 + v13;
    [a1 descender];
    return v14 - v15;
  }

  return v7;
}

uint64_t ___workaroundUpdateShouldTagLayoutItemsIfNecessary_block_invoke()
{
  result = [_UIMainBundleIdentifier() isEqualToString:@"com.apple.CarPlayApp"];
  byte_1ED4981B5 = result;
  return result;
}

__CFString *NameForEdge(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7129A20[a1 - 1];
  }
}

void sub_18A2F3EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A2F53FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getTUIInputAssistantHostViewClass_block_invoke_0(uint64_t a1)
{
  TextInputUILibrary_11();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIInputAssistantHostView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIInputAssistantHostViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIInputAssistantHostViewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIInputLayoutHostingItem.m" lineNumber:37 description:{@"Unable to find class %s", "TUIInputAssistantHostView"}];

    __break(1u);
  }
}

uint64_t __TextInputUILibraryCore_block_invoke_24()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_11 = result;
  return result;
}

id _UIMainMenuManagerLog()
{
  if (qword_1ED4A2A88 != -1)
  {
    dispatch_once(&qword_1ED4A2A88, &__block_literal_global_174_1);
  }

  v1 = qword_1ED4A2A80;

  return v1;
}

void sub_18A2FA560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak(va);
  objc_destroyWeak((v14 - 144));
  _Unwind_Resume(a1);
}

void sub_18A2FB620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _UITouchStandardForceAmountForTouchType(uint64_t a1)
{
  result = 60.0;
  if (a1 == 2)
  {
    result = 120.0;
  }

  if (a1 == 3)
  {
    return 115.0;
  }

  return result;
}

BOOL _UITouchCanParticipateInExclusiveTouchForWindow(_WORD *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = _UIApplicationSupportsGlobalEdgeSwipeTouches();
  v7 = 1;
  v8 = 1;
  if (a1 && v6)
  {
    v9 = a1[118];
    v8 = (v9 & 0x1000) == 0;
    v7 = (v9 & 0x2000) == 0;
  }

  v10 = 0;
  if (v8 && ((a3 | v7) & 1) != 0)
  {
    [v5 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v5 safeAreaInsets];
    v20 = v12 + v19;
    v22 = v14 + v21;
    v24 = v16 - (v19 + v23);
    v26 = v18 - (v21 + v25);
    v31.origin.x = v12;
    v31.origin.y = v14;
    v31.size.width = v16;
    v31.size.height = v18;
    v33.origin.x = v20;
    v33.origin.y = v22;
    v33.size.width = v24;
    v33.size.height = v26;
    if (CGRectEqualToRect(v31, v33))
    {
      [a1 locationInView:v5];
      v30.x = v27;
      v30.y = v28;
      v32.origin.x = v20;
      v32.origin.y = v22;
      v32.size.width = v24;
      v32.size.height = v26;
      v10 = CGRectContainsPoint(v32, v30);
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

BOOL _UITouchViewIsMatchForExclusiveTouchParticipantView(void *a1, _WORD *a2, void *a3, int a4)
{
  v7 = a3;
  if (a1)
  {
    v8 = a1;
    v9 = [a2 view];

    v10 = v9 == v8 && _UITouchCanParticipateInExclusiveTouchForWindow(a2, v7, a4);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL _UITouchWindowIsMatchForExclusiveTouchParticipantWindow(_WORD *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [a1 window];
  if (v6 == v5)
  {
    v8 = [a1 view];
    if (v8)
    {
      CanParticipateInExclusiveTouchForWindow = _UITouchCanParticipateInExclusiveTouchForWindow(a1, v5, a3);
    }

    else
    {
      v9 = [a1 gestureRecognizers];
      if ([v9 count])
      {
        CanParticipateInExclusiveTouchForWindow = _UITouchCanParticipateInExclusiveTouchForWindow(a1, v5, a3);
      }

      else
      {
        CanParticipateInExclusiveTouchForWindow = 0;
      }
    }
  }

  else
  {
    CanParticipateInExclusiveTouchForWindow = 0;
  }

  return CanParticipateInExclusiveTouchForWindow;
}

BOOL _UIDelayedTouchCanBeConsideredForSentTouchesEnded(void *a1)
{
  v1 = a1;
  if (_UITouchCancellationOfDelayingGesturesFromPreviousSequenceIsEnabled_onceToken != -1)
  {
    dispatch_once(&_UITouchCancellationOfDelayingGesturesFromPreviousSequenceIsEnabled_onceToken, &__block_literal_global_687);
  }

  if ([v1 _isPointerTouch])
  {
    v2 = [v1 phase] != 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

double _UITouchConvertCADisplayAzimuthAngleToWindow(void *a1, double a2)
{
  v3 = a1;
  v4 = -a2;
  if (!v3 || !_UIAppUseModernRotationAndPresentationBehaviors())
  {
    goto LABEL_15;
  }

  v5 = [v3 _windowInterfaceOrientation];
  switch(v5)
  {
    case 2:
      v6 = 3.14159265;
      goto LABEL_9;
    case 3:
      v6 = -1.57079633;
      goto LABEL_9;
    case 4:
      v6 = 1.57079633;
LABEL_9:
      v4 = v6 - a2;
      break;
  }

    ;
  }

  while (v4 < 0.0)
  {
    v4 = v4 + 6.28318531;
  }

LABEL_15:

  return v4;
}

__n128 _UITouchAzimuthUnitVectorInView(void *a1, void *a2, CGFloat a3)
{
  v5 = a1;
  v6 = a2;
  [v5 convertPoint:v6 fromView:{0.0, 0.0}];
  v16 = v8;
  v17 = v7;
  CGAffineTransformMakeRotation(&v20, a3);
  v9 = vaddq_f64(*&v20.tx, vaddq_f64(*&v20.a, vmulq_f64(*&v20.c, 0)));
  if (v5 && v6)
  {
    v10.f64[0] = v17;
    v10.f64[1] = v16;
    v18 = vaddq_f64(v10, v9);
    [v6 convertPoint:v5 fromView:*&v18];
    v13 = v11 == *MEMORY[0x1E695EFF8] && v12 == *(MEMORY[0x1E695EFF8] + 8);
    v9 = v18;
    if (!v13)
    {
      v14 = v11 * v11 + v12 * v12;
      v9.f64[0] = v11;
      if (fabs(v14 + -1.0) >= 2.22044605e-16)
      {
        v9.f64[0] = v11 / sqrt(v14);
      }
    }
  }

  v19 = v9;

  return v19;
}

uint64_t _UIEditMenuIsInVerticalLayout(void *a1)
{
  v1 = a1;
  v2 = _UIEditMenuGetPlatformMetrics([v1 userInterfaceIdiom]);
  v3 = [v1 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v3))
  {
    v4 = [v2 prefersHorizontalLayoutForLargeContentSize] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_18A306B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A30859C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_18A308C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

UIResponseFactorViewSpringAnimationBehavior *UIViewSpringAnimationBehaviorDescribingWithResponseFactor(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 == 1.0)
  {
    v5 = v3;
  }

  else
  {
    v5 = [[UIResponseFactorViewSpringAnimationBehavior alloc] initWithWrapedBehavior:v3 responseFactor:a2];
  }

  v6 = v5;

  return v6;
}

void sub_18A30A230(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t _UIContentViewShouldUseAccessibilityTextWrappingLayout(void *a1, void *a2, float64x2_t *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v6 && ([v6 isHidden] & 1) == 0)
  {
    v9 = [v7 _currentImage];
    if (!v9)
    {
      v8 = 0;
      goto LABEL_31;
    }

    v10 = [v5 _effectiveTextAlignment];
    v11 = [v7 traitCollection];
    v12 = [v11 layoutDirection];

    v14 = v12 == 1 && v10 == 2;
    v16 = v12 == 1 || v10 != 0;
    v17 = !v14 && v16;
    v18 = v10 != 4 && v17;
    v8 = 0;
    if (![v5 _hasNonEmptyPlainTextOnly] || v18)
    {
      goto LABEL_31;
    }

    v19 = [v5 font];
    [v19 lineHeight];
    v21 = v20;
    [v19 leading];
    v26 = v21 + v22;
    [v9 size];
    if (v23 > v26)
    {
      if (!a3)
      {
        v8 = 0;
        goto LABEL_29;
      }

      *&v24.f64[0] = vdupq_lane_s64(0x7FEFFFFFFFFFFFFFLL, 0).u64[0];
      v24.f64[1] = v26;
      *a3 = vbslq_s8(vcgtzq_f64(*a3), vbslq_s8(vcgtq_f64(*a3, v24), v24, *a3), v24);
    }

    v8 = 1;
LABEL_29:

LABEL_31:
    goto LABEL_32;
  }

  v8 = 0;
LABEL_32:

  return v8;
}

double _UIContentViewRectForVerticalCenteringWithFirstLineOfLabel(void *a1)
{
  v1 = a1;
  [v1 frame];
  CGRectGetMinY(v4);
  [v1 _capOffsetFromBoundsTop];
  v2 = [v1 font];

  [v2 capHeight];
  return 0.0;
}

__CFString *_UIContentViewStringForAxis(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    if (a1 == 3)
    {
      v2 = @"Both";
    }

    else
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4 = v3;
      if (v1)
      {
        [v3 addObject:@"Horizontal"];
      }

      if ((v1 & 2) != 0)
      {
        [v4 addObject:@"Vertical"];
      }

      v5 = MEMORY[0x1E696AEC0];
      v6 = [v4 componentsJoinedByString:{@", "}];
      v2 = [v5 stringWithFormat:@"[%@]", v6];
    }
  }

  else
  {
    v2 = @"Neither";
  }

  return v2;
}

void sub_18A30AA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18A30E698(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

__CFString *UIStringFromScrollPhase(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"<Unknown>";
  }

  else
  {
    return off_1E7129E50[a1];
  }
}

void sub_18A31425C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UILabelReverseNaturalAlignment(void *a1)
{
  v1 = a1;
  v2 = *off_1E70EC988;
  v3 = [v1 objectForKeyedSubscript:*off_1E70EC988];
  v4 = [v3 _ui_resolvedTextAlignment];
  if ((v4 | 2) == 2)
  {
    v5 = v4;
    v6 = [v3 mutableCopy];
    v7 = v6;
    if (v5)
    {
      if (v5 != 2)
      {
LABEL_7:
        [v1 setObject:v7 forKeyedSubscript:v2];

        goto LABEL_8;
      }

      v8 = 0;
    }

    else
    {
      v8 = 2;
    }

    [v6 setAlignment:v8];
    goto LABEL_7;
  }

LABEL_8:

  return v1;
}

void sub_18A3159A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A315C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A315EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A316A8C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t _UIKitDrawsDebugTextGlyphPathBoundsClipping()
{
  if (qword_1ED497538 != -1)
  {
    dispatch_once(&qword_1ED497538, &__block_literal_global_165_2);
  }

  return _MergedGlobals_58_0;
}

void sub_18A31C6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _UIEmitSignpostEvent(va);
  _Unwind_Resume(a1);
}

void _UIMorphLayerPaths(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 frame];
  v6 = v5;
  [v4 frame];
  v8 = v6 / v7;
  [v3 frame];
  v10 = v9;
  [v4 frame];
  v12 = v10 / v11;
  v13 = v8 + -1.0;
  if (v8 + -1.0 < 0.0)
  {
    v13 = -(v8 + -1.0);
  }

  v14 = v12 + -1.0;
  if (v12 + -1.0 < 0.0)
  {
    v14 = -v14;
  }

  if (v13 >= v14)
  {
    v15 = v10 / v11;
  }

  else
  {
    v15 = v8;
  }

  [v4 frame];
  v17 = v16;
  [v4 anchorPoint];
  v19 = v17 * v18;
  [v3 frame];
  v21 = v20;
  [v3 anchorPoint];
  v23 = v22;

  v24 = v19 - v21 * v23 / v15;
  if (v24 >= 0.0)
  {
    v25 = v19 - v21 * v23 / v15;
  }

  else
  {
    v25 = -v24;
  }

  v26 = *(MEMORY[0x1E695EFD0] + 16);
  *&m.a = *MEMORY[0x1E695EFD0];
  *&m.c = v26;
  *&m.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&v29.a = *&m.a;
  *&v29.c = v26;
  *&v29.tx = *&m.tx;
  CGAffineTransformScale(&m, &v29, v15, v15);
  v28 = m;
  CGAffineTransformTranslate(&v29, &v28, 0.0, v25);
  m = v29;
  Mutable = CGPathCreateMutable();
  CGPathAddPath(Mutable, &m, [v4 path]);
  [v4 setPath:Mutable];

  CFRelease(Mutable);
}

void sub_18A323978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v6 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18A3244A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A3246DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A325CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _UILabelVisualStyleAttributedStringContainsForegroundColorAttribute(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [v1 length];
  v3 = *off_1E70EC920;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___UILabelVisualStyleAttributedStringContainsForegroundColorAttribute_block_invoke;
  v6[3] = &unk_1E70F8050;
  v6[4] = &v7;
  [v1 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0x100000, v6}];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_18A328C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIGestureRecognizerCompatibilityMapboxViewClass()
{
  if (_UIGestureRecognizerCompatibilityMapboxViewClass_onceToken != -1)
  {
    dispatch_once(&_UIGestureRecognizerCompatibilityMapboxViewClass_onceToken, &__block_literal_global_2_21);
  }

  v1 = _UIGestureRecognizerCompatibilityMapboxViewClass_mapboxViewClass;

  return v1;
}

uint64_t _UIGestureRecognizerShouldEnablePanAllowedScrollTypeCompatibility(void *a1)
{
  v1 = a1;
  if (_UIGestureRecognizerShouldConsiderPointingDeviceCompatibility() && ![v1 allowedScrollTypesMask])
  {
    v4 = [v1 view];
    _UIGestureRecognizerCompatibilityMapboxViewClass();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t _UIGestureRecognizerShouldEnableTransformEventTouchCompatibility(void *a1)
{
  v1 = a1;
  if (_UIGestureRecognizerShouldConsiderPointingDeviceCompatibility())
  {
    v2 = [v1 view];
    _UIGestureRecognizerCompatibilityMapboxViewClass();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

void ForPropertiesMatchingType(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = &qword_1E712A2E0;
  v7 = 6;
  do
  {
    if ((v6[1] & a1) != 0)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v6 - 1)];
      v5[2](v5, v9, v8, *v6);
    }

    v6 += 3;
    --v7;
  }

  while (v7);
}

uint64_t FindType(void *a1)
{
  v1 = a1;
  v2 = [v1 conformsToProtocol:&unk_1F016E2B0];
  v3 = [v1 conformsToProtocol:&unk_1F016E310];

  if (v3)
  {
    return v2 | 2;
  }

  else
  {
    return v2;
  }
}

void FindRectanglesAroundRectangles(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = v12;
  if (a5 > 0.0 && a6 > 0.0)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __FindRectanglesAroundRectangles_block_invoke;
    v27[3] = &__block_descriptor_64_e32_B24__0___UIAvoidanceShape__8_B16l;
    *&v27[4] = a3;
    *&v27[5] = a4;
    *&v27[6] = a5;
    *&v27[7] = a6;
    v14 = [v12 objectsPassingTest:v27];
    if ([v14 count])
    {
      v15 = [v14 anyObject];
      [v13 removeObject:v15];
      v16 = [v15 shape];
      [v16 CGRectValue];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      FindRectanglesAroundRectangles(v11, v13, a3, a4, v18 - a3, a6);
      FindRectanglesAroundRectangles(v11, v13, a3, a4, a5, v20 - a4);
      FindRectanglesAroundRectangles(v11, v13, v18 + v22, a4, a3 + a5 - (v18 + v22), a6);
      *&v25 = FindRectanglesAroundRectangles(v11, v13, a3, v20 + v24, a5, a4 + a6 - (v20 + v24)).n128_u64[0];
      v26 = v13;
    }

    else
    {
      v15 = [MEMORY[0x1E696B098] valueWithCGRect:{a3, a4, a5, a6}];
      v26 = v11;
    }

    [v26 addObject:{v15, v25}];
  }
}

BOOL __FindRectanglesAroundRectangles_block_invoke(CGRect *a1, void *a2)
{
  v3 = [a2 shape];
  [v3 CGRectValue];
  v4 = CGRectIntersectsRect(v6, a1[1]);

  return v4;
}

void sub_18A32CFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUIEmojiSearchTextFieldClass_block_invoke_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED499528)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_25;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E712A388;
    v8 = 0;
    qword_1ED499528 = _sl_dlopen();
  }

  if (!qword_1ED499528)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIEmojiAndStickerCollectionViewController.m" lineNumber:31 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIEmojiSearchTextField");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIEmojiSearchTextFieldClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIEmojiAndStickerCollectionViewController.m" lineNumber:32 description:{@"Unable to find class %s", "TUIEmojiSearchTextField"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1_33 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke_25()
{
  result = _sl_dlopen();
  qword_1ED499528 = result;
  return result;
}

void sub_18A331424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A331700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A331D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A337128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A3382FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A33875C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A33B350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t _UIScrollAccessoryEffectiveEdge(unint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 <= 1)
  {
    if (v3 && (v3[106] & 0x40) != 0)
    {
      v4 = a1 == 0;
      v5 = 3;
      v6 = 5;
    }

    else
    {
      v4 = a1 == 0;
      v5 = 5;
      v6 = 3;
    }

    if (v4)
    {
      a1 = v6;
    }

    else
    {
      a1 = v5;
    }
  }

  return a1;
}

void sub_18A344FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _ViewHasDescendant(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v3 subviews];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if (_ViewHasDescendant(*(*(&v10 + 1) + 8 * i), v4))
          {
            v6 = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v6;
}

void sub_18A348844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A34B56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _smoothDecelerationAnimation()
{
  if (qword_1EA969128 != -1)
  {
    dispatch_once(&qword_1EA969128, &__block_literal_global_2083_0);
  }

  v1 = qword_1EA969120;

  return v1;
}

void sub_18A354C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_18A355658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SpringBoardBlankedScreen()
{
  v0 = __SpringBoardBlankedScreen_notifyToken;
  if (!__SpringBoardBlankedScreen_notifyToken)
  {
    notify_register_check("com.apple.springboard.hasBlankedScreen", &__SpringBoardBlankedScreen_notifyToken);
    v0 = __SpringBoardBlankedScreen_notifyToken;
  }

  state64 = 0;
  if (notify_get_state(v0, &state64))
  {
    v1 = 0;
  }

  else
  {
    v1 = state64 == 1;
  }

  if (v1)
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"_UIScrollViewSpringBoardBlankedScreenNotification" object:0];
  }
}

void sub_18A359154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void AdjustShadowWithOffset(void *a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  v16 = 0.0;
  v21 = v15;
  if (a3)
  {
    [v15 frame];
    if (a2 == 8 || a2 == 2)
    {
      v18 = a5;
      v20 = a7;
    }

    if (a2 == 1 || a2 == 4)
    {
      v17 = a4;
      v19 = a6;
    }

    if ((a2 & 2) != 0)
    {
      v17 = a4;
    }

    if ((a2 & 8) != 0)
    {
      v17 = a6 + a4 - v19;
    }

    if (a2)
    {
      v18 = a5;
    }

    if ((a2 & 4) != 0)
    {
      v18 = a5 + a7 - v20 + a8;
    }

    [v21 setFrame:{v17, v18}];
    v15 = v21;
    v16 = 1.0;
  }

  [v15 setAlpha:v16];
}

void ___smoothDecelerationAnimation_block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1EA969120;
  qword_1EA969120 = v0;

  v7 = 0.0;
  v8 = 0.0;
  v6 = 0.0;
  [UISpringTimingParameters _convertDampingRatio:&v8 response:&v7 toMass:&v6 stiffness:1.0 damping:0.6];
  [qword_1EA969120 setMass:v8];
  [qword_1EA969120 setStiffness:v7];
  [qword_1EA969120 setDamping:v6];
  [qword_1EA969120 durationForEpsilon:1.17549435e-38];
  [qword_1EA969120 setDuration:?];
  LODWORD(v2) = 1045220557;
  LODWORD(v3) = 1.0;
  LODWORD(v4) = 1.0;
  v5 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :v2 :v3 :v4];
  [qword_1EA969120 setTimingFunction:v5];
}

void sub_18A369E3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose((v2 - 256), 8);
  _Block_object_dispose((v2 - 208), 8);
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_18A36AA34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  _Block_object_dispose((v2 - 240), 8);
  _Block_object_dispose((v2 - 192), 8);
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_18A36B194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ____deviceHasHighFrequencyDigitizer_block_invoke_0()
{
  result = MGGetBoolAnswer();
  _MergedGlobals_1388 = result;
  return result;
}

Class __getRPTScrollViewTestParametersClass_block_invoke(uint64_t a1)
{
  RecapPerformanceTestingLibraryCore();
  result = objc_getClass("RPTScrollViewTestParameters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4A2C30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void RecapPerformanceTestingLibraryCore()
{
  if (!RecapPerformanceTestingLibraryCore_frameworkLibrary)
  {
    RecapPerformanceTestingLibraryCore_frameworkLibrary = _sl_dlopen();
  }
}

uint64_t __RecapPerformanceTestingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RecapPerformanceTestingLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getRPTTestRunnerClass_block_invoke(uint64_t a1)
{
  RecapPerformanceTestingLibraryCore();
  result = objc_getClass("RPTTestRunner");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4A2C38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *_UIApplicationPackedDeploymentVersionFromString(void *result)
{
  if (result)
  {
    v1 = [result componentsSeparatedByString:@"."];
    v2 = [v1 count];
    if (v2)
    {
      v3 = [v1 objectAtIndexedSubscript:0];
      v4 = [v3 integerValue];

      v5 = v4 << 16;
      if (v2 == 1)
      {
        v6 = 0;
LABEL_8:
        v2 = 0;
        goto LABEL_9;
      }

      v7 = [v1 objectAtIndexedSubscript:1];
      v8 = [v7 integerValue];

      v6 = v8 << 8;
      if (v2 < 3)
      {
        goto LABEL_8;
      }

      v9 = [v1 objectAtIndexedSubscript:2];
      v10 = [v9 integerValue];

      v2 = v10;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

LABEL_9:

    return (v5 | v6 | v2);
  }

  return result;
}

uint64_t _UIApplicationPackedMinimumDeploymentVersion()
{
  if (qword_1ED4A2C48 != -1)
  {
    dispatch_once(&qword_1ED4A2C48, &__block_literal_global_704);
  }

  return _MergedGlobals_1389;
}

void _catesCalculateCachedProperties(void *a1)
{
  v16 = a1;
  [v16 initialContentOffset];
  v2.f64[1] = v1;
  *(v16 + 10) = vabdq_f64(v2, *(v16 + 184));
  v2.f64[0] = sqrt(vaddvq_f64(vmulq_f64(*(v16 + 10), *(v16 + 10))));
  *(v16 + 22) = *&v2.f64[0];
  v3 = pow(v2.f64[0] / *(v16 + 31), 0.25);
  v4 = v16;
  *(v16 + 19) = v3;
  v5 = *(v16 + 25);
  if (v5 >= 0.0)
  {
    v6 = vdupq_n_s64(0x40D3880000000000uLL);
    v7 = vminnmq_f64(*(v16 + 14), v6);
    v9 = vbslq_s8(vcgtq_f64(vdupq_n_s64(0xC0D3880000000000), v7), v6, vnegq_f64(v7));
    v19 = v9;
    v20 = *(v16 + 13);
    v8 = 0.0;
    v9.i64[0] = 1.5;
    __asm { FMOV            V1.2D, #0.5 }

    v17 = _Q1;
    v18 = vdupq_n_s64(0x3FD3D70A3D70A3D7uLL);
    v15 = 1.5;
    do
    {
      *v9.i64 = *v9.i64 * 0.5 + v8;
      v21 = v9;
      *v9.i8 = vmovn_s64(vcgtq_f64(v17, vabsq_f64(vmulq_n_f64(vaddq_f64(v20, vmulq_f64(vmulq_n_f64(v19, *v9.i64), v18)), exp(*v9.i64 * -20.0 / 1.6)))));
      v9.i64[1] = v21.i64[1];
      if (v9.i8[0] & v9.i8[4])
      {
        v15 = *v21.i64;
      }

      else
      {
        v8 = *v21.i64;
      }

      *v9.i64 = v15 - v8;
    }

    while (v15 - v8 > 0.01);
    v3 = v5 + v8;
    v4 = v16;
  }

  v4[18] = v3;
}

double _NSStretchOfClipBoundsForDocumentFrame(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  if (a7 <= a3 + 0.0001)
  {
    a5 = a9;
  }

  if (a7 <= a3 + 0.0001)
  {
    v21 = a3;
  }

  else
  {
    v21 = a7;
  }

  if (a8 <= a4 + 0.0001)
  {
    a6 = a10;
  }

  if (a8 <= a4 + 0.0001)
  {
    v23 = a4;
  }

  else
  {
    v23 = a8;
  }

  v74.origin.x = a5;
  v74.origin.y = a6;
  v74.size.width = v21;
  v74.size.height = v23;
  v47 = CGRectIntersection(*&a1, v74);
  y = v47.origin.y;
  height = v47.size.height;
  x = v47.origin.x;
  rect2 = v47.size.width;
  v39 = a6;
  v38 = a5;
  if (CGRectIsNull(v47))
  {
    v48.origin.x = a1;
    v48.origin.y = a2;
    v48.size.width = a3;
    v48.size.height = a4;
    rect2a = CGRectGetMinX(v48);
    v49.origin.x = a5;
    v49.origin.y = a6;
    v49.size.width = v21;
    v49.size.height = v23;
    MinY = CGRectGetMinY(v49);
    v50.origin.x = a1;
    v50.origin.y = a2;
    v50.size.width = a3;
    v50.size.height = a4;
    Width = CGRectGetWidth(v50);
    v51.origin.x = a5;
    v51.origin.y = a6;
    v51.size.width = v21;
    v51.size.height = v23;
    v52.size.height = CGRectGetHeight(v51);
    v52.origin.y = MinY;
    v52.origin.x = rect2a;
    v52.size.width = Width;
    v75.origin.x = a5;
    v75.origin.y = a6;
    v75.size.width = v21;
    v75.size.height = v23;
    v53 = CGRectIntersection(v52, v75);
    v42 = v53.origin.x;
    rect2 = v53.size.width;
    v53.origin.x = a5;
    v53.origin.y = a6;
    v53.size.width = v21;
    v53.size.height = v23;
    MinX = CGRectGetMinX(v53);
    v54.origin.x = a1;
    v54.origin.y = a2;
    v54.size.width = a3;
    v54.size.height = a4;
    v36 = CGRectGetMinY(v54);
    v55.origin.x = a5;
    v55.origin.y = a6;
    v55.size.width = v21;
    v55.size.height = v23;
    r1 = CGRectGetWidth(v55);
    v56.origin.x = a1;
    v56.origin.y = a2;
    v56.size.width = a3;
    v56.size.height = a4;
    v57.size.height = CGRectGetHeight(v56);
    v57.origin.y = v36;
    v57.origin.x = MinX;
    v57.size.width = r1;
    v76.origin.x = a5;
    v27 = v42;
    v76.origin.y = a6;
    v76.size.width = v21;
    v76.size.height = v23;
    v58 = CGRectIntersection(v57, v76);
    y = v58.origin.y;
    height = v58.size.height;
  }

  else
  {
    v27 = x;
  }

  v59.origin.x = a1;
  v59.origin.y = a2;
  v59.size.width = a3;
  v59.size.height = a4;
  v77.origin.x = v27;
  v77.origin.y = y;
  v77.size.width = rect2;
  v77.size.height = height;
  if (CGRectEqualToRect(v59, v77))
  {
    return *MEMORY[0x1E695F060];
  }

  v29 = a3;
  v60.origin.x = v27;
  v60.origin.y = y;
  v60.size.width = rect2;
  v60.size.height = height;
  if (CGRectGetWidth(v60) == 0.0)
  {
    v27 = v38;
  }

  else
  {
    v21 = rect2;
  }

  v61.origin.x = a1;
  v61.origin.y = a2;
  v61.size.width = a3;
  v61.size.height = a4;
  v30 = CGRectGetMinX(v61);
  v62.origin.x = v27;
  v62.origin.y = y;
  v62.size.width = v21;
  v62.size.height = height;
  if (v30 >= CGRectGetMinX(v62))
  {
    v65.origin.x = a1;
    v65.origin.y = a2;
    v65.size.width = v29;
    v65.size.height = a4;
    MaxX = CGRectGetMaxX(v65);
    v66.origin.x = v27;
    v66.origin.y = y;
    v66.size.width = v21;
    v66.size.height = height;
    v32 = CGRectGetMaxX(v66);
  }

  else
  {
    v63.origin.x = a1;
    v63.origin.y = a2;
    v63.size.width = v29;
    v63.size.height = a4;
    MaxX = CGRectGetMinX(v63);
    v64.origin.x = v27;
    v64.origin.y = y;
    v64.size.width = v21;
    v64.size.height = height;
    v32 = CGRectGetMinX(v64);
  }

  v28 = MaxX - v32;
  v67.origin.x = v27;
  v67.origin.y = y;
  v67.size.width = v21;
  v67.size.height = height;
  if (CGRectGetHeight(v67) == 0.0)
  {
    height = v23;
    y = v39;
  }

  v68.origin.x = a1;
  v68.origin.y = a2;
  v68.size.width = v29;
  v68.size.height = a4;
  v33 = CGRectGetMinY(v68);
  v69.origin.x = v27;
  v69.origin.y = y;
  v69.size.width = v21;
  v69.size.height = height;
  if (v33 >= CGRectGetMinY(v69))
  {
    v72.origin.x = v27;
    v72.origin.y = y;
    v72.size.width = v21;
    v72.size.height = height;
    CGRectGetMaxY(v72);
    v73.origin.y = a2;
    v73.origin.x = a1;
    v73.size.width = v29;
    v73.size.height = a4;
    CGRectGetMaxY(v73);
  }

  else
  {
    v70.origin.x = v27;
    v70.origin.y = y;
    v70.size.width = v21;
    v70.size.height = height;
    CGRectGetMinY(v70);
    v71.origin.y = a2;
    v71.origin.x = a1;
    v71.size.width = v29;
    v71.size.height = a4;
    CGRectGetMinY(v71);
  }

  return v28;
}

id _UIMenuForUIMenuControllerMenuItems()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = +[UIMenuController sharedMenuController];
  v1 = [v0 menuItems];

  if ([v1 count])
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 title];
          v10 = +[UICommand commandWithTitle:image:action:propertyList:](UICommand, "commandWithTitle:image:action:propertyList:", v9, 0, [v8 action], 0);

          [v2 addObject:v10];
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    v11 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:1 children:v2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

__CFString *_UIMenuSystemElementGroupPreferenceDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"?";
  }

  else
  {
    return off_1E712AB88[a1];
  }
}

void sub_18A376868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL isDeferredElementVisibleInMenu(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 children];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __isDeferredElementVisibleInMenu_block_invoke;
  v8[3] = &unk_1E712ABC8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

id _menuElementsPreparedForDisplay(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = a2;
  v44 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a3;
  v38 = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v40;
    v36 = *v40;
    do
    {
      v12 = 0;
      do
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * v12);
        v14 = v13;
        if (([v7 supportsCustomViewMenuElements] & 1) == 0)
        {
          objc_opt_class();
          v14 = v13;
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            if (([v13 _forceCustomViewSupport] & 1) == 0)
            {
              v14 = v13;
              v15 = [v14 menuElementRepresentation];

              if (!v15)
              {
                goto LABEL_24;
              }

              v16 = [v14 menuElementRepresentation];

              v14 = v16;
            }
          }
        }

        v17 = [v7 preparer];
        [v14 _willBePreparedForInitialDisplay:v17];

        if ([v14 _isLoadingPlaceholder])
        {
          v14 = v14;
          v18 = [v7 deferredElementDelegate];
          [v14 setDelegate:v18];

          v19 = [v7 firstResponderTarget];
          [v14 _fulfillIfNecessaryWithInitialResponder:v19];

          if ([v14 fulfilled] && (objc_msgSend(v14, "fulfilledElements"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
          {
            v21 = [v14 fulfilledElements];
            v22 = [UIMenu menuWithChildren:v21];
            v23 = [_UIActionBridge validatedCommandMenuForMenu:v22 context:v7];

            v24 = [v23 _resolvedElementSize];
            v25 = [v23 children];
            v26 = _menuElementsPreparedForDisplay(v25, v24, v7, a4);
            [v38 addObjectsFromArray:v26];

            v11 = v36;
          }

          else
          {
            [v38 addObject:v14];
            *(a4 + 3) = 1;
          }

LABEL_24:

          goto LABEL_25;
        }

        if ([v14 _isInlineGroup])
        {
          v14 = v14;
          v27 = v7;
          v28 = v27;
          if ([v27 tracksSelection])
          {
            v28 = v27;
            if (([v14 options] & 0x80) != 0)
            {
              v28 = [v27 copy];

              [v28 setTracksSelection:0];
            }
          }

          [v14 _resolveElementSizeWithContext:v28];
          v29 = [v14 _resolvedElementSize];
          if (([v14 options] & 0x80) != 0 && v29 == 2)
          {
            *(a4 + 4) = 1;
          }

          v30 = [v14 children];
          v31 = _menuElementsPreparedForDisplay(v30, v29, v28, a4);
          v32 = [v14 menuByReplacingChildren:v31];

          [v38 addObject:v32];
          v10 = 0;
          v11 = v36;
        }

        else
        {
          [v38 addObject:v14];
          if (a4)
          {
            if ([v14 _isLeaf])
            {
              v14 = v14;
              if (([v14 attributes] & 4) != 0)
              {
                goto LABEL_24;
              }

              *(a4 + 3) = 1;
              if ([v7 shouldTrackSelectionForVisibleIndex:v10 elementSize:v35])
              {
                *(a4 + 1) |= [v14 state] != 0;
              }
            }

            else
            {
              *(a4 + 2) = 257;
            }

            ++v10;
          }
        }

LABEL_25:

        ++v12;
      }

      while (v9 != v12);
      v33 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      v9 = v33;
    }

    while (v33);
  }

  return v38;
}

uint64_t __isDeferredElementVisibleInMenu_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([v6 isEqual:*(a1 + 32)] & 1) != 0 || objc_msgSend(v6, "_isInlineGroup") && isDeferredElementVisibleInMenu(*(a1 + 32), v6))
  {
    v7 = 1;
    *a4 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t stateMachineSpec_block_invoke_5_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 clickDriver:v2 didPerformEvent:2];

  LODWORD(v3) = [v2 allowsRepeatedClicks];
  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_18A37CF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A37E954(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_18A382DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  if (v18)
  {
    objc_destroyWeak(v19);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A38635C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id decodeQueue()
{
  if (qword_1ED498010[0] != -1)
  {
    dispatch_once(qword_1ED498010, &__block_literal_global_705);
  }

  v1 = qword_1ED498008;

  return v1;
}

void __loaderKickoffQueue_block_invoke()
{
  v0 = dispatch_workloop_create("UIImageView loading");
  v1 = qword_1ED497FF8;
  qword_1ED497FF8 = v0;
}

void __decodeQueue_block_invoke()
{
  v0 = dispatch_queue_create("UIImageView decode queue", 0);
  v1 = qword_1ED498008;
  qword_1ED498008 = v0;
}

double pretiledSizeForImage(void *a1, float64_t a2, float64_t a3)
{
  v3 = a1;
  [v3 size];
  v25 = v4;
  v24 = v5;
  [v3 capInsets];
  v20 = v7;
  v21 = v6;
  v22 = v9;
  v23 = v8;

  v10.f64[0] = v20;
  v10.f64[1] = v21;
  v11.f64[0] = v22;
  v11.f64[1] = v23;
  v12.f64[0] = a2;
  v12.f64[1] = a3;
  v13 = vaddq_f64(v10, v11);
  v14 = v10;
  v15 = vsubq_f64(v12, v13);
  v16 = vdupq_n_s64(0x4050000000000000uLL);
  v17 = vbslq_s8(vcgtq_f64(v15, v16), v16, v15);
  v16.f64[0] = v25;
  v16.f64[1] = v24;
  v18 = vsubq_f64(vsubq_f64(v16, v14), v11);
  *&result = *&vaddq_f64(v13, vmulq_f64(v18, vrndmq_f64(vdivq_f64(v17, v18))));
  return result;
}

void _UIPopoverBackgroundViewThrowForSelector(const char *a1)
{
  v1 = MEMORY[0x1E695DF30];
  v2 = *MEMORY[0x1E695D930];
  v3 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a1);
  v4 = [v3 stringWithFormat:@"-[UIPopoverBackgroundView %@] must be implemented by subclassers.", v5];
  [v1 raise:v2 format:{@"%@", v4}];
}

void sub_18A3896B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18A389AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass_softClass;
  v7 = getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass_softClass;
  if (!getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A389BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSISchemaUUIDClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSISchemaUUIDClass_softClass_0;
  v7 = getSISchemaUUIDClass_softClass_0;
  if (!getSISchemaUUIDClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSISchemaUUIDClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSISchemaUUIDClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A389CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A389E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationDiscoveryToolTipDisplayContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationTipController.m" lineNumber:32 description:{@"Unable to find class %s", "SISchemaUEIDictationDiscoveryToolTipDisplayContext"}];

    __break(1u);
  }
}

void SiriInstrumentationLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SiriInstrumentationLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SiriInstrumentationLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E712AD90;
    v5 = 0;
    SiriInstrumentationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!SiriInstrumentationLibraryCore_frameworkLibrary_0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SiriInstrumentationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIDictationTipController.m" lineNumber:30 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SiriInstrumentationLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SiriInstrumentationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __getSISchemaUUIDClass_block_invoke_0(uint64_t a1)
{
  SiriInstrumentationLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUUID");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUUIDClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUUIDClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationTipController.m" lineNumber:31 description:{@"Unable to find class %s", "SISchemaUUID"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationDiscoveryToolTipDismissedClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationDiscoveryToolTipDismissed");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEIDictationDiscoveryToolTipDismissedClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationDiscoveryToolTipDismissedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationTipController.m" lineNumber:34 description:{@"Unable to find class %s", "SISchemaUEIDictationDiscoveryToolTipDismissed"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationDiscoveryToolTipShownClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationDiscoveryToolTipShown");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEIDictationDiscoveryToolTipShownClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationDiscoveryToolTipShownClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationTipController.m" lineNumber:33 description:{@"Unable to find class %s", "SISchemaUEIDictationDiscoveryToolTipShown"}];

    __break(1u);
  }
}

void sub_18A38D8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

void UIViewReportBrokenSuperviewChain(void *a1, void *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (_MergedGlobals_368)
  {
    goto LABEL_20;
  }

  _MergedGlobals_368 = 1;
  if (v5)
  {
    v7 = (v5[91] & 4) == 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if (!a3)
    {
LABEL_11:
      if (v7)
      {
        v9 = *(__UILogGetCategoryCachedImpl("View", &qword_1EA994700) + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        goto LABEL_20;
      }

      v9 = *(__UILogGetCategoryCachedImpl("View", &qword_1EA994708) + 8);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

LABEL_18:
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v10 = "view.superview is nil during traversal after it has appeared in superview's subviews. \n\tview: %@\n\texpected superview: %@\nBreak on UIViewReportBrokenSuperviewChain to debug.";
      goto LABEL_19;
    }
  }

  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (!v7)
  {
    if (!has_internal_diagnostics)
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA9946F8) + 8);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    v11 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v12 = "view.superview is nil during traversal after it has appeared in superview's subviews. \n\tview: %@\n\texpected superview: %@\nBreak on UIViewReportBrokenSuperviewChain to debug.";
      goto LABEL_26;
    }

LABEL_24:

    goto LABEL_20;
  }

  if (has_internal_diagnostics)
  {
    v11 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v12 = "View doesn't recognize its superview as a UIView. This can happen through use of CALayer API on the view layers instead of UIView API on the views. \n\tview: %@\n\tsuperview: %@\nBreak on UIViewReportBrokenSuperviewChain to debug.";
LABEL_26:
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, v12, &v13, 0x16u);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA9946F0) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
LABEL_10:
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v10 = "View doesn't recognize its superview as a UIView. This can happen through use of CALayer API on the view layers instead of UIView API on the views. \n\tview: %@\n\tsuperview: %@\nBreak on UIViewReportBrokenSuperviewChain to debug.";
LABEL_19:
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, v10, &v13, 0x16u);
  }

LABEL_20:
}

double _UIGetDefaultSpringParameters(void *a1, void *a2, void *a3, void *a4)
{
  _UILoadDefaultSpringParameters();
  if (a1)
  {
    result = *&_UIViewDefaultSpringMass;
    *a1 = _UIViewDefaultSpringMass;
  }

  if (a2)
  {
    result = *&_UIViewDefaultSpringStiffness;
    *a2 = _UIViewDefaultSpringStiffness;
  }

  if (a3)
  {
    result = *&_UIViewDefaultSpringDamping;
    *a3 = _UIViewDefaultSpringDamping;
  }

  if (a4)
  {
    result = *&_UIViewDefaultSpringDuration;
    *a4 = _UIViewDefaultSpringDuration;
  }

  return result;
}

void _UISetDefaultSpringParameters(double a1, double a2, double a3, double a4)
{
  _UIViewDefaultSpringIgnoreUserDefaults = 1;
  _UIViewDefaultSpringMass = *&a1;
  _UIViewDefaultSpringStiffness = *&a2;
  _UIViewDefaultSpringDamping = *&a3;
  _UIViewDefaultSpringDuration = *&a4;
}

void _UISaveDefaultSpringParameters()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = _UIKitUserDefaults();
  v6[0] = @"mass";
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:*&_UIViewDefaultSpringMass];
  v7[0] = v1;
  v6[1] = @"stiffness";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*&_UIViewDefaultSpringStiffness];
  v7[1] = v2;
  v6[2] = @"damping";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*&_UIViewDefaultSpringDamping];
  v7[2] = v3;
  v6[3] = @"duration";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*&_UIViewDefaultSpringDuration];
  v7[3] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  [v0 setValue:v5 forKey:@"DefaultSpringParameters"];
}

double *_UIViewCurlUpTransitionToTime(double *result, double a2, double a3)
{
  v3 = a2 * 0.174;
  v4 = a2 * 0.174 + a3 * 0.985 + 200.0;
  v5 = (a2 * 0.174 + *result * 0.985 + 200.0) / v4;
  v6 = fminf(fmaxf(v5, 0.65), 0.9);
  if (v6 != v5)
  {
    *result = (v4 * v6 + -200.0 - v3) / 0.985;
  }

  return result;
}

void sub_18A392824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _layerAndPropertyForTrackedAnimation(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = objc_getAssociatedObject(v5, &unk_1EA9946CC);
  v7 = objc_getAssociatedObject(v5, &unk_1EA9946CB);

  if (a3)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    v10 = v7;
    v11 = v7;
LABEL_11:
    *a3 = v11;
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = 0;
    goto LABEL_11;
  }

LABEL_12:
  if (a2 && v6)
  {
    v12 = v6;
    v9 = 1;
    v13 = v6;
LABEL_17:
    *a2 = v13;
    goto LABEL_18;
  }

  if (a2)
  {
    v13 = 0;
    goto LABEL_17;
  }

LABEL_18:

  return v9;
}

double _calculatedSystemSpacing(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 _autolayoutSpacingAtEdge:5 forAttribute:12 nextToNeighbor:v4 edge:6 attribute:11 multiplier:1.0];
  v6 = v5;
  [v4 _internalLastBaselineOffsetFromBottom];
  v8 = v7;

  [v3 _internalFirstBaselineOffsetFromTop];
  v10 = v9;

  return v6 - (v8 + v10);
}

void sub_18A39D154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UIViewMaskingConfigurationSPIEnabled()
{
  if (qword_1EA9947C8 != -1)
  {
    dispatch_once(&qword_1EA9947C8, &__block_literal_global_1380_0);
  }

  return byte_1EA9946D3;
}

id UIViewMissingInitialTraitCollection(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  _UIIsPrivateMainBundle();
  if (dyld_program_sdk_at_least())
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UITraitCollection *UIViewMissingInitialTraitCollection(UIView *__strong)"];
    [v2 handleFailureInFunction:v3 file:@"UIView.m" lineNumber:7509 description:@"UIView is missing its initial trait collection populated during initialization. This is a serious bug, likely caused by accessing properties or methods on the view before calling a UIView initializer. View: %@", v1];

LABEL_3:
    goto LABEL_7;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v2 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v9 = v1;
      _os_log_fault_impl(&dword_188A29000, v2, OS_LOG_TYPE_FAULT, "UIView is missing its initial trait collection populated during initialization. This is a serious bug, likely caused by accessing properties or methods on the view before calling a UIView initializer. View: %@Set a symbolic breakpoint on UIViewMissingInitialTraitCollection and check the backtrace to see what's causing this. This will become an assert in a future version.", buf, 0xCu);
    }

    goto LABEL_3;
  }

  v4 = *(__UILogGetCategoryCachedImpl("Assert", &UIViewMissingInitialTraitCollection___s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v9 = v1;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "UIView is missing its initial trait collection populated during initialization. This is a serious bug, likely caused by accessing properties or methods on the view before calling a UIView initializer. View: %@Set a symbolic breakpoint on UIViewMissingInitialTraitCollection and check the backtrace to see what's causing this. This will become an assert in a future version.", buf, 0xCu);
  }

LABEL_7:
  v5 = [objc_opt_self() mainScreen];
  v6 = [v5 traitCollection];

  return v6;
}

void UIViewReturningStaleTraitCollection(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [UITraitCollection _descriptionForChangeFromTraitCollection:a2 toTraitCollection:a3];
  v7 = &stru_1EFB14550;
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_LogStaleViewTraitCollectionBacktrace, @"LogStaleViewTraitCollectionBacktrace", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E89C)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [MEMORY[0x1E696AF00] callStackSymbols];
    v7 = [v8 stringWithFormat:@" Backtrace: \n%@", v9];
  }

  v10 = *(__UILogGetCategoryCachedImpl("StaleTraitCollection", &UIViewReturningStaleTraitCollection___s_category) + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Returning stale traitCollection for view: %@ \nPending trait updates: %@%@", buf, 0x20u);
  }
}

void sub_18A3A68B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UIViewTextRedactedIfNecessaryForDescription(void *a1)
{
  v1 = a1;
  v2 = +[UIView _shouldRedactTextInDescription];
  v3 = [v1 length];
  if (v2)
  {
    v4 = MEMORY[0x1E696AEC0];
    if (v3 < 3)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v1];
      v7 = v1;
    }

    else
    {
      v5 = [v1 rangeOfComposedCharacterSequenceAtIndex:0];
      v7 = [v1 substringWithRange:{v5, v6}];
      v8 = [v1 rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(v1, "length") - 1}];
      v10 = [v1 substringWithRange:{v8, v9}];
      v11 = [v4 stringWithFormat:@"'%@...%@' (length = %ld)", v7, v10, objc_msgSend(v1, "length")];
    }
  }

  else
  {
    v12 = v1;
    if (v3 >= 0x1A)
    {
      v13 = [v1 rangeOfComposedCharacterSequencesForRange:{0, 25}];
      v15 = [v1 substringWithRange:{v13, v14}];
      v12 = [v15 stringByAppendingString:@"..."];
    }

    v16 = MEMORY[0x1E696AEC0];
    v7 = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    v11 = [v16 stringWithFormat:@"'%@'", v7];
  }

  return v11;
}

BOOL _UIViewLayerAnimationCanBeConsideredFinished(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 layer];
  v5 = [v4 animationForKey:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 keyPath];
    v7 = [v4 valueForKeyPath:v6];
    if (v7)
    {
      v8 = [v5 fromValue];
      v9 = [v4 presentationLayer];
      v10 = [v9 valueForKeyPath:v6];

      v11 = 0;
      if (v8 && v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v5 isAdditive])
          {
            v12 = [v8 CA_addValue:v8 multipliedBy:0xFFFFFFFFLL];
            [v8 CA_distanceToValue:v12];
            v14 = fabs(v13);
          }

          else
          {
            [v7 CA_distanceToValue:v8];
            v14 = fabs(v15);
          }

          if (v14 == 0.0)
          {
            v11 = 1;
          }

          else
          {
            [v7 CA_distanceToValue:v10];
            v11 = fabs(v16) / v14 < 0.05;
          }
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_18A3A91DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A3A95B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A3AB1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 160), 8);
  _Block_object_dispose((v37 - 112), 8);
  _Unwind_Resume(a1);
}

void *_traitCollectionIfValid(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    while (([v3 _cachedTraitCollectionIsValid] & 1) == 0 && !v3[10])
    {
      v3 = [v3 superview];
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    v3 = [v2 traitCollection];
  }

  else
  {
    v3 = 0;
  }

LABEL_9:

  return v3;
}

void sub_18A3ADC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIFromValueForAnimation(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
      goto LABEL_18;
    }

    v11 = v7;
    v13 = [v11 keyPath];
    v14 = [UIViewPropertyAnimator _originalFromValueForKey:v13 inLayer:v9 forAnimatorWithTrackingIdentifier:v10];

    if (v14)
    {
      v12 = v14;
LABEL_16:

      goto LABEL_17;
    }

    if ([v11 isAdditive])
    {
      v15 = [UIViewAnimationState originalAnimationForKeyPath:v8 inLayer:v9];
      v16 = v15;
      if (!v15)
      {
        v23 = [v11 keyPath];
        v19 = [v9 valueForKeyPath:v23];
        v20 = [v11 fromValue];
        v12 = [v19 CA_addValue:v20 multipliedBy:1];

        goto LABEL_15;
      }

      v17 = [v15 fromValue];
    }

    else
    {
      v18 = [v11 fromValue];
      v16 = v18;
      if (!v18)
      {
        v21 = [v11 keyPath];
        v12 = [v9 valueForKeyPath:v21];

        goto LABEL_15;
      }

      v17 = v18;
    }

    v12 = v17;
LABEL_15:

    goto LABEL_16;
  }

  v11 = [v7 values];
  v12 = [v11 objectAtIndex:0];
LABEL_17:

LABEL_18:

  return v12;
}

id _UIToValueForAnimation(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v5 values];
    v9 = [v8 lastObject];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_14;
    }

    v8 = v5;
    if (([v8 isAdditive] & 1) != 0 || (objc_msgSend(v8, "toValue"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v12 = objc_getAssociatedObject(v7, &unk_1EA9946C9);
      v13 = [v12 objectForKey:v6];
      v14 = v13;
      if (v13)
      {
        v10 = [v13 toValue];
      }

      else
      {
        v15 = [v8 keyPath];
        v10 = [v7 valueForKeyPath:v15];
      }

      goto LABEL_13;
    }

    v9 = [v8 toValue];
  }

  v10 = v9;
LABEL_13:

LABEL_14:

  return v10;
}

void sub_18A3B27F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A3B4D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A3B6E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A3B70D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void RecursivelyNameLayerTree(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 valueForKey:@"name"];

  if (!v2)
  {
    v3 = [v1 delegate];
    v4 = objc_opt_class();
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v1;
    }

    v6 = NSStringFromClass(v4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v7 stringWithFormat:@"%@(%@)", v9, v6];

      v5 = v1;
      v6 = v10;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%p)", v6, v5];
    [v1 setValue:v11 forKey:@"name"];
  }

  v12 = [v1 unsafeUnretainedDelegate];
  if (v12)
  {
    v13 = v12;
    if (_IsKindOfUIView(v12))
    {
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  [v12 _prepareForLayerDump];
  v14 = [v1 valueForKey:@"UICALayerRenderID"];

  if (!v14)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:CALayerGetRenderId()];
    [v1 setValue:v15 forKey:@"UICALayerRenderID"];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = [v1 sublayers];
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        RecursivelyNameLayerTree(*(*(&v21 + 1) + 8 * i));
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v18);
  }
}

void sub_18A3BD5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIClippingFaultLog()
{
  if (qword_1EA994900 != -1)
  {
    dispatch_once(&qword_1EA994900, &__block_literal_global_3419);
  }

  v1 = qword_1EA9948F8;

  return v1;
}

__CFString *_UIViewContentModeToString(unint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(Unknown UIViewContentMode: %ld)", a1];
  }

  else
  {
    v2 = off_1E712B5F8[a1];
  }

  return v2;
}

uint64_t _UIViewGetVisibilityChangeNotificationRequestCount(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &requestedVisibilityChangeNotificationCount);
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

void ___shouldEnableUIKitParallaxEffects_block_invoke()
{
  v3 = _UIKitPreferencesOnce();
  v0 = [v3 objectForKey:@"UIEnableParallaxEffects"];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  byte_1EA9946DB = v2;
}

uint64_t __modifyTrackedAnimationsWithFactory_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 animationForKey:v12];
  if (v13)
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = (*(v14 + 16))(v14, v13, v12, v11);
    }

    else
    {
      v15 = v13;
    }

    v17 = v15;
    v16 = (*(*(a1 + 40) + 16))();
    v18 = v17;

    if ((v16 & 1) == 0 && v18 != v13)
    {
      [v18 setRemovedOnCompletion:*(a1 + 48)];
      [v9 _incrementDidEndCount];
      [v11 addAnimation:v18 forKey:v12];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_18A3C1BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A3C1D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A3C1E70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t _UIDatePickerNumberOfDaysBetweenDates(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [v6 components:30 fromDate:a2];
  v8 = [v6 components:30 fromDate:v5];

  [v7 setHour:12];
  [v8 setHour:12];
  v9 = [v6 dateFromComponents:v7];
  v10 = [v6 dateFromComponents:v8];
  v11 = [v6 components:16 fromDate:v9 toDate:v10 options:0];

  v12 = [v11 day];
  return v12;
}

id _daysAssignedToMonth(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) copyWithAssignedMonth:{v4, v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

id _joinedArrayFromArrays(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = objc_opt_new();
  v14 = &a9;
  v10 = 3;
  do
  {
    v11 = v14++;
    [v9 addObjectsFromArray:*v11];
    --v10;
  }

  while (v10);
  v12 = [v9 copy];

  return v12;
}

void ___animationForValueAndKeyPath_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_23) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Animating the frame via absolute animations is not supported. Animation key path '%@' value '%@'", &v5, 0x16u);
  }
}

void ___animationForValueAndKeyPath_block_invoke_32(double *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke_2___s_category_4) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 4);
    v4 = a1[7];
    v5 = a1[8];
    v6 = v2;
    v13.width = v4;
    v13.height = v5;
    v7 = NSStringFromCGSize(v13);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "The size component of frame is not animatable. The change in size will be ignored. Animation key path '%@' delta size '%@'", &v8, 0x16u);
  }
}

uint64_t _UIViewLayerGetNearestAncestorView(void *a1)
{
  v1 = a1;
  for (result = [a1 unsafeUnretainedDelegate]; v1 && !result; result = objc_msgSend(v1, "unsafeUnretainedDelegate"))
  {
    v1 = [v1 superlayer];
  }

  return result;
}

id getEMFStringUtilitiesClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEMFStringUtilitiesClass_softClass_1;
  v7 = getEMFStringUtilitiesClass_softClass_1;
  if (!getEMFStringUtilitiesClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getEMFStringUtilitiesClass_block_invoke_1;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getEMFStringUtilitiesClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A3C4F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getEMFSkinToneSpecifierTypeFitzpatrickSilhouette_0()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouetteSymbolLoc_ptr_0;
  v9 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouetteSymbolLoc_ptr_0;
  if (!getEMFSkinToneSpecifierTypeFitzpatrickSilhouetteSymbolLoc_ptr_0)
  {
    v1 = EmojiFoundationLibrary_5();
    v7[3] = dlsym(v1, "EMFSkinToneSpecifierTypeFitzpatrickSilhouette");
    getEMFSkinToneSpecifierTypeFitzpatrickSilhouetteSymbolLoc_ptr_0 = v7[3];
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
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFSkinToneSpecifierTypeFitzpatrickSilhouette(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardEmojiFamilyConfigurationView.m" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18A3C5580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A3C58D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A3C5BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A3C601C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A3C6CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getEMFStringUtilitiesClass_block_invoke_1(uint64_t a1)
{
  EmojiFoundationLibrary_5();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFStringUtilities");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEMFStringUtilitiesClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFStringUtilitiesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiFamilyConfigurationView.m" lineNumber:23 description:{@"Unable to find class %s", "EMFStringUtilities"}];

    __break(1u);
  }
}

void *EmojiFoundationLibrary_5()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!EmojiFoundationLibraryCore_frameworkLibrary_5)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __EmojiFoundationLibraryCore_block_invoke_7;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E712B910;
    v6 = 0;
    EmojiFoundationLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v0 = EmojiFoundationLibraryCore_frameworkLibrary_5;
  if (!EmojiFoundationLibraryCore_frameworkLibrary_5)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EmojiFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIKeyboardEmojiFamilyConfigurationView.m" lineNumber:22 description:{@"%s", v4[0]}];

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

uint64_t __EmojiFoundationLibraryCore_block_invoke_7()
{
  result = _sl_dlopen();
  EmojiFoundationLibraryCore_frameworkLibrary_5 = result;
  return result;
}

void *__getEMFSkinToneSpecifierTypeFitzpatrickSilhouetteSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = EmojiFoundationLibrary_5();
  result = dlsym(v2, "EMFSkinToneSpecifierTypeFitzpatrickSilhouette");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEMFSkinToneSpecifierTypeFitzpatrickSilhouetteSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id __customizationDataForIdentifier(uint64_t a1)
{
  v1 = [@"com.apple.UIKit.UINavigationBarCustomizations." stringByAppendingString:a1];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:v1];

  return v3;
}

void __setCustomizationDataForIdentifier(void *a1, uint64_t a2)
{
  v3 = a1;
  v5 = [@"com.apple.UIKit.UINavigationBarCustomizations." stringByAppendingString:a2];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setObject:v3 forKey:v5];
}

void _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection(uint64_t a1, double a2, double a3)
{
  if (fabs(a2) > 6.28318531)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection(CGFloat, CGFloat, _UIInterfaceOrientationRotationDirection)"}];
    [v7 handleFailureInFunction:v8 file:@"_UIDirectionalRotationView.m" lineNumber:15 description:@"fromAngle should be constrained within ±2π"];
  }

  if (fabs(a3) > 6.28318531)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection(CGFloat, CGFloat, _UIInterfaceOrientationRotationDirection)"}];
    [v9 handleFailureInFunction:v10 file:@"_UIDirectionalRotationView.m" lineNumber:16 description:@"toAngle should be constrained within ±2π"];
  }

  v6 = a3 - a2;
  if (a1 == 2)
  {
      ;
    }
  }

  else if (a1 == 1)
  {
    while (v6 < 0.0)
    {
      v6 = v6 + 6.28318531;
    }
  }
}

uint64_t _UIInterfaceOrientationRotationDirectionForRotationFromInterfaceOrientationToInterfaceOrientation(uint64_t a1, uint64_t a2, int a3)
{
  if ((a1 - 3) < 2 != (a2 - 3) < 2)
  {
    v3 = 0.0;
    v4 = 0.0;
    if (a1 != 1)
    {
      if (a1 == 3)
      {
        v4 = 1.57079633;
      }

      else if (a1 == 4)
      {
        v4 = -1.57079633;
      }

      else
      {
        v4 = 3.14159265;
        if (a1 != 2)
        {
          v4 = 0.0;
        }
      }
    }

    if (a2 != 1)
    {
      if (a2 == 3)
      {
        v3 = 1.57079633;
      }

      else if (a2 == 4)
      {
        v3 = -1.57079633;
      }

      else
      {
        v3 = 3.14159265;
        if (a2 != 2)
        {
          v3 = 0.0;
        }
      }
    }

    return _UIInterfaceOrientationRotationDirectionForRotationFromAngleToAngle(a3, v4, v3);
  }

  else if (a3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t _UIInterfaceOrientationRotationDirectionForRotationFromAngleToAngle(int a1, double a2, double a3)
{
  _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection(1, a2, a3);
  v7 = fabs(v6);
  _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection(2, a2, a3);
  v9 = fabs(v8);
  v10 = vabdd_f64(v7, v9);
  if (a1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (v7 < v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v10 >= 2.22044605e-16)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

uint64_t _UIInterfaceOrientationFromCATransform3D(_OWORD *a1)
{
  if (_MergedGlobals_1397 != -1)
  {
    dispatch_once(&_MergedGlobals_1397, &__block_literal_global_718);
  }

  v2 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v2;
  v3 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v3;
  v4 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v4;
  v5 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v5;
  if (!MEMORY[0x18CFE42C0](&a))
  {
    return 0;
  }

  v6 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v6;
  v7 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v7;
  v8 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v8;
  v9 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v9;
  v23 = *byte_1ED4A2D88;
  if (CATransform3DEqualToTransform(&a, &v23))
  {
    return 1;
  }

  v11 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v11;
  v12 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v12;
  v13 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v13;
  v14 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v14;
  v23 = *byte_1ED4A2E88;
  if (CATransform3DEqualToTransform(&a, &v23))
  {
    return 4;
  }

  v15 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v15;
  v16 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v16;
  v17 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v17;
  v18 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v18;
  v23 = *byte_1ED4A2F08;
  if (CATransform3DEqualToTransform(&a, &v23))
  {
    return 3;
  }

  v19 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v19;
  v20 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v20;
  v21 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v21;
  v22 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v22;
  v23 = *byte_1ED4A2E08;
  if (CATransform3DEqualToTransform(&a, &v23))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void _UIMakeBasicTransformAnimationUnambiguousWithOrientations(void *a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a2 && a3)
  {
    v5 = 0.0;
    v6 = 0.0;
    if (a2 != 1)
    {
      if (a2 == 3)
      {
        v6 = 1.57079633;
      }

      else if (a2 == 4)
      {
        v6 = -1.57079633;
      }

      else
      {
        v6 = 3.14159265;
        if (a2 != 2)
        {
          v6 = 0.0;
        }
      }
    }

    if (a3 != 1)
    {
      if (a3 == 3)
      {
        v5 = 1.57079633;
      }

      else if (a3 == 4)
      {
        v5 = -1.57079633;
      }

      else
      {
        v5 = 3.14159265;
        if (a3 != 2)
        {
          v5 = 0.0;
        }
      }
    }

    _UIMakeBasicTransformAnimationUnambiguousWithAngles(a1, a4, a5, v6, v5);
  }
}

void _UIMakeBasicTransformAnimationUnambiguousWithAngles(void *a1, int a2, unsigned int a3, double a4, double a5)
{
  v9 = a1;
  v10 = _UIInterfaceOrientationRotationDirectionForRotationFromAngleToAngle(a2 | a3, a4, a5);
  _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection(v10, a4, a5);
  if (a3)
  {
    v12 = -v11;
  }

  else
  {
    v12 = v11;
  }

  [v9 setFromValue:0];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [v9 setByValue:v13];

  v14 = MEMORY[0x1E696AD98];
  v15 = [v9 isAdditive];
  v16 = 0.0;
  if (!v15)
  {
    v16 = a5;
  }

  v17 = [v14 numberWithDouble:v16];
  [v9 setToValue:v17];

  v18 = [MEMORY[0x1E6979540] functionWithName:*MEMORY[0x1E697A078]];
  [v9 setValueFunction:v18];
}

void sub_18A3D7CEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

double _targetFrameForTargetedPreviewInContainerView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = [v3 target];
  v6 = [v3 view];
  v7 = [v5 container];
  v8 = v7;
  if (!v6 || !v7)
  {

LABEL_6:
    v23 = *MEMORY[0x1E695F050];
    goto LABEL_7;
  }

  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v5 center];
  v18 = v17;
  v20 = v19;
  [v8 _currentScreenScale];
  UIRectCenteredAboutPointScale(v10, v12, v14, v16, v18, v20, v21);
  [v8 convertRect:v4 toCoordinateSpace:?];
  v23 = v22;

LABEL_7:
  return v23;
}

void sub_18A3D9BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UISolariumNewStackedImageRenderingEnabled()
{
  v0 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumNewStackedImageRenderingEnabled, @"UISolariumNewStackedImageRenderingEnabled", _UIInternalPreferenceUpdateInteger);
  v1 = qword_1EA95E8F0;
  if (v0)
  {
    v1 = 0;
  }

  if (v1 == 1)
  {
    return 1;
  }

  if (v1)
  {
    return 0;
  }

  return _UISolariumEnabled();
}

void _setCornerCurveOnLayer(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = MEMORY[0x1E69796E8];
    if (!a1)
    {
      v3 = MEMORY[0x1E69796E0];
    }

    [v4 setCornerCurve:*v3];
  }

  else
  {
    [v4 setContinuousCorners:a1];
  }
}

void sub_18A3E57B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGImage *CachedShadowContents(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (qword_1EA994AB8 != -1)
  {
    dispatch_once(&qword_1EA994AB8, &__block_literal_global_673);
  }

  v11 = [_UIStackedImageShadowImageKey keyWithShadowRadius:a1 cornerRadius:a2 isContinuousCorner:a3 white:a4 alpha:a5];
  v12 = [qword_1EA994AC0 objectForKey:v11];
  v13 = v12;
  if (a2 != 0.0 && !v12)
  {
    v14 = a2 + a2;
    v15 = 1.0;
    if (a1)
    {
      [MEMORY[0x1E6979398] cornerCurveExpansionFactor:{*MEMORY[0x1E69796E8], 1.0}];
    }

    v16 = v14 + v15 * a3 + v14 + v15 * a3;
    v17 = v14 + v14 + v16;
    v18 = +[UIColor blackColor];
    v19 = [v18 CGColor];

    v20 = [UIColor colorWithWhite:a4 alpha:a5];
    v21 = [v20 CGColor];

    LODWORD(v5) = vcvtpd_s64_f64(v17);
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    if (v5 < 1)
    {
      v25 = 0;
    }

    else
    {
      v23 = AlignedBytesPerRow;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v25 = CGBitmapContextCreate(0, v5, v5, 8uLL, v23, DeviceRGB, 0x2002u);
      CGColorSpaceRelease(DeviceRGB);
      if (v25)
      {
        v34.origin.x = 0.0;
        v34.origin.y = 0.0;
        v34.size.width = v5;
        v34.size.height = v5;
        CGContextClearRect(v25, v34);
        CGContextTranslateCTM(v25, 0.0, v5);
        CGContextScaleCTM(v25, 1.0, -1.0);
        CGContextGetCTM(&v31, v25);
        CGContextSetBaseCTM();
      }
    }

    v33.width = 0.0;
    v33.height = v14 + v16;
    CGContextSetShadowWithColor(v25, v33, v14, v21);
    CGContextSetFillColorWithColor(v25, v19);
    if (a3 <= 0.0)
    {
      v35.origin.x = (v17 - v16) * 0.5;
      v35.origin.y = -v16;
      v35.size.width = v16;
      v35.size.height = v16;
      CGContextFillRect(v25, v35);
    }

    else
    {
      v26 = (v17 - v16) * 0.5;
      v27 = -v16;
      if (a1)
      {
        [UIBezierPath _continuousRoundedRectBezierPath:-1 withRoundedCorners:16 cornerRadius:v26 segments:v27, v16, v16, a3, a3];
      }

      else
      {
        [UIBezierPath bezierPathWithRoundedRect:v26 cornerRadius:v27, v16, v16, a3];
      }
      v28 = ;
      CGContextAddPath(v25, [v28 CGPath]);
      CGContextFillPath(v25);
    }

    Image = CGBitmapContextCreateImage(v25);
    CGContextRelease(v25);
    if (Image)
    {
      v13 = Image;
      [qword_1EA994AC0 setObject:v13 forKey:v11];
      CGImageRelease(v13);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

void __placeholderBackgroundColor_block_invoke()
{
  v1 = [UIColor colorWithWhite:0.7 alpha:1.0];
  v0 = v1;
  qword_1EA994AA8 = CGColorRetain([v1 CGColor]);
}

void __CachedShadowContents_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1EA994AC0;
  qword_1EA994AC0 = v0;
}

__CFString *_NSStringFromUIImageSymbolWeight(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E712BBB8[a1];
  }
}

__CFString *_UIImageSymbolConfigurationTextualSummary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ([v1 _isUnspecified] & 1) != 0)
  {
    v3 = @"Unspecified";
    goto LABEL_48;
  }

  v4 = [MEMORY[0x1E695DF70] array];
  if (v2[10])
  {
    [v2 customFontPointSizeMultiplier];
    if (fabs(v5 + -1.0) <= 2.22044605e-16)
    {
      v7 = [v2 textStyle];
      v8 = _NSStringFromUIFontTextStyle(v7);
      [v4 addObject:v8];
    }

    else
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [v2 textStyle];
      v8 = _NSStringFromUIFontTextStyle(v7);
      [v2 customFontPointSizeMultiplier];
      v10 = [v6 stringWithFormat:@"%@ (%gx)", v8, v9];
      [v4 addObject:v10];
    }

    [v2 pointSizeForScalingWithTextStyle];
    if (v11 > 0.0)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scaled from %gpt", *&v11];
      [v4 addObject:v12];
    }
  }

  if (v2[5])
  {
    [v2 customFontPointSizeMultiplier];
    v14 = MEMORY[0x1E696AEC0];
    v15 = *(v2 + 20);
    if (fabs(v13 + -1.0) <= 2.22044605e-16)
    {
      v18 = 0;
      if (v15)
      {
        v18 = v2[4];
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%gpt", v18, v46];
    }

    else
    {
      v16 = 0;
      if (v15)
      {
        v16 = v2[4];
      }

      [v2 customFontPointSizeMultiplier];
      [v14 stringWithFormat:@"%gpt (%gx)", v16, v17];
    }
    v19 = ;
    [v4 addObject:v19];
  }

  if (v2[9])
  {
    v20 = _NSStringFromUIImageSymbolWeight([v2 weight]);
    [v4 addObject:v20];
  }

  if ([v2 _hasSpecifiedScale])
  {
    v21 = [v2 scale] + 1;
    if (v21 > 4)
    {
      v22 = @"Unknown";
    }

    else
    {
      v22 = off_1E712BC08[v21];
    }

    [v4 addObject:v22];
  }

  if ([v2 _prefersMulticolor])
  {
    v23 = @"Prefers Multicolor";
LABEL_30:
    [v4 addObject:v23];
    goto LABEL_31;
  }

  if ([v2 _prefersMonochrome])
  {
    v23 = @"Prefers Monochrome";
    goto LABEL_30;
  }

LABEL_31:
  if (v2[6])
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = [v2 _namedColorStyles];
    v26 = [v25 allKeys];
    v27 = [v26 componentsJoinedByString:{@", "}];
    v28 = [v24 stringWithFormat:@"Named Color Styles: %@", v27];
    [v4 addObject:v28];
  }

  if ([v2 _hasSpecifiedHierarchicalColors])
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = [v2 _colors];
    v31 = [v30 valueForKeyPath:@"systemColorName"];
    v32 = [v31 componentsJoinedByString:{@", "}];
    v33 = [v29 stringWithFormat:@"Hierarchical Color: %@", v32];
    [v4 addObject:v33];
  }

  if ([v2 _hasSpecifiedPaletteColors])
  {
    v34 = MEMORY[0x1E696AEC0];
    v35 = [v2 _colors];
    v36 = [v35 valueForKeyPath:@"systemColorName"];
    v37 = [v36 componentsJoinedByString:{@", "}];
    v38 = [v34 stringWithFormat:@"Palette Colors: %@", v37];
    [v4 addObject:v38];
  }

  if ([v2 variableValueMode])
  {
    v39 = [v2 variableValueMode];
    if (v39 > 2)
    {
      v40 = @"?";
    }

    else
    {
      v40 = off_1E712BC30[v39];
    }

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Variable Value Mode: %@", v40];
    [v4 addObject:v41];
  }

  if ([v2 colorRenderingMode])
  {
    v42 = [v2 colorRenderingMode];
    if (v42 > 2)
    {
      v43 = @"?";
    }

    else
    {
      v43 = off_1E712BC48[v42];
    }

    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Color Rendering Mode: %@", v43];
    [v4 addObject:v44];
  }

  v3 = [v4 componentsJoinedByString:{@", "}];

LABEL_48:

  return v3;
}

__CFString *_NSStringFromUIFontTextStyle(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"UICTFontTextStyleTitle0"])
  {
    v2 = @"Large Title";
  }

  else if ([v1 isEqualToString:@"UICTFontTextStyleTitle1"])
  {
    v2 = @"Title 1";
  }

  else if ([v1 isEqualToString:@"UICTFontTextStyleTitle2"])
  {
    v2 = @"Title 2";
  }

  else if ([v1 isEqualToString:@"UICTFontTextStyleTitle3"])
  {
    v2 = @"Title 3";
  }

  else if ([v1 isEqualToString:@"UICTFontTextStyleHeadline"])
  {
    v2 = @"Headline";
  }

  else if ([v1 isEqualToString:@"UICTFontTextStyleSubhead"])
  {
    v2 = @"Subheadline";
  }

  else if ([v1 isEqualToString:@"UICTFontTextStyleBody"])
  {
    v2 = @"Body";
  }

  else if ([v1 isEqualToString:@"UICTFontTextStyleCallout"])
  {
    v2 = @"Callout";
  }

  else if ([v1 isEqualToString:@"UICTFontTextStyleFootnote"])
  {
    v2 = @"Footnote";
  }

  else if ([v1 isEqualToString:@"UICTFontTextStyleCaption1"])
  {
    v2 = @"Caption 1";
  }

  else if ([v1 isEqualToString:@"UICTFontTextStyleCaption2"])
  {
    v2 = @"Caption 2";
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

id _UIPopoverPresentationControllerSourceItemNearestViewController(void *a1)
{
  v1 = _UIPopoverPresentationControllerSourceItemUpCast(a1);
  v2 = [v1 _nearestViewController];

  return v2;
}

id _UIPopoverPresentationControllerSourceItemObscuredSource(void *a1)
{
  v1 = _UIPopoverPresentationControllerSourceItemUpCast(a1);
  if (v1)
  {
    v2 = [_UIObscuredPopoverPresentationControllerSourceItem obscuredSourceItemForItem:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _UIViewLFLDDescriptionForArray(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_msgSend(@"(\n"), "mutableCopy";
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) _lfld_description];
        [v2 appendFormat:@"\t%@\n", v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [v2 appendString:@""]);

  return v2;
}

void sub_18A3F54C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A3F6A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18A3FB564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A3FB668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __WritingToolsUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED4A2FA8 = result;
  return result;
}

Class __getTCTextCompositionAssistantClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A2FB8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextComposerLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E712BDC0;
    v8 = 0;
    qword_1ED4A2FB8 = _sl_dlopen();
  }

  if (!qword_1ED4A2FB8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextComposerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIResponder+WritingToolsSupport.m" lineNumber:60 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TCTextCompositionAssistant");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTCTextCompositionAssistantClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIResponder+WritingToolsSupport.m" lineNumber:61 description:{@"Unable to find class %s", "TCTextCompositionAssistant"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4A2FB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextComposerLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED4A2FB8 = result;
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke_26()
{
  result = _sl_dlopen();
  qword_1ED499DB8 = result;
  return result;
}

double quadBoundingBox(double *a1)
{
  v3 = a1[4];
  v4 = a1[6];
  if (v3 >= v4)
  {
    v5 = a1[6];
  }

  else
  {
    v5 = a1[4];
  }

  v1 = *a1;
  v2 = a1[2];
  if (v1 >= v2)
  {
    v6 = a1[2];
  }

  else
  {
    v6 = *a1;
  }

  if (v6 >= v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

void updateSubviewsOfScrollContentViews(void *a1, void *a2, id a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_8;
  }

  v8 = [a1 delegate];
  if (!v8)
  {
LABEL_9:
    v9 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if ([a4 containsObject:v8])
  {
    return;
  }

  [a3 addObject:v8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }
  }

  a3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = 0;
  a2 = v8;
LABEL_10:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [a1 sublayers];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        updateSubviewsOfScrollContentViews(*(*(&v15 + 1) + 8 * v14++), a2, a3, a4);
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  if ((v9 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 _setCachedSubviews:a3];
    }
  }
}

uint64_t UIWebClipStatusBarStyleForMetaTagContent(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"black"])
  {
    if ([v1 caseInsensitiveCompare:@"black-translucent"])
    {
      if ([v1 caseInsensitiveCompare:@"hidden"])
      {
        if ([v1 caseInsensitiveCompare:@"light-content"])
        {
          if ([v1 caseInsensitiveCompare:@"dark-content"])
          {
            v2 = 0;
          }

          else
          {
            v2 = 5;
          }
        }

        else
        {
          v2 = 4;
        }
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_18A40755C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getIXApplicationIdentityClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIXApplicationIdentityClass_softClass;
  v7 = getIXApplicationIdentityClass_softClass;
  if (!getIXApplicationIdentityClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIXApplicationIdentityClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getIXApplicationIdentityClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A4089A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getIXAppInstallCoordinatorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIXAppInstallCoordinatorClass_softClass;
  v7 = getIXAppInstallCoordinatorClass_softClass;
  if (!getIXAppInstallCoordinatorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIXAppInstallCoordinatorClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getIXAppInstallCoordinatorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A408A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getIXPromisedInMemoryDataClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIXPromisedInMemoryDataClass_softClass;
  v7 = getIXPromisedInMemoryDataClass_softClass;
  if (!getIXPromisedInMemoryDataClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIXPromisedInMemoryDataClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getIXPromisedInMemoryDataClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A408B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getIXPromisedOutOfBandTransferClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIXPromisedOutOfBandTransferClass_softClass;
  v7 = getIXPromisedOutOfBandTransferClass_softClass;
  if (!getIXPromisedOutOfBandTransferClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIXPromisedOutOfBandTransferClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getIXPromisedOutOfBandTransferClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A408C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A409504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A40B214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id baseURLForWebDocumentView(void *a1)
{
  v1 = [a1 webView];
  v2 = [v1 mainFrame];
  v3 = [v2 dataSource];

  v4 = [v3 response];
  v5 = [v4 URL];

  if (!v5)
  {
    v6 = [v3 request];
    v5 = [v6 URL];
  }

  return v5;
}

Class __getAPActivationPayloadClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A2FD8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AppClipLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E712BEE0;
    v8 = 0;
    qword_1ED4A2FD8 = _sl_dlopen();
  }

  if (!qword_1ED4A2FD8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppClipLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIWebClip.m" lineNumber:56 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("APActivationPayload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAPActivationPayloadClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIWebClip.m" lineNumber:57 description:{@"Unable to find class %s", "APActivationPayload"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4A2FD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppClipLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED4A2FD8 = result;
  return result;
}

void __getIXApplicationIdentityClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IXApplicationIdentity");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIXApplicationIdentityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIXApplicationIdentityClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIWebClip.m" lineNumber:74 description:{@"Unable to find class %s", "IXApplicationIdentity"}];

    __break(1u);
  }
}

void InstallCoordinationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!InstallCoordinationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __InstallCoordinationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E712BEF8;
    v5 = 0;
    InstallCoordinationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!InstallCoordinationLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *InstallCoordinationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIWebClip.m" lineNumber:72 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __InstallCoordinationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  InstallCoordinationLibraryCore_frameworkLibrary = result;
  return result;
}

void __getIXAppInstallCoordinatorClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IXAppInstallCoordinator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIXAppInstallCoordinatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIXAppInstallCoordinatorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIWebClip.m" lineNumber:73 description:{@"Unable to find class %s", "IXAppInstallCoordinator"}];

    __break(1u);
  }
}

void __getIXRestoringDemotedAppInstallCoordinatorClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IXRestoringDemotedAppInstallCoordinator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4A2FE0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIXRestoringDemotedAppInstallCoordinatorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIWebClip.m" lineNumber:80 description:{@"Unable to find class %s", "IXRestoringDemotedAppInstallCoordinator"}];

    __break(1u);
  }
}

void __getIXPlaceholderClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IXPlaceholder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4A2FE8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIXPlaceholderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIWebClip.m" lineNumber:75 description:{@"Unable to find class %s", "IXPlaceholder"}];

    __break(1u);
  }
}

void __getIXPlaceholderAttributesClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IXPlaceholderAttributes");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4A2FF0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIXPlaceholderAttributesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIWebClip.m" lineNumber:76 description:{@"Unable to find class %s", "IXPlaceholderAttributes"}];

    __break(1u);
  }
}

void __getIXPromisedInMemoryDictionaryClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IXPromisedInMemoryDictionary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4A2FF8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIXPromisedInMemoryDictionaryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIWebClip.m" lineNumber:78 description:{@"Unable to find class %s", "IXPromisedInMemoryDictionary"}];

    __break(1u);
  }
}

void __getIXPromisedInMemoryDataClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IXPromisedInMemoryData");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIXPromisedInMemoryDataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIXPromisedInMemoryDataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIWebClip.m" lineNumber:77 description:{@"Unable to find class %s", "IXPromisedInMemoryData"}];

    __break(1u);
  }
}

void __getIXPromisedOutOfBandTransferClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IXPromisedOutOfBandTransfer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIXPromisedOutOfBandTransferClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIXPromisedOutOfBandTransferClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIWebClip.m" lineNumber:79 description:{@"Unable to find class %s", "IXPromisedOutOfBandTransfer"}];

    __break(1u);
  }
}

Class __getSFWebAppDataControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A3008)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SafariServicesLibraryCore_block_invoke_4;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E712BF10;
    v8 = 0;
    qword_1ED4A3008 = _sl_dlopen();
  }

  if (!qword_1ED4A3008)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIWebClip.m" lineNumber:65 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SFWebAppDataController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFWebAppDataControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIWebClip.m" lineNumber:66 description:{@"Unable to find class %s", "SFWebAppDataController"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4A3000 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  qword_1ED4A3008 = result;
  return result;
}

void __getIXUninstallOptionsClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IXUninstallOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIXUninstallOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIXUninstallOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIWebClip.m" lineNumber:81 description:{@"Unable to find class %s", "IXUninstallOptions"}];

    __break(1u);
  }
}

void *__getSBReloadIconForIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_3();
  result = dlsym(v2, "SBReloadIconForIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED4A3010 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_9()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary_4 = result;
  return result;
}

void *__getSBSSpringBoardServerPortSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_3();
  result = dlsym(v2, "SBSSpringBoardServerPort");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED4A3018 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18A40FE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a41);
  objc_destroyWeak(&a47);
  objc_destroyWeak(&a59);
  objc_destroyWeak(&a65);
  objc_destroyWeak((v65 - 216));
  objc_destroyWeak((v65 - 176));
  objc_destroyWeak((v65 - 136));
  objc_destroyWeak((v65 - 128));
  _Unwind_Resume(a1);
}

void sub_18A4102E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_18A4105B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A413C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A4148E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A415648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A416390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A416E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_18A41C3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t DynamicCastUIScrollView(uint64_t a1)
{
  if (!DynamicCastUIScrollView_cls)
  {
    DynamicCastUIScrollView_cls = objc_opt_class();
  }

  if (objc_opt_isKindOfClass())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

Class __getPKScribbleInteractionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED498EA0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PencilKitLibraryCore_block_invoke_4;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E712C230;
    v8 = 0;
    qword_1ED498EA0 = _sl_dlopen();
  }

  if (!qword_1ED498EA0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PencilKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIWebDocumentView.m" lineNumber:107 description:{@"%s", v6[0]}];
    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PKScribbleInteraction");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPKScribbleInteractionClass(void)_block_invoke") description:{@"UIWebDocumentView.m", 108, @"Unable to find class %s", "PKScribbleInteraction"}];
LABEL_10:
    __break(1u);
  }

  qword_1ED498E98 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __PencilKitLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  qword_1ED498EA0 = result;
  return result;
}

uint64_t __richTextTypeIdentifiers_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v1 = [*MEMORY[0x1E6982F98] identifier];
  result = [v0 initWithObjects:{@"Apple Web Archive pasteboard type", v1, objc_msgSend(*MEMORY[0x1E6982E18], "identifier"), 0}];
  qword_1ED498EA8 = result;
  return result;
}

void sub_18A431F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getSSReadingListClass_0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__249;
  v0 = _MergedGlobals_1401;
  v7 = __Block_byref_object_dispose__249;
  v8 = _MergedGlobals_1401;
  if (!_MergedGlobals_1401)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSSReadingListClass_block_invoke_0;
    v2[3] = &unk_1E70F2F20;
    v2[4] = &v3;
    __getSSReadingListClass_block_invoke_0(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_18A43205C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *extractItemProvidersFromDropSession(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 items];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) itemProvider];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSSReadingListClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A3028)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SafariServicesLibraryCore_block_invoke_5;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E712C460;
    v8 = 0;
    qword_1ED4A3028 = _sl_dlopen();
  }

  if (!qword_1ED4A3028)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIWebDocumentViewInteraction.m" lineNumber:128 description:{@"%s", v6[0]}];
    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SSReadingList");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSSReadingListClass(void)_block_invoke") description:{@"UIWebDocumentViewInteraction.m", 129, @"Unable to find class %s", "SSReadingList"}];
LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1401 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  qword_1ED4A3028 = result;
  return result;
}

void *__getTCCAccessPreflightSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = TCCLibrary_0();
  result = dlsym(v2, "TCCAccessPreflight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED4A3030 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *TCCLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TCCLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TCCLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E712C478;
    v6 = 0;
    TCCLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = TCCLibraryCore_frameworkLibrary_0;
  if (!TCCLibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TCCLibrary(void)"];
    v1 = [v0 handleFailureInFunction:v3 file:@"UIWebDocumentViewInteraction.m" lineNumber:122 description:{@"%s", v4[0]}];
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

uint64_t __TCCLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  TCCLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getkTCCServicePhotosSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary_0();
  result = dlsym(v2, "kTCCServicePhotos");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4A3038 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ____whiteListedClassesForDelayedCompetingGestureRecognizers_block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];
  v8 = qword_1ED499DD0;
  qword_1ED499DD0 = v7;
}

void AddShadowPathToView(void *a1)
{
  Mutable = CGPathCreateMutable();
  if (Mutable)
  {
    v3 = Mutable;
    [a1 bounds];
    CGPathAddRect(v3, 0, v7);
    [objc_msgSend(a1 "layer")];
    [objc_msgSend(a1 "layer")];
    v4 = [a1 layer];
    LODWORD(v5) = 1058642330;
    [v4 setShadowOpacity:v5];

    CGPathRelease(v3);
  }
}

uint64_t findPreviousPageIndexGivenYOffset(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = a3 - a2;
  v9 = a2 + ((a3 - a2) >> 1);
  [objc_msgSend(a1 objectAtIndex:{v9), "floatValue"}];
  if (v10 >= a4)
  {
    if (v8 >= 2 && (PreviousPageIndexGivenYOffset = findPreviousPageIndexGivenYOffset(a1, a2, v9 - 1, a4)) != 0)
    {
      return PreviousPageIndexGivenYOffset;
    }

    else
    {
      return 0;
    }
  }

  else if (v9 != a3)
  {
    v11 = findPreviousPageIndexGivenYOffset(a1, v9 + 1, a3, a4);
    if (v11)
    {
      return v11;
    }
  }

  return v9;
}

uint64_t findNextPageIndexGivenYOffset(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = a3 - a2;
  v9 = a2 + ((a3 - a2) >> 1);
  [objc_msgSend(a1 objectAtIndex:{v9), "floatValue"}];
  if (v10 <= a4)
  {
    if (v9 == a3)
    {
      return 0;
    }

    NextPageIndexGivenYOffset = findNextPageIndexGivenYOffset(a1, v9 + 1, a3, a4);
    if (!NextPageIndexGivenYOffset)
    {
      return 0;
    }

    return NextPageIndexGivenYOffset;
  }

  if (v8 >= 2)
  {
    NextPageIndexGivenYOffset = findNextPageIndexGivenYOffset(a1, a2, v9 - 1, a4);
    if (NextPageIndexGivenYOffset)
    {
      return NextPageIndexGivenYOffset;
    }
  }

  return v9;
}

CGPDFDocument *CGPDFDocumentCopy(uint64_t a1, void *a2)
{
  DataProvider = CGPDFDocumentGetDataProvider();
  if (!DataProvider)
  {
    return 0;
  }

  v4 = CGPDFDocumentCreateWithProvider(DataProvider);
  if (!CGPDFDocumentIsUnlocked(v4))
  {
    v5 = [a2 UTF8String];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = "";
    }

    CGPDFDocumentUnlockWithPassword(v4, v6);
  }

  return v4;
}

void sub_18A43DF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A43E1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSSReadingListClass_block_invoke_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4990B8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SafariServicesLibraryCore_block_invoke_6;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E712C500;
    v8 = 0;
    qword_1ED4990B8 = _sl_dlopen();
  }

  if (!qword_1ED4990B8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIWebPDFView.m" lineNumber:64 description:{@"%s", v6[0]}];
    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SSReadingList");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSSReadingListClass(void)_block_invoke") description:{@"UIWebPDFView.m", 65, @"Unable to find class %s", "SSReadingList"}];
LABEL_10:
    __break(1u);
  }

  _MergedGlobals_13_8 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke_6()
{
  result = _sl_dlopen();
  qword_1ED4990B8 = result;
  return result;
}

void sub_18A442CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A442E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A443040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPAudioVideoRoutingPopoverControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPAudioVideoRoutingPopoverController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPAudioVideoRoutingPopoverControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPAudioVideoRoutingPopoverControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIWebPlaybackTargetPicker.m" lineNumber:46 description:{@"Unable to find class %s", "MPAudioVideoRoutingPopoverController"}];

    __break(1u);
  }
}

void MediaPlayerLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E712C518;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIWebPlaybackTargetPicker.m" lineNumber:44 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaPlayerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

void __getMPAVRoutingSheetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPAVRoutingSheet");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPAVRoutingSheetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPAVRoutingSheetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIWebPlaybackTargetPicker.m" lineNumber:48 description:{@"Unable to find class %s", "MPAVRoutingSheet"}];

    __break(1u);
  }
}

void __getMPAVRoutingControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPAVRoutingController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPAVRoutingControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPAVRoutingControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIWebPlaybackTargetPicker.m" lineNumber:45 description:{@"Unable to find class %s", "MPAVRoutingController"}];

    __break(1u);
  }
}

void sub_18A445CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A446230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A446BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A446E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A447150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A447A90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18A449E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A44A778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_18A44D00C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_18A44D9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MainRunLoopDidDraw(__CFRunLoopObserver *a1, uint64_t a2, void *a3)
{
  Main = CFRunLoopGetMain();
  CFRunLoopRemoveObserver(Main, a1, *MEMORY[0x1E695E8D0]);
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [a3 webPlugInDidDraw];

  return [v6 drain];
}

uint64_t _UIWebDoubleTapAtLocation(void *a1, double a2, double a3)
{
  result = [a1 enclosingScrollView];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [a1 contentView];
  [a1 currentDocumentScale];
  v10 = v9;
  [a1 rectOfInterestForPoint:{a2, a3}];
  x = v83.origin.x;
  y = v83.origin.y;
  width = v83.size.width;
  height = v83.size.height;
  if (CGRectIsEmpty(v83))
  {
    goto LABEL_3;
  }

  doubleTapScaleForSize(1, a1);
  v16 = v15;
  if ([a1 considerHeightForDoubleTap])
  {
    doubleTapScaleForSize(0, a1);
  }

  else
  {
    v17 = 1.79769313e308;
  }

  if (v16 >= v17)
  {
    v16 = v17;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [a1 shouldSelectionAssistantReceiveDoubleTapAtPoint:a2 forScale:{a3, v16}], (result & 1) == 0))
  {
    if (v16 == 0.0)
    {
      [v7 bounds];
      v18 = a2;
      v20 = v19;
      v22 = v21;
      [v7 contentSize];
      v76 = v24;
      v78 = v23;
      [v7 contentOffset];
      v72 = v18;
      v74 = v25;
      v80 = v26;
      v70 = a3;
      [v7 convertPoint:v8 fromView:{v18, a3}];
      v28 = v27;
      v30 = v29;
      [v7 convertRect:v8 fromView:{x, y, width, height}];
      v35 = v34;
      v36 = v33;
      v37 = v20 - v34;
      if (v35 > v20)
      {
        v37 = v20;
        v31 = v28;
      }

      v38 = v31 - v37 * 0.5;
      v39 = v22 - v33;
      if (v33 > v22)
      {
        v39 = v22;
        v32 = v30;
      }

      v40 = v32 - v39 * 0.5;
      [objc_msgSend(v8 _scroller];
      v43 = v78 - v42;
      if (v38 < v78 - v42)
      {
        v43 = v38;
      }

      v44 = v76 - v41;
      if (v40 < v76 - v41)
      {
        v44 = v40;
      }

      if (v43 < 0.0)
      {
        v43 = 0.0;
      }

      if (v44 < 0.0)
      {
        v44 = 0.0;
      }

      v45 = round(v43);
      v46 = round(v44);
      v47 = v80;
      if (v74 == v45 && v80 == v46)
      {
        if (v35 <= v20)
        {
          v61 = v45;
        }

        else
        {
          v61 = v69 - v20 * 0.5;
        }

        if (v36 > v22)
        {
          v46 = v30 - v22 * 0.5;
        }

        [objc_msgSend(v8 "_scroller")];
        v47 = v78 - v63;
        if (v61 < v78 - v63)
        {
          v47 = v61;
        }

        v64 = v76 - v62;
        if (v46 < v76 - v62)
        {
          v64 = v46;
        }

        if (v47 < 0.0)
        {
          v47 = 0.0;
        }

        if (v64 < 0.0)
        {
          v64 = 0.0;
        }

        v49 = round(v47);
        v46 = round(v64);
        v50 = v78;
      }

      else
      {
        v49 = v45;
        v50 = v78;
      }

      [v7 contentInset];
      a3 = v70;
      if (v66 + v50 + v65 <= v20)
      {
        a2 = v72;
        if (vabdd_f64(v80, v46) < 60.0)
        {
          goto LABEL_3;
        }
      }

      else
      {
        a2 = v72;
        if (UIWebCurrentUserInterfaceIdiomIsSmallScreen())
        {
          if ([v7 window] && (objc_msgSend(UIApp, "_sceneInterfaceOrientationFromWindow:", objc_msgSend(v7, "window")) - 1) > 1)
          {
            v67 = sqrt((v49 - v74) * (v49 - v74) + (v46 - v80) * (v46 - v80));
          }

          else
          {
            v67 = vabdd_f64(v80, v46);
          }

          v68 = 90.0;
        }

        else
        {
          v67 = sqrt((v49 - v74) * (v49 - v74) + (v46 - v80) * (v46 - v80));
          v68 = 150.0;
        }

        if (v67 < v68)
        {
          goto LABEL_3;
        }
      }

      if ([v7 isScrollEnabled])
      {

        return [v7 setContentOffset:1 animated:{v49, v46}];
      }
    }

    else if (v16 != v10)
    {
      [v7 bounds];
      v79 = v52;
      v81 = v51;
      [v7 minimumZoomScale];
      v77 = v53;
      [v7 maximumZoomScale];
      v75 = v54;
      [v7 convertRect:v8 fromView:{x, y, width, height}];
      v71 = v56;
      v73 = v55;
      if ([v7 isZoomEnabled])
      {
        v57 = v16 / v10;
        if (v77 > v16 / v10)
        {
          v57 = v77;
        }

        if (v57 >= v75)
        {
          v58 = v75;
        }

        else
        {
          v58 = v57;
        }

        v59 = y + height * 0.5;
        if (v71 * v58 > v79)
        {
          v59 = a3;
        }

        if (v73 * v58 <= v81)
        {
          v60 = x + width * 0.5;
        }

        else
        {
          v60 = a2;
        }

        return zoomToCenterWithScale(a1, v60, v59, v58);
      }
    }

LABEL_3:
    result = zoomToMinimumScaleCenteringOnLocation(a1, a2, a3);
    if ((result & 1) == 0)
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {

        return [a1 shouldSelectionAssistantReceiveDoubleTapAtPoint:a2 forScale:{a3, 1.0}];
      }
    }
  }

  return result;
}

uint64_t doubleTapScaleForSize(uint64_t a1, void *a2)
{
  result = [a2 enclosingScrollView];
  if (result)
  {
    [a2 visibleContentRect];
    v5 = v4;
    v7 = v6;
    [a2 zoomedDocumentScale];
    return [a2 doubleTapScalesForSize:{v5, v7}];
  }

  return result;
}

void *zoomToCenterWithScale(void *a1, double a2, double a3, double a4)
{
  result = [a1 enclosingScrollView];
  if (result)
  {
    v9 = result;
    result = [result isZoomEnabled];
    if (result)
    {
      [v9 _zoomAnimationDurationForScale:a4];
      v11 = v10;
      if (objc_opt_respondsToSelector())
      {
        [a1 willZoomToLocation:a2 atScale:a3 forDuration:{a4, v11}];
      }

      return [v9 _zoomToCenter:a2 scale:a3 duration:{a4, v11}];
    }
  }

  return result;
}

uint64_t zoomToMinimumScaleCenteringOnLocation(void *a1, double a2, double a3)
{
  result = [a1 enclosingScrollView];
  if (result)
  {
    v7 = result;
    result = [result isZoomEnabled];
    if (result)
    {
      if (objc_opt_respondsToSelector())
      {
        [a1 willZoomToMinimumScale];
      }

      [a1 currentDocumentScale];
      v9 = v8;
      [v7 bounds];
      [a1 minimumScaleForSize:{v10, v11}];
      if (v9 == v12)
      {
        return 0;
      }

      else
      {
        v13 = v12 / v9;
        [v7 minimumZoomScale];
        v15 = v14;
        [v7 maximumZoomScale];
        if (v15 <= v13)
        {
          v17 = v13;
        }

        else
        {
          v17 = v15;
        }

        if (v17 >= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v17;
        }

        zoomToCenterWithScale(a1, a2, a3, v18);
        return 1;
      }
    }
  }

  return result;
}

uint64_t _UIWebSingleTapZoomAtLocationPreClick(void *a1, double a2, double a3)
{
  result = [a1 enclosingScrollView];
  if (result)
  {
    v7 = result;
    v8 = [a1 contentView];
    [a1 currentDocumentScale];
    v10 = v9;
    [a1 rectOfInterestForPoint:{a2, a3}];
    v15 = v14;
    result = 0;
    if (v12 < 100.0)
    {
      v16 = v12;
      if (v12 > 0.0)
      {
        v17 = v13;
        if (v13 > 0.0 && v13 < 50.0)
        {
          v18 = v11;
          doubleTapScaleForSize(1, a1);
          v20 = v19;
          if ([a1 considerHeightForDoubleTap])
          {
            doubleTapScaleForSize(0, a1);
          }

          else
          {
            v21 = 1.79769313e308;
          }

          if (v20 >= v21)
          {
            v20 = v21;
          }

          if (objc_opt_respondsToSelector() & 1) != 0 && ([a1 shouldSelectionAssistantReceiveDoubleTapAtPoint:a2 forScale:{a3, v20}])
          {
            return 0;
          }

          else
          {
            result = 0;
            if (v20 != 0.0 && v20 - v10 > 0.05)
            {
              [v7 bounds];
              v36 = v23;
              v37 = v22;
              [v7 minimumZoomScale];
              v35 = v24;
              [v7 maximumZoomScale];
              v34 = v25;
              [v7 convertRect:v8 fromView:{v15, v18, v16, v17}];
              v32 = v27;
              v33 = v26;
              result = [v7 isZoomEnabled];
              if (result)
              {
                v28 = v20 / v10;
                if (v35 > v20 / v10)
                {
                  v28 = v35;
                }

                if (v28 >= v34)
                {
                  v29 = v34;
                }

                else
                {
                  v29 = v28;
                }

                v30 = v18 + v17 * 0.5;
                if (v32 * v29 > v36)
                {
                  v30 = a3;
                }

                if (v33 * v29 <= v37)
                {
                  v31 = v15 + v16 * 0.5;
                }

                else
                {
                  v31 = a2;
                }

                zoomToCenterWithScale(a1, v31, v30, v29);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _UIWebSingleTapZoomAtLocationPostClick(void *a1, double a2, double a3)
{
  result = [a1 enclosingScrollView];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [a1 contentView];
  [a1 currentDocumentScale];
  v10 = v9;
  [a1 rectOfInterestForPoint:{a2, a3}];
  x = v75.origin.x;
  y = v75.origin.y;
  width = v75.size.width;
  height = v75.size.height;
  if (CGRectIsEmpty(v75))
  {
    goto LABEL_3;
  }

  doubleTapScaleForSize(1, a1);
  v16 = v15;
  if ([a1 considerHeightForDoubleTap])
  {
    doubleTapScaleForSize(0, a1);
  }

  else
  {
    v17 = 1.79769313e308;
  }

  if (v16 >= v17)
  {
    v16 = v17;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [a1 shouldSelectionAssistantReceiveDoubleTapAtPoint:a2 forScale:{a3, v16}], (result & 1) == 0))
  {
    if (v16 == 0.0)
    {
      if (!UIWebCurrentUserInterfaceIdiomIsSmallScreen())
      {
        [v7 bounds];
        v19 = v18;
        v21 = v20;
        [v7 contentSize];
        v66 = v22;
        v68 = v23;
        [v7 contentOffset];
        v70 = v24;
        v72 = v25;
        [v7 convertPoint:v8 fromView:{a2, a3}];
        v62 = v26;
        v64 = v27;
        [v7 convertRect:v8 fromView:{x, y, width, height}];
        v32 = v31;
        v33 = v30;
        v34 = v19 - v31;
        if (v32 > v19)
        {
          v34 = v19;
          v28 = v62;
        }

        v35 = v28 - v34 * 0.5;
        v36 = v21 - v30;
        if (v30 > v21)
        {
          v36 = v21;
          v29 = v64;
        }

        v37 = v29 - v36 * 0.5;
        [objc_msgSend(v8 _scroller];
        v40 = v66 - v39;
        if (v35 < v66 - v39)
        {
          v40 = v35;
        }

        v41 = v68 - v38;
        if (v37 < v68 - v38)
        {
          v41 = v37;
        }

        if (v40 < 0.0)
        {
          v40 = 0.0;
        }

        if (v41 < 0.0)
        {
          v41 = 0.0;
        }

        v42 = round(v40);
        v43 = round(v41);
        if (v70 == v42 && v72 == v43)
        {
          if (v32 <= v61)
          {
            v45 = v42;
          }

          else
          {
            v45 = v62 - v61 * 0.5;
          }

          if (v33 <= v21)
          {
            v46 = v43;
          }

          else
          {
            v46 = v64 - v21 * 0.5;
          }

          [objc_msgSend(v8 "_scroller")];
          v49 = v66 - v48;
          if (v45 < v66 - v48)
          {
            v49 = v45;
          }

          v50 = v68 - v47;
          if (v46 < v68 - v47)
          {
            v50 = v46;
          }

          if (v49 < 0.0)
          {
            v49 = 0.0;
          }

          if (v50 < 0.0)
          {
            v50 = 0.0;
          }

          v42 = round(v49);
          v43 = round(v50);
        }

        if (sqrt((v42 - v70) * (v42 - v70) + (v43 - v72) * (v43 - v72)) >= 300.0 && [v7 isScrollEnabled])
        {

          return [v7 setContentOffset:1 animated:{v42, v43}];
        }
      }
    }

    else if (vabdd_f64(v16, v10) > 0.1)
    {
      [v7 bounds];
      v71 = v52;
      v73 = v51;
      [v7 minimumZoomScale];
      v69 = v53;
      [v7 maximumZoomScale];
      v67 = v54;
      [v7 convertRect:v8 fromView:{x, y, width, height}];
      v63 = v56;
      v65 = v55;
      if ([v7 isZoomEnabled])
      {
        v57 = v16 / v10;
        if (v69 > v16 / v10)
        {
          v57 = v69;
        }

        if (v57 >= v67)
        {
          v58 = v67;
        }

        else
        {
          v58 = v57;
        }

        v59 = y + height * 0.5;
        if (v63 * v58 > v71)
        {
          v59 = a3;
        }

        if (v65 * v58 <= v73)
        {
          v60 = x + width * 0.5;
        }

        else
        {
          v60 = a2;
        }

        return zoomToCenterWithScale(a1, v60, v59, v58);
      }
    }

LABEL_3:
    result = zoomToMinimumScaleCenteringOnLocation(a1, a2, a3);
    if ((result & 1) == 0)
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {

        return [a1 shouldSelectionAssistantReceiveDoubleTapAtPoint:a2 forScale:{a3, 1.0}];
      }
    }
  }

  return result;
}

double _UIWebRotateToFrame(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [a1 enclosingScrollView];
  if (!v10)
  {
    return *MEMORY[0x1E695F058];
  }

  v11 = v10;
  v101 = a2;
  v103 = a3;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [a1 zoomedDocumentScale];
  v21 = v20;
  [a1 minimumScaleForSize:{v17, v19}];
  v23 = v22;
  v105 = a5;
  [a1 scalesForContainerSize:{a4, a5}];
  v26 = v25;
  v102 = v23;
  if (v21 >= v23)
  {
    v27 = v21;
  }

  else
  {
    v27 = v23;
  }

  v28 = v24;
  v106 = v27;
  [a1 updateBoundariesOfScrollView:v11 withScales:v26];
  v99 = v17;
  v100 = v19;
  [objc_msgSend(a1 "contentView")];
  v98 = v29;
  v111 = v30;
  v112 = v31;
  v33 = v32;
  [a1 rectOfInterestForRotation];
  y = v113.origin.y;
  v35 = a4;
  width = v113.size.width;
  height = v113.size.height;
  x = v113.origin.x;
  v104 = v35;
  if (CGRectIsEmpty(v113))
  {
    v38 = v35 / (v33 / v21);
    [v11 contentOffset];
    v40 = v39;
    [a1 minimumVerticalContentOffset];
    if (v40 <= v41)
    {
      v43 = 1;
    }

    else
    {
      [v11 contentSize];
      if (v40 == v42 - v100)
      {
        v43 = 2;
      }

      else
      {
        v43 = 0;
      }
    }

    v110 = v33;
    v44 = v98;
    y = v111;
    height = v112;
  }

  else
  {
    v110 = width;
    v38 = v35 / (width / v21) + v35 / (width / v21) * -0.05;
    v43 = 0;
    if ([a1 considerHeightOfRectOfInterestForRotation])
    {
      if (v38 >= v105 / (height / v21) + v105 / (height / v21) * -0.05)
      {
        v38 = v105 / (height / v21) + v105 / (height / v21) * -0.05;
      }
    }

    else
    {
      y = v111;
      height = v112;
    }

    v44 = x;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 scaleForProposedNewScale:v38 andOldScale:v106];
    v38 = v45;
  }

  if (v38 >= v28)
  {
    v46 = v28;
  }

  else
  {
    v46 = v38;
  }

  if (v46 >= v26)
  {
    v47 = v46;
  }

  else
  {
    v47 = v26;
  }

  [v11 setFrame:{v101, v103, v104, v105}];
  if (objc_opt_respondsToSelector())
  {
    [a1 contentSizeForScrollView:v11];
    [v11 setContentSize:?];
  }

  if (v21 == v102 || (v26 = v47, v47 != v106))
  {
    [v11 setZoomScale:v26 / v106];
  }

  v114.origin.x = v44;
  v114.origin.y = y;
  v114.size.width = v110;
  v114.size.height = height;
  if (!CGRectIsEmpty(v114))
  {
    v48 = [a1 contentView];
    v49 = [a1 enclosingScrollView];
    [v49 bounds];
    v51 = v50;
    v107 = v52;
    v109 = v44;
    [v49 convertRect:v48 fromView:{v44, y, v110, height}];
    v54 = v53;
    v56 = v55;
    v59 = v58 + (v51 - v57) * -0.5;
    if (v104 == v99 && v105 == v100)
    {
      v60 = *MEMORY[0x1E695F050];
      v61 = *(MEMORY[0x1E695F050] + 8);
      v62 = *(MEMORY[0x1E695F050] + 16);
      v63 = *(MEMORY[0x1E695F050] + 24);
    }

    else
    {
      [a1 activeRectForRectOfInterest:{v109, y, v110, height}];
      v60 = v64;
      v61 = v65;
      v62 = v66;
      v63 = v67;
    }

    v68 = round(v59);
    v115.origin.x = v60;
    v115.origin.y = v61;
    v115.size.width = v62;
    v115.size.height = v63;
    IsEmpty = CGRectIsEmpty(v115);
    if (IsEmpty)
    {
      v70 = v107;
      v71 = round(v54 + (v107 - v56) * -0.5);
    }

    else
    {
      [v49 convertRect:v48 fromView:{v60, v61, v62, v63}];
      v72 = v116.origin.x;
      v73 = v116.origin.y;
      v74 = v116.size.width;
      v75 = v116.size.height;
      MidY = CGRectGetMidY(v116);
      [a1 heightToKeepVisible];
      v78 = round(MidY + v77 * -0.5);
      v117.origin.x = v72;
      v117.origin.y = v73;
      v117.size.width = v74;
      v117.size.height = v75;
      v79 = CGRectGetMinX(v117) + -20.0;
      if (v68 >= v79)
      {
        v68 = v79;
      }

      v118.origin.x = v72;
      v118.origin.y = v73;
      v118.size.width = v74;
      v118.size.height = v75;
      v80 = CGRectGetMinY(v118) + -20.0;
      if (v78 >= v80)
      {
        v78 = v80;
      }

      v119.origin.x = v72;
      v119.origin.y = v73;
      v119.size.width = v74;
      v119.size.height = v75;
      v81 = CGRectGetMaxX(v119) + 20.0 - v51;
      if (v68 < v81)
      {
        v68 = v81;
      }

      v120.origin.x = v72;
      v120.origin.y = v73;
      v120.size.width = v74;
      v120.size.height = v75;
      v70 = v107;
      v82 = CGRectGetMaxY(v120) + 20.0 - v107;
      if (v78 >= v82)
      {
        v71 = v78;
      }

      else
      {
        v71 = v82;
      }
    }

    [v49 contentSize];
    v84 = v83;
    v86 = v85;
    [v49 contentInset];
    v91 = v84 + v89 + v90 - v51;
    if (v68 < v91)
    {
      v91 = v68;
    }

    v92 = v86 + v87 + v88 - v70;
    if (v71 < v92)
    {
      v92 = v71;
    }

    if (v91 < 0.0)
    {
      v91 = 0.0;
    }

    if (v92 < 0.0)
    {
      v92 = 0.0;
    }

    v93 = round(v91);
    v94 = round(v92);
    if (IsEmpty)
    {
      v44 = v109;
      if (v43 == 2)
      {
        [v49 contentSize];
        v94 = v96 - v70;
      }

      else if (v43 == 1)
      {
        [a1 minimumVerticalContentOffset];
        v94 = v95;
      }
    }

    else
    {
      v44 = v109;
    }

    [v49 setContentOffset:{v93, v94}];
  }

  return v44;
}

BOOL isDeferredElementVisibleInMenu_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 children];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __isDeferredElementVisibleInMenu_block_invoke_0;
  v8[3] = &unk_1E712ABC8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

void sub_18A4555A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A455F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A456B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A4580F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t __isDeferredElementVisibleInMenu_block_invoke_0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([v6 isEqual:*(a1 + 32)] & 1) != 0 || objc_msgSend(v6, "_isInlineGroup") && isDeferredElementVisibleInMenu_0(*(a1 + 32), v6))
  {
    v7 = 1;
    *a4 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *TelephonyUtilitiesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TelephonyUtilitiesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E712C850;
    v6 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = TelephonyUtilitiesLibraryCore_frameworkLibrary_0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIWebURLAction.m" lineNumber:37 description:{@"%s", v4[0]}];

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

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_18A45D088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TextInputUILibraryCore_block_invoke_27()
{
  result = _sl_dlopen();
  qword_1ED49A420 = result;
  return result;
}

BOOL _UIShowPocketMask()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_ShowPocketMask, _UIInternalPreferencesRevisionVar == _UIInternalPreference_ShowPocketMask))
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

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_ShowPocketMask, @"ShowPocketMask", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_ShowPocketMask;
    }

    while (v0 != _UIInternalPreference_ShowPocketMask);
  }

  return byte_1ED48B9A4 && v1;
}

void sub_18A46296C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id javaScriptDialogTitle(void *a1)
{
  v1 = [objc_msgSend(objc_msgSend(a1 "dataSource")];
  if ([v1 isFileURL])
  {
    v2 = [v1 path];
    v3 = [v2 lastPathComponent];
    if (![v3 length])
    {
      return v2;
    }
  }

  else
  {
    v3 = [objc_msgSend(v1 "scheme")];
    [v3 appendFormat:@"://%@", objc_msgSend(v1, "host")];
  }

  return v3;
}

void sub_18A462C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18A462F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_18A466320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t getToken(void *a1, void *a2)
{
  if ([a2 isFileURL])
  {

    return [a2 path];
  }

  else
  {
    v5 = [a1 port];
    if (v5)
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@:%d", objc_msgSend(a1, "protocol"), objc_msgSend(objc_msgSend(a1, "host"), "_web_decodeHostName"), v5];
    }

    else
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", objc_msgSend(a1, "protocol"), objc_msgSend(objc_msgSend(a1, "host"), "_web_decodeHostName"), v6];
    }
  }
}

void sub_18A46F7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A46FB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  _Block_object_dispose((v19 - 112), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A470124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A470EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A471A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getCKAllowedSharingOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKAllowedSharingOptionsClass_softClass;
  v7 = getCKAllowedSharingOptionsClass_softClass;
  if (!getCKAllowedSharingOptionsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKAllowedSharingOptionsClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getCKAllowedSharingOptionsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A472004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A4725E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getCKPreSharingContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKPreSharingContextClass_softClass;
  v7 = getCKPreSharingContextClass_softClass;
  if (!getCKPreSharingContextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKPreSharingContextClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getCKPreSharingContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18A473178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A4734D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCKSystemSharingUIObserverClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKSystemSharingUIObserver");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKSystemSharingUIObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKSystemSharingUIObserverClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UICloudSharingController.m" lineNumber:65 description:{@"Unable to find class %s", "CKSystemSharingUIObserver"}];

    __break(1u);
  }
}

void *CloudKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CloudKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E712CC18;
    v6 = 0;
    CloudKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CloudKitLibraryCore_frameworkLibrary;
  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UICloudSharingController.m" lineNumber:60 description:{@"%s", v4[0]}];

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

uint64_t __CloudKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __getLPLinkMetadataClass_block_invoke_1(uint64_t a1)
{
  LinkPresentationLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPLinkMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49A868 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPLinkMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UICloudSharingController.m" lineNumber:70 description:{@"Unable to find class %s", "LPLinkMetadata"}];

    __break(1u);
  }
}

void LinkPresentationLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __LinkPresentationLibraryCore_block_invoke_2;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E712CC30;
    v5 = 0;
    LinkPresentationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!LinkPresentationLibraryCore_frameworkLibrary_0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkPresentationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UICloudSharingController.m" lineNumber:69 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __LinkPresentationLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __getLPImagePropertiesClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPImageProperties");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49A870 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPImagePropertiesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UICloudSharingController.m" lineNumber:72 description:{@"Unable to find class %s", "LPImageProperties"}];

    __break(1u);
  }
}

void __getLPImageClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49A878 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPImageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UICloudSharingController.m" lineNumber:71 description:{@"Unable to find class %s", "LPImage"}];

    __break(1u);
  }
}

void __getCKModifyRecordsOperationClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKModifyRecordsOperation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKModifyRecordsOperationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKModifyRecordsOperationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UICloudSharingController.m" lineNumber:62 description:{@"Unable to find class %s", "CKModifyRecordsOperation"}];

    __break(1u);
  }
}

void __getCKAllowedSharingOptionsClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKAllowedSharingOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKAllowedSharingOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKAllowedSharingOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UICloudSharingController.m" lineNumber:61 description:{@"Unable to find class %s", "CKAllowedSharingOptions"}];

    __break(1u);
  }
}

void __getCKPreSharingContextClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKPreSharingContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKPreSharingContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKPreSharingContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UICloudSharingController.m" lineNumber:63 description:{@"Unable to find class %s", "CKPreSharingContext"}];

    __break(1u);
  }
}

void *__getCKXPCSuitableErrorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary();
  result = dlsym(v2, "CKXPCSuitableError");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKXPCSuitableErrorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _UIFlexInteractionBeginSignpostInterval(void *a1)
{
  v1 = [a1 delegate];
  kdebug_trace();
}

void _UIFlexInteractionEndSignpostInterval(void *a1)
{
  v1 = [a1 delegate];
  kdebug_trace();
}

void sub_18A475728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&a29);
  objc_destroyWeak((v30 - 192));
  _Unwind_Resume(a1);
}

void sub_18A476CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A476F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getFPItemManagerClass_block_invoke(uint64_t a1)
{
  FileProviderLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FPItemManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_7_16 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFPItemManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDocumentSharingController.m" lineNumber:51 description:{@"Unable to find class %s", "FPItemManager"}];

    __break(1u);
  }
}

void FileProviderLibrary_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FileProviderLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FileProviderLibraryCore_block_invoke_5;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E712CCB8;
    v5 = 0;
    FileProviderLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!FileProviderLibraryCore_frameworkLibrary_1)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIDocumentSharingController.m" lineNumber:48 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __FileProviderLibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  FileProviderLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void __getFPSandboxingURLWrapperClass_block_invoke_0(uint64_t a1)
{
  FileProviderLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FPSandboxingURLWrapper");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49AED0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFPSandboxingURLWrapperClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDocumentSharingController.m" lineNumber:49 description:{@"Unable to find class %s", "FPSandboxingURLWrapper"}];

    __break(1u);
  }
}

void _UIFocusRotaryRingConfigureShadowForLayer(void *a1)
{
  v10 = a1;
  v1 = _UIInternalPreferenceUsesDefault(&unk_1ED48BA28, @"RotaryFocusRingShadowColor", _UIInternalPreferenceUpdateDouble);
  v2 = *&qword_1ED48BA30;
  if (v1)
  {
    v2 = 0.0;
  }

  v3 = [UIColor colorWithWhite:v2 alpha:1.0];
  [v10 setShadowColor:{objc_msgSend(v3, "CGColor")}];

  v4 = _UIInternalPreferenceUsesDefault(algn_1ED48BA38, @"RotaryFocusRingShadowOpacity", _UIInternalPreferenceUpdateDouble);
  HIDWORD(v5) = HIDWORD(qword_1ED48BA40);
  *&v5 = *&qword_1ED48BA40;
  if (v4)
  {
    *&v5 = 0.8;
  }

  [v10 setShadowOpacity:v5];
  v6 = _UIInternalPreferenceUsesDefault(algn_1ED48BA48, @"RotaryFocusRingShadowRadius", _UIInternalPreferenceUpdateDouble);
  v7 = *&qword_1ED48BA50;
  if (v6)
  {
    v7 = 4.0;
  }

  [v10 setShadowRadius:v7];
  if (_UIInternalPreferenceUsesDefault(algn_1ED48BA58, @"RotaryFocusRingShadowOffset", _UIInternalPreferenceUpdateDouble))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *&qword_1ED48BA60;
  }

  if (_UIInternalPreferenceUsesDefault(algn_1ED48BA58, @"RotaryFocusRingShadowOffset", _UIInternalPreferenceUpdateDouble))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = *&qword_1ED48BA60;
  }

  [v10 setShadowOffset:{v8, v9}];
}

void sub_18A47A41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCKOperationProgressCallbackClassesSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED4A3118)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CloudKitLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E712CCD8;
    v7 = 0;
    qword_1ED4A3118 = _sl_dlopen();
  }

  v2 = qword_1ED4A3118;
  if (!qword_1ED4A3118)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"_UIShareInvitationRemoteViewController.m" lineNumber:32 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CKOperationProgressCallbackClasses");
  *(*(a1[4] + 8) + 24) = result;
  _MergedGlobals_1404 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __CloudKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED4A3118 = result;
  return result;
}

id MakeConversionHandler(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __MakeConversionHandler_block_invoke;
  aBlock[3] = &unk_1E7124760;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

id __MakeConversionHandler_block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [a2 mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    v7 = *off_1E70EC918;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 isEqualToString:@"_UITextFormattingSizeAttributeName"];
        v11 = *(a1 + 32);
        if (v10)
        {
          v12 = [v11 valueForKey:@"_UITextFormattingSizeAttributeName"];
          [v12 floatValue];
          v14 = v13;

          v15 = [v3 valueForKey:v7];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 fontWithSize:v14];
            [v3 setValue:v17 forKey:v7];
          }
        }

        else
        {
          v18 = [v11 valueForKey:v9];
          v19 = [MEMORY[0x1E695DFB0] null];

          if (v18 == v19)
          {
            [v3 removeObjectForKey:v9];
          }

          else
          {
            v20 = [*(a1 + 32) valueForKey:v9];
            [v3 setValue:v20 forKey:v9];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  return v3;
}

void SendUpdatesToEditResponder(void *a1, void *a2)
{
  v3 = a2;
  v4 = MakeConversionHandler(a1);
  [v3 updateTextAttributesWithConversionHandler:v4];
}

void sub_18A47B7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A47C6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_18A47D3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A47D978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A47DEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A47E108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18A481AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void TextFormattingUILibraryCore()
{
  if (!TextFormattingUILibraryCore_frameworkLibrary)
  {
    TextFormattingUILibraryCore_frameworkLibrary = _sl_dlopen();
  }
}

uint64_t __TextFormattingUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TextFormattingUILibraryCore_frameworkLibrary = result;
  return result;
}

id _UIClickPresentationBackgroundEffects(int a1)
{
  if (a1 && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v1 = objc_claimAutoreleasedReturnValue(), v2 = [v1 userInterfaceIdiom], v1, !v2))
  {
    v3 = [MEMORY[0x1E695DF70] array];
    if (!_AXSReduceMotionEnabled() && !_AXSEnhanceBackgroundContrastEnabled())
    {
      v5 = [_UIZoomEffect zoomEffectWithMagnitude:0.024];
      [v3 addObject:v5];
    }

    v6 = [UIBlurEffect effectWithBlurRadius:10.0];
    [v3 addObject:v6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t IsGelatoEnabled()
{
  v0 = _os_feature_enabled_impl();
  v1 = _UIKitUserDefaults();
  v2 = [v1 objectForKey:@"_NSSharingServiceGelatoEnabled"];
  if (v2)
  {
    v3 = _UIKitUserDefaults();
    v4 = [v3 BOOLForKey:@"_NSSharingServiceGelatoEnabled"];
  }

  else
  {
    v4 = 1;
  }

  return v0 & v4;
}

id _UITextFormattingViewControllerEmphasisStyleClasses()
{
  if (qword_1ED4A3128 != -1)
  {
    dispatch_once(&qword_1ED4A3128, &__block_literal_global_741);
  }

  v1 = _MergedGlobals_1405;

  return v1;
}

void sub_18A483F60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_18A486368(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_18A488C38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_18A488FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18A4921A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18A492E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18A4945A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

_UIWindowScenePreservedPlacement *_UIWindowScenePlacementForLegacyFlags(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6 = a1 | a2 | a3;
  if (v6 & 1) != 0 || (a4)
  {
    if (!a1 || (a2 & 1) != 0 || (a3 & 1) != 0 || (a4 & 1) != 0)
    {
      if ((v6 | a4 ^ 1))
      {
        if (!a2 || (a3 & 1) != 0 || (a4 & 1) != 0)
        {
          if ((a1 | a2 | a3 ^ 1))
          {
            v9 = 0;
          }

          else
          {
            v9 = objc_alloc_init(_UIWindowScenePreservedPlacement);
            [(_UIWindowScenePreservedPlacement *)v9 setKeepInBackground:a4];
          }
        }

        else
        {
          v9 = +[UIWindowSceneProminentPlacement prominentPlacement];
          [(_UIWindowScenePreservedPlacement *)v9 _setPrefersLargeSize:a1];
        }

        goto LABEL_17;
      }

      v8 = _UIWindowSceneBackgroundPlacement;
    }

    else
    {
      v8 = _UIWindowSceneFullscreenPlacement;
    }

    v7 = objc_alloc_init(v8);
  }

  else
  {
    v7 = +[UIWindowSceneStandardPlacement standardPlacement];
  }

  v9 = v7;
LABEL_17:

  return v9;
}

id _UIWindowScenePlacementForStyleAndSizeCategory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a3 = a1;
  }

  if (a3)
  {
    v5 = _UIWindowScenePlacementForLegacyFlags(a2 == 1, a3 == 2, 0, 0);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _UIWindowScenePresentationStyleFromPlacement(void *a1)
{
  v1 = a1;
  if (v1 && [objc_opt_class() _placementType] == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

BOOL _UIWindowSceneActivationRequestOptionsHaveModifiedStyleOrSize(void *a1)
{
  v1 = a1;
  if ([v1 preferredPresentationStyle])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 _preferredSizeCategory] != 0;
  }

  return v2;
}

uint64_t _UIEventHIDEventWantsImmediateDelivery()
{
  v0 = BKSHIDEventGetBaseAttributes();
  if (([v0 options] & 8) != 0)
  {
    goto LABEL_7;
  }

  if (IOHIDEventGetType() != 11)
  {
    v2 = 0;
    goto LABEL_9;
  }

  if ((v1 = IOHIDEventGetIntegerValue(), (IOHIDEventGetIntegerValue() & 2) != 0) && !v1 || (IOHIDEventGetIntegerValue() & 2) != 0 && !v1)
  {
LABEL_7:
    v2 = 1;
  }

  else
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v5 = IOHIDEventGetSenderID() & 0xFFFFFFFFFFFFFFFDLL;
    if (IntegerValue)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 == 0x8000000800A15171;
    }

    v2 = !v6;
  }

LABEL_9:

  return v2;
}

uint64_t _UIEventHIDEventRemoteTimestamp(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___UIEventHIDEventRemoteTimestamp_block_invoke;
  v3[3] = &unk_1E712CF98;
  v3[4] = &v4;
  v3[5] = a1;
  _UIEventHIDEnumerateChildren(a1, 0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_18A496EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _UIEventHIDIsPencilBarrelEvent()
{
  if (IOHIDEventGetType() != 39)
  {
    return 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  result = 1;
  if (IntegerValue != 5 && IntegerValue != 1)
  {
    if (!IntegerValue)
    {
      return IOHIDEventGetIntegerValue() == 2;
    }

    return 0;
  }

  return result;
}

uint64_t _UIEventHIDGetChildForceStageEvent(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___UIEventHIDGetChildForceStageEvent_block_invoke;
  v3[3] = &unk_1E70F3838;
  v3[4] = &v4;
  _UIEventHIDEnumerateChildren(a1, 41, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_18A497114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIEventHIDGetChildAccessibilityVendorDefinedEvent(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___UIEventHIDGetChildAccessibilityVendorDefinedEvent_block_invoke;
  v3[3] = &unk_1E712CFC0;
  v3[4] = &v4;
  v3[5] = a1;
  _UIEventHIDEnumerateChildren(a1, 1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_18A4971D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _UIEventGetChildScrollVector(uint64_t a1)
{
  if (IOHIDEventGetType() != 6)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGVector _UIEventGetChildScrollVector(IOHIDEventRef)"];
    [v4 handleFailureInFunction:v5 file:@"UIEventHIDHelpers.m" lineNumber:776 description:0];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = "";
  v11 = vdupq_n_s64(0x7FF8000000000000uLL);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___UIEventGetChildScrollVector_block_invoke;
  v6[3] = &unk_1E70F3838;
  v6[4] = &v7;
  _UIEventHIDEnumerateChildren(a1, 6, v6);
  v2 = v8[4];
  _Block_object_dispose(&v7, 8);
  return v2;
}

void sub_18A497398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *_UIEventHIDGetChildScrollEvent(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Children = IOHIDEventGetChildren();
  if (!Children)
  {
    return 0;
  }

  v2 = Children;
  Count = CFArrayGetCount(Children);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    if (IOHIDEventGetType() == 6)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t _UIEventHIDIsScrollEvent(uint64_t a1)
{
  if (IOHIDEventGetType() != 6)
  {
    return 0;
  }

  result = _UIEventHIDShouldTransformEvent();
  if (result)
  {
    return _UIEventHIDGetDescendantPointerEvent(a1) != 0;
  }

  return result;
}

void _UIEventHIDGetTransformEventComponents(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (IOHIDEventGetType() == 17)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___UIEventHIDGetTransformEventComponents_block_invoke;
    v8[3] = &unk_1E71194E8;
    v8[4] = &v17;
    v8[5] = &v13;
    v8[6] = &v9;
    _UIEventHIDEnumerateChildren(a1, 0, v8);
  }

  if (a2)
  {
    *a2 = v18[3];
  }

  if (a3)
  {
    *a3 = v14[3];
  }

  if (a4)
  {
    *a4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void sub_18A497620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _UIEventHIDTransformPhaseForComponentEvent(uint64_t a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    if (!a1)
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "unable to determine transform phase because the hidEvent is nil", buf, 2u);
      }

      return 0;
    }
  }

  else if (!a1)
  {
    v5 = *(__UILogGetCategoryCachedImpl("Assert", &_UIEventHIDTransformPhaseForComponentEvent___s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "unable to determine transform phase because the hidEvent is nil", v6, 2u);
    }

    return 0;
  }

  v2 = IOHIDEventGetPhase() - 1;
  if (v2 <= 7u)
  {
    return qword_18A683EF0[v2];
  }

  return 0;
}

uint64_t _UIEventHIDTransformPhaseForComponentPhases(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a2 | a1 | a3;
  if (v3)
  {
    if (a1 == 4 && a2 == 4 && a3 == 4)
    {
      return 4;
    }

    else if (a1 <= 4 && ((1 << a1) & 0x19) != 0 && a2 <= 4 && ((1 << a2) & 0x19) != 0 && a3 <= 4 && ((1 << a3) & 0x19) != 0)
    {
      return 3;
    }

    else
    {
      v3 = 2;
      if (a1 != 2)
      {
        v6 = a1 == 1 || a2 == 1 || a3 == 1;
        if (a3 == 2)
        {
          v6 = 2;
        }

        if (a2 != 2)
        {
          return v6;
        }
      }
    }
  }

  return v3;
}

BOOL _UIEventHIDIsTransformEvent(uint64_t a1)
{
  if (IOHIDEventGetType() != 17)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v3 = 0;
  _UIEventHIDGetTransformEventComponents(a1, &v5, &v4, &v3);
  return (v5 | v4 | v3) != 0;
}

const void *_UIEventHIDGetChildPointerEvent(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Children = IOHIDEventGetChildren();
  if (!Children)
  {
    return 0;
  }

  v2 = Children;
  Count = CFArrayGetCount(Children);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    if (IOHIDEventGetType() == 17)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t _UIEventHIDGetInterfaceOrientationForEvent(uint64_t a1)
{
  v2 = _UIEventHIDUIWindowForHIDEvent();
  v3 = v2;
  if (!v2)
  {
LABEL_8:
    v4 = 1;
    goto LABEL_9;
  }

  v4 = [v2 _windowInterfaceOrientation];
  if ([UIApp isFrontBoard])
  {
    v4 = [v3 _overriddenInterfaceOrientation];
  }

  if (!v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___UIEventHIDGetInterfaceOrientationForEvent_block_invoke;
    v6[3] = &unk_1E70F32F0;
    v7 = v3;
    v8 = a1;
    if (_UIEventHIDGetInterfaceOrientationForEvent_once != -1)
    {
      dispatch_once(&_UIEventHIDGetInterfaceOrientationForEvent_once, v6);
    }

    goto LABEL_8;
  }

LABEL_9:

  return v4;
}

uint64_t _UIEventHIDButtonMaskFromPointerEventAndChildren(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (IOHIDEventGetType() == 17)
  {
    v6[3] = IOHIDEventGetIntegerValue();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___UIEventHIDButtonMaskFromPointerEventAndChildren_block_invoke;
    v4[3] = &unk_1E70F3838;
    v4[4] = &v5;
    _UIEventHIDEnumerateChildren(a1, 0, v4);
  }

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_18A497D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _UIEventHIDConvertPointerLocation3DToWindow(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return *MEMORY[0x1E69792C8];
  }

  v2 = a2;
  IOHIDEventGetFloatValue();
  v4 = v3;
  IOHIDEventGetFloatValue();
  v6 = v5;
  IOHIDEventGetFloatValue();
  v7 = [(UIWindow *)v2 _fbsScene];
  v8 = _UIConvertScenePoint3DToWindow(v7, v2, v4, v6);

  return v8;
}

uint64_t _UIEventGetForceEvent(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___UIEventGetForceEvent_block_invoke;
  v3[3] = &unk_1E70F3838;
  v3[4] = &v4;
  _UIEventHIDEnumerateChildren(a1, 32, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_18A497F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIEventGetAffineTransformForScaleEvent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = IOHIDEventGetType();
  if (result != 7)
  {
    v18 = MEMORY[0x1E695EFD0];
    v19 = *(MEMORY[0x1E695EFD0] + 16);
    *a2 = *MEMORY[0x1E695EFD0];
    *(a2 + 16) = v19;
    v20 = *(v18 + 32);
LABEL_23:
    *(a2 + 32) = v20;
    return result;
  }

  result = IOHIDEventGetDoubleValue();
  v6 = v5;
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v9 = 0.0;
  if (a1 && (result = IOHIDEventGetChildren()) != 0)
  {
    v10 = result;
    result = CFArrayGetCount(result);
    v11 = v8;
    v12 = v7;
    if (result >= 1)
    {
      v13 = result;
      v14 = 0;
      v12 = v7;
      v11 = v8;
      do
      {
        CFArrayGetValueAtIndex(v10, v14);
        result = IOHIDEventGetType();
        if (result == 4)
        {
          IOHIDEventGetDoubleValue();
          v12 = v16;
          result = IOHIDEventGetDoubleValue();
          v11 = v17;
        }

        else if (result == 5)
        {
          result = IOHIDEventGetDoubleValue();
          v9 = v15;
        }

        ++v14;
      }

      while (v13 != v14);
    }
  }

  else
  {
    v11 = v8;
    v12 = v7;
  }

  v21 = MEMORY[0x1E695EFD0];
  v22 = *MEMORY[0x1E695EFD0];
  v23 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v23;
  v24 = *(v21 + 32);
  *(a2 + 32) = v24;
  if (v6 != 0.0)
  {
    *&v31.a = v22;
    *&v31.c = v23;
    *&v31.tx = v24;
    result = CGAffineTransformScale(a2, &v31, v6 + 1.0, v6 + 1.0);
  }

  if (v9 != 0.0)
  {
    v25 = *(a2 + 16);
    *&v30.a = *a2;
    *&v30.c = v25;
    *&v30.tx = *(a2 + 32);
    result = CGAffineTransformRotate(&v31, &v30, -v9);
    v26 = *&v31.c;
    *a2 = *&v31.a;
    *(a2 + 16) = v26;
    *(a2 + 32) = *&v31.tx;
  }

  if (v12 != v7 || v11 != v8)
  {
    v28 = *(a2 + 16);
    *&v30.a = *a2;
    *&v30.c = v28;
    *&v30.tx = *(a2 + 32);
    result = CGAffineTransformTranslate(&v31, &v30, v12, v11);
    v29 = *&v31.c;
    *a2 = *&v31.a;
    *(a2 + 16) = v29;
    v20 = *&v31.tx;
    goto LABEL_23;
  }

  return result;
}

uint64_t _UIEventHIDGetChildVendorDefinedForceStageEvent(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___UIEventHIDGetChildVendorDefinedForceStageEvent_block_invoke;
  v3[3] = &unk_1E70F3838;
  v3[4] = &v4;
  _UIEventHIDEnumerateChildren(a1, 1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_18A498204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIDatePickerStoredLocaleForLocale(void *a1)
{
  v1 = a1;
  if (v1 && ([MEMORY[0x1E695DF58] currentLocale], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v1, "isEqual:", v2), v2, (v3 & 1) == 0))
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _UIDatePickerUserLocaleForLocale(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF58] currentLocale];
  }

  v4 = v3;

  return v4;
}

id _UIDatePickerStoredCalendarForCalendar(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_15;
  }

  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  if ([v1 isEqual:v2])
  {
    goto LABEL_3;
  }

  v4 = [v1 firstWeekday];
  if (v4 != [v2 firstWeekday] || (v5 = objc_msgSend(v1, "minimumDaysInFirstWeek"), v5 != objc_msgSend(v2, "minimumDaysInFirstWeek")))
  {
LABEL_13:
    v3 = v1;
    goto LABEL_14;
  }

  v6 = [v1 locale];
  v7 = [v2 locale];
  if (![v6 isEqual:v7])
  {
LABEL_12:

    goto LABEL_13;
  }

  v8 = [v1 timeZone];
  v9 = [v2 timeZone];
  if (![v8 isEqual:v9])
  {

    goto LABEL_12;
  }

  v10 = [v1 calendarIdentifier];
  v11 = [v2 calendarIdentifier];
  v12 = [v10 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = 0;
LABEL_14:

LABEL_15:

  return v3;
}

id _UIDatePickerUserCalendarForCalendar(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v4 = v3;

  return v4;
}

__CFString *_UIKeyboardTransitionStageToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Begin";
  }

  else
  {
    return off_1E712D038[a1 - 1];
  }
}

void sub_18A49E2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _UIKitRegisterTextEffectsCatalog(void *a1, void *a2)
{
  v3 = MEMORY[0x1E6999368];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithName:v5 fromBundle:v4 error:0];

  v7 = _MergedGlobals_1409;
  _MergedGlobals_1409 = v6;
}

id _UIKitGetTextEffectsCatalog()
{
  v0 = _MergedGlobals_1409;
  if (!_MergedGlobals_1409)
  {
    if (qword_1ED4A3178 != -1)
    {
      dispatch_once(&qword_1ED4A3178, &__block_literal_global_749);
    }

    v0 = qword_1ED4A3170;
  }

  v1 = v0;

  return v1;
}

void _UISharedImageSetPreferredImageScale(double a1)
{
  v2 = __UIKitSharedArtworkManager();
  [v2 setPreferredScale:a1];

  __preferredDeviceScale = a1;
}

double _UISharedImageSetPreferredTraitCollection(void *a1)
{
  v1 = a1;
  v2 = __UIKitSharedArtworkManager();
  [v2 setPreferredTraitCollection:v1];

  [v1 displayScale];
  v4 = v3;

  result = rint(v4);
  __preferredDeviceScale = result;
  return result;
}

id _UIPathForImageWithCacheName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 componentsSeparatedByString:@"_"];
    v3 = [v2 subarrayWithRange:{1, objc_msgSend(v2, "count") - 1}];
    v4 = [v3 componentsJoinedByString:@"_"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _UIImageAtPath(void *a1, void *a2, char a3, int a4)
{
  v7 = a1;
  v8 = a2;
  if ([v7 length])
  {
    v9 = v7;
    v10 = v8;
    if ([v9 length])
    {
      v11 = [v10 bundleIdentifier];
      v12 = &stru_1EFB14550;
      if (v11)
      {
        v12 = v11;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v12, v9];
    }

    else
    {
      v13 = 0;
    }

    os_unfair_lock_lock(&__tableLock);
    Value = __nameTable;
    if (__nameTable)
    {
      Value = CFDictionaryGetValue(__nameTable, v13);
    }

    ImageAtPath = Value;
    if (([ImageAtPath _isCached] & 1) == 0)
    {
      [ImageAtPath _setCached:1];
    }

    os_unfair_lock_unlock(&__tableLock);
    if (!ImageAtPath)
    {
      v16 = _UIImageCollectImagePathsForPath(v9, v10, a3, 0);
      if ([v16 count])
      {
        v17 = +[UIScreen _mainScreenThreadSafeTraitCollection];
        v18 = BestPathForTraits(v16, v17);

        v19 = [UIImage _scaleDefinedByPath:v18];
        v20 = v19;
        if (v19 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = 1.0;
        }

        ImageAtPath = GetImageAtPath(v18, a4, v20);
        if (ImageAtPath)
        {
          os_unfair_lock_lock(&__tableLock);
          v21 = __nameTable;
          if (!__nameTable)
          {
            __nameTable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
            __imageTable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
            v21 = __nameTable;
          }

          if (CFDictionaryContainsKey(v21, v13))
          {
            v22 = CFDictionaryGetValue(__nameTable, v13);

            ImageAtPath = v22;
          }

          else
          {
            [ImageAtPath _setNamed:1];
            [ImageAtPath _setCached:1];
            CFDictionarySetValue(__nameTable, v13, ImageAtPath);
            CFDictionarySetValue(__imageTable, ImageAtPath, v13);
          }

          os_unfair_lock_unlock(&__tableLock);
        }
      }

      else
      {
        ImageAtPath = 0;
      }
    }
  }

  else
  {
    ImageAtPath = 0;
  }

  return ImageAtPath;
}

uint64_t __BestPathForTraits_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [UIImage _idiomDefinedByPath:v7];
  v9 = [UIImage _scaleDefinedByPath:v7];

  v10 = v9;
  if (*(*(*(a1 + 40) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && (v8 == 0x7FFFFFFFFFFFFFFFLL || v8 == [*(a1 + 32) userInterfaceIdiom]))
  {
    if (v10 == 9.22337204e18 || ([*(a1 + 32) displayScale], v11 >= v10))
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
    }
  }

  result = [*(a1 + 32) userInterfaceIdiom];
  if (v8 == result)
  {
    result = [*(a1 + 32) displayScale];
    if (v13 == v10)
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  return result;
}

void FlushCachedImage(void *a1)
{
  v1 = a1;
  if ([v1 _isCached])
  {
    [v1 _setCached:0];
  }
}

void UIKBLADarwinUIPresented_0(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __UIKBLADarwinUIPresented_block_invoke_0;
  block[3] = &unk_1E70F3590;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void UIKBLADarwinUIDismissed_0(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __UIKBLADarwinUIDismissed_block_invoke_0;
  block[3] = &unk_1E70F3590;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id _extendStateRestorationQueue()
{
  if (_MergedGlobals_1410 != -1)
  {
    dispatch_once(&_MergedGlobals_1410, &__block_literal_global_20_11);
  }

  v1 = qword_1ED4A3198;

  return v1;
}

void ___extendStateRestorationQueue_block_invoke()
{
  v0 = dispatch_queue_create("_holdSceneEventResponsesQueue", 0);
  v1 = qword_1ED4A3198;
  qword_1ED4A3198 = v0;
}

void _unsupportedDestinationType(CFTypeID a1)
{
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v2 = CFCopyTypeIDDescription(a1);
  _os_log_send_and_compose_impl();

  _os_crash_msg();
  __break(1u);
}

void _UIViewLogForNotInHierarchyViewHitTestResult(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(__UILogGetCategoryCachedImpl("View", &_UIViewLogForNotInHierarchyViewHitTestResult___s_category) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    if (a1)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = a1;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v7 stringWithFormat:@"<%@: %p>", v10, v8];
    }

    else
    {
      v11 = @"(nil)";
    }

    v12 = v11;
    if (a2)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = a2;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v13 stringWithFormat:@"<%@: %p>", v16, v14];
    }

    else
    {
      v17 = @"(nil)";
    }

    v18 = v17;
    v19 = MEMORY[0x1E696AEC0];
    v20 = a3;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v19 stringWithFormat:@"<%@: %p>", v22, v20];

    *buf = 138543874;
    v25 = v12;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = v23;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Invalid returned hit test result for view in hierarchy: The returned hit test result is invalid and may cause issues as it is not in a window hierarchy: self: %{public}@; hit-tested subview: %{public}@; invalid returned view: %{public}@", buf, 0x20u);
  }
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x1EEDB65A8](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x1EEDB7A68](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x1EEDB9528](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x1EEDBA770](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  MEMORY[0x1EEDBAC40](path);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC58](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAFE0](t, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x1EEDBEF98](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGRect CTFontGetOpticalBoundsForGlyphs(CTFontRef font, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count, CFOptionFlags options)
{
  MEMORY[0x1EEDBF020](font, glyphs, boundingRects, count, options);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x1EEDBF300](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTRunGetImageBounds(CTRunRef run, CGContextRef context, CFRange range)
{
  MEMORY[0x1EEDBF438](run, context, range.location, range.length);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  v1 = MEMORY[0x1EEDBF488](run);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRect NSIntegralRectWithOptions(NSRect aRect, NSAlignmentOptions opts)
{
  MEMORY[0x1EEDC6FD8](opts, aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRect NSUnionRect(NSRect aRect, NSRect bRect)
{
  MEMORY[0x1EEDC7168](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height, bRect.origin, *&bRect.origin.y, bRect.size, *&bRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void UIDataLooksLikeNibArchive()
{
    ;
  }
}

void UISystemFontBoldForSize()
{
    ;
  }
}

void _CVCDiffableDataSourceInitializeWithUpdateItemClass()
{
    ;
  }
}

void _UIDiffableDataSourceApplyDeleteUpdate()
{
    ;
  }
}

void _UIDiffableDataSourceApplyInsertUpdate()
{
    ;
  }
}

void _UIDiffableDataSourceApplyMoveUpdate()
{
    ;
  }
}

void _UIDiffableDataSourceValidateIdentifiers()
{
    ;
  }
}

void _UIDiffableDataSourceValidateIdentifiersForDiff()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

void __CVCForceCastToSnapshotImpl()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___STKCategoryViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_StickerKit))
  {
    return dlopenHelper_StickerKit(result);
  }

  return result;
}

void gotLoadHelper_x20__OBJC_CLASS___STKEmojiAndStickerCollectionViewConfiguration(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_StickerKit))
  {
    dlopenHelper_StickerKit(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___STKEmojiAndStickerCollectionViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_StickerKit))
  {
    return dlopenHelper_StickerKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___STKPrewarmingViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_StickerKit))
  {
    return dlopenHelper_StickerKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___STKRemoteStickerEffectEditorViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_StickerKit))
  {
    return dlopenHelper_StickerKit(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_StickerKit(double a1)
{
  dlopen("/System/Library/Frameworks/StickerKit.framework/StickerKit", 0);
  atomic_store(1u, &dlopenHelperFlag_StickerKit);
  return a1;
}