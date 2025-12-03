@interface NSObject(UIAccessibilityAutomation)
- (NSString)_accessibilityUserTestingElementType;
- (id)_accessibilityAncestry;
- (id)_accessibilityBaseImplementationUserTestingChildren;
- (id)_accessibilityUserTestingChildrenWithRange:()UIAccessibilityAutomation;
- (id)_accessibilityUserTestingElementAttributes;
- (id)_accessibilityUserTestingElementBaseType;
- (id)_accessibilityUserTestingParent;
- (id)_accessibilityUserTestingSnapshot;
- (id)_accessibilityUserTestingSnapshotAncestorsWithAttributes:()UIAccessibilityAutomation maxDepth:maxChildren:maxArrayCount:honorsModalViews:;
- (id)_accessibilityUserTestingSnapshotDescendantsWithAttributes:()UIAccessibilityAutomation maxDepth:maxChildren:maxArrayCount:honorsModalViews:;
- (id)_accessibilityUserTestingSnapshotWithOptions:()UIAccessibilityAutomation;
- (id)_accessibilityUserTestingSupplementaryViews:()UIAccessibilityAutomation;
- (uint64_t)_accessibilityAutomationType;
- (uint64_t)_accessibilityUserTestingChildrenCount;
- (uint64_t)_accessibilityUserTestingIsElementClassAcceptable;
- (void)_setAccessibilityAutomationType:()UIAccessibilityAutomation;
@end

@implementation NSObject(UIAccessibilityAutomation)

- (id)_accessibilityUserTestingElementAttributes
{
  array = [MEMORY[0x1E695DF70] array];
  if ([self _accessibilityUserTestingIsContinuityButton])
  {
    [array addObject:@"continuity-button"];
  }

  if ([self _accessibilityUserTestingIsDefaultButton])
  {
    [array addObject:@"default-button"];
  }

  if ([self _accessibilityUserTestingIsCancelButton])
  {
    [array addObject:@"cancel-button"];
  }

  if ([self _accessibilityUserTestingIsDestructiveButton])
  {
    [array addObject:@"destructive-button"];
  }

  if ([self _accessibilityUserTestingIsPreferredButton])
  {
    [array addObject:@"preferred-button"];
  }

  if ([self _accessibilityUserTestingIsBackNavButton])
  {
    v3 = @"back-nav-button";
  }

  else
  {
    if (![self _accessibilityUserTestingIsRightNavButton])
    {
      goto LABEL_16;
    }

    v3 = @"right-nav-button";
  }

  [array addObject:v3];
LABEL_16:
  if ([self _accessibilityHasDragSources])
  {
    [array addObject:@"drag-source"];
  }

  if ([self _accessibilityHasDragDestinations])
  {
    [array addObject:@"drag-destination"];
  }

  return array;
}

- (id)_accessibilityUserTestingElementBaseType
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = objc_opt_class();
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:v1];
  if (v2 == v0)
  {
LABEL_4:
  }

  else
  {
    while (1)
    {
      v3 = objc_opt_class();

      if (v1 == v3)
      {
        break;
      }

      v1 = [v1 superclass];
      v2 = [MEMORY[0x1E696AAE8] bundleForClass:v1];
      if (v2 == v0)
      {
        goto LABEL_4;
      }
    }
  }

  v4 = NSStringFromClass(v1);

  return v4;
}

- (void)_setAccessibilityAutomationType:()UIAccessibilityAutomation
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"AXAutomationType"];
}

