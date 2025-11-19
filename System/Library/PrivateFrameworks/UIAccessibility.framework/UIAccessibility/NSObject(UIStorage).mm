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
  v10 = [a1 _accessibilityValueForKey:@"AccessibilityActionBlockStorageKey"];
  v11 = [a1 _accessibilityValueForKey:@"AccessibilityActionBlockParameterStorageKey"];
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    [a1 _accessibilitySetRetainedValue:v10 forKey:@"AccessibilityActionBlockStorageKey"];
    v12 = [MEMORY[0x1E695DF90] dictionary];

    [a1 _accessibilitySetRetainedValue:v12 forKey:@"AccessibilityActionBlockParameterStorageKey"];
    v11 = v12;
  }

  if (v16)
  {
    v13 = [v16 copy];
    v14 = _Block_copy(v13);
    [v10 setObject:v14 forKey:v9];

    if (v8)
    {
      [v11 setObject:v8 forKey:v9];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v11 setObject:v15 forKey:v9];
    }
  }

  else
  {
    [v10 removeObjectForKey:v9];
    [v11 removeObjectForKey:v9];
  }
}

- (uint64_t)_accessibilityInternalHandleStartStopToggle
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69887D8] sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E69887D8] identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = [a1 _accessibilityApplication];
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

  v11 = [a1 _accessibilityHandleMagicTapForPronunciation];
  v12 = [MEMORY[0x1E69887D8] sharedInstance];
  v13 = [v12 ignoreLogging];

  if ((v13 & 1) == 0)
  {
    v14 = [MEMORY[0x1E69887D8] identifier];
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

  if (v11)
  {
    return 1;
  }

  v19 = [a1 accessibilityStartStopToggle];
  v20 = [MEMORY[0x1E69887D8] sharedInstance];
  v21 = [v20 ignoreLogging];

  if ((v21 & 1) == 0)
  {
    v22 = [MEMORY[0x1E69887D8] identifier];
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

  if (v19)
  {
    return 1;
  }

  v27 = [*MEMORY[0x1E69DDA98] accessibilityStartStopToggle];
  v28 = [MEMORY[0x1E69887D8] sharedInstance];
  v29 = [v28 ignoreLogging];

  if ((v29 & 1) == 0)
  {
    v30 = [MEMORY[0x1E69887D8] identifier];
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

  if (v27)
  {
    return 1;
  }

  v37 = [a1 _accessibilityHandleMagicTap];
  v39 = [MEMORY[0x1E69887D8] sharedInstance];
  v40 = [v39 ignoreLogging];

  if ((v40 & 1) == 0)
  {
    v41 = [MEMORY[0x1E69887D8] identifier];
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

  return v37;
}

- (BOOL)_accessibilityHasActionBlockForKey:()UIStorage
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v3 = [a1 _accessibilityValueForKey:@"AccessibilityActionBlockStorageKey"];
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
  v8 = [a1 _accessibilityValueForKey:@"AccessibilityActionBlockStorageKey"];
  v9 = [a1 _accessibilityValueForKey:@"AccessibilityActionBlockParameterStorageKey"];
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
  [a1 _accessibilitySetRetainedValue:0 forKey:@"AccessibilityActionBlockStorageKey"];

  return [a1 _accessibilitySetRetainedValue:0 forKey:@"AccessibilityActionBlockParameterStorageKey"];
}

- (void)_accessibilitySetBlock:()UIStorage forAttribute:
{
  v7 = [a1 _accessibilityValueForKey:@"AccessibilityAttributeBlockStorageKey"];
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [a1 _accessibilitySetRetainedValue:v12 forKey:@"AccessibilityAttributeBlockStorageKey"];
    v7 = v12;
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

  [a1 _accessibilityRemoveValueForKey:@"AccessibilityAttributeBlockStorageKey"];

  v11 = 0;
LABEL_7:
}

- (uint64_t)_accessibilityGetBlockForAttribute:()UIStorage
{
  v4 = [a1 _accessibilityValueForKey:@"AccessibilityAttributeBlockStorageKey"];
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
  v1 = [a1 _accessibilityValueForKey:@"AXFocusRingStyle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (void)_accessibilitySetFocusRingStyle:()UIStorage
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"AXFocusRingStyle"];
}

- (uint64_t)_accessibilityHandleMagicTapForPronunciation
{
  v1 = a1;
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = [v2 delegate];
        if (objc_opt_respondsToSelector())
        {
          v4 = [v2 delegate];
          v5 = [v4 accessibilityPerformMagicTap];

          if (v5)
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
        v6 = [v2 delegate];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {

          goto LABEL_14;
        }

        v7 = [v2 delegate];
        v8 = [v7 accessibilityPerformMagicTap];

        if (v8)
        {
          break;
        }
      }
    }

LABEL_14:
    v9 = [v2 accessibilityContainer];

    v2 = v9;
    if (!v9)
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
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    while (([v2 accessibilityPerformMagicTap] & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = [MEMORY[0x1E69DD258] viewControllerForView:v2];
        if ([v3 accessibilityPerformMagicTap])
        {
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = [v2 delegate];
          if (objc_opt_respondsToSelector())
          {
            v5 = [v2 delegate];
            v6 = [v5 accessibilityPerformMagicTap];

            if (v6)
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
          v7 = [v2 delegate];
          if (objc_opt_respondsToSelector())
          {
            v8 = [v2 delegate];
            v9 = [v8 accessibilityPerformMagicTap];

            if (v9)
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

      v10 = [v2 accessibilityContainer];

      v2 = v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    v12 = 1;
    goto LABEL_23;
  }

LABEL_18:
  v11 = MEMORY[0x1E69DDA98];
  if (([*MEMORY[0x1E69DDA98] accessibilityPerformMagicTap] & 1) == 0)
  {
    v2 = [*v11 delegate];
    v12 = [v2 accessibilityPerformMagicTap];
LABEL_23:

    return v12;
  }

  return 1;
}

- (double)_accessibilityScreenPointForSceneReferencePoint:()UIStorage
{
  v5 = [a1 _accessibilityWindow];
  v6 = v5;
  if (v5)
  {
    [v5 _convertPointFromSceneReferenceSpace:{a2, a3}];
    [v6 convertPoint:0 toWindow:?];
    a2 = v7;
  }

  return a2;
}

- (double)_accessibilityScreenRectForSceneReferenceRect:()UIStorage
{
  v9 = [a1 _accessibilityWindow];
  v10 = v9;
  if (v9)
  {
    [v9 _convertRectFromSceneReferenceSpace:{a2, a3, a4, a5}];
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
  v5 = [a1 _accessibilityAllDragSourceDescriptors];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 matchesDictionaryRepresentation:v4])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v8 = [a1 dragDescriptorMatchingDictionary:v6];
  v9 = [v8 view];
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

  if (v9)
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
        [v9 _accessibilityBeginDragAtPoint:v22 endpoint:v25 completion:{v11, v13}];
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
    [a1 _accessibilityInsertText:v7 atPosition:-1];
  }

  else
  {
    [a1 browserAccessibilityInsertTextAtCursor:v7];
  }
}

- (uint64_t)_iosAccessibilityPerformAction:()UIStorage withValue:fencePort:
{
  v8 = a4;
  if ([a1 _accessibilityHasActionBlockForKey:a3])
  {
    v84 = 0;
    v85 = 0;
    [a1 _accessibilityActionBlock:&v85 andValue:&v84 forKey:a3];
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
        [a1 _accessibilityScreenPointForSceneReferencePoint:?];
        [a1 accessibilityZoomInAtPoint:?];
        break;
      case 2002:
        [v8 pointValue];
        [a1 _accessibilityScreenPointForSceneReferencePoint:?];
        [a1 accessibilityZoomOutAtPoint:?];
        break;
      case 2003:
        v19 = [a1 _accessibilityScrollToVisible];
        goto LABEL_176;
      case 2004:
        if (![a1 _accessibilityShouldPerformIncrementOrDecrement])
        {
          goto LABEL_197;
        }

        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v33 = [v8 unsignedIntegerValue];
          if (!v33)
          {
            break;
          }
        }

        else
        {
          v33 = 1;
        }

        do
        {
          v73 = [a1 _accessibilityGetBlockForAttribute:18];
          v74 = v73;
          if (v73)
          {
            (*(v73 + 16))(v73);
          }

          else
          {
            [a1 accessibilityIncrement];
          }

          v12 = 1;
          --v33;
        }

        while (v33);
        goto LABEL_219;
      case 2005:
        if (![a1 _accessibilityShouldPerformIncrementOrDecrement])
        {
          goto LABEL_197;
        }

        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v26 = [v8 unsignedIntegerValue];
          if (!v26)
          {
            break;
          }
        }

        else
        {
          v26 = 1;
        }

        do
        {
          v71 = [a1 _accessibilityGetBlockForAttribute:19];
          v72 = v71;
          if (v71)
          {
            (*(v71 + 16))(v71);
          }

          else
          {
            [a1 accessibilityDecrement];
          }

          v12 = 1;
          --v26;
        }

        while (v26);
        goto LABEL_219;
      case 2006:
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v34 = [v8 BOOLValue];
          v35 = a1;
        }

        else
        {
          v35 = a1;
          v34 = 1;
        }

        v19 = [v35 _accessibilityScrollDownPage:v34];
        goto LABEL_176;
      case 2007:
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v31 = [v8 BOOLValue];
          v32 = a1;
        }

        else
        {
          v32 = a1;
          v31 = 1;
        }

        v19 = [v32 _accessibilityScrollUpPage:v31];
        goto LABEL_176;
      case 2008:
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v38 = [v8 BOOLValue];
          v39 = a1;
        }

        else
        {
          v39 = a1;
          v38 = 1;
        }

        v19 = [v39 _accessibilityScrollRightPage:v38];
        goto LABEL_176;
      case 2009:
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v36 = [v8 BOOLValue];
          v37 = a1;
        }

        else
        {
          v37 = a1;
          v36 = 1;
        }

        v19 = [v37 _accessibilityScrollLeftPage:v36];
        goto LABEL_176;
      case 2010:
        v19 = [a1 accessibilityActivate];
        goto LABEL_176;
      case 2011:
        v19 = [a1 _accessibilityInternalHandleStartStopToggle];
        goto LABEL_176;
      case 2012:
        v19 = [a1 _accessibilityTextOperationAction:v8];
        goto LABEL_176;
      case 2013:
        v19 = [a1 _accessibilityPerformEscape];
        goto LABEL_176;
      case 2014:
        [v8 pointValue];
        [a1 _accessibilityScreenPointForSceneReferencePoint:?];
        [a1 _accessibilityScrollToPoint:?];
        break;
      case 2015:
        [a1 _accessibilityIncreaseSelection:v8];
        break;
      case 2016:
        [a1 _accessibilityDecreaseSelection:v8];
        break;
      case 2017:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 count] != 2)
        {
          goto LABEL_197;
        }

        v40 = [v8 objectAtIndex:0];
        v41 = [v40 BOOLValue];
        v42 = [v8 objectAtIndex:1];
        [a1 _accessibilityFindSearchResult:v41 withString:v42];

        v12 = 1;
        goto LABEL_219;
      case 2018:
        [a1 _accessibilityChangeToKeyplane:v8];
        break;
      case 2019:
        v19 = [a1 _accessibilityScrollNextPage];
        goto LABEL_176;
      case 2020:
        v19 = [a1 _accessibilityScrollPreviousPage];
        goto LABEL_176;
      case 2021:
        v19 = [a1 _accessibilityPerformCustomActionWithIdentifier:v8];
        goto LABEL_176;
      case 2022:
        [a1 _accessibilityJumpToTableIndex:v8];
        break;
      case 2023:
        v19 = [a1 _accessibilityTriggerDictationFromPath:v8];
        goto LABEL_176;
      case 2024:
        v19 = [MEMORY[0x1E6988D80] registerRemoteElement:v8 remotePort:a5];
        goto LABEL_176;
      case 2025:
        [a1 _accessibilityAnnouncementComplete:v8];
        break;
      case 2026:
        v19 = [a1 _accessibilityAutoscrollInDirection:{objc_msgSend(v8, "intValue")}];
        goto LABEL_176;
      case 2027:
        [a1 _accessibilityPauseAutoscrolling];
        break;
      case 2028:
        [a1 _accessibilityIncreaseAutoscrollSpeed];
        break;
      case 2029:
        [a1 _accessibilityDecreaseAutoscrollSpeed];
        break;
      case 2030:
        [a1 _accessibilityAutoscrollScrollToTop];
        break;
      case 2031:
        [a1 _accessibilityAutoscrollScrollToBottom];
        break;
      case 2032:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_197;
        }

        [v8 floatValue];
        [a1 _accessibilitySetAutoscrollSpeed:v25];
        break;
      case 2033:
        v19 = [a1 accessibilityExpandMathEquation:v8];
        goto LABEL_176;
      case 2034:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_197;
        }

        v13 = [MEMORY[0x1E6989870] representationWithData:v8];
        v43 = [a1 _accessibilityDispatchKeyboardAction:v13];
        goto LABEL_179;
      case 2035:
        v19 = [a1 _accessibilityDismissAlternativeKeyPicker];
        goto LABEL_176;
      case 2036:
        v19 = [a1 _accessibilitySecondaryActivate];
        goto LABEL_176;
      case 2037:
        [a1 accessibilityIncreaseTrackingDetail];
        break;
      case 2038:
        [a1 accessibilityDecreaseTrackingDetail];
        break;
      case 2039:
        [v8 rectValue];
        [a1 _accessibilityScreenRectForSceneReferenceRect:?];
        [a1 _accessibilityScrollRectToVisible:?];
        break;
      case 2040:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_197;
        }

        v19 = [a1 _accessibilityLoadURL:v8];
        goto LABEL_176;
      case 2041:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_197;
        }

        v19 = [a1 _accessibilityPerformUserTestingAction:v8];
        goto LABEL_176;
      case 2042:
        v19 = [a1 _accessibilityBeginMonitoringIdleRunLoop];
        goto LABEL_176;
      case 2043:
        [a1 _accessibilityDetectAnimationsNonActive];
        break;
      case 2044:
        v19 = [a1 _accessibilitySetNativeFocus];
        goto LABEL_176;
      case 2045:
        v19 = [a1 _accessibilityPerformOrbGesture:{objc_msgSend(v8, "intValue")}];
        goto LABEL_176;
      case 2046:
        v19 = [a1 _accessibilitySavePhotoLabel:v8];
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

        v19 = [a1 _animateScrollViewWithScrollAmount:v48 point:{MidX, MidY}];
        goto LABEL_176;
      case 2048:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_197;
        }

        v19 = [a1 _accessibilityAlternateActionForURL:v8];
        goto LABEL_176;
      case 2050:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 count] != 2)
        {
          goto LABEL_197;
        }

        v22 = v8;
        v13 = [v22 objectAtIndexedSubscript:0];
        v15 = [v22 objectAtIndexedSubscript:1];

        v16 = [a1 _accessibilityActivateDragWithDescriptorDictionary:v15 forServiceName:v13];
        goto LABEL_53;
      case 2051:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v8;
        }

        else
        {
          v13 = 0;
        }

        v43 = [a1 _accessibilityShowContextMenuWithTargetPointValue:v13];
        goto LABEL_179;
      case 2052:
        if ([a1 _accessibilityActivateKeyboardDeleteKey])
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
        [a1 _accessibilityReplaceCharactersAtCursor:1 withString:0];
        goto LABEL_219;
      case 2053:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_226;
        }

        v20 = v8;
        v27 = [v20 objectForKey:@"numberofcharacters"];
        objc_opt_class();
        v28 = objc_opt_isKindOfClass();

        if (v28)
        {
          v29 = [v20 objectForKey:@"numberofcharacters"];
          v30 = [v29 unsignedIntegerValue];
        }

        else
        {
          v30 = 0;
        }

        objc_opt_class();
        v76 = [v20 objectForKey:@"replacement"];
        v77 = __UIAccessibilityCastAsClass();

        objc_opt_class();
        v78 = [v20 objectForKey:@"source"];
        v79 = __UIAccessibilityCastAsClass();

        if (v28)
        {
          if (v79)
          {
            _UIAXSetLastKeyboardUsed(v79);
          }

          [a1 _accessibilityReplaceCharactersAtCursor:v30 withString:v77];

          goto LABEL_217;
        }

