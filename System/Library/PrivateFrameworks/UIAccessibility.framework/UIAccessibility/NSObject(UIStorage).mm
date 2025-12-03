@interface NSObject(UIStorage)
- (BOOL)_accessibilityCanBecomeNativeFocused;
- (BOOL)_accessibilityHasActionBlockForKey:()UIStorage;
- (BOOL)_accessibilityHasNativeFocusableElements;
- (BOOL)_accessibilityIsContainedByPreferredNativeFocusElement;
- (BOOL)_accessibilityIsContainedByVideoElement;
- (BOOL)_accessibilitySpeakThisCanBeHighlighted;
- (BOOL)_accessibilityUIKitHasNativeFocus;
- (BOOL)_focusRingManagerShouldDrawFocusRingWhenChildrenFocused;
- (BOOL)_isAccessibilityExplorerElement;
- (double)_accessibilityScreenPointForSceneReferencePoint:()UIStorage;
- (double)_accessibilityScreenRectForSceneReferenceRect:()UIStorage;
- (id)_accessibilityAncestorFocusParcel;
- (id)_accessibilityExtendedLabelForFocusParcelWithLabel:()UIStorage;
- (id)_accessibilityFocusContainer;
- (id)_accessibilityNativeFocusAncestor;
- (id)_accessibilityProxyViewAncestorWhenMissingWindow;
- (id)_accessibilitySpeakThisElementWithIdentifier:()UIStorage;
- (id)_accessibilitySpeakThisElementsAndStrings;
- (id)_accessibilityTextForSubhierarchyIncludingHeaders:()UIStorage focusableItems:exclusions:classExclusions:;
- (id)_accessibilityTextRectsForSpeakThisStringRange:()UIStorage;
- (id)dragDescriptorMatchingDictionary:()UIStorage;
- (uint64_t)_accessibilityActivateDragWithDescriptorDictionary:()UIStorage forServiceName:;
- (uint64_t)_accessibilityFocusParcelChildrenCount:()UIStorage;
- (uint64_t)_accessibilityFocusRingStyle;
- (uint64_t)_accessibilityGetBlockForAttribute:()UIStorage;
- (uint64_t)_accessibilityHandleMagicTap;
- (uint64_t)_accessibilityHandleMagicTapForPronunciation;
- (uint64_t)_accessibilityHasNativeFocus;
- (uint64_t)_accessibilityHostPid;
- (uint64_t)_accessibilityInternalHandleStartStopToggle;
- (uint64_t)_accessibilityRemoveAllActionBlocks;
- (uint64_t)_accessibilitySetNativeFocus;
- (uint64_t)_accessibilitySpeakThisMaximumNumberOfElements;
- (uint64_t)_accessibilitySpeakThisShouldScrollTextRects;
- (uint64_t)_accessibilityViewControllerEnablesFocusEverywhereIndependently;
- (uint64_t)_accessibilityViewEnablesFocusEverywhereIndependently;
- (uint64_t)_accessibilityViewHierarchyHasNativeFocus;
- (uint64_t)_iosAccessibilityPerformAction:()UIStorage withValue:fencePort:;
- (void)_accessibilityActionBlock:()UIStorage andValue:forKey:;
- (void)_accessibilityInsertTextAtCursor:()UIStorage;
- (void)_accessibilitySetActionBlock:()UIStorage withValue:forKey:;
- (void)_accessibilitySetBlock:()UIStorage forAttribute:;
- (void)_accessibilitySetFocusRingStyle:()UIStorage;
- (void)_accessibilitySpeakThisElementsAndStrings;
@end

@implementation NSObject(UIStorage)

- (void)_accessibilitySetActionBlock:()UIStorage withValue:forKey:
{
  v16 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a5];
  dictionary = [self _accessibilityValueForKey:@"AccessibilityActionBlockStorageKey"];
  v11 = [self _accessibilityValueForKey:@"AccessibilityActionBlockParameterStorageKey"];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [self _accessibilitySetRetainedValue:dictionary forKey:@"AccessibilityActionBlockStorageKey"];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];

    [self _accessibilitySetRetainedValue:dictionary2 forKey:@"AccessibilityActionBlockParameterStorageKey"];
    v11 = dictionary2;
  }

  if (v16)
  {
    v13 = [v16 copy];
    v14 = _Block_copy(v13);
    [dictionary setObject:v14 forKey:v9];

    if (v8)
    {
      [v11 setObject:v8 forKey:v9];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v11 setObject:null forKey:v9];
    }
  }

  else
  {
    [dictionary removeObjectForKey:v9];
    [v11 removeObjectForKey:v9];
  }
}