- (uint64_t)_accessibilityAutomationType
{
  v2 = [self _accessibilityValueForKey:@"AXAutomationType"];
  integerValue = [v2 integerValue];

  if (!integerValue)
  {
    accessibilityTraits = [self accessibilityTraits];
    if ((*MEMORY[0x1E69DD9B8] & ~accessibilityTraits) != 0)
    {
      if ((*MEMORY[0x1E69DDA00] & ~accessibilityTraits) != 0)
      {
        if ((*MEMORY[0x1E69DDA18] & ~accessibilityTraits) != 0)
        {
          if ((*MEMORY[0x1E69DD9D0] & ~accessibilityTraits) != 0)
          {
            if ((*MEMORY[0x1E69DD9E0] & ~accessibilityTraits) != 0)
            {
              if ((*MEMORY[0x1E69DD9D8] & ~accessibilityTraits) != 0)
              {
                return 0;
              }

              else
              {
                return 20;
              }
            }

            else
            {
              return 42;
            }
          }

          else
          {
            return 43;
          }
        }

        else
        {
          return 48;
        }
      }

      else
      {
        return 45;
      }
    }

    else if ((*MEMORY[0x1E69DDA30] & ~accessibilityTraits) != 0)
    {
      return 9;
    }

    else
    {
      return 40;
    }
  }

  return integerValue;
}

- (NSString)_accessibilityUserTestingElementType
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (id)_accessibilityUserTestingParent
{
  v2 = AXRemoteElementFromObject();
  v3 = v2;
  if (v2 && ([v2 onClientSide] & 1) == 0)
  {
    v5 = _AXCreateAXUIElementWithElement();
    value = 0;
    if ([v3 machPort])
    {
      [v3 machPort];
      _AXUIElementSetMachPortForNextMessage();
      AXUIElementCopyAttributeValue(v5, 0x138A, &value);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      if (v5)
      {
        CFRelease(v5);
      }

      value = MEMORY[0x1AC58F8E0]([v3 remotePid], objc_msgSend(v3, "uuidHash"), 9999);
    }

    accessibilityContainer = value;
  }

  else
  {
    accessibilityContainer = [self accessibilityContainer];
  }

  return accessibilityContainer;
}

- (id)_accessibilityAncestry
{
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  if (selfCopy)
  {
    v4 = selfCopy;
    while (1)
    {
      [array addObject:v4];
      v5 = AXRemoteElementFromObject();
      v6 = v5;
      if (v5)
      {
        if (([v5 onClientSide] & 1) == 0)
        {
          break;
        }
      }

      _accessibilityUserTestingParent = [v4 _accessibilityUserTestingParent];

      v4 = _accessibilityUserTestingParent;
      if (!_accessibilityUserTestingParent)
      {
        goto LABEL_16;
      }
    }

    if ([v6 machPort])
    {
      v8 = _AXCreateAXUIElementWithElement();
      value = 0;
      if (AXUIElementCopyAttributeValue(v8, 0x13A1, &value) == kAXErrorSuccess)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          reverseObjectEnumerator = [value reverseObjectEnumerator];
          allObjects = [reverseObjectEnumerator allObjects];
          [array addObjectsFromArray:allObjects];
        }
      }

      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }

LABEL_16:
  reverseObjectEnumerator2 = [array reverseObjectEnumerator];
  allObjects2 = [reverseObjectEnumerator2 allObjects];

  return allObjects2;
}

- (id)_accessibilityUserTestingSupplementaryViews:()UIAccessibilityAutomation
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    [self _accessibilitySupplementaryHeaderViews];
  }

  else
  {
    [self _accessibilitySupplementaryFooterViews];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 _accessibilityHasOrderedChildren])
        {
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __83__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSupplementaryViews___block_invoke;
          v13[3] = &unk_1E78AAC38;
          v14 = array;
          [v11 accessibilityEnumerateContainerElementsUsingBlock:v13];
        }

        else
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (uint64_t)_accessibilityUserTestingChildrenCount
{
  v2 = [self _accessibilityBoolValueForKey:@"AXPerformingChildrenCount"];
  [self _accessibilitySetBoolValue:1 forKey:@"AXPerformingChildrenCount"];
  if ([self _accessibilityHasOrderedChildren])
  {
    automationElements = [self _accessibilityUserTestingSupplementaryViews:1];
    v4 = [self _accessibilityUserTestingSupplementaryViews:0];
    v5 = [automationElements count];
    v6 = [v4 count];
    v7 = v6 + [self accessibilityElementCount] + v5;
  }

  else
  {
    automationElements = [self automationElements];
    v7 = [automationElements count];
  }

  [self _accessibilitySetBoolValue:v2 forKey:@"AXPerformingChildrenCount"];
  return v7;
}