LABEL_226:
        _AXAssert();
        goto LABEL_197;
      case 2054:
        v19 = [a1 _accessibilityActivateKeyboardReturnKey];
        goto LABEL_176;
      case 2055:
        objc_opt_class();
        v20 = __UIAccessibilityCastAsClass();
        if (([a1 _accessibilityInsertTextWithAlternatives:v20] & 1) == 0)
        {
          [a1 _accessibilityInsertTextAtCursor:v20];
        }

        goto LABEL_217;
      case 2056:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v20 = __UIAccessibilityCastAsClass();
LABEL_214:
          v67 = 0;
          goto LABEL_215;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v20 = 0;
          goto LABEL_214;
        }

        v66 = v8;
        v20 = [v66 objectForKeyedSubscript:*MEMORY[0x1E6989088]];
        v67 = [v66 objectForKeyedSubscript:*MEMORY[0x1E6989080]];
        v68 = [v66 objectForKeyedSubscript:*MEMORY[0x1E6989078]];
        v69 = [v68 BOOLValue];

        if (v67)
        {
          _UIAXSetLastKeyboardUsed(v67);
        }

        if (v69)
        {
          [a1 _accessibilityBeginUndoableTextInsertion];
          [a1 _accessibilityHandwritingAttributeShouldEchoCharacter];
          [a1 _accessibilityInsertTextAtCursor:v20];
          [a1 _accessibilityEndUndoableTextInsertion];
          goto LABEL_216;
        }