- (uint64_t)_accessibilityInternalHandleStartStopToggle
{
  v53 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69887D8] = [MEMORY[0x1E69887D8] sharedInstance];
  ignoreLogging = [mEMORY[0x1E69887D8] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x1E69887D8] identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      _accessibilityApplication = [self _accessibilityApplication];
      v9 = objc_opt_class();
      v46 = NSStringFromClass(v9);
      v10 = _AXStringForArgs();

      if (os_log_type_enabled(v5, v6))
      {
        *buf = 138543362;
        v52 = v10;
        _os_log_impl(&dword_1A9B83000, v5, v6, "%{public}@", buf, 0xCu);
      }
    }
  }

  _accessibilityHandleMagicTapForPronunciation = [self _accessibilityHandleMagicTapForPronunciation];
  mEMORY[0x1E69887D8]2 = [MEMORY[0x1E69887D8] sharedInstance];
  ignoreLogging2 = [mEMORY[0x1E69887D8]2 ignoreLogging];

  if ((ignoreLogging2 & 1) == 0)
  {
    identifier2 = [MEMORY[0x1E69887D8] identifier];
    v15 = AXLoggerForFacility();

    v16 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = AXColorizeFormatLog();
      v47 = NSStringFromBOOL();
      v18 = _AXStringForArgs();

      if (os_log_type_enabled(v15, v16))
      {
        *buf = 138543362;
        v52 = v18;
        _os_log_impl(&dword_1A9B83000, v15, v16, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (_accessibilityHandleMagicTapForPronunciation)
  {
    return 1;
  }

  accessibilityStartStopToggle = [self accessibilityStartStopToggle];
  mEMORY[0x1E69887D8]3 = [MEMORY[0x1E69887D8] sharedInstance];
  ignoreLogging3 = [mEMORY[0x1E69887D8]3 ignoreLogging];

  if ((ignoreLogging3 & 1) == 0)
  {
    identifier3 = [MEMORY[0x1E69887D8] identifier];
    v23 = AXLoggerForFacility();

    v24 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = AXColorizeFormatLog();
      v48 = NSStringFromBOOL();
      v26 = _AXStringForArgs();

      if (os_log_type_enabled(v23, v24))
      {
        *buf = 138543362;
        v52 = v26;
        _os_log_impl(&dword_1A9B83000, v23, v24, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (accessibilityStartStopToggle)
  {
    return 1;
  }

  accessibilityStartStopToggle2 = [*MEMORY[0x1E69DDA98] accessibilityStartStopToggle];
  mEMORY[0x1E69887D8]4 = [MEMORY[0x1E69887D8] sharedInstance];
  ignoreLogging4 = [mEMORY[0x1E69887D8]4 ignoreLogging];

  if ((ignoreLogging4 & 1) == 0)
  {
    identifier4 = [MEMORY[0x1E69887D8] identifier];
    v31 = AXLoggerForFacility();

    v32 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = AXColorizeFormatLog();
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v50 = NSStringFromBOOL();
      v36 = _AXStringForArgs();

      if (os_log_type_enabled(v31, v32))
      {
        *buf = 138543362;
        v52 = v36;
        _os_log_impl(&dword_1A9B83000, v31, v32, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (accessibilityStartStopToggle2)
  {
    return 1;
  }

  _accessibilityHandleMagicTap = [self _accessibilityHandleMagicTap];
  mEMORY[0x1E69887D8]5 = [MEMORY[0x1E69887D8] sharedInstance];
  ignoreLogging5 = [mEMORY[0x1E69887D8]5 ignoreLogging];

  if ((ignoreLogging5 & 1) == 0)
  {
    identifier5 = [MEMORY[0x1E69887D8] identifier];
    v42 = AXLoggerForFacility();

    v43 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = AXColorizeFormatLog();
      v49 = NSStringFromBOOL();
      v45 = _AXStringForArgs();

      if (os_log_type_enabled(v42, v43))
      {
        *buf = 138543362;
        v52 = v45;
        _os_log_impl(&dword_1A9B83000, v42, v43, "%{public}@", buf, 0xCu);
      }
    }
  }

  return _accessibilityHandleMagicTap;
}

- (BOOL)_accessibilityHasActionBlockForKey:()UIStorage
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v3 = [self _accessibilityValueForKey:@"AccessibilityActionBlockStorageKey"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:v2];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_accessibilityActionBlock:()UIStorage andValue:forKey:
{
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a5];
  v8 = [self _accessibilityValueForKey:@"AccessibilityActionBlockStorageKey"];
  v9 = [self _accessibilityValueForKey:@"AccessibilityActionBlockParameterStorageKey"];
  if (v8)
  {
    *a3 = [v8 objectForKey:v11];
    v10 = [v9 objectForKey:v11];
  }

  else
  {
    v10 = 0;
    *a3 = 0;
  }

  *a4 = v10;
}

- (uint64_t)_accessibilityRemoveAllActionBlocks
{
  [self _accessibilitySetRetainedValue:0 forKey:@"AccessibilityActionBlockStorageKey"];

  return [self _accessibilitySetRetainedValue:0 forKey:@"AccessibilityActionBlockParameterStorageKey"];
}

- (void)_accessibilitySetBlock:()UIStorage forAttribute:
{
  v7 = [self _accessibilityValueForKey:@"AccessibilityAttributeBlockStorageKey"];
  if (!v7)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [self _accessibilitySetRetainedValue:dictionary forKey:@"AccessibilityAttributeBlockStorageKey"];
    v7 = dictionary;
  }

  v13 = v7;
  if (a3)
  {
    v8 = _Block_copy(a3);
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v13 setObject:v8 forKey:v9];

    _Block_release(v8);
LABEL_6:
    v11 = v13;
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v13 removeObjectForKey:v10];

  if ([v13 count])
  {
    goto LABEL_6;
  }

  [self _accessibilityRemoveValueForKey:@"AccessibilityAttributeBlockStorageKey"];

  v11 = 0;
LABEL_7:
}

- (uint64_t)_accessibilityGetBlockForAttribute:()UIStorage
{
  v4 = [self _accessibilityValueForKey:@"AccessibilityAttributeBlockStorageKey"];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v6 = [v4 objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_accessibilityFocusRingStyle
{
  v1 = [self _accessibilityValueForKey:@"AXFocusRingStyle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (void)_accessibilitySetFocusRingStyle:()UIStorage
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"AXFocusRingStyle"];
}

- (uint64_t)_accessibilityHandleMagicTapForPronunciation
{
  selfCopy = self;
  if (!selfCopy)
  {
    return 0;
  }

  v2 = selfCopy;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        delegate = [v2 delegate];
        if (objc_opt_respondsToSelector())
        {
          delegate2 = [v2 delegate];
          accessibilityPerformMagicTap = [delegate2 accessibilityPerformMagicTap];

          if (accessibilityPerformMagicTap)
          {
            break;
          }
        }

        else
        {
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        delegate3 = [v2 delegate];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {

          goto LABEL_14;
        }

        delegate4 = [v2 delegate];
        accessibilityPerformMagicTap2 = [delegate4 accessibilityPerformMagicTap];

        if (accessibilityPerformMagicTap2)
        {
          break;
        }
      }
    }

LABEL_14:
    accessibilityContainer = [v2 accessibilityContainer];

    v2 = accessibilityContainer;
    if (!accessibilityContainer)
    {
      v10 = 0;
      goto LABEL_18;
    }
  }

  v10 = 1;
LABEL_18:

  return v10;
}

- (uint64_t)_accessibilityHandleMagicTap
{
  selfCopy = self;
  if (selfCopy)
  {
    delegate5 = selfCopy;
    while (([delegate5 accessibilityPerformMagicTap] & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = [MEMORY[0x1E69DD258] viewControllerForView:delegate5];
        if ([v3 accessibilityPerformMagicTap])
        {
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          delegate = [delegate5 delegate];
          if (objc_opt_respondsToSelector())
          {
            delegate2 = [delegate5 delegate];
            accessibilityPerformMagicTap = [delegate2 accessibilityPerformMagicTap];

            if (accessibilityPerformMagicTap)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          delegate3 = [delegate5 delegate];
          if (objc_opt_respondsToSelector())
          {
            delegate4 = [delegate5 delegate];
            accessibilityPerformMagicTap2 = [delegate4 accessibilityPerformMagicTap];

            if (accessibilityPerformMagicTap2)
            {
LABEL_21:

              break;
            }
          }

          else
          {
          }
        }
      }

      accessibilityContainer = [delegate5 accessibilityContainer];

      delegate5 = accessibilityContainer;
      if (!accessibilityContainer)
      {
        goto LABEL_18;
      }
    }

    accessibilityPerformMagicTap3 = 1;
    goto LABEL_23;
  }

LABEL_18:
  v11 = MEMORY[0x1E69DDA98];
  if (([*MEMORY[0x1E69DDA98] accessibilityPerformMagicTap] & 1) == 0)
  {
    delegate5 = [*v11 delegate];
    accessibilityPerformMagicTap3 = [delegate5 accessibilityPerformMagicTap];
LABEL_23:

    return accessibilityPerformMagicTap3;
  }

  return 1;
}

- (double)_accessibilityScreenPointForSceneReferencePoint:()UIStorage
{
  _accessibilityWindow = [self _accessibilityWindow];
  v6 = _accessibilityWindow;
  if (_accessibilityWindow)
  {
    [_accessibilityWindow _convertPointFromSceneReferenceSpace:{a2, a3}];
    [v6 convertPoint:0 toWindow:?];
    a2 = v7;
  }

  return a2;
}

- (double)_accessibilityScreenRectForSceneReferenceRect:()UIStorage
{
  _accessibilityWindow = [self _accessibilityWindow];
  v10 = _accessibilityWindow;
  if (_accessibilityWindow)
  {
    [_accessibilityWindow _convertRectFromSceneReferenceSpace:{a2, a3, a4, a5}];
    [v10 convertRect:0 toWindow:?];
    a2 = v11;
  }

  return a2;
}

- (id)dragDescriptorMatchingDictionary:()UIStorage
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _accessibilityAllDragSourceDescriptors = [self _accessibilityAllDragSourceDescriptors];
  v6 = [_accessibilityAllDragSourceDescriptors countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(_accessibilityAllDragSourceDescriptors);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 matchesDictionaryRepresentation:v4])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [_accessibilityAllDragSourceDescriptors countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (uint64_t)_accessibilityActivateDragWithDescriptorDictionary:()UIStorage forServiceName:
{
  v6 = a3;
  v7 = a4;
  v8 = [self dragDescriptorMatchingDictionary:v6];
  view = [v8 view];
  [v8 point];
  v11 = v10;
  v13 = v12;
  v14 = *MEMORY[0x1E6988CE0];
  v15 = [v6 objectForKey:*MEMORY[0x1E6988CE0]];

  if (v15)
  {
    v16 = [v6 objectForKey:v14];
    [v16 CGPointValue];
    v11 = v17;
    v13 = v18;
  }

  if (view)
  {
    if ([MEMORY[0x1E6989430] isValidServiceName:v7])
    {
      v19 = dispatch_semaphore_create(0);
      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__2;
      v41 = __Block_byref_object_dispose__2;
      v42 = 0;
      v20 = [objc_alloc(MEMORY[0x1E6989430]) initWithServiceName:v7];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __89__NSObject_UIStorage___accessibilityActivateDragWithDescriptorDictionary_forServiceName___block_invoke;
      v34[3] = &unk_1E78AB430;
      v36 = &v37;
      v21 = v19;
      v35 = v21;
      [v20 getDragEndpoint:v34];
      dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
      v22 = v38[5];
      if (v22)
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v33 = 0;
        v26 = 0;
        v27 = &v26;
        v28 = 0x2020000000;
        v29 = 0;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __89__NSObject_UIStorage___accessibilityActivateDragWithDescriptorDictionary_forServiceName___block_invoke_2;
        v25[3] = &unk_1E78AB458;
        v25[4] = &v30;
        v25[5] = &v26;
        [view _accessibilityBeginDragAtPoint:v22 endpoint:v25 completion:{v11, v13}];
        if (*(v31 + 24) == 1)
        {
          v23 = *(v27 + 24);
        }

        else
        {
          v23 = 1;
        }

        _Block_object_dispose(&v26, 8);
        _Block_object_dispose(&v30, 8);
      }

      else
      {
        v23 = 0;
      }

      _Block_object_dispose(&v37, 8);
    }

    else
    {
      v21 = AXLogDragging();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [NSObject(UIStorage) _accessibilityActivateDragWithDescriptorDictionary:forServiceName:];
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_accessibilityInsertTextAtCursor:()UIStorage
{
  v7 = a3;
  if (!_accessibilityInsertTextAtCursor__BaseFrameForBrowserInsertTextMethod)
  {
    v4 = objc_opt_class();
    _accessibilityInsertTextAtCursor__BaseFrameForBrowserInsertTextMethod = class_getInstanceMethod(v4, sel_browserAccessibilityInsertTextAtCursor_);
  }

  v5 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v5, sel_browserAccessibilityInsertTextAtCursor_);
  if ((objc_opt_respondsToSelector() & 1) == 0 || InstanceMethod == _accessibilityInsertTextAtCursor__BaseFrameForBrowserInsertTextMethod)
  {
    [self _accessibilityInsertText:v7 atPosition:-1];
  }

  else
  {
    [self browserAccessibilityInsertTextAtCursor:v7];
  }
}

- (uint64_t)_iosAccessibilityPerformAction:()UIStorage withValue:fencePort:
{
  v8 = a4;
  if ([self _accessibilityHasActionBlockForKey:a3])
  {
    v84 = 0;
    v85 = 0;
    [self _accessibilityActionBlock:&v85 andValue:&v84 forKey:a3];
    v9 = v85;
    v10 = v84;
    v11 = v10;
    if (v9)
    {
      v12 = v9[2](v9, v10);

      goto LABEL_219;
    }
  }

  v12 = 0;
  if (a3 <= 2504)
  {
    switch(a3)
    {
      case 2001:
        [v8 pointValue];
        [self _accessibilityScreenPointForSceneReferencePoint:?];
        [self accessibilityZoomInAtPoint:?];
        break;
      case 2002:
        [v8 pointValue];
        [self _accessibilityScreenPointForSceneReferencePoint:?];
        [self accessibilityZoomOutAtPoint:?];
        break;
      case 2003:
        _accessibilityScrollToVisible = [self _accessibilityScrollToVisible];
        goto LABEL_176;
      case 2004:
        if (![self _accessibilityShouldPerformIncrementOrDecrement])
        {
          goto LABEL_197;
        }

        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          unsignedIntegerValue = [v8 unsignedIntegerValue];
          if (!unsignedIntegerValue)
          {
            break;
          }
        }

        else
        {
          unsignedIntegerValue = 1;
        }

        do
        {
          v73 = [self _accessibilityGetBlockForAttribute:18];
          v74 = v73;
          if (v73)
          {
            (*(v73 + 16))(v73);
          }

          else
          {
            [self accessibilityIncrement];
          }

          v12 = 1;
          --unsignedIntegerValue;
        }

        while (unsignedIntegerValue);
        goto LABEL_219;
      case 2005:
        if (![self _accessibilityShouldPerformIncrementOrDecrement])
        {
          goto LABEL_197;
        }

        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          unsignedIntegerValue2 = [v8 unsignedIntegerValue];
          if (!unsignedIntegerValue2)
          {
            break;
          }
        }

        else
        {
          unsignedIntegerValue2 = 1;
        }

        do
        {
          v71 = [self _accessibilityGetBlockForAttribute:19];
          v72 = v71;
          if (v71)
          {
            (*(v71 + 16))(v71);
          }

          else
          {
            [self accessibilityDecrement];
          }

          v12 = 1;
          --unsignedIntegerValue2;
        }

        while (unsignedIntegerValue2);
        goto LABEL_219;
      case 2006:
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          bOOLValue = [v8 BOOLValue];
          selfCopy2 = self;
        }

        else
        {
          selfCopy2 = self;
          bOOLValue = 1;
        }

        _accessibilityScrollToVisible = [selfCopy2 _accessibilityScrollDownPage:bOOLValue];
        goto LABEL_176;
      case 2007:
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          bOOLValue2 = [v8 BOOLValue];
          selfCopy4 = self;
        }

        else
        {
          selfCopy4 = self;
          bOOLValue2 = 1;
        }

        _accessibilityScrollToVisible = [selfCopy4 _accessibilityScrollUpPage:bOOLValue2];
        goto LABEL_176;
      case 2008:
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          bOOLValue3 = [v8 BOOLValue];
          selfCopy6 = self;
        }

        else
        {
          selfCopy6 = self;
          bOOLValue3 = 1;
        }

        _accessibilityScrollToVisible = [selfCopy6 _accessibilityScrollRightPage:bOOLValue3];
        goto LABEL_176;
      case 2009:
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          bOOLValue4 = [v8 BOOLValue];
          selfCopy8 = self;
        }

        else
        {
          selfCopy8 = self;
          bOOLValue4 = 1;
        }

        _accessibilityScrollToVisible = [selfCopy8 _accessibilityScrollLeftPage:bOOLValue4];
        goto LABEL_176;
      case 2010:
        _accessibilityScrollToVisible = [self accessibilityActivate];
        goto LABEL_176;
      case 2011:
        _accessibilityScrollToVisible = [self _accessibilityInternalHandleStartStopToggle];
        goto LABEL_176;
      case 2012:
        _accessibilityScrollToVisible = [self _accessibilityTextOperationAction:v8];
        goto LABEL_176;
      case 2013:
        _accessibilityScrollToVisible = [self _accessibilityPerformEscape];
        goto LABEL_176;
      case 2014:
        [v8 pointValue];
        [self _accessibilityScreenPointForSceneReferencePoint:?];
        [self _accessibilityScrollToPoint:?];
        break;
      case 2015:
        [self _accessibilityIncreaseSelection:v8];
        break;
      case 2016:
        [self _accessibilityDecreaseSelection:v8];
        break;
      case 2017:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 count] != 2)
        {
          goto LABEL_197;
        }

        v40 = [v8 objectAtIndex:0];
        bOOLValue5 = [v40 BOOLValue];
        v42 = [v8 objectAtIndex:1];
        [self _accessibilityFindSearchResult:bOOLValue5 withString:v42];

        v12 = 1;
        goto LABEL_219;
      case 2018:
        [self _accessibilityChangeToKeyplane:v8];
        break;
      case 2019:
        _accessibilityScrollToVisible = [self _accessibilityScrollNextPage];
        goto LABEL_176;
      case 2020:
        _accessibilityScrollToVisible = [self _accessibilityScrollPreviousPage];
        goto LABEL_176;
      case 2021:
        _accessibilityScrollToVisible = [self _accessibilityPerformCustomActionWithIdentifier:v8];
        goto LABEL_176;
      case 2022:
        [self _accessibilityJumpToTableIndex:v8];
        break;
      case 2023:
        _accessibilityScrollToVisible = [self _accessibilityTriggerDictationFromPath:v8];
        goto LABEL_176;
      case 2024:
        _accessibilityScrollToVisible = [MEMORY[0x1E6988D80] registerRemoteElement:v8 remotePort:a5];
        goto LABEL_176;
      case 2025:
        [self _accessibilityAnnouncementComplete:v8];
        break;
      case 2026:
        _accessibilityScrollToVisible = [self _accessibilityAutoscrollInDirection:{objc_msgSend(v8, "intValue")}];
        goto LABEL_176;
      case 2027:
        [self _accessibilityPauseAutoscrolling];
        break;
      case 2028:
        [self _accessibilityIncreaseAutoscrollSpeed];
        break;
      case 2029:
        [self _accessibilityDecreaseAutoscrollSpeed];
        break;
      case 2030:
        [self _accessibilityAutoscrollScrollToTop];
        break;
      case 2031:
        [self _accessibilityAutoscrollScrollToBottom];
        break;
      case 2032:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_197;
        }

        [v8 floatValue];
        [self _accessibilitySetAutoscrollSpeed:v25];
        break;
      case 2033:
        _accessibilityScrollToVisible = [self accessibilityExpandMathEquation:v8];
        goto LABEL_176;
      case 2034:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_197;
        }

        firstObject = [MEMORY[0x1E6989870] representationWithData:v8];
        v43 = [self _accessibilityDispatchKeyboardAction:firstObject];
        goto LABEL_179;
      case 2035:
        _accessibilityScrollToVisible = [self _accessibilityDismissAlternativeKeyPicker];
        goto LABEL_176;
      case 2036:
        _accessibilityScrollToVisible = [self _accessibilitySecondaryActivate];
        goto LABEL_176;
      case 2037:
        [self accessibilityIncreaseTrackingDetail];
        break;
      case 2038:
        [self accessibilityDecreaseTrackingDetail];
        break;
      case 2039:
        [v8 rectValue];
        [self _accessibilityScreenRectForSceneReferenceRect:?];
        [self _accessibilityScrollRectToVisible:?];
        break;
      case 2040:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_197;
        }

        _accessibilityScrollToVisible = [self _accessibilityLoadURL:v8];
        goto LABEL_176;
      case 2041:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_197;
        }

        _accessibilityScrollToVisible = [self _accessibilityPerformUserTestingAction:v8];
        goto LABEL_176;
      case 2042:
        _accessibilityScrollToVisible = [self _accessibilityBeginMonitoringIdleRunLoop];
        goto LABEL_176;
      case 2043:
        [self _accessibilityDetectAnimationsNonActive];
        break;
      case 2044:
        _accessibilityScrollToVisible = [self _accessibilitySetNativeFocus];
        goto LABEL_176;
      case 2045:
        _accessibilityScrollToVisible = [self _accessibilityPerformOrbGesture:{objc_msgSend(v8, "intValue")}];
        goto LABEL_176;
      case 2046:
        _accessibilityScrollToVisible = [self _accessibilitySavePhotoLabel:v8];
        goto LABEL_176;
      case 2047:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_197;
        }

        v44 = [v8 objectForKeyedSubscript:@"scrollAmount"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_197;
        }

        v46 = [v8 objectForKeyedSubscript:@"scrollAmount"];
        [v46 floatValue];
        v48 = v47;

        v49 = [v8 objectForKeyedSubscript:@"scrollPoint"];
        objc_opt_class();
        v50 = objc_opt_isKindOfClass();

        if (v50)
        {
          v51 = [v8 objectForKeyedSubscript:@"scrollPoint"];
          [v51 pointValue];
          MidX = v52;
          MidY = v54;
        }

        else
        {
          AXDeviceGetMainScreenBounds();
          x = v86.origin.x;
          y = v86.origin.y;
          width = v86.size.width;
          height = v86.size.height;
          MidX = CGRectGetMidX(v86);
          v87.origin.x = x;
          v87.origin.y = y;
          v87.size.width = width;
          v87.size.height = height;
          MidY = CGRectGetMidY(v87);
        }

        _accessibilityScrollToVisible = [self _animateScrollViewWithScrollAmount:v48 point:{MidX, MidY}];
        goto LABEL_176;
      case 2048:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_197;
        }

        _accessibilityScrollToVisible = [self _accessibilityAlternateActionForURL:v8];
        goto LABEL_176;
      case 2050:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 count] != 2)
        {
          goto LABEL_197;
        }

        v22 = v8;
        firstObject = [v22 objectAtIndexedSubscript:0];
        lastObject = [v22 objectAtIndexedSubscript:1];

        v16 = [self _accessibilityActivateDragWithDescriptorDictionary:lastObject forServiceName:firstObject];
        goto LABEL_53;
      case 2051:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firstObject = v8;
        }

        else
        {
          firstObject = 0;
        }

        v43 = [self _accessibilityShowContextMenuWithTargetPointValue:firstObject];
        goto LABEL_179;
      case 2052:
        if ([self _accessibilityActivateKeyboardDeleteKey])
        {
          goto LABEL_197;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [v8 valueForKey:@"source"];
          v24 = v23;
          if (v23)
          {
            _UIAXSetLastKeyboardUsed(v23);
          }
        }

        v12 = 1;
        [self _accessibilityReplaceCharactersAtCursor:1 withString:0];
        goto LABEL_219;
      case 2053:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_226;
        }

        mEMORY[0x1E69DCC68] = v8;
        v27 = [mEMORY[0x1E69DCC68] objectForKey:@"numberofcharacters"];
        objc_opt_class();
        v28 = objc_opt_isKindOfClass();

        if (v28)
        {
          v29 = [mEMORY[0x1E69DCC68] objectForKey:@"numberofcharacters"];
          unsignedIntegerValue3 = [v29 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue3 = 0;
        }

        objc_opt_class();
        v76 = [mEMORY[0x1E69DCC68] objectForKey:@"replacement"];
        v77 = __UIAccessibilityCastAsClass();

        objc_opt_class();
        v78 = [mEMORY[0x1E69DCC68] objectForKey:@"source"];
        v79 = __UIAccessibilityCastAsClass();

        if (v28)
        {
          if (v79)
          {
            _UIAXSetLastKeyboardUsed(v79);
          }

          [self _accessibilityReplaceCharactersAtCursor:unsignedIntegerValue3 withString:v77];

          goto LABEL_217;
        }

LABEL_226:
        _AXAssert();
        goto LABEL_197;
      case 2054:
        _accessibilityScrollToVisible = [self _accessibilityActivateKeyboardReturnKey];
        goto LABEL_176;
      case 2055:
        objc_opt_class();
        mEMORY[0x1E69DCC68] = __UIAccessibilityCastAsClass();
        if (([self _accessibilityInsertTextWithAlternatives:mEMORY[0x1E69DCC68]] & 1) == 0)
        {
          [self _accessibilityInsertTextAtCursor:mEMORY[0x1E69DCC68]];
        }

        goto LABEL_217;
      case 2056:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          mEMORY[0x1E69DCC68] = __UIAccessibilityCastAsClass();
LABEL_214:
          v67 = 0;
          goto LABEL_215;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          mEMORY[0x1E69DCC68] = 0;
          goto LABEL_214;
        }

        v66 = v8;
        mEMORY[0x1E69DCC68] = [v66 objectForKeyedSubscript:*MEMORY[0x1E6989088]];
        v67 = [v66 objectForKeyedSubscript:*MEMORY[0x1E6989080]];
        v68 = [v66 objectForKeyedSubscript:*MEMORY[0x1E6989078]];
        bOOLValue6 = [v68 BOOLValue];

        if (v67)
        {
          _UIAXSetLastKeyboardUsed(v67);
        }

        if (bOOLValue6)
        {
          [self _accessibilityBeginUndoableTextInsertion];
          [self _accessibilityHandwritingAttributeShouldEchoCharacter];
          [self _accessibilityInsertTextAtCursor:mEMORY[0x1E69DCC68]];
          [self _accessibilityEndUndoableTextInsertion];
          goto LABEL_216;
        }