- (id)_accessibilityUserTestingChildrenWithRange:()UIAccessibilityAutomation
{
  if ([self _accessibilityHasOrderedChildren])
  {
    automationElements = [self _accessibilityUserTestingSupplementaryViews:1];
    if ([self accessibilityShouldEnumerateContainerElementsArrayDirectly] && (objc_msgSend(self, "_accessibilityElements"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      accessibilityElementCount = [v8 count];
      v11 = 0;
    }

    else
    {
      accessibilityElementCount = [self accessibilityElementCount];
      v9 = 0;
      v11 = 1;
    }

    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:a4];
    if (a3 < [automationElements count])
    {
      v13 = a4;
      if (a3 + a4 > [automationElements count])
      {
        v13 = [automationElements count] - a3;
      }

      if (v13 >= 1)
      {
        v14 = [automationElements subarrayWithRange:{a3, v13}];
        [v12 addObjectsFromArray:v14];

        a3 = 0;
        a4 -= v13;
      }
    }

    if (a4)
    {
      if (a3 >= accessibilityElementCount || a4 < 1)
      {
        goto LABEL_25;
      }

      v15 = a3;
      do
      {
        if (v11)
        {
          [self accessibilityElementAtIndex:v15];
        }

        else
        {
          [v9 objectAtIndex:v15];
        }
        v16 = ;
        if (v16)
        {
          [v12 addObject:v16];
          a3 = 0;
          --a4;
        }

        ++v15;
      }

      while (v15 < accessibilityElementCount && a4);
      if (a4)
      {
LABEL_25:
        v17 = [self _accessibilityUserTestingSupplementaryViews:0];
        if (a3 < [v17 count])
        {
          if (a3 + a4 > [v17 count])
          {
            a4 = [v17 count] - a3;
          }

          if (a4 >= 1)
          {
            v18 = [v17 subarrayWithRange:{a3, a4}];
            [v12 addObjectsFromArray:v18];
          }
        }
      }
    }
  }

  else
  {
    automationElements = [self automationElements];
    if (a3 + a4 <= [automationElements count])
    {
      v12 = [automationElements subarrayWithRange:{a3, a4}];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)_accessibilityBaseImplementationUserTestingChildren
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v3 = [self _accessibilityUserTestingSupplementaryViews:1];
  [v2 axSafelyAddObjectsFromArray:v3];

  if ([self isAccessibilityElement])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    subviews = [self subviews];
    v5 = [subviews countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(subviews);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          accessibilityIdentifier = [v9 accessibilityIdentifier];

          if (accessibilityIdentifier)
          {
            [v2 addObject:v9];
          }
        }

        v6 = [subviews countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v6);
    }
  }

  else
  {
    if (![self _accessibilityHasOrderedChildren])
    {
      goto LABEL_16;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __90__NSObject_UIAccessibilityAutomation___accessibilityBaseImplementationUserTestingChildren__block_invoke;
    v18[3] = &unk_1E78AAC38;
    v19 = v2;
    [self accessibilityEnumerateContainerElementsUsingBlock:v18];
    subviews = v19;
  }

LABEL_16:
  v11 = [self _accessibilityUserTestingSupplementaryViews:0];
  [v2 axSafelyAddObjectsFromArray:v11];

  if (([self _accessibilityTextViewShouldBreakUpParagraphs] & 1) == 0)
  {
    _accessibilityInternalTextLinks = [self _accessibilityInternalTextLinks];
    [v2 axSafelyAddObjectsFromArray:_accessibilityInternalTextLinks];
  }

  return v2;
}

- (uint64_t)_accessibilityUserTestingIsElementClassAcceptable
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_Webaccessibili.isa), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_Wkaccessibilit.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_Sbicon.isa), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    NSClassFromString(&cfstr_Sbiconlistmode.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)_accessibilityUserTestingSnapshotDescendantsWithAttributes:()UIAccessibilityAutomation maxDepth:maxChildren:maxArrayCount:honorsModalViews:
{
  v75[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_opt_new();
  v10 = _AXCreateAXUIElementWithElement();
  [v9 setObject:v10 forKeyedSubscript:@"UIAccessibilitySnapshotKeyElement"];

  v11 = AXLogUIA();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(UIAccessibilityAutomation) _accessibilityUserTestingSnapshotDescendantsWithAttributes:maxDepth:maxChildren:maxArrayCount:honorsModalViews:];
  }

  v44 = v9;
  v75[0] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
  v13 = [v12 mutableCopy];

  v14 = 0;
  if ([v13 count])
  {
    v53 = 1;
    v45 = v8;
    v46 = a7;
    do
    {
      v15 = v13;

      array = [MEMORY[0x1E695DF70] array];

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v14 = v15;
      v56 = [v14 countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (v56)
      {
        v55 = *v66;
        obj = v14;
        do
        {
          v16 = 0;
          do
          {
            if (*v66 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v65 + 1) + 8 * v16);
            context = objc_autoreleasePoolPush();
            v18 = [v17 objectForKeyedSubscript:@"UIAccessibilitySnapshotKeyElement"];
            v19 = AXLogUIA();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138477827;
              v71 = v18;
              _os_log_debug_impl(&dword_1A9B83000, v19, OS_LOG_TYPE_DEBUG, "Current snapshot element: %{private}@", buf, 0xCu);
            }

            v20 = _UIAXElementForAXUIElementRef();
            v21 = AXLogUIA();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v71 = v20;
              _os_log_debug_impl(&dword_1A9B83000, v21, OS_LOG_TYPE_DEBUG, "Snapshot element going out:%p", buf, 0xCu);
            }

            v22 = AXLogUIA();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v71 = v20;
              _os_log_debug_impl(&dword_1A9B83000, v22, OS_LOG_TYPE_DEBUG, "Current snapshot element: %{public}@", buf, 0xCu);
            }

            v58 = v18;

            v64 = 0;
            v23 = _accessibilityAttributesForObject(v20, v8, a6, 1, &v64);
            v24 = v64;
            [v17 setObject:v23 forKeyedSubscript:@"UIAccessibilitySnapshotKeyAttributes"];
            if (v24)
            {
              [v17 setObject:v24 forKeyedSubscript:@"UIAccessibilitySnapshotKeyAttributeArrayCounts"];
            }

            v25 = [v20 _iosAccessibilityAttributeValue:5030];
            integerValue = [v25 integerValue];

            v27 = AXLogUIA();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543618;
              v71 = v20;
              v72 = 1026;
              LODWORD(v73) = integerValue;
              _os_log_debug_impl(&dword_1A9B83000, v27, OS_LOG_TYPE_DEBUG, "Current %{public}@ snapshot child count: %{public}d", buf, 0x12u);
            }

            if (integerValue <= a5)
            {
              v29 = [v20 _iosAccessibilityAttributeValue:5001];
              [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v29, "count")}];
            }

            else
            {
              v28 = [MEMORY[0x1E696B098] valueWithRange:0];
              v29 = [v20 _iosAccessibilityAttributeValue:95003 forParameter:v28];

              [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
            }
            v30 = ;
            [v17 setObject:v30 forKeyedSubscript:@"UIAccessibilitySnapshotKeyChildrenCount"];

            v31 = AXLogUIA();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543618;
              v71 = v20;
              v72 = 2114;
              v73 = v29;
              _os_log_debug_impl(&dword_1A9B83000, v31, OS_LOG_TYPE_DEBUG, "Current snapshot (%{public}@) children: %{public}@", buf, 0x16u);
            }

            if ([v29 count] && v53 < a4)
            {
              v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v29, "count")}];
              if (a7)
              {
                v49 = [v29 indexesOfObjectsPassingTest:&__block_literal_global_386_0];
                v33 = [v29 objectsAtIndexes:?];
                v34 = AXLogUIA();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v71 = v33;
                  _os_log_impl(&dword_1A9B83000, v34, OS_LOG_TYPE_INFO, "Possible modal views: %@", buf, 0xCu);
                }

                v48 = v33;
                lastObject = [v33 lastObject];
                v36 = lastObject;
                if (lastObject)
                {
                  v47 = v23;
                  _accessibilityObscuredScreenAllowedViews = [lastObject _accessibilityObscuredScreenAllowedViews];
                  v38 = AXLogUIA();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v71 = v36;
                    v72 = 2112;
                    v73 = _accessibilityObscuredScreenAllowedViews;
                    _os_log_impl(&dword_1A9B83000, v38, OS_LOG_TYPE_INFO, "found a modal child and honor modal views: %@ [but allowing these through: %@]", buf, 0x16u);
                  }

                  v39 = MEMORY[0x1E695DEC8];
                  v69 = v36;
                  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
                  v41 = [v39 axArrayWithPossiblyNilArrays:{2, v40, _accessibilityObscuredScreenAllowedViews}];

                  v29 = v41;
                  v8 = v45;
                  v23 = v47;
                }

                a7 = v46;
              }

              [v17 setObject:v32 forKeyedSubscript:@"UIAccessibilitySnapshotKeyChildren"];
              v60[0] = MEMORY[0x1E69E9820];
              v60[1] = 3221225472;
              v60[2] = __150__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSnapshotDescendantsWithAttributes_maxDepth_maxChildren_maxArrayCount_honorsModalViews___block_invoke_390;
              v60[3] = &unk_1E78AB7E8;
              v63 = a5;
              v61 = v32;
              v62 = array;
              v42 = v32;
              [v29 enumerateObjectsUsingBlock:v60];
            }

            else
            {
              [v17 setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:@"UIAccessibilitySnapshotKeyChildren"];
            }

            objc_autoreleasePoolPop(context);
            ++v16;
          }

          while (v56 != v16);
          v14 = obj;
          v56 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
        }

        while (v56);
      }

      ++v53;
      v13 = array;
    }

    while ([array count]);
  }

  return v44;
}