LABEL_215:
        [a1 _accessibilityHandwritingAttributeShouldEchoCharacter];
        [a1 _accessibilityInsertTextAtCursor:v20];
LABEL_216:

LABEL_217:
        break;
      case 2057:
        v20 = [MEMORY[0x1E69DCC68] sharedMenuController];
        v21 = [a1 _accessibilityParentView];
        if ([v20 isMenuVisible])
        {
          [v20 hideMenuFromView:v21];
        }

        else
        {
          [v21 bounds];
          AX_CGRectGetCenter();
          [v20 showMenuFromView:v21 rect:?];
        }

        goto LABEL_217;
      case 2058:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v57 = [a1 _accessibilityCurrentlyFocusedElementForTechnology:v8];
          [v57 _accessibilityHandleATFocused:0 assistiveTech:v8];

          [a1 _accessibilityDidFocusOnOpaqueElement:0 technology:v8];
          v12 = 1;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_191;
      case 2059:
LABEL_191:
        [a1 _accessibilityShowEditingHUD];
        goto LABEL_219;
      case 2060:
        v17 = [a1 _accessibilityTextViewTextOperationResponder];
        v18 = [v17 _accessibilityBeginUndoableTextInsertion];
        goto LABEL_42;
      case 2061:
        v17 = [a1 _accessibilityTextViewTextOperationResponder];
        v18 = [v17 _accessibilityEndUndoableTextInsertion];