LABEL_215:
        [self _accessibilityHandwritingAttributeShouldEchoCharacter];
        [self _accessibilityInsertTextAtCursor:mEMORY[0x1E69DCC68]];
LABEL_216:

LABEL_217:
        break;
      case 2057:
        mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
        _accessibilityParentView = [self _accessibilityParentView];
        if ([mEMORY[0x1E69DCC68] isMenuVisible])
        {
          [mEMORY[0x1E69DCC68] hideMenuFromView:_accessibilityParentView];
        }

        else
        {
          [_accessibilityParentView bounds];
          AX_CGRectGetCenter();
          [mEMORY[0x1E69DCC68] showMenuFromView:_accessibilityParentView rect:?];
        }

        goto LABEL_217;
      case 2058:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v57 = [self _accessibilityCurrentlyFocusedElementForTechnology:v8];
          [v57 _accessibilityHandleATFocused:0 assistiveTech:v8];

          [self _accessibilityDidFocusOnOpaqueElement:0 technology:v8];
          v12 = 1;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_191;
      case 2059:
LABEL_191:
        [self _accessibilityShowEditingHUD];
        goto LABEL_219;
      case 2060:
        _accessibilityTextViewTextOperationResponder = [self _accessibilityTextViewTextOperationResponder];
        _accessibilityBeginUndoableTextInsertion = [_accessibilityTextViewTextOperationResponder _accessibilityBeginUndoableTextInsertion];
        goto LABEL_42;
      case 2061:
        _accessibilityTextViewTextOperationResponder = [self _accessibilityTextViewTextOperationResponder];
        _accessibilityBeginUndoableTextInsertion = [_accessibilityTextViewTextOperationResponder _accessibilityEndUndoableTextInsertion];