- (id)_accessibilityUserTestingSnapshotAncestorsWithAttributes:()UIAccessibilityAutomation maxDepth:maxChildren:maxArrayCount:honorsModalViews:
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = _AXCreateAXUIElementWithElement();
  [dictionary setObject:v11 forKeyedSubscript:@"UIAccessibilitySnapshotKeyElement"];

  v12 = AXLogUIA();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(UIAccessibilityAutomation) _accessibilityUserTestingSnapshotDescendantsWithAttributes:maxDepth:maxChildren:maxArrayCount:honorsModalViews:];
  }

  selfCopy = self;
  v14 = dictionary;
  v41 = v14;
  if (v14)
  {
    v46 = selfCopy;
    v15 = v14;
    v42 = v9;
    v45 = a7;
    do
    {
      context = objc_autoreleasePoolPush();
      v56 = 0;
      v16 = _accessibilityAttributesForObject(selfCopy, v9, a6, 1, &v56);
      v17 = v56;
      [v15 setObject:v16 forKeyedSubscript:@"UIAccessibilitySnapshotKeyAttributes"];
      if (v17)
      {
        [v15 setObject:v17 forKeyedSubscript:@"UIAccessibilitySnapshotKeyAttributeArrayCounts"];
      }

      if (a5)
      {
        v18 = [selfCopy _iosAccessibilityAttributeValue:5030];
        [v15 setObject:v18 forKeyedSubscript:@"UIAccessibilitySnapshotKeyChildrenCount"];
        integerValue = [v18 integerValue];
        if (integerValue >= a5)
        {
          v20 = a5;
        }

        else
        {
          v20 = integerValue;
        }

        v21 = [MEMORY[0x1E696B098] valueWithRange:{0, v20}];
        v22 = [selfCopy _iosAccessibilityAttributeValue:95003 forParameter:v21];

        if ([v22 count])
        {
          v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v22, "count")}];
          v24 = AXLogUIA();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v59) = a7;
            _os_log_impl(&dword_1A9B83000, v24, OS_LOG_TYPE_INFO, "Modally? %d", buf, 8u);
          }

          if (a7)
          {
            v25 = [v22 ax_filteredArrayUsingBlock:&__block_literal_global_392];
            firstObject = [v25 firstObject];

            if (firstObject)
            {
              v43 = v23;
              _accessibilityObscuredScreenAllowedViews = [firstObject _accessibilityObscuredScreenAllowedViews];
              v28 = AXLogUIA();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v59 = firstObject;
                v60 = 2112;
                v61 = _accessibilityObscuredScreenAllowedViews;
                _os_log_impl(&dword_1A9B83000, v28, OS_LOG_TYPE_INFO, "found a modal child and honor modal views: %@ [but allowing these through: %@]", buf, 0x16u);
              }

              v29 = MEMORY[0x1E695DEC8];
              v57 = firstObject;
              v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
              v31 = [v29 axArrayWithPossiblyNilArrays:{2, v30, _accessibilityObscuredScreenAllowedViews}];

              v22 = v31;
              v9 = v42;
              v23 = v43;
            }

            a7 = v45;
          }

          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __148__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSnapshotAncestorsWithAttributes_maxDepth_maxChildren_maxArrayCount_honorsModalViews___block_invoke_393;
          v50[3] = &unk_1E78AB810;
          v54 = a5;
          v51 = v9;
          v55 = a6;
          v52 = v17;
          v53 = v23;
          v32 = v23;
          [v22 enumerateObjectsUsingBlock:v50];
          [v15 setObject:v32 forKeyedSubscript:@"UIAccessibilitySnapshotKeyChildren"];
        }
      }

      v33 = objc_autoreleasePoolPush();
      v34 = [v46 _iosAccessibilityAttributeValue:5002];
      if (v34)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v36 = _AXCreateAXUIElementWithElement();
        [dictionary2 setObject:v36 forKeyedSubscript:@"UIAccessibilitySnapshotKeyElement"];

        v37 = AXLogUIA();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = objc_opt_class();
          v44 = v38;
          v39 = [dictionary2 objectForKeyedSubscript:@"UIAccessibilitySnapshotKeyElement"];
          *buf = 138478083;
          v59 = v38;
          a7 = v45;
          v60 = 2113;
          v61 = v39;
          _os_log_debug_impl(&dword_1A9B83000, v37, OS_LOG_TYPE_DEBUG, "Setting parent snapshot element: %{private}@, %{private}@", buf, 0x16u);

          v9 = v42;
        }

        [v15 setObject:dictionary2 forKeyedSubscript:@"UIAccessibilitySnapshotKeyParent"];
      }

      else
      {
        dictionary2 = 0;
      }

      objc_autoreleasePoolPop(v33);
      objc_autoreleasePoolPop(context);
      selfCopy = v34;
      v15 = dictionary2;
    }

    while (dictionary2);
  }

  else
  {
    v34 = selfCopy;
  }

  return v41;
}