LABEL_42:
        v12 = v18;

        goto LABEL_219;
      case 2062:
        v19 = [a1 _accessibilityResetBannerTimer];
        goto LABEL_176;
      case 2064:
        [v8 pointValue];
        v19 = [a1 _accessibilityAdjustScrollOffset:?];
        goto LABEL_176;
      case 2065:
        v19 = [a1 _accessibilityAuthenticatedPasteWithValue:v8];
        goto LABEL_176;
      case 2066:
        [a1 _accessibilityShowKeyboard];
        break;
      case 2067:
        [a1 _accessibilityHideKeyboard];
        break;
      case 2068:
        v19 = [a1 _accessibilityScrollToTop];
        goto LABEL_176;
      case 2069:
        v19 = [a1 _accessibilityScrollToBottom];
        goto LABEL_176;
      case 2070:
        v56 = [MEMORY[0x1E696AD88] defaultCenter];
        [v56 postNotificationName:@"UIDictationWillInsertHypothesisNotification" object:0 userInfo:0];
        goto LABEL_196;
      case 2071:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a1 _accessibilitySetTextInsertionGlowModeEnabled:{objc_msgSend(v8, "BOOLValue")}];
          break;
        }

        v56 = AXLogAppAccessibility();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
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
          [a1 _accessibilitySetFocusOnElement:{objc_msgSend(v8, "BOOLValue")}];
        }

        else
        {
          if (a3 != 5312)
          {
            goto LABEL_219;
          }

          [a1 _accessibilityClearLastFocusedChild];
        }

        goto LABEL_218;
      }

      if (a3 != 5305)
      {
        if (a3 != 5307)
        {
          goto LABEL_219;
        }

        [a1 _accessibilityDidFocusOnApplication];
        goto LABEL_218;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 _accessibilitySetFocusEnabledInApplication:{objc_msgSend(v8, "BOOLValue")}];
        goto LABEL_218;
      }

      v56 = AXLogFocusEngine();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [NSObject(UIStorage) _iosAccessibilityPerformAction:withValue:fencePort:];
      }

      goto LABEL_196;
    }

    if (a3 <= 6999)
    {
      if (a3 == 5500)
      {
        if ([a1 conformsToProtocol:&unk_1F1DDB1C0])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [MEMORY[0x1E69DCA30] moveRingToFocusItem:a1 forClient:v8];
          }

          else
          {
            [MEMORY[0x1E69DCA30] moveRingToFocusItem:a1];
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

        if ([a1 conformsToProtocol:&unk_1F1DDB1C0])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [MEMORY[0x1E69DCA30] removeRingFromFocusItem:a1 forClient:v8];
          }

          else
          {
            [MEMORY[0x1E69DCA30] removeRingFromFocusItem:a1];
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

      [a1 _accessibilitySetCurrentGesture:v8];
      goto LABEL_218;
    }

    objc_opt_class();
    v56 = __UIAccessibilityCastAsClass();
    v64 = [objc_alloc(MEMORY[0x1E69898A8]) initWithDictionaryRepresentation:v56];
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
        [a1 _accessibilityMapsExplorationBeginFromCurrentElement];
      }

      else
      {
        if (a3 != 4021)
        {
          goto LABEL_219;
        }

        [a1 _accessibilityMapsExplorationContinueWithVertexIndex:{objc_msgSend(v8, "unsignedIntegerValue")}];
      }

      goto LABEL_197;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_197;
    }

    v13 = [v8 objectForKey:@"replacement"];
    v58 = [v8 objectForKey:@"range"];
    v59 = NSRangeFromString(v58);

    v43 = [a1 _accessibilityReplaceTextInRange:v59.location withString:{v59.length, v13}];