LABEL_42:
        v12 = _accessibilityBeginUndoableTextInsertion;

        goto LABEL_219;
      case 2062:
        _accessibilityScrollToVisible = [self _accessibilityResetBannerTimer];
        goto LABEL_176;
      case 2064:
        [v8 pointValue];
        _accessibilityScrollToVisible = [self _accessibilityAdjustScrollOffset:?];
        goto LABEL_176;
      case 2065:
        _accessibilityScrollToVisible = [self _accessibilityAuthenticatedPasteWithValue:v8];
        goto LABEL_176;
      case 2066:
        [self _accessibilityShowKeyboard];
        break;
      case 2067:
        [self _accessibilityHideKeyboard];
        break;
      case 2068:
        _accessibilityScrollToVisible = [self _accessibilityScrollToTop];
        goto LABEL_176;
      case 2069:
        _accessibilityScrollToVisible = [self _accessibilityScrollToBottom];
        goto LABEL_176;
      case 2070:
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"UIDictationWillInsertHypothesisNotification" object:0 userInfo:0];
        goto LABEL_196;
      case 2071:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [self _accessibilitySetTextInsertionGlowModeEnabled:{objc_msgSend(v8, "BOOLValue")}];
          break;
        }

        defaultCenter = AXLogAppAccessibility();
        if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
        {
          [NSObject(UIStorage) _iosAccessibilityPerformAction:withValue:fencePort:];
        }

        goto LABEL_196;
      default:
        goto LABEL_219;
    }