- (id)_accessibilityUserTestingSnapshotWithOptions:()UIAccessibilityAutomation
{
  v4 = a3;
  HTBeginNonResponsiveTaskWithNameAndExpiration();
  v5 = AXLogUIA();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UIAccessibilityAutomation-UserTestingSnapshot", &unk_1A9BFA3AD, buf, 2u);
  }

  v6 = [v4 objectForKeyedSubscript:@"attributes"];
  v7 = [v6 mutableCopy];

  v8 = [v4 objectForKeyedSubscript:@"maxDepth"];
  v9 = [v4 objectForKeyedSubscript:@"maxChildren"];
  v10 = [v4 objectForKeyedSubscript:@"maxArrayCount"];
  v11 = [v4 objectForKeyedSubscript:@"traverseFromParentsToChildren"];
  v12 = [v4 objectForKeyedSubscript:@"snapshotKeyHonorModalViews"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v25 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_419];
    [v7 filterUsingPredicate:?];
    if ([v7 count])
    {
      unsignedIntegerValue = [v8 unsignedIntegerValue];
      unsignedIntegerValue2 = [v9 unsignedIntegerValue];
      unsignedIntegerValue3 = [v10 unsignedIntegerValue];
      bOOLValue = [v11 BOOLValue];
      if (v12 || AXRequestingClient() != 2)
      {
        bOOLValue2 = [v12 BOOLValue];
      }

      else
      {
        bOOLValue2 = 1;
      }

      if (bOOLValue)
      {
        [self _accessibilityUserTestingSnapshotDescendantsWithAttributes:v7 maxDepth:unsignedIntegerValue maxChildren:unsignedIntegerValue2 maxArrayCount:unsignedIntegerValue3 honorsModalViews:bOOLValue2];
      }

      else
      {
        [self _accessibilityUserTestingSnapshotAncestorsWithAttributes:v7 maxDepth:unsignedIntegerValue maxChildren:unsignedIntegerValue2 maxArrayCount:unsignedIntegerValue3 honorsModalViews:bOOLValue2];
      }
      v15 = ;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = v4;
  if (_accessibilityPluginPostProcessAutomationData_onceToken != -1)
  {
    [NSObject(UIAccessibilityAutomation) _accessibilityUserTestingSnapshotWithOptions:];
  }

  if (_accessibilityPluginPostProcessAutomationData_Loaded)
  {
    v18 = [_accessibilityPluginPostProcessAutomationData_Processor performSelector:sel_processSnapshot_options_ withObject:v16 withObject:v17];
  }

  else
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = AXLogUIA();
  if (os_signpost_enabled(v20))
  {
    *v26 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UIAccessibilityAutomation-UserTestingSnapshot", &unk_1A9BFA3AD, v26, 2u);
  }

  HTEndNonResponsiveTask();

  return v19;
}