LABEL_179:
    v12 = v43;
LABEL_180:

    goto LABEL_219;
  }

  if (a3 <= 5299)
  {
    if (a3 == 4022)
    {
      [a1 _accessibilityMapsExplorationEnd];
    }

    else
    {
      if (a3 != 4023)
      {
        goto LABEL_219;
      }

      [v8 pointValue];
      [a1 _accessibilityMapsExplorationRecordTouchpoint:?];
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
      v56 = AXLogFocusEngine();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [NSObject(UIStorage) _iosAccessibilityPerformAction:withValue:fencePort:];
      }

      goto LABEL_196;
    }

    v13 = [v8 firstObject];
    v14 = [v13 unsignedIntegerValue];
    v15 = [v8 lastObject];
    v16 = [a1 _accessibilityFocusContainerMoveFocusWithHeading:v14 toElementMatchingQuery:v15];
LABEL_53:
    v12 = v16;

    goto LABEL_180;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 count] != 2)
  {
    v56 = AXLogFocusEngine();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [NSObject(UIStorage) _iosAccessibilityPerformAction:withValue:fencePort:];
    }

    goto LABEL_196;
  }

  v60 = [v8 firstObject];
  v61 = [v60 unsignedIntegerValue];

  v62 = [v8 lastObject];
  v63 = [v62 BOOLValue];

  v19 = [a1 _accessibilityFocusContainerMoveFocusWithHeading:v61 byGroup:v63];