LABEL_218:
    v12 = 1;
    goto LABEL_219;
  }

  if (a3 > 5304)
  {
    if (a3 <= 5499)
    {
      if (a3 > 5307)
      {
        if (a3 == 5308)
        {
          [self _accessibilitySetFocusOnElement:{objc_msgSend(v8, "BOOLValue")}];
        }

        else
        {
          if (a3 != 5312)
          {
            goto LABEL_219;
          }

          [self _accessibilityClearLastFocusedChild];
        }

        goto LABEL_218;
      }

      if (a3 != 5305)
      {
        if (a3 != 5307)
        {
          goto LABEL_219;
        }

        [self _accessibilityDidFocusOnApplication];
        goto LABEL_218;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [self _accessibilitySetFocusEnabledInApplication:{objc_msgSend(v8, "BOOLValue")}];
        goto LABEL_218;
      }

      defaultCenter = AXLogFocusEngine();
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
      {
        [NSObject(UIStorage) _iosAccessibilityPerformAction:withValue:fencePort:];
      }

      goto LABEL_196;
    }

    if (a3 <= 6999)
    {
      if (a3 == 5500)
      {
        if ([self conformsToProtocol:&unk_1F1DDB1C0])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [MEMORY[0x1E69DCA30] moveRingToFocusItem:self forClient:v8];
          }

          else
          {
            [MEMORY[0x1E69DCA30] moveRingToFocusItem:self];
          }

          goto LABEL_218;
        }

        v70 = AXLogUI();
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_200;
        }
      }

      else
      {
        if (a3 != 5501)
        {
          goto LABEL_219;
        }

        if ([self conformsToProtocol:&unk_1F1DDB1C0])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [MEMORY[0x1E69DCA30] removeRingFromFocusItem:self forClient:v8];
          }

          else
          {
            [MEMORY[0x1E69DCA30] removeRingFromFocusItem:self];
          }

          goto LABEL_218;
        }

        v70 = AXLogUI();
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_200;
        }
      }

      [NSObject(UIStorage) _iosAccessibilityPerformAction:withValue:fencePort:];
LABEL_200:

      goto LABEL_197;
    }

    if (a3 != 7000)
    {
      if (a3 != 9000)
      {
        goto LABEL_219;
      }

      [self _accessibilitySetCurrentGesture:v8];
      goto LABEL_218;
    }

    objc_opt_class();
    defaultCenter = __UIAccessibilityCastAsClass();
    v64 = [objc_alloc(MEMORY[0x1E69898A8]) initWithDictionaryRepresentation:defaultCenter];
    v65 = +[UIAccessibilityGameController sharedGameController];
    [v65 pressButton:v64];