- (id)_accessibilityUserTestingSnapshot
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (_defaultSnapshotAttributes_onceToken != -1)
  {
    [NSObject(UIAccessibilityAutomation) _accessibilityUserTestingSnapshot];
  }

  v2 = _defaultSnapshotAttributes_defaultAttributes;
  if (_AXSVoiceOverTouchEnabled() || UIAccessibilityIsSwitchControlRunning())
  {
    v3 = [v2 arrayByAddingObject:&unk_1F1DC27A0];

    v2 = v3;
  }

  v7[0] = @"attributes";
  v7[1] = @"maxDepth";
  v8[0] = v2;
  v8[1] = &unk_1F1DC27B8;
  v7[2] = @"maxChildren";
  v7[3] = @"maxArrayCount";
  v8[2] = &unk_1F1DC27B8;
  v8[3] = &unk_1F1DC27B8;
  v7[4] = @"traverseFromParentsToChildren";
  v8[4] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v5 = [self _accessibilityUserTestingSnapshotWithOptions:v4];

  return v5;
}

- (void)_accessibilityUserTestingSnapshotDescendantsWithAttributes:()UIAccessibilityAutomation maxDepth:maxChildren:maxArrayCount:honorsModalViews:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = objc_opt_class();
  v2 = [v0 objectForKeyedSubscript:@"UIAccessibilitySnapshotKeyElement"];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_1A9B83000, v3, v4, "Setting root snapshot element: %{private}@, %{private}@", v5, v6, v7, v8, v9);
}

@end