LABEL_176:
  v12 = v19;
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
  v2 = [a1 _accessibilitySpeakThisMaximumNumberOfElements];
  v3 = +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];
  v4 = [a1 _accessibilityLeafDescendantsWithCount:v2 options:v3];
  v5 = AXLogSpeakScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(UIStorage) _accessibilitySpeakThisElementsAndStrings];
  }

  if ([v4 count] == v2)
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
  v7 = [a1 _accessibilityLeafDescendantsWithCount:1 shouldStopAtRemoteElement:0 options:v5];
  v8 = [v7 firstObject];
  v9 = AXLogSpeakScreen();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 description];
    v11 = [v8 accessibilityIdentifier];
    *buf = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1A9B83000, v9, OS_LOG_TYPE_INFO, "SpeakThisElement %@, accessibilityIdentifier: %@, looking for %@", buf, 0x20u);
  }

  return v8;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:()UIStorage
{
  v27[2] = *MEMORY[0x1E69E9840];
  v7 = [a1 _accessibilityTextMarkerForPosition:?];
  v8 = [a1 _accessibilityTextMarkerForPosition:a3 + a4];
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
    [a1 accessibilityBoundsForTextMarkers:v11];
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
    if ([a1 _accessibilityBoolValueForKey:@"AXSpeakScreenRectsUseVisibleFrame"])
    {
      [a1 _accessibilityVisibleFrame];
    }

    else
    {
      [a1 accessibilityFrame];
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
  v1 = [a1 _iosAccessibilityAttributeValue:2301];
  v2 = [v1 BOOLValue];

  return v2 ^ 1u;
}

- (BOOL)_accessibilitySpeakThisCanBeHighlighted
{
  v1 = [a1 _accessibilityWindow];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)_accessibilityHasNativeFocus
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([a1 safeValueForKey:@"_browserAccessibilityStoredValueHasDOMFocus"], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {

    return [a1 safeBoolForKey:@"browserAccessibilityHasDOMFocus"];
  }

  else
  {

    return [a1 _accessibilityUIKitHasNativeFocus];
  }
}

- (BOOL)_accessibilityUIKitHasNativeFocus
{
  v2 = [a1 _accessibilityParentView];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 _accessibilityNativeFocusElement];

  return v5 == a1;
}

- (uint64_t)_accessibilityViewHierarchyHasNativeFocus
{
  v2 = [*MEMORY[0x1E69DDA98] _accessibilityNativeFocusElement];
  if (v2 == a1)
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 _accessibilityIsDescendantOfElement:v2];
  }

  return v3;
}