LABEL_196:
    goto LABEL_197;
  }

  if (a3 <= 4021)
  {
    if (a3 != 2505)
    {
      if (a3 == 4020)
      {
        [self _accessibilityMapsExplorationBeginFromCurrentElement];
      }

      else
      {
        if (a3 != 4021)
        {
          goto LABEL_219;
        }

        [self _accessibilityMapsExplorationContinueWithVertexIndex:{objc_msgSend(v8, "unsignedIntegerValue")}];
      }

      goto LABEL_197;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_197;
    }

    firstObject = [v8 objectForKey:@"replacement"];
    v58 = [v8 objectForKey:@"range"];
    v59 = NSRangeFromString(v58);

    v43 = [self _accessibilityReplaceTextInRange:v59.location withString:{v59.length, firstObject}];
LABEL_179:
    v12 = v43;
LABEL_180:

    goto LABEL_219;
  }

  if (a3 <= 5299)
  {
    if (a3 == 4022)
    {
      [self _accessibilityMapsExplorationEnd];
    }

    else
    {
      if (a3 != 4023)
      {
        goto LABEL_219;
      }

      [v8 pointValue];
      [self _accessibilityMapsExplorationRecordTouchpoint:?];
    }

LABEL_197:
    v12 = 0;
    goto LABEL_219;
  }

  if (a3 != 5300)
  {
    if (a3 != 5304)
    {
      goto LABEL_219;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 count] != 2)
    {
      defaultCenter = AXLogFocusEngine();
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
      {
        [NSObject(UIStorage) _iosAccessibilityPerformAction:withValue:fencePort:];
      }

      goto LABEL_196;
    }

    firstObject = [v8 firstObject];
    unsignedIntegerValue4 = [firstObject unsignedIntegerValue];
    lastObject = [v8 lastObject];
    v16 = [self _accessibilityFocusContainerMoveFocusWithHeading:unsignedIntegerValue4 toElementMatchingQuery:lastObject];
LABEL_53:
    v12 = v16;

    goto LABEL_180;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 count] != 2)
  {
    defaultCenter = AXLogFocusEngine();
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
    {
      [NSObject(UIStorage) _iosAccessibilityPerformAction:withValue:fencePort:];
    }

    goto LABEL_196;
  }

  firstObject2 = [v8 firstObject];
  unsignedIntegerValue5 = [firstObject2 unsignedIntegerValue];

  lastObject2 = [v8 lastObject];
  bOOLValue7 = [lastObject2 BOOLValue];

  _accessibilityScrollToVisible = [self _accessibilityFocusContainerMoveFocusWithHeading:unsignedIntegerValue5 byGroup:bOOLValue7];
LABEL_176:
  v12 = _accessibilityScrollToVisible;
LABEL_219:

  return v12;
}

- (uint64_t)_accessibilitySpeakThisMaximumNumberOfElements
{
  v0 = MGGetProductType();
  v1 = 500;
  if (v0 != 3856877970)
  {
    v1 = 1000;
  }

  if (v0 == 3953847432)
  {
    v2 = 500;
  }

  else
  {
    v2 = v1;
  }

  v3 = 500;
  if (v0 != 2797549163)
  {
    v3 = 1000;
  }

  if (v0 == 2730762296)
  {
    v4 = 500;
  }

  else
  {
    v4 = v3;
  }

  if (v0 <= 3856877969)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  v6 = 500;
  if (v0 != 1549248876)
  {
    v6 = 1000;
  }

  if (v0 == 1517755655)
  {
    v7 = 500;
  }

  else
  {
    v7 = v6;
  }

  if (v0 == 340218669)
  {
    v8 = 500;
  }

  else
  {
    v8 = v7;
  }

  if (v0 <= 2730762295)
  {
    return v8;
  }

  else
  {
    return v5;
  }
}

- (id)_accessibilitySpeakThisElementsAndStrings
{
  _accessibilitySpeakThisMaximumNumberOfElements = [self _accessibilitySpeakThisMaximumNumberOfElements];
  v3 = +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];
  v4 = [self _accessibilityLeafDescendantsWithCount:_accessibilitySpeakThisMaximumNumberOfElements options:v3];
  v5 = AXLogSpeakScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(UIStorage) _accessibilitySpeakThisElementsAndStrings];
  }

  if ([v4 count] == _accessibilitySpeakThisMaximumNumberOfElements)
  {
    v6 = UIKitAccessibilityLocalizedString(@"speakthis.too.much.content");
    v7 = [v4 arrayByAddingObject:v6];

    v8 = AXLogSpeakScreen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A9B83000, v8, OS_LOG_TYPE_INFO, "Had to truncate content.", v10, 2u);
    }

    v4 = v7;
  }

  return v4;
}

- (id)_accessibilitySpeakThisElementWithIdentifier:()UIStorage
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[UIAccessibilityElementTraversalOptions options];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__NSObject_UIStorage___accessibilitySpeakThisElementWithIdentifier___block_invoke;
  v13[3] = &unk_1E78AA760;
  v6 = v4;
  v14 = v6;
  [v5 setLeafNodePredicate:v13];
  v7 = [self _accessibilityLeafDescendantsWithCount:1 shouldStopAtRemoteElement:0 options:v5];
  firstObject = [v7 firstObject];
  v9 = AXLogSpeakScreen();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [firstObject description];
    accessibilityIdentifier = [firstObject accessibilityIdentifier];
    *buf = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = accessibilityIdentifier;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1A9B83000, v9, OS_LOG_TYPE_INFO, "SpeakThisElement %@, accessibilityIdentifier: %@, looking for %@", buf, 0x20u);
  }

  return firstObject;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:()UIStorage
{
  v27[2] = *MEMORY[0x1E69E9840];
  v7 = [self _accessibilityTextMarkerForPosition:?];
  v8 = [self _accessibilityTextMarkerForPosition:a3 + a4];
  v9 = AXLogSpeakScreen();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v7 && v8)
  {
    if (v10)
    {
      [NSObject(UIStorage) _accessibilityTextRectsForSpeakThisStringRange:];
    }

    v27[0] = v7;
    v27[1] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    [self accessibilityBoundsForTextMarkers:v11];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [MEMORY[0x1E696B098] valueWithCGRect:{v13, v15, v17, v19}];
    v26 = v20;
    v21 = &v26;
  }

  else
  {
    if (v10)
    {
      [NSObject(UIStorage) _accessibilityTextRectsForSpeakThisStringRange:];
    }

    v22 = MEMORY[0x1E696B098];
    if ([self _accessibilityBoolValueForKey:@"AXSpeakScreenRectsUseVisibleFrame"])
    {
      [self _accessibilityVisibleFrame];
    }

    else
    {
      [self accessibilityFrame];
    }

    v20 = [v22 valueWithCGRect:?];
    v25 = v20;
    v21 = &v25;
  }

  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

  return v23;
}

- (uint64_t)_accessibilitySpeakThisShouldScrollTextRects
{
  v1 = [self _iosAccessibilityAttributeValue:2301];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue ^ 1u;
}

- (BOOL)_accessibilitySpeakThisCanBeHighlighted
{
  _accessibilityWindow = [self _accessibilityWindow];
  v2 = _accessibilityWindow != 0;

  return v2;
}

- (uint64_t)_accessibilityHasNativeFocus
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([self safeValueForKey:@"_browserAccessibilityStoredValueHasDOMFocus"], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {

    return [self safeBoolForKey:@"browserAccessibilityHasDOMFocus"];
  }

  else
  {

    return [self _accessibilityUIKitHasNativeFocus];
  }
}

- (BOOL)_accessibilityUIKitHasNativeFocus
{
  _accessibilityParentView = [self _accessibilityParentView];
  window = [_accessibilityParentView window];
  windowScene = [window windowScene];
  _accessibilityNativeFocusElement = [windowScene _accessibilityNativeFocusElement];

  return _accessibilityNativeFocusElement == self;
}

- (uint64_t)_accessibilityViewHierarchyHasNativeFocus
{
  _accessibilityNativeFocusElement = [*MEMORY[0x1E69DDA98] _accessibilityNativeFocusElement];
  if (_accessibilityNativeFocusElement == self)
  {
    v3 = 1;
  }

  else
  {
    v3 = [self _accessibilityIsDescendantOfElement:_accessibilityNativeFocusElement];
  }

  return v3;
}

- (uint64_t)_accessibilitySetNativeFocus
{
  selfCopy = [self _accessibilityNativeFocusAncestor];
  if (!selfCopy)
  {
    selfCopy = self;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:selfCopy forKeyedSubscript:@"AXAssignNativeFocusToElementNotificationFocusedItemUserInfoKey"];
  [defaultCenter postNotificationName:@"AXWillAssignNativeFocusToElementNotification" object:0 userInfo:dictionary];
  if (selfCopy && ![selfCopy conformsToProtocol:&unk_1F1DDB1C0])
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    if (([self _accessibilityIsFKARunningForFocusItem] & 1) != 0 || objc_msgSend(self, "_accessibilityShouldSetNativeFocusWhenATVFocused"))
    {
      v5 = _UIAXAssignFocusToItem();
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  [dictionary setObject:v7 forKeyedSubscript:@"AXAssignNativeFocusToElementNotificationDidSucceedUserInfoKey"];

  if ((v6 & 1) == 0)
  {
    selfCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"FocusTarget is not of type UIFocusItem: %@", selfCopy];
    [dictionary setObject:selfCopy forKeyedSubscript:@"AXAssignNativeFocusToElementNotificationFailureReasonUserInfoKey"];
LABEL_21:

    goto LABEL_22;
  }

  if ((v5 & 1) == 0)
  {
    v8 = [MEMORY[0x1E69DCA18] checkFocusabilityForItem:selfCopy];
    v9 = v8;
    if (v8)
    {
      selfCopy = [v8 safeValueForKey:@"_outputString"];
    }

    else
    {
      selfCopy = 0;
    }

    if (selfCopy)
    {
      v11 = selfCopy;
    }

    else
    {
      v11 = @"Unknown";
    }

    [dictionary setObject:v11 forKeyedSubscript:@"AXAssignNativeFocusToElementNotificationFailureReasonUserInfoKey"];

    goto LABEL_21;
  }

LABEL_22:
  [defaultCenter postNotificationName:@"AXDidAssignNativeFocusToElementNotification" object:0 userInfo:dictionary];

  return v5;
}