- (uint64_t)_accessibilitySetNativeFocus
{
  v2 = [a1 _accessibilityNativeFocusAncestor];
  if (!v2)
  {
    v2 = a1;
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  [v4 setObject:v2 forKeyedSubscript:@"AXAssignNativeFocusToElementNotificationFocusedItemUserInfoKey"];
  [v3 postNotificationName:@"AXWillAssignNativeFocusToElementNotification" object:0 userInfo:v4];
  if (v2 && ![v2 conformsToProtocol:&unk_1F1DDB1C0])
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    if (([a1 _accessibilityIsFKARunningForFocusItem] & 1) != 0 || objc_msgSend(a1, "_accessibilityShouldSetNativeFocusWhenATVFocused"))
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
  [v4 setObject:v7 forKeyedSubscript:@"AXAssignNativeFocusToElementNotificationDidSucceedUserInfoKey"];

  if ((v6 & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FocusTarget is not of type UIFocusItem: %@", v2];
    [v4 setObject:v10 forKeyedSubscript:@"AXAssignNativeFocusToElementNotificationFailureReasonUserInfoKey"];
LABEL_21:

    goto LABEL_22;
  }

  if ((v5 & 1) == 0)
  {
    v8 = [MEMORY[0x1E69DCA18] checkFocusabilityForItem:v2];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 safeValueForKey:@"_outputString"];
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = @"Unknown";
    }

    [v4 setObject:v11 forKeyedSubscript:@"AXAssignNativeFocusToElementNotificationFailureReasonUserInfoKey"];

    goto LABEL_21;
  }

LABEL_22:
  [v3 postNotificationName:@"AXDidAssignNativeFocusToElementNotification" object:0 userInfo:v4];

  return v5;
}

- (BOOL)_accessibilityCanBecomeNativeFocused
{
  if ([a1 conformsToProtocol:&unk_1F1DDB1C0])
  {
    v2 = a1;
    if (![v2 canBecomeFocused])
    {
      v5 = 0;
LABEL_13:

      return v5;
    }

    v3 = [v2 preferredFocusEnvironments];
    if ([v3 count] && !objc_msgSend(v3, "containsObject:", v2))
    {
      goto LABEL_10;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 1;
      goto LABEL_12;
    }

    if ([v2 _accessibilityViewIsVisible])
    {
      v4 = [v2 _accessibilityWindow];
      v5 = v4 != 0;
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
  v1 = [a1 _accessibilityGetBlockForAttribute:5011];
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
  v1 = [a1 _accessibilityGetBlockForAttribute:5012];
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
  v1 = a1;
  if (v1)
  {
    do
    {
      if ([v1 _acceessibilityUIKitIsUserInteractionDisabled] & 1) == 0 && (objc_msgSend(v1, "_accessibilityCanBecomeNativeFocused"))
      {
        break;
      }

      v2 = [v1 accessibilityContainer];

      v1 = v2;
    }

    while (v2);
  }

  return v1;
}

- (BOOL)_focusRingManagerShouldDrawFocusRingWhenChildrenFocused
{
  if (![a1 _accessibilityDrawsFocusRingWhenChildrenFocused])
  {
    return 0;
  }

  v2 = [a1 _accessibilityFindAncestor:&__block_literal_global_3270 startWithSelf:0];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)_accessibilityHasNativeFocusableElements
{
  v1 = [*MEMORY[0x1E69DDA98] _accessibilityNativeFocusableElements:a1 matchingBlock:0 forExistenceCheckOnly:1];
  v2 = [v1 count] != 0;

  return v2;
}

- (id)_accessibilityFocusContainer
{
  v2 = [a1 _accessibilityFindAncestor:&__block_literal_global_3272 startWithSelf:1];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [a1 _accessibilityWindowScene];
  }

  v5 = v4;

  return v5;
}

- (uint64_t)_accessibilityHostPid
{
  if (!_UIApplicationIsExtension())
  {
    return 0;
  }

  v2 = [a1 _accessibilityWindow];
  v3 = [v2 rootViewController];

  NSClassFromString(&cfstr_Uiviewservicev.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeIntForKey:@"_hostPID"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_accessibilityIsContainedByPreferredNativeFocusElement
{
  v2 = [*MEMORY[0x1E69DDA98] _accessibilityNativeFocusPreferredElement];
  v3 = v2;
  if (v2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__NSObject_UIStorage___accessibilityIsContainedByPreferredNativeFocusElement__block_invoke;
    v7[3] = &unk_1E78AA760;
    v8 = v2;
    v4 = [a1 _accessibilityFindAncestor:v7 startWithSelf:1];
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

  v3 = [a1 _accessibilityFindAncestor:&__block_literal_global_3290 startWithSelf:1];
  v2 = v3 != 0;

  return v2;
}

- (BOOL)_isAccessibilityExplorerElement
{
  v2 = [*MEMORY[0x1E69DDA98] _accessibilityNativeFocusPreferredElement];
  if (![a1 isAccessibilityElement])
  {
    goto LABEL_4;
  }

  if ([a1 _accessibilityIsFrameOutOfBoundsConsideringScrollParents:0])
  {
    goto LABEL_4;
  }

  v3 = [a1 _accessibilityFindAncestor:&__block_literal_global_3295 startWithSelf:1];

  if (v3)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![a1 _accessibilityViewIsVisible])
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

  if ([a1 _accessibilityShouldBeExplorerElementWithoutSystemFocus] && !v2)
  {
    v4 = 1;
    goto LABEL_5;
  }

  v6 = [a1 accessibilityTraits];
  if ((*MEMORY[0x1E69DD9C8] & v6) != 0 || ([a1 _accessibilityNativeFocusAncestor], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
LABEL_4:
    v4 = 0;
  }

  else
  {
    v8 = [a1 _accessibilityAncestorFocusParcel];
    v4 = 1;
    if (v8)
    {
      v9 = [v2 _accessibilityAncestorFocusParcel];

      if (v9 == v8)
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
  v12 = [MEMORY[0x1E695DFA0] orderedSet];
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [a1 _accessibilitySubviews];
  [v13 axSafelyAddObjectsFromArray:v14];

  if ([v13 count])
  {
    v15 = *MEMORY[0x1E69DD9C8];
    do
    {
      v16 = [v13 firstObject];
      [v13 removeObject:v16];
      if (([v16 accessibilityElementsHidden] & 1) == 0)
      {
        v17 = [v16 _accessibilityAXAttributedLabel];
        if ([v17 length] && (objc_msgSend(v10, "containsObject:", v17) & 1) == 0 && (objc_msgSend(v11, "containsObject:", objc_opt_class()) & 1) == 0 && ((a4 & 1) != 0 || (objc_msgSend(v16, "_accessibilityCanBecomeNativeFocused") & 1) == 0) && ((a3 & 1) != 0 || (v15 & objc_msgSend(v16, "accessibilityTraits")) == 0))
        {
          [v12 addObject:v17];
        }

        if (([v16 isAccessibilityElement] & 1) == 0)
        {
          v18 = [v16 _accessibilitySortedElementsWithin];
          [v13 axSafelyAddObjectsFromArray:v18];
        }
      }
    }

    while ([v13 count]);
  }

  v19 = [v12 array];
  v20 = UIAXLabelForElements();

  return v20;
}

- (uint64_t)_accessibilityFocusParcelChildrenCount:()UIStorage
{
  v16 = *MEMORY[0x1E69E9840];
  if ([a1 _accessibilityCanBecomeNativeFocused])
  {
    ++a3;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [a1 _accessibilitySubviews];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v5);
          }

          a3 = [*(*(&v11 + 1) + 8 * v9++) _accessibilityFocusParcelChildrenCount:a3];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v14 = [a1 _accessibilityCanBecomeNativeFocused];
    v7 = [a1 _accessibilityAncestorFocusParcel];
    v15 = MEMORY[0x1E695DEC8];
    v12 = [a1 _accessibilityAXAttributedValue];
    v5 = [v15 axArrayByIgnoringNilElementsWithCount:{1, v12}];
    v13 = [v7 _accessibilityTextForSubhierarchyIncludingHeaders:v14 focusableItems:0 exclusions:v5];
    goto LABEL_9;
  }

  v5 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = [a1 _accessibilityAncestorFocusParcel];
  v7 = v6;
  if (v6 && v6 != a1)
  {
    v8 = [a1 _accessibilityCanBecomeNativeFocused];
    v9 = MEMORY[0x1E695DEC8];
    v10 = [a1 _accessibilityAXAttributedValue];
    v11 = [v9 axArrayByIgnoringNilElementsWithCount:{1, v10}];
    v12 = [v7 _accessibilityTextForSubhierarchyIncludingHeaders:v8 focusableItems:0 exclusions:v11];

    if ([v5 axContainsString:v12 options:1])
    {
LABEL_10:

      goto LABEL_11;
    }

    if ([v12 axContainsString:v5 options:1])
    {
      v13 = v12;
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
  v1 = a1;
  if (v1)
  {
    v2 = v1;
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

      v4 = [v2 accessibilityContainer];

      if (v3)
      {
        break;
      }

      v2 = v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
    v4 = 0;
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
  v1 = [a1 accessibilityContainer];
  if (v1)
  {
    v2 = v1;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = [v2 window];

        if (v3)
        {
          break;
        }
      }

      v4 = [v2 _accessibilityProxyView];
      v5 = [v4 window];

      if (v5)
      {

        goto LABEL_10;
      }

      v6 = [v2 accessibilityContainer];

      v2 = v6;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v4 = v2;
  }

  else
  {
LABEL_7:
    v4 = 0;
  }

LABEL_10:

  return v4;
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