- (BOOL)_accessibilityCanBecomeNativeFocused
{
  if ([self conformsToProtocol:&unk_1F1DDB1C0])
  {
    selfCopy = self;
    if (![selfCopy canBecomeFocused])
    {
      v5 = 0;
LABEL_13:

      return v5;
    }

    preferredFocusEnvironments = [selfCopy preferredFocusEnvironments];
    if ([preferredFocusEnvironments count] && !objc_msgSend(preferredFocusEnvironments, "containsObject:", selfCopy))
    {
      goto LABEL_10;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 1;
      goto LABEL_12;
    }

    if ([selfCopy _accessibilityViewIsVisible])
    {
      _accessibilityWindow = [selfCopy _accessibilityWindow];
      v5 = _accessibilityWindow != 0;
    }

    else
    {
LABEL_10:
      v5 = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  return 0;
}

- (uint64_t)_accessibilityViewControllerEnablesFocusEverywhereIndependently
{
  v1 = [self _accessibilityGetBlockForAttribute:5011];
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_accessibilityViewEnablesFocusEverywhereIndependently
{
  v1 = [self _accessibilityGetBlockForAttribute:5012];
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_accessibilityNativeFocusAncestor
{
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      if ([selfCopy _acceessibilityUIKitIsUserInteractionDisabled] & 1) == 0 && (objc_msgSend(selfCopy, "_accessibilityCanBecomeNativeFocused"))
      {
        break;
      }

      accessibilityContainer = [selfCopy accessibilityContainer];

      selfCopy = accessibilityContainer;
    }

    while (accessibilityContainer);
  }

  return selfCopy;
}

- (BOOL)_focusRingManagerShouldDrawFocusRingWhenChildrenFocused
{
  if (![self _accessibilityDrawsFocusRingWhenChildrenFocused])
  {
    return 0;
  }

  v2 = [self _accessibilityFindAncestor:&__block_literal_global_3270 startWithSelf:0];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)_accessibilityHasNativeFocusableElements
{
  v1 = [*MEMORY[0x1E69DDA98] _accessibilityNativeFocusableElements:self matchingBlock:0 forExistenceCheckOnly:1];
  v2 = [v1 count] != 0;

  return v2;
}

- (id)_accessibilityFocusContainer
{
  v2 = [self _accessibilityFindAncestor:&__block_literal_global_3272 startWithSelf:1];
  v3 = v2;
  if (v2)
  {
    _accessibilityWindowScene = v2;
  }

  else
  {
    _accessibilityWindowScene = [self _accessibilityWindowScene];
  }

  v5 = _accessibilityWindowScene;

  return v5;
}

- (uint64_t)_accessibilityHostPid
{
  if (!_UIApplicationIsExtension())
  {
    return 0;
  }

  _accessibilityWindow = [self _accessibilityWindow];
  rootViewController = [_accessibilityWindow rootViewController];

  NSClassFromString(&cfstr_Uiviewservicev.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [rootViewController safeIntForKey:@"_hostPID"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_accessibilityIsContainedByPreferredNativeFocusElement
{
  _accessibilityNativeFocusPreferredElement = [*MEMORY[0x1E69DDA98] _accessibilityNativeFocusPreferredElement];
  v3 = _accessibilityNativeFocusPreferredElement;
  if (_accessibilityNativeFocusPreferredElement)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__NSObject_UIStorage___accessibilityIsContainedByPreferredNativeFocusElement__block_invoke;
    v7[3] = &unk_1E78AA760;
    v8 = _accessibilityNativeFocusPreferredElement;
    v4 = [self _accessibilityFindAncestor:v7 startWithSelf:1];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_accessibilityIsContainedByVideoElement
{
  if (_accessibilityIsContainedByVideoElement_onceToken != -1)
  {
    [NSObject(UIStorage) _accessibilityIsContainedByVideoElement];
  }

  if (__PAIR128__(_accessibilityIsContainedByVideoElement_AVInfoPanelViewController, _accessibilityIsContainedByVideoElement_AVPlayerViewControllerClass) == 0)
  {
    return 0;
  }

  v3 = [self _accessibilityFindAncestor:&__block_literal_global_3290 startWithSelf:1];
  v2 = v3 != 0;

  return v2;
}

- (BOOL)_isAccessibilityExplorerElement
{
  _accessibilityNativeFocusPreferredElement = [*MEMORY[0x1E69DDA98] _accessibilityNativeFocusPreferredElement];
  if (![self isAccessibilityElement])
  {
    goto LABEL_4;
  }

  if ([self _accessibilityIsFrameOutOfBoundsConsideringScrollParents:0])
  {
    goto LABEL_4;
  }

  v3 = [self _accessibilityFindAncestor:&__block_literal_global_3295 startWithSelf:1];

  if (v3)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![self _accessibilityViewIsVisible])
  {
    goto LABEL_4;
  }

  NSClassFromString(&cfstr_Uinavigationit.isa);
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  NSClassFromString(&cfstr_Uinavigationit_0.isa);
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  if ([self _accessibilityShouldBeExplorerElementWithoutSystemFocus] && !_accessibilityNativeFocusPreferredElement)
  {
    v4 = 1;
    goto LABEL_5;
  }

  accessibilityTraits = [self accessibilityTraits];
  if ((*MEMORY[0x1E69DD9C8] & accessibilityTraits) != 0 || ([self _accessibilityNativeFocusAncestor], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
LABEL_4:
    v4 = 0;
  }

  else
  {
    _accessibilityAncestorFocusParcel = [self _accessibilityAncestorFocusParcel];
    v4 = 1;
    if (_accessibilityAncestorFocusParcel)
    {
      _accessibilityAncestorFocusParcel2 = [_accessibilityNativeFocusPreferredElement _accessibilityAncestorFocusParcel];

      if (_accessibilityAncestorFocusParcel2 == _accessibilityAncestorFocusParcel)
      {
        v4 = 0;
      }
    }
  }

LABEL_5:

  return v4;
}

- (id)_accessibilityTextForSubhierarchyIncludingHeaders:()UIStorage focusableItems:exclusions:classExclusions:
{
  v10 = a5;
  v11 = a6;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  array = [MEMORY[0x1E695DF70] array];
  _accessibilitySubviews = [self _accessibilitySubviews];
  [array axSafelyAddObjectsFromArray:_accessibilitySubviews];

  if ([array count])
  {
    v15 = *MEMORY[0x1E69DD9C8];
    do
    {
      firstObject = [array firstObject];
      [array removeObject:firstObject];
      if (([firstObject accessibilityElementsHidden] & 1) == 0)
      {
        _accessibilityAXAttributedLabel = [firstObject _accessibilityAXAttributedLabel];
        if ([_accessibilityAXAttributedLabel length] && (objc_msgSend(v10, "containsObject:", _accessibilityAXAttributedLabel) & 1) == 0 && (objc_msgSend(v11, "containsObject:", objc_opt_class()) & 1) == 0 && ((a4 & 1) != 0 || (objc_msgSend(firstObject, "_accessibilityCanBecomeNativeFocused") & 1) == 0) && ((a3 & 1) != 0 || (v15 & objc_msgSend(firstObject, "accessibilityTraits")) == 0))
        {
          [orderedSet addObject:_accessibilityAXAttributedLabel];
        }

        if (([firstObject isAccessibilityElement] & 1) == 0)
        {
          _accessibilitySortedElementsWithin = [firstObject _accessibilitySortedElementsWithin];
          [array axSafelyAddObjectsFromArray:_accessibilitySortedElementsWithin];
        }
      }
    }

    while ([array count]);
  }

  array2 = [orderedSet array];
  v20 = UIAXLabelForElements();

  return v20;
}

- (uint64_t)_accessibilityFocusParcelChildrenCount:()UIStorage
{
  v16 = *MEMORY[0x1E69E9840];
  if ([self _accessibilityCanBecomeNativeFocused])
  {
    ++a3;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    _accessibilitySubviews = [self _accessibilitySubviews];
    v6 = [_accessibilitySubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(_accessibilitySubviews);
          }

          a3 = [*(*(&v11 + 1) + 8 * v9++) _accessibilityFocusParcelChildrenCount:a3];
        }

        while (v7 != v9);
        v7 = [_accessibilitySubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  return a3;
}

- (id)_accessibilityExtendedLabelForFocusParcelWithLabel:()UIStorage
{
  v4 = a3;
  if (!v4)
  {
    _accessibilityCanBecomeNativeFocused = [self _accessibilityCanBecomeNativeFocused];
    _accessibilityAncestorFocusParcel = [self _accessibilityAncestorFocusParcel];
    v15 = MEMORY[0x1E695DEC8];
    _accessibilityAXAttributedValue = [self _accessibilityAXAttributedValue];
    v5 = [v15 axArrayByIgnoringNilElementsWithCount:{1, _accessibilityAXAttributedValue}];
    v13 = [_accessibilityAncestorFocusParcel _accessibilityTextForSubhierarchyIncludingHeaders:_accessibilityCanBecomeNativeFocused focusableItems:0 exclusions:v5];
    goto LABEL_9;
  }

  v5 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  _accessibilityAncestorFocusParcel2 = [self _accessibilityAncestorFocusParcel];
  _accessibilityAncestorFocusParcel = _accessibilityAncestorFocusParcel2;
  if (_accessibilityAncestorFocusParcel2 && _accessibilityAncestorFocusParcel2 != self)
  {
    _accessibilityCanBecomeNativeFocused2 = [self _accessibilityCanBecomeNativeFocused];
    v9 = MEMORY[0x1E695DEC8];
    _accessibilityAXAttributedValue2 = [self _accessibilityAXAttributedValue];
    v11 = [v9 axArrayByIgnoringNilElementsWithCount:{1, _accessibilityAXAttributedValue2}];
    _accessibilityAXAttributedValue = [_accessibilityAncestorFocusParcel _accessibilityTextForSubhierarchyIncludingHeaders:_accessibilityCanBecomeNativeFocused2 focusableItems:0 exclusions:v11];

    if ([v5 axContainsString:_accessibilityAXAttributedValue options:1])
    {
LABEL_10:

      goto LABEL_11;
    }

    if ([_accessibilityAXAttributedValue axContainsString:v5 options:1])
    {
      v13 = _accessibilityAXAttributedValue;
    }

    else
    {
      v13 = __UIAXStringForVariables();
    }

LABEL_9:
    v16 = v13;

    v5 = v16;
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:

  return v5;
}

- (id)_accessibilityAncestorFocusParcel
{
  selfCopy = self;
  if (selfCopy)
  {
    v2 = selfCopy;
    do
    {
      if ([v2 _accessibilityIsFocusParcel])
      {
        v3 = v2;
      }

      else
      {
        v3 = 0;
      }

      accessibilityContainer = [v2 accessibilityContainer];

      if (v3)
      {
        break;
      }

      v2 = accessibilityContainer;
    }

    while (accessibilityContainer);
  }

  else
  {
    v3 = 0;
    accessibilityContainer = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v3 = 0;
  }

  return v3;
}

- (id)_accessibilityProxyViewAncestorWhenMissingWindow
{
  accessibilityContainer = [self accessibilityContainer];
  if (accessibilityContainer)
  {
    v2 = accessibilityContainer;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        window = [v2 window];

        if (window)
        {
          break;
        }
      }

      _accessibilityProxyView = [v2 _accessibilityProxyView];
      window2 = [_accessibilityProxyView window];

      if (window2)
      {

        goto LABEL_10;
      }

      accessibilityContainer2 = [v2 accessibilityContainer];

      v2 = accessibilityContainer2;
      if (!accessibilityContainer2)
      {
        goto LABEL_7;
      }
    }

    _accessibilityProxyView = v2;
  }

  else
  {
LABEL_7:
    _accessibilityProxyView = 0;
  }

LABEL_10:

  return _accessibilityProxyView;
}

- (void)_accessibilitySpeakThisElementsAndStrings
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_accessibilityTextRectsForSpeakThisStringRange:()UIStorage .cold.1()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_accessibilityTextRectsForSpeakThisStringRange:()UIStorage .cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end