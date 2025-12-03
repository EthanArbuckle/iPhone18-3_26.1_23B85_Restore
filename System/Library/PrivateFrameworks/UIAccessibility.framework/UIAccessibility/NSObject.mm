@interface NSObject
- (id)_accessibilityFindAXDescendantsPassingTest:(void *)test byYieldingElements:;
- (id)_accessibilityFindFirstAXDescendantPassingTest:(void *)test byYieldingElements:;
- (uint64_t)_accessibilityCompareGeometry:(void *)geometry;
- (void)_accessibilityEnumerateAXDescendants:(void *)descendants passingTest:(void *)test byYieldingElements:;
@end

@implementation NSObject

void __52__NSObject_AXPrivCategory___accessibilityUnregister__block_invoke(uint64_t a1, void *a2)
{
  _UIAccessibilityCompleteUnregistration(a2);

  _UIAXCleanupRotorCache(a2);
}

void __54__NSObject_AXPrivCategory___accessibilityScrollParent__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 _accessibilityIsScrollAncestor])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __96__NSObject_UIAccessibilityElementTraversal___accessibilityElementsInDirectionWithCount_options___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [v11 _accessibilityLeafDescendantsWithCount:*(a1 + 64) - *(*(*(a1 + 48) + 8) + 24) shouldStopAtRemoteElement:1 options:*(a1 + 32)];
  if ([v5 count])
  {
    [*(a1 + 40) addObjectsFromArray:v5];
    *(*(*(a1 + 48) + 8) + 24) += [v5 count];
  }

  v6 = [v5 lastObject];
  v7 = AXRemoteElementFromObject();

  v8 = *(*(*(a1 + 48) + 8) + 24);
  v9 = *(a1 + 64);
  if (v8 >= v9 || v7 != 0)
  {
    if (v8 > v9)
    {
      _AXAssert();
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a3 = 1;
  }
}

uint64_t __129__NSObject_UIAccessibilityElementTraversal___accessibilityLeafDescendantsWithCount_shouldStopAtRemoteElement_options_treeLogger___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 _accessibilityAppendOrderedChildLeafDescendantsToArray:*(a1 + 32) count:*(a1 + 56) shouldStopAtRemoteElement:*(a1 + 64) options:*(a1 + 40) treeLogger:*(a1 + 48)];
  *a4 = result;
  return result;
}

void __129__NSObject_UIAccessibilityElementTraversal___accessibilityLeafDescendantsWithCount_shouldStopAtRemoteElement_options_treeLogger___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  if ([*(a1 + 32) count])
  {
    v6 = [*(a1 + 32) lastObject];
    v7 = AXRemoteElementFromObject();

    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 64) == 1 && [*(a1 + 32) count] >= *(a1 + 56) || (v9 = *(a1 + 65), (v9 & v8) == 1))
  {
    if ([*(a1 + 32) count] > *(a1 + 56))
    {
      _AXAssert();
    }

    *a4 = 1;
  }

  else
  {
    if (*(a1 + 64) == 1)
    {
      v10 = *(a1 + 56);
      v11 = v10 - [*(a1 + 32) count];
      LOBYTE(v9) = *(a1 + 65);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v13 _accessibilityLeafDescendantsWithCount:v11 shouldStopAtRemoteElement:v9 & 1 options:*(a1 + 40) treeLogger:*(a1 + 48)];
    [*(a1 + 32) addObjectsFromArray:v12];
  }
}

void __151__NSObject_UIAccessibilityElementTraversal___accessibilityAppendOrderedChildLeafDescendantsToArray_count_shouldStopAtRemoteElement_options_treeLogger___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __151__NSObject_UIAccessibilityElementTraversal___accessibilityAppendOrderedChildLeafDescendantsToArray_count_shouldStopAtRemoteElement_options_treeLogger___block_invoke_2;
  v10[3] = &unk_1E78AA8B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v6;
  *&v9 = v5;
  *(&v9 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [a2 enumerateObjectsWithOptions:v4 usingBlock:v10];
}

uint64_t __151__NSObject_UIAccessibilityElementTraversal___accessibilityAppendOrderedChildLeafDescendantsToArray_count_shouldStopAtRemoteElement_options_treeLogger___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  [v6 logElement:v7];
  [*(a1 + 32) push];
  LOBYTE(v6) = [v7 _accessibilityAppendOrderedChildLeafDescendantsToArray:*(a1 + 40) count:*(a1 + 64) shouldStopAtRemoteElement:*(a1 + 72) options:*(a1 + 48) treeLogger:*(a1 + 32)];

  *(*(*(a1 + 56) + 8) + 24) = v6;
  result = [*(a1 + 32) pop];
  *a4 = *(*(*(a1 + 56) + 8) + 24);
  return result;
}

uint64_t __165__NSObject_UIAccessibilityElementTraversal___accessibilityEnumerateSiblingsFromOrderedChildrenContainer_fromChildAtIndex_headerIndex_footerIndex_options_usingBlock___block_invoke(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __165__NSObject_UIAccessibilityElementTraversal___accessibilityEnumerateSiblingsFromOrderedChildrenContainer_fromChildAtIndex_headerIndex_footerIndex_options_usingBlock___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v9 = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = [v9 count];
    if (v5 > a3)
    {
      v6 = v5;
      do
      {
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          break;
        }

        v7 = *(a1 + 32);
        v8 = [v9 objectAtIndexedSubscript:a3];
        (*(v7 + 16))(v7, v8, *(*(a1 + 40) + 8) + 24);

        if (*(a1 + 48))
        {
          ++a3;
        }

        else
        {
          --a3;
        }
      }

      while (a3 < v6);
    }
  }
}

void __106__NSObject_UIAccessibilityElementTraversal___accessibilityEnumerateSiblingsWithParent_options_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = [v5 _accessibilityViewChildrenWithOptions:*(a1 + 48)];
    [v3 addObjectsFromArray:v4];
  }
}

BOOL __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke()
{
  if (UIAccessibilityStorageKeyShouldHittestFallBackToNearestChild_block_invoke_onceToken != -1)
  {
    __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_1();
  }

  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2();
    }

    Implementation = 0;
  }

  return Implementation != UIAccessibilityStorageKeyShouldHittestFallBackToNearestChild_block_invoke_BaseImplementation;
}

void __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    UIAccessibilityStorageKeyShouldHittestFallBackToNearestChild_block_invoke_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(sel_accessibilityHitTest_withEvent_);
    }
  }
}

double __64__NSObject_AXPrivCategory___accessibilityBaseHitTest_withEvent___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 convertPoint:*(a1 + 32) fromView:{a3, a4}];
LABEL_9:
      a3 = v8;
      goto LABEL_10;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [*(a1 + 32) layer];
    [v7 convertPoint:v9 fromLayer:{a3, a4}];
    a3 = v10;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = UIAccessibilityPointToPoint(*(a1 + 40), *(a1 + 48), *(a1 + 56));
      goto LABEL_9;
    }
  }

LABEL_10:

  return a3;
}

id __64__NSObject_AXPrivCategory___accessibilityBaseHitTest_withEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessibilityHitTest:{*(a1 + 48), *(a1 + 56)}];
  if (!v4)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 48), *(a1 + 56));
    v4 = [v3 _accessibilityHitTest:*(a1 + 32) withEvent:?];
  }

  return v4;
}

void __64__NSObject_AXPrivCategory___accessibilityBaseHitTest_withEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAccessibilityElement])
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t __61__NSObject_AXPrivCategory____accessibilityVisibleScrollArea___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 _accessibilityVisibleScrollArea:*(a1 + 40)];
  if (v6 != 2147483650.0)
  {
    v8 = *(*(a1 + 32) + 8);
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    *a3 = 1;
  }

  return result;
}

void __72__NSObject_AXPrivCategory___accessibilityShouldSpeakScrollStatusOnEntry__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v5 = objc_opt_class();
  if (class_getInstanceMethod(v5, *(a1 + 40)) != _accessibilityShouldSpeakScrollStatusOnEntry_BaseNSObjectMethod && [v6 _accessibilityShouldSpeakScrollStatusOnEntry])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void __54__NSObject_AXPrivCategory___accessibilityScrollStatus__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 _accessibilityIsScrollAncestor])
  {
    v5 = [v6 _accessibilityScrollStatus];
    if (v5)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v5);
      *a3 = 1;
    }
  }
}

void __93__NSObject_AXPrivCategory___accessibilityScrollAncestorForSelector_alwaysAllowRefreshAction___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v15 = a2;
  if ([v15 _accessibilityIsScrollAncestor])
  {
    if (!a1[6] || (objc_opt_respondsToSelector() & 1) != 0 && ([v15 safeValueForKey:a1[4]], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, v7))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = v15;
        [v8 safeCGSizeForKey:@"_accessibilityContentSize"];
      }

      else
      {
        if (![v15 _accessibilityIsWebDocumentView])
        {
          v8 = 0;
LABEL_15:
          objc_storeStrong((*(a1[5] + 8) + 40), a2);
          *a3 = 1;
LABEL_16:

          goto LABEL_17;
        }

        v8 = [v15 safeValueForKey:@"_scroller"];
        [v8 contentSize];
      }

      v11 = v9;
      v12 = v10;
      if (v8)
      {
        [v8 visibleBounds];
        if (v14 == v11 && v13 == v12)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

LABEL_17:
}

uint64_t __69__NSObject_AXPrivCategory___accessibilityIterateParentsForTestBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t __53__NSObject_AXPrivCategory___accessibilityIsEscapable__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = objc_opt_class();
  if (class_getInstanceMethod(v5, *(a1 + 48)) == _accessibilityIsEscapable_BaseCanPerformMethod)
  {
    v7 = objc_opt_class();
    if (class_getInstanceMethod(v7, *(a1 + 56)) != _accessibilityIsEscapable_BaseNSObjectMethod)
    {
      v6 = 1;
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x1E69DD258] viewControllerForView:v4];
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v8);
      if (v8)
      {
        v9 = objc_opt_class();
        if (class_getInstanceMethod(v9, *(a1 + 48)) != _accessibilityIsEscapable_BaseCanPerformMethod)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          v6 = [v8 _accessibilityCanPerformEscapeAction];
LABEL_11:

          goto LABEL_14;
        }

        v10 = objc_opt_class();
        if (class_getInstanceMethod(v10, *(a1 + 56)) != _accessibilityIsEscapable_BaseNSObjectMethod)
        {
          v6 = 1;
          goto LABEL_11;
        }
      }
    }

    v6 = 0;
    goto LABEL_14;
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v6 = [v4 _accessibilityCanPerformEscapeAction];
LABEL_14:

  return v6;
}

uint64_t __54__NSObject_AXPrivCategory___accessibilityIsScrollable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _accessibilityIsWebDocumentView])
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_7;
  }

  if (!UIAccessibilityStorageKeyShouldHittestFallBackToNearestChild_block_invoke_2_BaseNSObjectMethod)
  {
    v3 = objc_opt_class();
    UIAccessibilityStorageKeyShouldHittestFallBackToNearestChild_block_invoke_2_BaseNSObjectMethod = class_getInstanceMethod(v3, sel_accessibilityScroll_);
  }

  v4 = objc_opt_class();
  if (class_getInstanceMethod(v4, sel_accessibilityScroll_) != UIAccessibilityStorageKeyShouldHittestFallBackToNearestChild_block_invoke_2_BaseNSObjectMethod || (v5 = [v2 accessibilityTraits], (UIAccessibilityTraitScrollable & v5) != 0))
  {
LABEL_7:
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x1E69DD258] viewControllerForView:v2];
      if (v8)
      {
        v9 = objc_opt_class();
        if (class_getInstanceMethod(v9, sel_accessibilityScroll_) == UIAccessibilityStorageKeyShouldHittestFallBackToNearestChild_block_invoke_2_BaseNSObjectMethod)
        {
          v6 = 0;
        }

        else
        {
          v6 = -1;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

void __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXLogScrollToVisible();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_1();
  }

  if (([v3 _accessibilityScrollingEnabled] & 1) == 0)
  {
    v5 = AXLogScrollToVisible();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_2();
    }

    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 40) + 8) + 24) |= [v3 accessibilityScrollToVisibleWithChild:*(a1 + 32)];
    v5 = AXLogScrollToVisible();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_7();
    }

LABEL_9:

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 40) + 8) + 24) |= [v3 accessibilityScrollToVisible];
    v5 = AXLogScrollToVisible();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_6();
    }

    goto LABEL_9;
  }

  if (*(a1 + 32) != v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || [v3 _accessibilityIsWebDocumentView])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = *(a1 + 32);
      }

      else
      {
        NSClassFromString(&cfstr_Uiaccessibilit_6.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v5 = 0;
          goto LABEL_25;
        }

        v7 = [*(a1 + 32) safeValueForKey:@"view"];
      }

      v5 = v7;
LABEL_25:
      v8 = [v3 _accessibilityUserTestingElementBaseType];
      v9 = NSClassFromString(v8);

      if (!v9)
      {
        v9 = objc_opt_class();
      }

      v10 = AXLogScrollToVisible();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_3(v5, v9);
      }

      if (*(*(*(a1 + 40) + 8) + 24) != 1 || ([*(a1 + 32) _accessibilityAncestorIsKindOf:v9], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 != v3))
      {
        v12 = [*(a1 + 32) _accessibilityShouldAttemptScrollToFrameOnParentView];
        v13 = AXLogScrollToVisible();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_4();
        }

        if (v12)
        {
          [*(a1 + 32) accessibilityFrameForScrolling];
          v14 = [v3 _accessibilityScrollToFrame:v5 forView:?];
          v15 = AXLogScrollToVisible();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_5();
          }

          *(*(*(a1 + 40) + 8) + 24) |= v14;
        }
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  v6 = AXLogScrollToVisible();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_8();
  }
}

void __69__NSObject_AXPrivCategory___animateScrollViewWithScrollAmount_point___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = a2;
  if ([v19 _accessibilityIsScrollAncestor])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v19 isScrollEnabled])
      {
        if (*(a1 + 48) >= 0.0)
        {
          [v19 contentSize];
          v13 = v12;
          [v19 accessibilityFrame];
          v15 = v13 - v14;
          [v19 contentOffset];
          v17 = v15 - v16;
          [v19 adjustedContentInset];
          v10 = v18 + v17;
          if (v18 + v17 <= 0.0)
          {
            goto LABEL_13;
          }

          v11 = *(*(a1 + 32) + 8);
          if (v10 >= *(v11 + 24))
          {
            v10 = *(v11 + 24);
          }
        }

        else
        {
          [v19 contentOffset];
          v7 = v6;
          [v19 adjustedContentInset];
          v9 = v7 + v8;
          if (v9 <= 0.0)
          {
            goto LABEL_13;
          }

          v10 = -v9;
          v11 = *(*(a1 + 32) + 8);
          if (*(v11 + 24) > v10)
          {
            v10 = *(v11 + 24);
          }
        }

        *(v11 + 24) = v10;
        *a3 = 1;
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      }
    }
  }

LABEL_13:
}

void __62__NSObject_AXPrivCategory___accessibilityScrollRectToVisible___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  if ([v22 _accessibilityIsScrollAncestor])
  {
    if ([v22 _accessibilityScrollingEnabled])
    {
      [v22 _accessibilityContentOffset];
      v4 = v3;
      v6 = v5;
      [v22 _accessibilityScrollToFrame:0 forView:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56)}];
      [v22 _accessibilityContentOffset];
      v9 = v8;
      v10 = v7;
      if (v4 != v8 || v6 != v7)
      {
        v11 = UIAccessibilityFrameToBounds(v22, *(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56));
        v12 = v9 - v4;
        v13 = v10 - v6;
        v17 = UIAccessibilityFrameForBounds(v22, v11 - v12, v14 - v13, v15, v16);
        v18 = *(*(a1 + 32) + 8);
        *(v18 + 32) = v17;
        *(v18 + 40) = v19;
        *(v18 + 48) = v20;
        *(v18 + 56) = v21;
        *(*(*(a1 + 40) + 8) + 32) = v12 + *(*(*(a1 + 40) + 8) + 32);
        *(*(*(a1 + 40) + 8) + 40) = v13 + *(*(*(a1 + 40) + 8) + 40);
      }
    }
  }
}

void __61__NSObject_AXPrivCategory___accessibilityHandlePublicScroll___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if ([v8 accessibilityScroll:*(a1 + 48)])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([*(a1 + 32) _accessibilityIgnoreDelegate])
      {
        v5 = 0;
      }

      else
      {
        v5 = [v8 safeValueForKey:@"delegate"];
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 accessibilityScroll:*(a1 + 48)])
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a3 = 1;
      }
    }

    else
    {
      v5 = 0;
    }

    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v6 = [v8 safeValueForKey:@"dataSource"];
        if (v6 != v5 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 accessibilityScroll:*(a1 + 48)])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          *a3 = 1;
        }
      }
    }

    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [MEMORY[0x1E69DD258] viewControllerForView:v8];
        if ([v7 accessibilityScroll:*(a1 + 48)])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          *a3 = 1;
        }
      }
    }
  }
}

Method __86__NSObject_AXPrivCategory__accessibilityShouldEnumerateContainerElementsArrayDirectly__block_invoke()
{
  v0 = objc_opt_class();
  accessibilityShouldEnumerateContainerElementsArrayDirectly_elementsBaseMethod = class_getInstanceMethod(v0, sel__accessibilityElements);
  accessibilityShouldEnumerateContainerElementsArrayDirectly_elementsCountBaseMethod = class_getInstanceMethod(v0, sel_accessibilityElementCount);
  result = class_getInstanceMethod(v0, sel_accessibilityElementAtIndex_);
  accessibilityShouldEnumerateContainerElementsArrayDirectly_elementAtIndexBaseMethod = result;
  return result;
}

uint64_t __90__NSObject_AXPrivCategory__accessibilityEnumerateContainerElementsWithOptions_usingBlock___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) objectAtIndex:*(a1 + 48)];

  return MEMORY[0x1EEE66BB8]();
}

BOOL __63__NSObject_AXPrivCategory___accessibilityContainerInDirection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ([v3 _accessibilityIsTouchContainer] & 1) != 0 || *(a1 + 32) == v3;

  return v4;
}

BOOL __66__NSObject_AXPrivCategory___accessibilityGuideElementInDirection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ([v3 _accessibilityIsGuideElement] & 1) != 0 || *(a1 + 32) == v3;

  return v4;
}

void __44__NSObject_AXPrivCategory___axAncestorTypes__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v8 safeValueForKey:@"_browserAccessibilityStoredValueContainerType"], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v5 = [v8 accessibilityContainerType];
    if (!v5)
    {
      goto LABEL_8;
    }

    v4 = [*(a1 + 32) axContainerTypeFromUIKitContainerType:v5];
    goto LABEL_7;
  }

  v4 = [*(a1 + 32) beaxContainerTypeFromUIKitContainerType:{objc_msgSend(v8, "browserAccessibilityContainerType")}];
  if (v4)
  {
LABEL_7:
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v4];
    [v6 setObject:v8 forKey:v7];
  }

LABEL_8:
}

void __90__NSObject_AXPrivCategory___accessibilitySiblingWithAncestor_isFirst_isLast_sawAXElement___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (*(a1 + 32) == v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_8:
    *a4 = 1;
    goto LABEL_9;
  }

  v7 = v6;
  if ([v6 isAccessibilityElement])
  {
    **(a1 + 48) = 1;
LABEL_7:
    v6 = v7;
    goto LABEL_8;
  }

  if ([*(a1 + 32) _accessibilitySiblingWithAncestor:v7 isFirst:*(a1 + 56) isLast:*(a1 + 57) sawAXElement:*(a1 + 48)])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_7;
  }

  v6 = v7;
  if (**(a1 + 48) == 1)
  {
    goto LABEL_8;
  }

LABEL_9:
}

void __56__NSObject_AXPrivCategory___accessibilityContainerTypes__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) _accessibilityGetBlockForAttribute:43];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    v5 = [v12 accessibilityContainerType];
  }

  v6 = v5;
  if (v5)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 40) + 8) + 40);
    }

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(*(a1 + 32), "axContainerTypeFromUIKitContainerType:", v6)}];
    [v7 addObject:v11];
  }
}

id __70__NSObject_AXPrivCategory___accessibilityInternalTextLinkCustomRotors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _accessibilityInternalTextLinks];
  if ([v5 count])
  {
    v6 = [v3 currentItem];
    v7 = [v6 targetElement];
    v8 = [v5 indexOfObject:v7];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else if ([v3 searchDirection])
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v8 - 1;
    }

    if (v9 >= [*(a1 + 32) count])
    {
      v9 = 0;
    }

    else if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = [*(a1 + 32) count] - 1;
    }

    v10 = objc_alloc_init(MEMORY[0x1E69DC5F8]);
    v11 = [v5 objectAtIndex:v9];
    [v10 setTargetElement:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __56__NSObject_AXPrivCategory___accessibilityActiveKeyboard__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __64__NSObject_AXPrivCategory___accessibilityWatchAutoSpeakElements__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 _iosAccessibilityAttributeValue:15000];
  v4 = [v2 _iosAccessibilityAttributeValue:15002];
  v5 = [v2 _iosAccessibilityAttributeValue:15001];

  v6 = 0;
  if (v3 && v4 && v5)
  {
    v7 = [MEMORY[0x1E6989890] sharedInstance];
    v8 = [v7 gizmoGetAutoSpeakEnabledForComplication:v5 slot:v4 face:v3];

    if (v8)
    {
      v9 = AXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = v4;
        v13 = 2112;
        v14 = v3;
        _os_log_impl(&dword_1A9B83000, v9, OS_LOG_TYPE_INFO, "auto speak element at slot: %@, face: %@", &v11, 0x16u);
      }

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void __55__NSObject_AXPrivCategory___accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 count])
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    if (!v3)
    {
      v4 = [MEMORY[0x1E695DF70] array];
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v3 addObjectsFromArray:v7];
  }
}

BOOL __55__NSObject_AXPrivCategory___accessibilityCustomActions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sortPriority];
  v6 = [v4 sortPriority];

  return v5 > v6;
}

BOOL __62__NSObject_AXPrivCategory___accessibilityFirstElementForFocus__block_invoke()
{
  if (kAXContainerAncestorTypeKey_block_invoke_3_onceToken != -1)
  {
    __62__NSObject_AXPrivCategory___accessibilityFirstElementForFocus__block_invoke_cold_1();
  }

  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityFirstElementForFocus);
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2();
    }

    Implementation = 0;
  }

  return Implementation != kAXContainerAncestorTypeKey_block_invoke_3_BaseImplementation;
}

void __62__NSObject_AXPrivCategory___accessibilityFirstElementForFocus__block_invoke_2()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityFirstElementForFocus);
  if (InstanceMethod)
  {
    kAXContainerAncestorTypeKey_block_invoke_3_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(sel__accessibilityFirstElementForFocus);
    }
  }
}

BOOL __74__NSObject_AXPrivCategory___accessibilityFirstElementForFocusWithOptions___block_invoke()
{
  if (kAXContainerAncestorTypeKey_block_invoke_4_onceToken != -1)
  {
    __74__NSObject_AXPrivCategory___accessibilityFirstElementForFocusWithOptions___block_invoke_cold_1();
  }

  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityFirstElementForFocus);
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2();
    }

    Implementation = 0;
  }

  return Implementation != kAXContainerAncestorTypeKey_block_invoke_4_BaseImplementation;
}

void __74__NSObject_AXPrivCategory___accessibilityFirstElementForFocusWithOptions___block_invoke_2()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityFirstElementForFocus);
  if (InstanceMethod)
  {
    kAXContainerAncestorTypeKey_block_invoke_4_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(sel__accessibilityFirstElementForFocus);
    }
  }
}

uint64_t __57__NSObject_AXPrivCategory___accessibilityFirstWebElement__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessibilityTraits];
  if ((*MEMORY[0x1E6989268] & v4) != 0)
  {
    v5 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __111__NSObject_AXPrivCategory___accessibilityFirstContainedElementForTechnology_honoringGroups_shouldAlwaysScroll___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

Method __67__NSObject_AXPrivCategory___accessibilityFirstElementsForSpeakThis__block_invoke()
{
  v0 = objc_opt_class();
  result = class_getInstanceMethod(v0, sel__accessibilitySpeakThisElementsAndStrings);
  _accessibilityFirstElementsForSpeakThis_speakThisElementsBaseMethod = result;
  return result;
}

Method __72__NSObject_AXPrivCategory___accessibilityElementsForReadingInDirection___block_invoke()
{
  v0 = objc_opt_class();
  _accessibilityElementsForReadingInDirection__speakThisElementsBaseMethod = class_getInstanceMethod(v0, sel__accessibilitySpeakThisElementsAndStrings);
  v1 = objc_opt_class();
  result = class_getInstanceMethod(v1, sel__accessibilitySpeakThisElementsAndStrings);
  _accessibilityElementsForReadingInDirection__speakThisElementsVCBaseMethod = result;
  return result;
}

void __66__NSObject_AXPrivCategory___accessibilityHeaderElementsForColumn___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 accessibilityHeaderElementsForColumn:*(a1 + 40)];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a3 = 1;
  }
}

void __63__NSObject_AXPrivCategory___accessibilityHeaderElementsForRow___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 accessibilityHeaderElementsForRow:*(a1 + 40)];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a3 = 1;
  }
}

uint64_t __60__NSObject_AXPrivCategory___accessibilityPublicCustomRotors__block_invoke()
{
  RotorCache = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

Method __84__NSObject_AXPrivCategory___accessibilityOverridesPotentiallyAttributedAPISelector___block_invoke()
{
  v0 = objc_opt_class();
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityLabelBaseMethod = class_getInstanceMethod(v0, sel_accessibilityLabel);
  v1 = objc_opt_class();
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityValueBaseMethod = class_getInstanceMethod(v1, sel_accessibilityValue);
  v2 = objc_opt_class();
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityHintBaseMethod = class_getInstanceMethod(v2, sel_accessibilityHint);
  v3 = objc_opt_class();
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityUserInputLabelsBaseMethod = class_getInstanceMethod(v3, sel_accessibilityUserInputLabels);
  v4 = objc_opt_class();
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedLabelBaseMethod = class_getInstanceMethod(v4, sel_accessibilityAttributedLabel);
  v5 = objc_opt_class();
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedValueBaseMethod = class_getInstanceMethod(v5, sel_accessibilityAttributedValue);
  v6 = objc_opt_class();
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedHintBaseMethod = class_getInstanceMethod(v6, sel_accessibilityAttributedHint);
  v7 = objc_opt_class();
  result = class_getInstanceMethod(v7, sel_accessibilityAttributedUserInputLabels);
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedUserInputLabelsBaseMethod = result;
  return result;
}

uint64_t __133__NSObject_AXPrivCategory___accessibilityPrefersNonAttributedAttributeWithOverrideSelector_nonAttributedSelector_attributedSelector___block_invoke()
{
  result = objc_opt_class();
  _accessibilityPrefersNonAttributedAttributeWithOverrideSelector_nonAttributedSelector_attributedSelector__NSObjectClass = result;
  return result;
}

void __112__NSObject_AXPrivCategory___accessibilityPotentiallyAttributedValueForNonAttributedSelector_attributedSelector___block_invoke()
{
  _accessibilityPotentiallyAttributedValueForNonAttributedSelector_attributedSelector__accessibilityLabelSEL = sel_accessibilityLabel;
  _accessibilityPotentiallyAttributedValueForNonAttributedSelector_attributedSelector__accessibilityValueSEL = sel_accessibilityValue;
  _accessibilityPotentiallyAttributedValueForNonAttributedSelector_attributedSelector__accessibilityHintSEL = sel_accessibilityHint;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:16];
  v1 = processedClasses;
  processedClasses = v0;

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:objc_opt_class() selector:sel__accessibilityClearProcessedClasses_ name:*MEMORY[0x1E69E4B50] object:0];
}

id __69__NSObject_AXPrivCategory___accessibilityAXAttributedUserInputLabels__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6988D60];
  v3 = a2;
  v4 = [[v2 alloc] initWithCFAttributedString:v3];

  return v4;
}

id __69__NSObject_AXPrivCategory___accessibilityAXAttributedUserInputLabels__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6988D60];
  v3 = a2;
  v4 = [[v2 alloc] initWithCFAttributedString:v3];

  return v4;
}

uint64_t __70__NSObject_AXPrivCategory___accessibilityProcessChildrenForParameter___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (a1[4] != v3 && (*(a1[6] + 16))())
  {
    v4 = [v3 _accessibilityGroupedParent];
    v5 = a1[5];
    if (v4)
    {
      if (v5 && ([v5 isEqual:v4] & 1) != 0)
      {
        goto LABEL_6;
      }
    }

    else if (!v5)
    {
LABEL_6:
      v6 = 1;
LABEL_10:

      goto LABEL_11;
    }

    v6 = 0;
    goto LABEL_10;
  }

  v6 = 0;
LABEL_11:

  return v6;
}

uint64_t __73__NSObject_AXPrivCategory___iosAccessibilityAttributeValue_forParameter___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void __63__NSObject_AXPrivCategory___accessibilityFocusableFrameForZoom__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 _accessibilityContentOffset];
    v4 = v3;
    v6 = v5;
    [v9 safeCGPointForKey:@"_focusTargetOffset"];
    *(*(*(a1 + 32) + 8) + 32) = v7 - v4 + *(*(*(a1 + 32) + 8) + 32);
    *(*(*(a1 + 32) + 8) + 40) = v8 - v6 + *(*(*(a1 + 32) + 8) + 40);
  }
}

uint64_t __60__NSObject_AXPrivCategory___iosAccessibilityAttributeValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL __60__NSObject_AXPrivCategory___iosAccessibilityAttributeValue___block_invoke_1125()
{
  if (processedClasses_block_invoke_5_onceToken != -1)
  {
    __60__NSObject_AXPrivCategory___iosAccessibilityAttributeValue___block_invoke_1125_cold_1();
  }

  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilitySelectedChildren);
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2();
    }

    Implementation = 0;
  }

  return Implementation != processedClasses_block_invoke_5_BaseImplementation;
}

void __60__NSObject_AXPrivCategory___iosAccessibilityAttributeValue___block_invoke_2()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilitySelectedChildren);
  if (InstanceMethod)
  {
    processedClasses_block_invoke_5_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(sel__accessibilitySelectedChildren);
    }
  }
}

void __66__NSObject_AXPrivCategory___accessibilityBrailleMapsFromGraphData__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v33 = v5;
  if (*(a1 + 96) == 1)
  {
    v6 = a3 / *(a1 + 72);
  }

  else
  {
    v7 = [v5 xValue];
    [v7 number];
    v6 = v8;

    v5 = v33;
  }

  v9 = (v6 - *(a1 + 80)) / (*(a1 + 88) - *(a1 + 80));
  v10 = [v5 yValue];
  [v10 number];
  v12 = v11;
  [*(a1 + 32) lowerBound];
  v14 = v12 - v13;
  [*(a1 + 32) upperBound];
  v16 = v15;
  [*(a1 + 32) lowerBound];
  v18 = v14 / (v16 - v17);

  [*(a1 + 40) dimensions];
  if (v19 >= (v9 * v19))
  {
    v19 = (v9 * v19);
  }

  v21 = v19;
  v22 = v20 - (v18 * v20);
  if (v20 < v22)
  {
    v22 = v20;
  }

  v23 = *(*(*(a1 + 56) + 8) + 24);
  if (v23 != v21)
  {
    v24 = v22;
    v25 = v23 != -1 && v23 < v21;
    v26 = v25;
    v27 = v21 - v26;
    v28 = (v20 + -1.0);
    if (v21 <= v21 - v26)
    {
      v29 = v21 - v26;
    }

    else
    {
      v29 = v21;
    }

    do
    {
      if ([*(a1 + 48) isContinuous])
      {
        LODWORD(v30) = 1.0;
        [*(a1 + 40) setHeight:v30 atPoint:{v27, v24}];
      }

      else if (v28 >= v24)
      {
        v31 = v28;
        do
        {
          LODWORD(v30) = 1.0;
          [*(a1 + 40) setHeight:v30 atPoint:{v27, v31}];
          v25 = v31-- <= v24;
        }

        while (!v25);
      }
    }

    while (v27++ != v29);
    *(*(*(a1 + 64) + 8) + 24) = v24;
    *(*(*(a1 + 56) + 8) + 24) = v21;
  }
}

void __65__NSObject_AXPrivCategory__accessibilityElementForRow_andColumn___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = [a2 accessibilityDataTableCellElementForRow:a1[5] column:a1[6]];
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(a1[4] + 8) + 40))
  {
    *a3 = 1;
  }
}

uint64_t __53__NSObject_AXPrivCategory___accessibilityColumnCount__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 accessibilityColumnCount];
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __53__NSObject_AXPrivCategory___accessibilityColumnRange__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 accessibilityColumnRange];
  v6 = *(*(a1 + 32) + 8);
  *(v6 + 32) = result;
  *(v6 + 40) = v7;
  v8 = *(*(*(a1 + 32) + 8) + 32);
  if (v8 != 0x7FFFFFFF && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a3 = 1;
  }

  return result;
}

void __76__NSObject_AXPrivCategory___accessibilityRowRangeFromTableOrCollectionView___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v5, *(a1 + 40));
  v7 = [v10 accessibilityRowRange];
  v8 = *(*(a1 + 32) + 8);
  *(v8 + 32) = v7;
  *(v8 + 40) = v9;
  if (InstanceMethod != _accessibilityRowRangeFromTableOrCollectionView__BaseNSObjectMethod || [v10 _accessibilityIsInTabBar])
  {
    *a3 = 1;
    if (*(a1 + 48))
    {
      **(a1 + 48) = [v10 _accessibilityImplementsDefaultRowRange];
    }
  }
}

uint64_t __50__NSObject_AXPrivCategory___accessibilityRowCount__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 accessibilityRowCount];
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a3 = 1;
  }

  return result;
}

void __38__NSObject_AXPrivCategory___fkaMoveUp__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityFocusContainer];
  [v1 _accessibilityMoveFocusWithHeading:1];
}

void __40__NSObject_AXPrivCategory___fkaMoveDown__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityFocusContainer];
  [v1 _accessibilityMoveFocusWithHeading:2];
}

void __40__NSObject_AXPrivCategory___fkaMoveLeft__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityFocusContainer];
  [v1 _accessibilityMoveFocusWithHeading:4];
}

void __41__NSObject_AXPrivCategory___fkaMoveRight__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityFocusContainer];
  [v1 _accessibilityMoveFocusWithHeading:8];
}

uint64_t __59__NSObject_AXPrivCategory___accessibilityFocusRingAncestor__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v2 canBecomeFocused])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 _accessibilityDrawsFocusRingWhenChildrenFocused];
  }

  return v3;
}

BOOL __60__NSObject_AXPrivCategory___accessibilityFirstOpaqueElement__block_invoke()
{
  if (processedClasses_block_invoke_6_onceToken != -1)
  {
    __60__NSObject_AXPrivCategory___accessibilityFirstOpaqueElement__block_invoke_cold_1();
  }

  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityFirstOpaqueElement);
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2();
    }

    Implementation = 0;
  }

  return Implementation != processedClasses_block_invoke_6_BaseImplementation;
}

void __60__NSObject_AXPrivCategory___accessibilityFirstOpaqueElement__block_invoke_2()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityFirstOpaqueElement);
  if (InstanceMethod)
  {
    processedClasses_block_invoke_6_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(sel__accessibilityFirstOpaqueElement);
    }
  }
}

BOOL __72__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementWithOptions___block_invoke()
{
  if (processedClasses_block_invoke_7_onceToken != -1)
  {
    __72__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementWithOptions___block_invoke_cold_1();
  }

  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityFirstOpaqueElement);
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2();
    }

    Implementation = 0;
  }

  return Implementation != processedClasses_block_invoke_7_BaseImplementation;
}

void __72__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementWithOptions___block_invoke_2()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityFirstOpaqueElement);
  if (InstanceMethod)
  {
    processedClasses_block_invoke_7_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(sel__accessibilityFirstOpaqueElement);
    }
  }
}

BOOL __68__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementForFocus__block_invoke()
{
  if (processedClasses_block_invoke_8_onceToken != -1)
  {
    __68__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementForFocus__block_invoke_cold_1();
  }

  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityFirstOpaqueElementForFocus);
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2();
    }

    Implementation = 0;
  }

  return Implementation != processedClasses_block_invoke_8_BaseImplementation;
}

void __68__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementForFocus__block_invoke_2()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityFirstOpaqueElementForFocus);
  if (InstanceMethod)
  {
    processedClasses_block_invoke_8_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(sel__accessibilityFirstOpaqueElementForFocus);
    }
  }
}

BOOL __80__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementForFocusWithOptions___block_invoke()
{
  if (processedClasses_block_invoke_9_onceToken != -1)
  {
    __80__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementForFocusWithOptions___block_invoke_cold_1();
  }

  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityFirstOpaqueElementForFocus);
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2();
    }

    Implementation = 0;
  }

  return Implementation != processedClasses_block_invoke_9_BaseImplementation;
}

void __80__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementForFocusWithOptions___block_invoke_2()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityFirstOpaqueElementForFocus);
  if (InstanceMethod)
  {
    processedClasses_block_invoke_9_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(sel__accessibilityFirstOpaqueElementForFocus);
    }
  }
}

BOOL __59__NSObject_AXPrivCategory___accessibilityLastOpaqueElement__block_invoke()
{
  if (processedClasses_block_invoke_10_onceToken != -1)
  {
    __59__NSObject_AXPrivCategory___accessibilityLastOpaqueElement__block_invoke_cold_1();
  }

  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityLastOpaqueElement);
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2();
    }

    Implementation = 0;
  }

  return Implementation != processedClasses_block_invoke_10_BaseImplementation;
}

void __59__NSObject_AXPrivCategory___accessibilityLastOpaqueElement__block_invoke_2()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityLastOpaqueElement);
  if (InstanceMethod)
  {
    processedClasses_block_invoke_10_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(sel__accessibilityLastOpaqueElement);
    }
  }
}

BOOL __71__NSObject_AXPrivCategory___accessibilityLastOpaqueElementWithOptions___block_invoke()
{
  if (processedClasses_block_invoke_11_onceToken != -1)
  {
    __71__NSObject_AXPrivCategory___accessibilityLastOpaqueElementWithOptions___block_invoke_cold_1();
  }

  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityLastOpaqueElement);
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2();
    }

    Implementation = 0;
  }

  return Implementation != processedClasses_block_invoke_11_BaseImplementation;
}

void __71__NSObject_AXPrivCategory___accessibilityLastOpaqueElementWithOptions___block_invoke_2()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilityLastOpaqueElement);
  if (InstanceMethod)
  {
    processedClasses_block_invoke_11_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(sel__accessibilityLastOpaqueElement);
    }
  }
}

uint64_t __149__NSObject_AXPrivCategory___accessibilityNextOpaqueElementsForTechnology_startElement_direction_searchType_range_shouldScrollToVisible_honorsGroups___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _accessibilityHasOrderedChildren])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isAccessibilityOpaqueElementProvider];
  }

  return v3;
}

uint64_t __149__NSObject_AXPrivCategory___accessibilityNextOpaqueElementsForTechnology_startElement_direction_searchType_range_shouldScrollToVisible_honorsGroups___block_invoke_1384(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _accessibilityHasOrderedChildren])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isAccessibilityOpaqueElementProvider];
  }

  return v3;
}

BOOL __133__NSObject_AXPrivCategory___accessibilityFindElementInDirection_searchType_allowOutOfBoundsChild_startingTouchContainer_honorGroups___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityOpaqueElementParent];
  [v1 _accessibilityVisibleFrame];
  v4 = v3 > 0.0 && v2 > 0.0;

  return v4;
}

uint64_t __133__NSObject_AXPrivCategory___accessibilityFindElementInDirection_searchType_allowOutOfBoundsChild_startingTouchContainer_honorGroups___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

id __133__NSObject_AXPrivCategory___accessibilityFindElementInDirection_searchType_allowOutOfBoundsChild_startingTouchContainer_honorGroups___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __133__NSObject_AXPrivCategory___accessibilityFindElementInDirection_searchType_allowOutOfBoundsChild_startingTouchContainer_honorGroups___block_invoke_5;
  v6[3] = &unk_1E78AB078;
  v8 = &v12;
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v7 = *(a1 + 32);
  v11 = *(a1 + 57);
  [v3 enumerateObjectsWithOptions:2 * (v9 == 2) usingBlock:v6];
  v4 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v4;
}

void __133__NSObject_AXPrivCategory___accessibilityFindElementInDirection_searchType_allowOutOfBoundsChild_startingTouchContainer_honorGroups___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 _accessibilityFindElementInDirection:*(a1 + 48) searchType:*(a1 + 56) allowOutOfBoundsChild:*(a1 + 64) startingTouchContainer:*(a1 + 32) honorGroups:*(a1 + 65)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

BOOL __62__NSObject_AXPrivCategory___accessibilitySortedElementsWithin__block_invoke()
{
  if (processedClasses_block_invoke_12_onceToken != -1)
  {
    __62__NSObject_AXPrivCategory___accessibilitySortedElementsWithin__block_invoke_cold_1();
  }

  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilitySortedElementsWithin);
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2();
    }

    Implementation = 0;
  }

  return Implementation != processedClasses_block_invoke_12_BaseImplementation;
}

void __62__NSObject_AXPrivCategory___accessibilitySortedElementsWithin__block_invoke_2()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilitySortedElementsWithin);
  if (InstanceMethod)
  {
    processedClasses_block_invoke_12_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(sel__accessibilitySortedElementsWithin);
    }
  }
}

BOOL __74__NSObject_AXPrivCategory___accessibilitySortedElementsWithinWithOptions___block_invoke()
{
  if (processedClasses_block_invoke_13_onceToken != -1)
  {
    __74__NSObject_AXPrivCategory___accessibilitySortedElementsWithinWithOptions___block_invoke_cold_1();
  }

  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilitySortedElementsWithin);
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2();
    }

    Implementation = 0;
  }

  return Implementation != processedClasses_block_invoke_13_BaseImplementation;
}

void __74__NSObject_AXPrivCategory___accessibilitySortedElementsWithinWithOptions___block_invoke_2()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__accessibilitySortedElementsWithin);
  if (InstanceMethod)
  {
    processedClasses_block_invoke_13_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(sel__accessibilitySortedElementsWithin);
    }
  }
}

uint64_t __174__NSObject_AXPrivCategory___accessibilitySearchSubtreesAfterChildElement_direction_searchType_allowOutOfBoundsChild_range_shouldScrollToVisible_honorGroups_updatedContainer___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void __174__NSObject_AXPrivCategory___accessibilitySearchSubtreesAfterChildElement_direction_searchType_allowOutOfBoundsChild_range_shouldScrollToVisible_honorGroups_updatedContainer___block_invoke_1405(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 _accessibilityFindElementInDirection:*(a1 + 48) searchType:*(a1 + 56) allowOutOfBoundsChild:*(a1 + 64) startingTouchContainer:*(a1 + 32) honorGroups:*(a1 + 65)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a3 = 1;
  }
}

uint64_t __85__NSObject_AXPrivCategory___accessibilityVisibleOpaqueElementsHonoringGroups_sorted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == v3)
  {
    v5 = 0;
  }

  else if ([v3 isAccessibilityElement])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 _accessibilityIsGroupedParent];
  }

  return v5;
}

uint64_t __60__NSObject_AXPrivCategory__accessibilityViewWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessibilityIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_accessibilityEnumerateAXDescendants:(void *)descendants passingTest:(void *)test byYieldingElements:
{
  v7 = a2;
  descendantsCopy = descendants;
  testCopy = test;
  if (self)
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v21 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v11 = __96__NSObject_AXPrivCategory___accessibilityEnumerateAXDescendants_passingTest_byYieldingElements___block_invoke;
    v12 = &unk_1E78AB110;
    v13 = descendantsCopy;
    v16 = v22;
    v14 = v7;
    v15 = testCopy;
    v17 = &v18;
    v19[3] = v10;
    v11(v10, self);
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(v22, 8);
  }
}

uint64_t __96__NSObject_AXPrivCategory___accessibilityEnumerateAXDescendants_passingTest_byYieldingElements___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ((*(a1[4] + 16))())
  {
    (*(a1[5] + 16))();
  }

  if (*(*(a1[7] + 8) + 24))
  {
    v4 = 0;
  }

  else
  {
    (*(a1[6] + 16))();
    v4 = *(*(a1[7] + 8) + 24) ^ 1;
  }

  return v4 & 1;
}

- (id)_accessibilityFindFirstAXDescendantPassingTest:(void *)test byYieldingElements:
{
  v5 = a2;
  testCopy = test;
  if (self)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__2;
    v15 = __Block_byref_object_dispose__2;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __94__NSObject_AXPrivCategory___accessibilityFindFirstAXDescendantPassingTest_byYieldingElements___block_invoke;
    v10[3] = &unk_1E78AB160;
    v10[4] = &v11;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __94__NSObject_AXPrivCategory___accessibilityFindFirstAXDescendantPassingTest_byYieldingElements___block_invoke_2;
    v8[3] = &unk_1E78AB188;
    v9 = v5;
    [self _accessibilityEnumerateAXDescendants:v10 passingTest:v8 byYieldingElements:testCopy];
    self = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return self;
}

uint64_t __94__NSObject_AXPrivCategory___accessibilityFindFirstAXDescendantPassingTest_byYieldingElements___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (a3)
  {
    if (result)
    {
      *a3 = 1;
    }
  }

  return result;
}

void __79__NSObject_AXPrivCategory___accessibilityFindDescendant_shouldStopAtLeafNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 _accessibilityHasOrderedChildren])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __79__NSObject_AXPrivCategory___accessibilityFindDescendant_shouldStopAtLeafNodes___block_invoke_2;
    v19[3] = &unk_1E78AB1B0;
    v20 = v5;
    [v6 accessibilityEnumerateContainerElementsWithOptions:0 usingBlock:v19];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (*(a1 + 32) == v6 || *(a1 + 40) != 1 || ([v6 isAccessibilityElement] & 1) == 0))
    {
      v7 = objc_autoreleasePoolPush();
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = *(a1 + 32);
      v9 = [v6 subviews];
      v10 = [v8 _accessibilityGeometrySortedElements:v9];

      v11 = [v10 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
LABEL_9:
        v14 = 0;
        while (1)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (!(*(v5 + 2))(v5, *(*(&v15 + 1) + 8 * v14)))
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v21 count:16];
            if (v12)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      objc_autoreleasePoolPop(v7);
    }
  }
}

uint64_t __79__NSObject_AXPrivCategory___accessibilityFindDescendant_shouldStopAtLeafNodes___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = (*(*(a1 + 32) + 16))();
    if (a4)
    {
      if ((v6 & 1) == 0)
      {
        *a4 = 1;
      }
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void __64__NSObject_AXPrivCategory___accessibilityFindSubviewDescendant___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v5 subviews];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (!v4[2](v4, *(*(&v11 + 1) + 8 * v10)))
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

void __76__NSObject_AXPrivCategory___accessibilityFindSubviewDescendantsPassingTest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v5 subviews];
    v7 = [v6 reverseObjectEnumerator];

    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (!v4[2](v4, *(*(&v12 + 1) + 8 * v11)))
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

void __71__NSObject_AXPrivCategory___accessibilityFindViewControllerDescendant___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v17 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  v7 = v6;
  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [v6 childViewControllers];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (!v4[2](v4, *(*(&v13 + 1) + 8 * v12)))
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

uint64_t __69__NSObject_AXPrivCategory___accessibilityFindViewControllerAncestor___block_invoke(void *a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  if (v3 && (*(a1[4] + 16))())
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v3);
    v4 = 1;
  }

  else
  {
    v4 = *(*(a1[5] + 8) + 24);
  }

  return v4 & 1;
}

void __84__NSObject_AXPrivCategory___accessibilityFindUnsortedSubviewDescendantsPassingTest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v5 subviews];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (!v4[2](v4, *(*(&v11 + 1) + 8 * v10)))
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

void __77__NSObject_AXPrivCategory___accessibilityFindUnsortedDescendantsPassingTest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if ([v5 _accessibilityHasOrderedChildren])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__NSObject_AXPrivCategory___accessibilityFindUnsortedDescendantsPassingTest___block_invoke_2;
    v15[3] = &unk_1E78AB1B0;
    v16 = v4;
    [v5 accessibilityEnumerateContainerElementsWithOptions:0 usingBlock:v15];
    v6 = v16;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v5 subviews];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (!(*(v4 + 2))(v4, *(*(&v11 + 1) + 8 * v10)))
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
          if (v8)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }
  }

LABEL_14:
}

uint64_t __77__NSObject_AXPrivCategory___accessibilityFindUnsortedDescendantsPassingTest___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = (*(*(a1 + 32) + 16))();
    if (a4)
    {
      if ((v6 & 1) == 0)
      {
        *a4 = 1;
      }
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __70__NSObject_AXPrivCategory___accessibilityControlDescendantWithTarget___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v3 allTargets];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v11 + 1) + 8 * v8) isEqual:*(a1 + 32)])
          {
            v9 = 1;
            goto LABEL_13;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __70__NSObject_AXPrivCategory___accessibilityControlDescendantWithAction___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_isKindOfClass())
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [v3 allTargets];
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v10 = [v3 actionsForTarget:v9 forControlEvent:{0, 0}];
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                if ([*(*(&v17 + 1) + 8 * j) isEqualToString:*(a1 + 32)])
                {

                  v15 = 1;
                  goto LABEL_21;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
        v15 = 0;
      }

      while (v6);
    }

    else
    {
      v15 = 0;
    }

LABEL_21:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __94__NSObject_AXPrivCategory___accessibilityVisibleElementsHonoringGroups_respectGroupedParents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 32) == v3)
    {
      v5 = 0;
    }

    else if ([v3 isAccessibilityElement])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 _accessibilityIsGroupedParent];
    }
  }

  else
  {
    v5 = [v3 accessibilityContainerType] != 0;
  }

  return v5;
}

uint64_t __94__NSObject_AXPrivCategory___accessibilityVisibleElementsHonoringGroups_respectGroupedParents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == v3)
  {
    v5 = 0;
  }

  else if ([v3 isAccessibilityElement])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 _accessibilityIsGroupedParent];
  }

  return v5;
}

BOOL __97__NSObject_AXPrivCategory___accessibilityScannerElementsGrouped_shouldIncludeNonScannerElements___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAccessibilityElement] && (v3 = objc_msgSend(v2, "accessibilityTraits"), ((*MEMORY[0x1E6989138] | *MEMORY[0x1E69890D8]) & v3) == 0))
  {
    v4 = (*MEMORY[0x1E6989148] & v3) == 0 || (*MEMORY[0x1E6989018] & v3) != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __67__NSObject_AXPrivCategory___accessibilityChildrenUnionContentFrame__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if ([v13 isAccessibilityElement])
  {
    if (CGRectIsEmpty(*(*(*(a1 + 32) + 8) + 32)))
    {
      [v13 _accessibilityContentFrame];
    }

    else
    {
      v7 = *(*(a1 + 32) + 8);
      [v13 _accessibilityContentFrame];
      v15.origin.x = v8;
      v15.origin.y = v9;
      v15.size.width = v10;
      v15.size.height = v11;
      *&v3 = CGRectUnion(v7[1], v15);
    }

    v12 = *(*(a1 + 32) + 8);
    v12[4] = v3;
    v12[5] = v4;
    v12[6] = v5;
    v12[7] = v6;
  }
}

void __55__NSObject_AXPrivCategory___accessibilityVisibleFrame___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 _accessibilityContentFrame];
    *(*(*(a1 + 32) + 8) + 32) = CGRectIntersection(v9, *(*(*(a1 + 32) + 8) + 32));
    if (CGRectIsNull(*(*(*(a1 + 32) + 8) + 32)))
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = *(MEMORY[0x1E695F058] + 16);
      *(v5 + 32) = *MEMORY[0x1E695F058];
      *(v5 + 48) = v6;
      *a3 = 1;
    }
  }
}

void __81__NSObject_AXPrivCategory___accessibilityConvertSystemBoundedPathToContextSpace___block_invoke(uint64_t a1, int a2, double *a3, uint64_t a4)
{
  if (a4)
  {
    v7 = a4;
    v8 = a3 + 1;
    do
    {
      [*(a1 + 32) _accessibilityConvertSystemBoundedScreenPointToContextSpace:{*(v8 - 1), *v8}];
      *(v8 - 1) = v9;
      *v8 = v10;
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = *(a1 + 40);
        v13 = *a3;
        v14 = a3[1];

        CGPathAddLineToPoint(v12, 0, v13, v14);
      }
    }

    else
    {
      v27 = *(a1 + 40);
      v28 = *a3;
      v29 = a3[1];

      CGPathMoveToPoint(v27, 0, v28, v29);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v15 = *(a1 + 40);
        v16 = *a3;
        v17 = a3[1];
        v18 = a3[2];
        v19 = a3[3];

        CGPathAddQuadCurveToPoint(v15, 0, v16, v17, v18, v19);
        break;
      case 3:
        v20 = *(a1 + 40);
        v21 = *a3;
        v22 = a3[1];
        v23 = a3[2];
        v24 = a3[3];
        v25 = a3[4];
        v26 = a3[5];

        CGPathAddCurveToPoint(v20, 0, v21, v22, v23, v24, v25, v26);
        break;
      case 4:
        v11 = *(a1 + 40);

        CGPathCloseSubpath(v11);
        break;
    }
  }
}

void __52__NSObject_AXPrivCategory___axOutermostScrollParent__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 _accessibilityIsScrollAncestor])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

BOOL __55__NSObject_AXPrivCategory___accessibilityPerformEscape__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v8 = MEMORY[0x1E69E9820];
  v3 = v2;
  AXPerformSafeBlock();
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);
  v6 = 0;
  if (v4)
  {
    v5 = objc_opt_class();
    if (class_getInstanceMethod(v5, sel_accessibilityPerformEscape) != _accessibilityPerformEscape_BaseNSObjectMethod && ([v4 accessibilityPerformEscape] & 1) != 0)
    {
      v6 = 1;
    }
  }

  return v6;
}

uint64_t __55__NSObject_AXPrivCategory___accessibilityPerformEscape__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [_accessibilityPerformEscape_AXUIViewControllerClass viewControllerForView:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __55__NSObject_AXPrivCategory___accessibilityPerformEscape__block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a2 subviews];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 accessibilityPerformEscape])
        {
          UIAccessibilityPostNotification(*MEMORY[0x1E69DD930], 0);
          v3 = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

void __80__NSObject_AXPrivCategory___accessibilityConvertStyleAttributesToAccessibility___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = *MEMORY[0x1E69DB650];
  v11 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = AXColorStringForColor();
    [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6988E50]];

    [v9 addObject:v10];
  }

  v48 = v11;
  v53 = 0;
  objc_opt_class();
  v13 = *MEMORY[0x1E69DB648];
  v14 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v15 = __UIAccessibilityCastAsClass();

  if (v15)
  {
    v46 = v13;
    v47 = v9;
    v16 = [v15 fontName];
    [v8 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6988E40]];

    v17 = [v15 familyName];
    [v8 setObject:v17 forKeyedSubscript:*MEMORY[0x1E6988E38]];

    v18 = MEMORY[0x1E696AD98];
    [v15 pointSize];
    v19 = [v18 numberWithDouble:?];
    [v8 setObject:v19 forKeyedSubscript:*MEMORY[0x1E6988E48]];

    v20 = [v15 fontDescriptor];
    v21 = [v20 symbolicTraits];
    v22 = MEMORY[0x1E695E118];
    v23 = MEMORY[0x1E695E110];
    if ((v21 & 2) != 0)
    {
      v24 = MEMORY[0x1E695E118];
    }

    else
    {
      v24 = MEMORY[0x1E695E110];
    }

    [v8 setObject:v24 forKeyedSubscript:*MEMORY[0x1E6988DE0]];

    v25 = [v15 fontDescriptor];
    if ([v25 symbolicTraits])
    {
      v26 = v22;
    }

    else
    {
      v26 = v23;
    }

    [v8 setObject:v26 forKeyedSubscript:*MEMORY[0x1E6988E80]];

    v27 = MEMORY[0x1E696AD98];
    v28 = *MEMORY[0x1E69DB758];
    v29 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB758]];
    v30 = [v27 numberWithInt:{objc_msgSend(v29, "intValue") > 0}];
    [v8 setObject:v30 forKeyedSubscript:*MEMORY[0x1E6988FA8]];

    v31 = MEMORY[0x1E696AD98];
    v32 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB6B8]];
    v33 = [v31 numberWithInt:{objc_msgSend(v32, "intValue") > 0}];
    [v8 setObject:v33 forKeyedSubscript:*MEMORY[0x1E6988F90]];

    v34 = MEMORY[0x1E696AD98];
    v35 = [v7 objectForKeyedSubscript:v28];
    v36 = [v34 numberWithInt:{objc_msgSend(v35, "intValue") > 0}];
    [v8 setObject:v36 forKeyedSubscript:*MEMORY[0x1E6988FA8]];

    v37 = MEMORY[0x1E696AD98];
    v53 = 0;
    objc_opt_class();
    v38 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
    v39 = __UIAccessibilityCastAsClass();

    v40 = [v37 numberWithInteger:{objc_msgSend(v39, "alignment")}];
    [v8 setObject:v40 forKeyedSubscript:*MEMORY[0x1E6988EE8]];

    v9 = v47;
    [v47 addObject:v46];
  }

  if ([v8 count])
  {
    [*(a1 + 32) addAttributes:v8 range:{a3, a4}];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v41 = v9;
  v42 = [v41 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v50;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v50 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [*(a1 + 32) removeAttribute:*(*(&v49 + 1) + 8 * i) range:{a3, a4}];
      }

      v43 = [v41 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v43);
  }
}

void __115__NSObject_AXPrivCategory___accessibilityPostValueChangedNotificationWithChangeType_insertedText_keyInputDelegate___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DDA98];
  if (objc_opt_respondsToSelector())
  {
    v3 = [*v2 _accessibilityResponderElementForFocus];
  }

  else
  {
    v3 = 0;
  }

  if (![v3 _accessibilityTextInputProxiesForRealTextView] || !objc_msgSend(*(a1 + 32), "length"))
  {
LABEL_12:
    _UIAccessibilitySetAssociatedElementContextForNextNotification(v3);
    v8 = [v3 _accessibilityTextViewTextOperationResponder];
    v9 = [v8 _accessibilityTextViewIgnoresValueChanges];

    if (v9)
    {
      v4 = AXLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v3;
        _os_log_impl(&dword_1A9B83000, v4, OS_LOG_TYPE_INFO, "Ignoring ax value notifications for %@", buf, 0xCu);
      }
    }

    else
    {
      if (*(a1 + 48))
      {
        v10 = [MEMORY[0x1E695DF90] dictionary];
        [v10 setObject:*(a1 + 48) forKeyedSubscript:*MEMORY[0x1E6989238]];
        v11 = *(a1 + 40);
        if (v11)
        {
          v12 = UIAXRuntimeConvertOutgoingValue(3072, v11);
          [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6989240]];
        }

        v13 = [v10 copy];
      }

      else
      {
        v13 = 0;
      }

      UIAccessibilityPostNotification(UIAccessibilityValueChangedNotification, v13);

      if ([*(a1 + 32) length])
      {
        v14 = *(a1 + 32);
        v17 = @"InsertedText";
        v18 = v14;
        v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      }

      else
      {
        v4 = 0;
      }

      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 postNotificationName:@"UIAccessibilityValueChangedLocalNotification" object:0 userInfo:v4];
    }

    goto LABEL_24;
  }

  v4 = [v3 accessibilityValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 string];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  if ((-[NSObject containsString:](v5, "containsString:", *(a1 + 32)) & 1) != 0 || (v7 = [v3 accessibilityTraits], (UIAccessibilityTraitSecureTextField & v7) != 0))
  {

    goto LABEL_12;
  }

  v16 = AXLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_1A9B83000, v16, OS_LOG_TYPE_INFO, "Ignoring proxied view changes %@", buf, 0xCu);
  }

LABEL_24:
}

void __79__NSObject_AXPrivCategory___accessibilityReplaceCharactersAtCursor_withString___block_invoke()
{
  v0 = AXLogAppAccessibility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A9B83000, v0, OS_LOG_TYPE_INFO, "Unblocking notifications after replacing characaters.", v1, 2u);
  }

  AXUIUnblockKeyboardEntryNotifications();
}

uint64_t __41__NSObject_AXPrivCategory___axSuperviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 name];
  if ([v3 isEqualToString:@"InvertColorsDoubleInvert"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 name];
    if ([v5 isEqualToString:@"UIInvertColorsDoubleInvertPrivateKey"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [v2 name];
      v4 = [v6 isEqualToString:@"InvertColorsDarkModeWindowFilter"];
    }
  }

  return v4;
}

void __60__NSObject_AXPrivCategory___accessibilitySupportedLanguages__block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 preferredLocalizations];
  v1 = _accessibilitySupportedLanguages_Supported;
  _accessibilitySupportedLanguages_Supported = v0;
}

uint64_t __90__NSObject_AXPrivCategory___accessibilityPostPasteboardTextForOperation_associatedObject___block_invoke()
{
  _accessibilityPostPasteboardTextForOperation_associatedObject__pasteBoardQueue = dispatch_queue_create("UIAX-PasteBoard-Queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __90__NSObject_AXPrivCategory___accessibilityPostPasteboardTextForOperation_associatedObject___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = [v2 string];
  if ([v6[5] length])
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    AXPerformBlockOnMainThread();
  }

  _Block_object_dispose(&v5, 8);
}

void __90__NSObject_AXPrivCategory___accessibilityPostPasteboardTextForOperation_associatedObject___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v2 = *(*(*(a1 + 48) + 8) + 40);
    v3 = UIKitAccessibilityLocalizedString(*(a1 + 32));
    v4 = [v2 stringByAppendingFormat:@", %@", v3];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  argument = [MEMORY[0x1E6988D60] axAttributedStringWithString:*(*(*(a1 + 48) + 8) + 40)];
  [argument setAttribute:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6988EF0]];
  _UIAccessibilitySetAssociatedElementContextForNextNotification(*(a1 + 40));
  UIAccessibilityPostNotification(*MEMORY[0x1E69DD888], argument);
}

BOOL __89__NSObject_AXPrivCategory___accessibilityFilterInteractionLocationDescriptorsForVisible___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 view];
  v4 = [v3 window];
  v5 = v4;
  if (v4 && ([v4 isHidden] & 1) == 0)
  {
    [v2 point];
    [v5 convertPoint:v3 fromView:?];
    v7 = [v5 hitTest:0 withEvent:?];
    v8 = v7;
    for (i = v7 != 0; v8 != v3 && v8; i = v8 != 0)
    {
      v9 = v8;
      v8 = [v8 superview];
    }
  }

  else
  {
    i = 0;
  }

  return i;
}

uint64_t __87__NSObject_AXPrivCategory___accessibilityDragSourceDescriptorDictionaryRepresentations__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 view];
  v3 = [v2 _accessibilityCanDrag];

  return v3;
}

id __87__NSObject_AXPrivCategory___accessibilityDragSourceDescriptorDictionaryRepresentations__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [*(a1 + 32) _accessibilityDragSourceDescriptorAuxiliaryDictionary];
  if (v5)
  {
    [v4 addEntriesFromDictionary:v5];
  }

  return v4;
}

id __86__NSObject_AXPrivCategory___accessibilityDropPointDescriptorDictionaryRepresentations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dictionaryRepresentation];
  v5 = [v4 mutableCopy];

  v6 = [v3 view];
  v7 = [v6 window];

  v8 = [v3 view];
  [v3 point];
  [v8 convertPoint:v7 toView:?];
  v10 = v9;
  v12 = v11;

  [v7 convertPoint:0 toWindow:{v10, v12}];
  AXUIConvertPointFromScreenToContextSpace();
  valuePtr[0] = v13;
  valuePtr[1] = v14;
  v15 = [v3 view];
  [v3 point];
  v17 = v16;
  v19 = v18;

  v20 = [MEMORY[0x1E69DCEB0] mainScreen];
  v21 = [v20 fixedCoordinateSpace];
  [v15 convertPoint:v21 toCoordinateSpace:{v17, v19}];
  v29 = v22;
  v30 = v23;

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v7, "_contextId", v29, v30)}];
  [v5 setObject:v24 forKeyedSubscript:*MEMORY[0x1E6988CC0]];

  v25 = AXValueCreate(kAXValueTypeCGPoint, valuePtr);
  [v5 setObject:CFAutorelease(v25) forKeyedSubscript:*MEMORY[0x1E6988CC8]];
  v26 = AXValueCreate(kAXValueTypeCGPoint, &v29);
  [v5 setObject:CFAutorelease(v26) forKeyedSubscript:*MEMORY[0x1E6988CD8]];
  v27 = [*(a1 + 32) _accessibilityDropPointDescriptorAuxiliaryDictionary];
  if (v27)
  {
    [v5 addEntriesFromDictionary:v27];
  }

  return v5;
}

void __65__NSObject_AXAutoscrolling___accessibilityAutoscrollInDirection___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([*(a1 + 32) _accessibilityIgnoreDelegate])
    {
      v5 = 0;
    }

    else
    {
      v5 = [v13 safeValueForKey:@"delegate"];
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v6 = [v5 _accessibilityScrollAncestor];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      *a3 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [v13 safeValueForKey:@"dataSource"];
    if (v9 != v5 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
LABEL_17:
      v10 = [v9 _accessibilityScrollAncestor];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      *a3 = 1;
      goto LABEL_18;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v9 = [MEMORY[0x1E69DD258] viewControllerForView:v13];
  if (objc_opt_respondsToSelector())
  {
    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
}

uint64_t __60__NSObject_AXAutoscrolling___accessibilityGetAllScrollViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 _accessibilityScrollingEnabled];
  }

  else
  {
    v4 = 0;
  }

  v5 = AXRemoteElementFromObject();
  v6 = v5;
  if (v5)
  {
    LODWORD(v5) = [v5 onClientSide];
  }

  if ((v4 | v5))
  {
    [*(a1 + 32) addObject:v3];
  }

  return 0;
}

void __54__NSObject_AXAutoscrolling___accessibilityScrollToTop__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DD8E8];
  v2 = [*(a1 + 32) _accessibilityFirstOpaqueElement];
  UIAccessibilityPostNotification(v1, v2);
}

void __57__NSObject_AXAutoscrolling___accessibilityScrollToBottom__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DD8E8];
  v2 = [*(a1 + 32) _accessibilityLastOpaqueElement];
  UIAccessibilityPostNotification(v1, v2);
}

void __64__NSObject_AXAutoscrolling___accessibilityAutoscrollScrollToTop__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityWindow];
  [*(a1 + 32) accessibilityActivationPoint];
  [v2 _scrollToTopViewsUnderScreenPointIfNecessary:&__block_literal_global_3064 resultHandler:?];
}

void __89__NSObject_UIStorage___accessibilityActivateDragWithDescriptorDictionary_forServiceName___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __89__NSObject_UIStorage___accessibilityActivateDragWithDescriptorDictionary_forServiceName___block_invoke_2(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

uint64_t __68__NSObject_UIStorage___accessibilitySpeakThisElementWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessibilityIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __58__NSObject_UIStorage___accessibilityClearLastFocusedChild__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _accessibilityRemembersLastFocusedChild])
  {
    [v2 _axSetLastFocusedChild:0];
  }
}

Class __62__NSObject_UIStorage___accessibilityIsContainedByVideoElement__block_invoke()
{
  _accessibilityIsContainedByVideoElement_AVPlayerViewControllerClass = NSClassFromString(&cfstr_Avplayerviewco.isa);
  result = NSClassFromString(&cfstr_Avinfopanelvie.isa);
  _accessibilityIsContainedByVideoElement_AVInfoPanelViewController = result;
  return result;
}

uint64_t __62__NSObject_UIStorage___accessibilityIsContainedByVideoElement__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __58__NSObject_UIStorage___accessibilitySortExplorerElements___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(a3, "_accessibilityExplorerElementReadPriority")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 _accessibilityExplorerElementReadPriority];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

BOOL __54__NSObject_UIStorage___isAccessibilityExplorerElement__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 accessibilityTraits];
    v4 = (*MEMORY[0x1E69DD9C8] & v3) != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __90__NSObject_UIAccessibilityAutomation___accessibilityBaseImplementationUserTestingChildren__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

void __150__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSnapshotDescendantsWithAttributes_maxDepth_maxChildren_maxArrayCount_honorsModalViews___block_invoke_390(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 48) <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    if (([v7 _accessibilityUserTestingIsElementClassAcceptable] & 1) == 0)
    {
      v9 = AXLogUIA();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __150__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSnapshotDescendantsWithAttributes_maxDepth_maxChildren_maxArrayCount_honorsModalViews___block_invoke_390_cold_1(v7, v9);
      }
    }

    v10 = _AXCreateAXUIElementWithElement();
    [v8 setObject:v10 forKeyedSubscript:@"UIAccessibilitySnapshotKeyElement"];

    v11 = AXLogUIA();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __150__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSnapshotDescendantsWithAttributes_maxDepth_maxChildren_maxArrayCount_honorsModalViews___block_invoke_390_cold_2();
    }

    v12 = AXLogUIA();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __150__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSnapshotDescendantsWithAttributes_maxDepth_maxChildren_maxArrayCount_honorsModalViews___block_invoke_390_cold_3();
    }

    [*(a1 + 32) addObject:v8];
    [*(a1 + 40) addObject:v8];
  }
}

void __148__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSnapshotAncestorsWithAttributes_maxDepth_maxChildren_maxArrayCount_honorsModalViews___block_invoke_393(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 56) <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = _AXCreateAXUIElementWithElement();
    [v8 setObject:v9 forKeyedSubscript:@"UIAccessibilitySnapshotKeyElement"];

    v10 = AXLogUIA();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __150__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSnapshotDescendantsWithAttributes_maxDepth_maxChildren_maxArrayCount_honorsModalViews___block_invoke_390_cold_3();
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 64);
    v15 = 0;
    v13 = _accessibilityAttributesForObject(v7, v11, v12, 1, &v15);
    v14 = v15;
    [v8 setObject:v13 forKeyedSubscript:@"UIAccessibilitySnapshotKeyAttributes"];

    if (*(a1 + 40))
    {
      [v8 setObject:v14 forKeyedSubscript:@"UIAccessibilitySnapshotKeyAttributeArrayCounts"];
    }

    [*(a1 + 48) addObject:v8];
  }
}

uint64_t __84__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSnapshotWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL __79__NSObject_UIAccessibilityTextAttributeRotor___accessibilityUnderlineTextMatch__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69DB758]];
  v3 = [v2 intValue] > 0;

  return v3;
}

uint64_t __76__NSObject_UIAccessibilityTextAttributeRotor___accessibilityItalicTextMatch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 fontDescriptor];
  v9 = [v8 symbolicTraits];

  return v9 & 1;
}

uint64_t __74__NSObject_UIAccessibilityTextAttributeRotor___accessibilityBoldTextMatch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 fontDescriptor];
  v9 = ([v8 symbolicTraits] >> 1) & 1;

  return v9;
}

uint64_t __75__NSObject_UIAccessibilityTextAttributeRotor___accessibilityPlainTextMatch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 fontDescriptor];
  v9 = [v8 symbolicTraits];

  v10 = [v7 fontDescriptor];
  v11 = [v10 symbolicTraits] & 2 | v9 & 1;

  v12 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DB758]];
  v13 = [v12 intValue];

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13 < 1;
  }

  v15 = v14;

  return v15;
}

uint64_t __77__NSObject_UIAccessibilityTextAttributeRotor___accessibilityStyleChangeMatch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = *MEMORY[0x1E69DB648];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [v8 fontDescriptor];
  v30 = [v9 symbolicTraits];

  v10 = [v8 fontDescriptor];
  v11 = [v10 symbolicTraits];

  v12 = *MEMORY[0x1E69DB758];
  v13 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DB758]];
  v14 = [v13 intValue];

  objc_opt_class();
  v15 = [v5 objectForKeyedSubscript:v6];
  v16 = __UIAccessibilityCastAsClass();

  v17 = [v16 fontDescriptor];
  v18 = [v17 symbolicTraits];

  v19 = [v16 fontDescriptor];
  v20 = [v19 symbolicTraits];

  v21 = [v5 objectForKeyedSubscript:v12];
  v22 = [v21 intValue];

  v24 = v14 < 1 || v22 > 0;
  v25 = (((v18 & 1) == 0) ^ v30) & (((v11 & 2) == 0) | ((v20 & 2) >> 1)) & (((v20 & 2) == 0) | ((v11 & 2) >> 1)) & *&v24;
  if (v14 <= 0 && v22 >= 1)
  {
    v25 = 0;
  }

  v27 = v25 ^ 1;
  if (v8 | v16)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

uint64_t __76__NSObject_UIAccessibilityTextAttributeRotor___accessibilityFontChangeMatch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = *MEMORY[0x1E69DB648];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v8 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v9 = [v5 objectForKeyedSubscript:v6];
  v10 = __UIAccessibilityCastAsClass();

  if (v8 | v10)
  {
    v11 = [v8 isEqual:v10] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL __77__NSObject_UIAccessibilityTextAttributeRotor___accessibilityColorChangeMatch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x1E69DB650];
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:v4];

  if (v6 | v7)
  {
    v8 = !UIAccessibilityColorEqualToColor(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __78__NSObject_UIAccessibilityTextAttributeRotor___accessibilityAttributeMatcher___block_invoke(uint64_t a1)
{
  v16[7] = *MEMORY[0x1E69E9840];
  v15[0] = &unk_1F1DC2AB8;
  v14 = [*(a1 + 32) _accessibilityBoldTextMatch];
  v16[0] = v14;
  v15[1] = &unk_1F1DC2AD0;
  v2 = [*(a1 + 32) _accessibilityItalicTextMatch];
  v16[1] = v2;
  v15[2] = &unk_1F1DC2AE8;
  v3 = [*(a1 + 32) _accessibilityUnderlineTextMatch];
  v16[2] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:UIAccessibilityCustomSystemRotorTypePlainText];
  v15[3] = v4;
  v5 = [*(a1 + 32) _accessibilityPlainTextMatch];
  v16[3] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:UIAccessibilityCustomSystemRotorTypeColorChange];
  v15[4] = v6;
  v7 = [*(a1 + 32) _accessibilityColorChangeMatch];
  v16[4] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:UIAccessibilityCustomSystemRotorTypeFontChange];
  v15[5] = v8;
  v9 = [*(a1 + 32) _accessibilityFontChangeMatch];
  v16[5] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:UIAccessibilityCustomSystemRotorTypeStyleChange];
  v15[6] = v10;
  v11 = [*(a1 + 32) _accessibilityStyleChangeMatch];
  v16[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:7];
  v13 = _accessibilityAttributeMatcher__Matchers;
  _accessibilityAttributeMatcher__Matchers = v12;
}

id __84__NSObject_UIAccessibilityTextAttributeRotor___accessibilityTextStylingCustomRotor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 currentItem];
  v5 = [v4 targetElement];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v33 = [*(a1 + 32) _accessibilityAttributeMatcher:*(a1 + 40)];
    v8 = __UIAccessibilityCastAsProtocol();
    v32 = [v3 currentItem];
    v9 = [v32 targetRange];
    v10 = [v3 searchDirection];
    if (!v9)
    {
      if (v10 == 1)
      {
        v11 = [v8 beginningOfDocument];
        [v8 beginningOfDocument];
      }

      else
      {
        v11 = [v8 endOfDocument];
        [v8 endOfDocument];
      }
      v12 = ;
      v9 = [v8 textRangeFromPosition:v11 toPosition:v12];
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x3010000000;
    v41 = "";
    v42 = xmmword_1A9BF34F0;
    v13 = [*(a1 + 32) _accessibilityAttributedTextRetrieval];
    if ([v13 length])
    {
      v14 = [v8 beginningOfDocument];
      v15 = [v9 start];
      v16 = [v8 offsetFromPosition:v14 toPosition:v15];

      if (v16 >= [v13 length])
      {
        v16 = [v13 length] - 1;
      }

      v17 = [v8 beginningOfDocument];
      v18 = [v9 end];
      v19 = [v8 offsetFromPosition:v17 toPosition:v18];

      if (v10 == 1)
      {
        v20 = [v13 length] - v19;
      }

      else
      {
        v19 = 0;
        v20 = v16;
      }

      v21 = [v13 attributesAtIndex:v16 effectiveRange:0];
      if (*(a1 + 40) == 13)
      {
        v22 = [*(a1 + 32) _accessibilityMisspelledWordIn:v13 searchRange:v19 next:{v20, v10 == 1}];
        v23 = v39;
        v39[4] = v22;
        v23[5] = v24;
      }

      else
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __84__NSObject_UIAccessibilityTextAttributeRotor___accessibilityTextStylingCustomRotor___block_invoke_2;
        v34[3] = &unk_1E78ABA48;
        v36 = v33;
        v35 = v21;
        v37 = &v38;
        [v13 enumerateAttributesInRange:v19 options:v20 usingBlock:{2 * (v10 != 1), v34}];
      }
    }

    v25 = v39[4];
    if (v25 == 0x7FFFFFFF || v25 == 0x7FFFFFFFFFFFFFFFLL)
    {

      _Block_object_dispose(&v38, 8);
      v7 = 0;
    }

    else
    {
      v26 = [v8 beginningOfDocument];
      v27 = [v8 positionFromPosition:v26 offset:v39[4]];
      v28 = [v8 beginningOfDocument];
      v29 = [v8 positionFromPosition:v28 offset:v39[5] + v39[4]];
      v30 = [v8 textRangeFromPosition:v27 toPosition:v29];

      _Block_object_dispose(&v38, 8);
      v7 = [objc_alloc(MEMORY[0x1E69DC5F8]) initWithTargetElement:*(a1 + 32) targetRange:v30];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __84__NSObject_UIAccessibilityTextAttributeRotor___accessibilityTextStylingCustomRotor___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v10 = *(*(a1 + 48) + 8);
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    *a5 = 1;
  }

  return result;
}

- (id)_accessibilityFindAXDescendantsPassingTest:(void *)test byYieldingElements:
{
  if (self)
  {
    v5 = MEMORY[0x1E695DF70];
    testCopy = test;
    v7 = a2;
    v8 = objc_alloc_init(v5);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __90__NSObject_AXPrivCategory___accessibilityFindAXDescendantsPassingTest_byYieldingElements___block_invoke;
    v11[3] = &unk_1E78AB138;
    v9 = v8;
    v12 = v9;
    [self _accessibilityEnumerateAXDescendants:v11 passingTest:v7 byYieldingElements:testCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)_accessibilityCompareGeometry:(void *)geometry
{
  v281 = *MEMORY[0x1E69E9840];
  i = a2;
  if (!geometry)
  {
    v48 = 0;
    goto LABEL_214;
  }

  [geometry _accessibilityFrameForSorting];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [i _accessibilityFrameForSorting];
  OUTLINED_FUNCTION_17();
  _accessibilityWindow = [geometry _accessibilityWindow];
  _accessibilityWindow2 = [i _accessibilityWindow];
  v18 = _accessibilityWindow2;
  if (_accessibilityWindow)
  {
    v19 = _accessibilityWindow2 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  if (!v19)
  {
    windowScene = [_accessibilityWindow windowScene];
    windowScene2 = [v18 windowScene];

    if (windowScene != windowScene2)
    {
      [_accessibilityWindow frame];
      rect = v3;
      v24 = v23;
      rect2 = v9;
      v26 = v25;
      screen = [_accessibilityWindow screen];
      coordinateSpace = [screen coordinateSpace];
      [_accessibilityWindow convertPoint:coordinateSpace toCoordinateSpace:{v24, v26}];
      v30 = v29;
      v32 = v31;

      [v18 frame];
      *&v257 = v11;
      v33 = v2;
      v34 = v4;
      v36 = v35;
      v259 = v13;
      v37 = v15;
      v38 = v5;
      v40 = v39;
      screen2 = [v18 screen];
      coordinateSpace2 = [screen2 coordinateSpace];
      [v18 convertPoint:coordinateSpace2 toCoordinateSpace:{v36, v40}];
      v44 = v43;
      v46 = v45;

      v47 = v32 < v46 || v30 < v44;
      v48 = v47 ? -1 : 1;
      v19 = v30 == v44;
      v4 = v34;
      v2 = v33;
      v11 = *&v257;
      v3 = rect;
      v49 = v19 && v32 == v46;
      v9 = rect2;
      v5 = v38;
      v15 = v37;
      v13 = v259;
      if (!v49)
      {
        goto LABEL_213;
      }
    }
  }

  v260 = i;
  if ([MEMORY[0x1E69E58C0] _accessibilityHasUnitTestingOrientation])
  {
    _accessibilityUnitTestingOrientation = [MEMORY[0x1E69E58C0] _accessibilityUnitTestingOrientation];
  }

  else
  {
    _transformLayerRotationsAreEnabled = [MEMORY[0x1E69DD2E8] _transformLayerRotationsAreEnabled];
    v52 = MEMORY[0x1E69DDA98];
    if (_transformLayerRotationsAreEnabled)
    {
      if (_accessibilityWindow)
      {
        _accessibilityInterfaceOrientationForScreenCoordinates = [_accessibilityWindow _accessibilityInterfaceOrientationForScreenCoordinates];
      }

      else
      {
        _accessibilityInterfaceOrientationForScreenCoordinates = 0;
      }

      HIDWORD(v257) = HIDWORD(v11);
      rect = v3;
      if (v18)
      {
        _accessibilityInterfaceOrientationForScreenCoordinates2 = [v18 _accessibilityInterfaceOrientationForScreenCoordinates];
      }

      else
      {
        _accessibilityInterfaceOrientationForScreenCoordinates2 = 0;
      }

      v54 = [geometry _accessibilityOrientationForCompareGeometryForApplication:*v52];
      [_accessibilityWindow bounds];
      [_accessibilityWindow _windowInterfaceOrientation];
      _UIConvertRectFromOrientationToOrientation();
      rect2d = v56;
      v11 = v57;
      v13 = v58;
      v15 = v59;
      [v18 bounds];
      v3 = v60;
      [v18 _windowInterfaceOrientation];
      v9 = rect2d;
      _UIConvertRectFromOrientationToOrientation();
      OUTLINED_FUNCTION_17();
      goto LABEL_33;
    }

    _accessibilityUnitTestingOrientation = [geometry _accessibilityOrientationForCompareGeometryForApplication:*MEMORY[0x1E69DDA98]];
  }

  v54 = _accessibilityUnitTestingOrientation;
  _accessibilityInterfaceOrientationForScreenCoordinates2 = 1;
  _accessibilityInterfaceOrientationForScreenCoordinates = 1;
LABEL_33:
  [geometry _handleRotatingFrame:_accessibilityInterfaceOrientationForScreenCoordinates fromOrientation:v54 toOrientation:{v9, v11, v13, v15}];
  [OUTLINED_FUNCTION_15() _handleRotatingFrame:_accessibilityInterfaceOrientationForScreenCoordinates2 fromOrientation:v54 toOrientation:{v3, v5, v2, v4}];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  i = v260;
  v48 = _checkSortPriority(geometry, v260);
  if (v48)
  {
    goto LABEL_213;
  }

  v69 = v62;
  v70 = v13;
  v249 = v11;
  v240 = v18;
  v241 = _accessibilityInterfaceOrientationForScreenCoordinates;
  LODWORD(v235) = v20;
  v71 = _scrollParentForComparingGeometryOfView(geometry);
  v72 = _scrollParentForComparingGeometryOfView(v260);
  HIDWORD(v235) = [v72 _accessibilityIsDescendantOfElement:v71];
  HIDWORD(v239) = [v71 _accessibilityIsDescendantOfElement:v72];
  if (v71 == v72)
  {
    v96 = v66;
    v237 = _accessibilityWindow;
    v73 = v69;
    goto LABEL_55;
  }

  v73 = v69;
  if (!v71 || !v72)
  {
    v96 = v66;
    v237 = _accessibilityWindow;
    goto LABEL_55;
  }

  if (HIDWORD(v239))
  {
    *&v244 = v68;
    v245 = v64;
    v246 = v69;
    v247 = *&v66;
    v74 = *MEMORY[0x1E69DDCE0];
    v75 = *(MEMORY[0x1E69DDCE0] + 8);
    v76 = *(MEMORY[0x1E69DDCE0] + 16);
    v77 = *(MEMORY[0x1E69DDCE0] + 24);
    [v71 _accessibilityContentFrame];
    OUTLINED_FUNCTION_21();
    accessibilityContainer = [v71 accessibilityContainer];
    v79 = _scrollParentForComparingGeometryOfView(accessibilityContainer);

    for (; ([v79 isEqual:v72] & 1) == 0; v71 = v80)
    {
      v80 = v79;
      if (![v79 _accessibilityIsDescendantOfElement:{v72, v235}])
      {
        break;
      }

      [v72 _accessibilityVisibleContentInset];
      OUTLINED_FUNCTION_18();
      UIEdgeInsetsAdd();
      v74 = v81;
      v75 = v82;
      v76 = v83;
      v77 = v84;

      [v79 _accessibilityContentFrame];
      OUTLINED_FUNCTION_21();
      accessibilityContainer2 = [v79 accessibilityContainer];
      v79 = _scrollParentForComparingGeometryOfView(accessibilityContainer2);
    }

    v101 = v11 + v75;
    rect = v15 - (v77 + v75);
    v102 = v66 - (v76 + v74);
    v64 = v245;
    v100 = v246;
    v68 = *&v244;
    [geometry _handleRotatingFrame:v241 fromOrientation:v54 toOrientation:{v101, v73 + v74, rect, v102, v235}];
  }

  else
  {
    if (HIDWORD(v235))
    {
      rect2a = v15;
      *&v257 = v70;
      v15 = *MEMORY[0x1E69DDCE0];
      v73 = *(MEMORY[0x1E69DDCE0] + 8);
      v86 = *(MEMORY[0x1E69DDCE0] + 16);
      v87 = *(MEMORY[0x1E69DDCE0] + 24);
      [v72 _accessibilityContentFrame];
      OUTLINED_FUNCTION_16();
      accessibilityContainer3 = [v72 accessibilityContainer];
      v89 = _scrollParentForComparingGeometryOfView(accessibilityContainer3);

      if (([v89 isEqual:v71] & 1) == 0)
      {
        do
        {
          v90 = v89;
          if (![v89 _accessibilityIsDescendantOfElement:{v71, v235}])
          {
            break;
          }

          [v72 _accessibilityVisibleContentInset];
          OUTLINED_FUNCTION_18();
          UIEdgeInsetsAdd();
          v15 = v91;
          v73 = v92;
          v86 = v93;
          v87 = v94;

          [v89 _accessibilityContentFrame];
          OUTLINED_FUNCTION_16();
          accessibilityContainer4 = [v89 accessibilityContainer];
          v89 = _scrollParentForComparingGeometryOfView(accessibilityContainer4);

          v72 = v90;
        }

        while (![v89 isEqual:v71]);
      }

      v103 = v73 + v66;
      v66 = v64 - (v87 + v73);
      v64 = v15 + v11;
      v100 = v103;
      v68 = v68 - (v86 + v15);
      v98 = v11;
      v97 = rect2a;
      v99 = *&v257;
    }

    else
    {
      v97 = v15;
      v98 = v11;
      v99 = v70;
      v100 = v69;
    }

    [geometry _handleRotatingFrame:v241 fromOrientation:v54 toOrientation:{v98, v97, rect, v99, v235}];
  }

  [OUTLINED_FUNCTION_15() _handleRotatingFrame:_accessibilityInterfaceOrientationForScreenCoordinates2 fromOrientation:v54 toOrientation:{v100, v64, v66, v68}];
  v105 = v104;
  v64 = v106;
  v108 = v107;
  v110 = v109;
  v111 = _checkSortPriority(v71, v72);
  if (v111)
  {
    goto LABEL_115;
  }

  v70 = v73;
  v249 = v11;
  v96 = v108;
  v237 = _accessibilityWindow;
  v73 = v105;
  v68 = v110;
  while (1)
  {
LABEL_55:
    if (!(v71 | v72))
    {
      *&rect2c = v15;
      v71 = 0;
      v72 = 0;
      v145 = 1;
      _accessibilityWindow = v237;
      v112 = v96;
      goto LABEL_105;
    }

    v112 = v96;
    if (v71 == v72 || ([v71 _accessibilityIsDescendantOfElement:v72] & 1) != 0 || (objc_msgSend(v72, "_accessibilityIsDescendantOfElement:", v71) & 1) != 0)
    {
      break;
    }

    accessibilityContainer5 = [v71 accessibilityContainer];
    _accessibilityContainingParentForOrdering = [accessibilityContainer5 _accessibilityContainingParentForOrdering];

    accessibilityContainer6 = [v72 accessibilityContainer];
    _accessibilityContainingParentForOrdering2 = [accessibilityContainer6 _accessibilityContainingParentForOrdering];

    if ([_accessibilityContainingParentForOrdering _accessibilityIsDescendantOfElement:_accessibilityContainingParentForOrdering2] & 1) != 0 || (objc_msgSend(_accessibilityContainingParentForOrdering2, "_accessibilityIsDescendantOfElement:", _accessibilityContainingParentForOrdering))
    {
      v117 = 1;
    }

    else if (!_accessibilityContainingParentForOrdering || ([_accessibilityContainingParentForOrdering isEqual:_accessibilityContainingParentForOrdering2] & 1) != 0 || (objc_msgSend(_accessibilityContainingParentForOrdering, "_accessibilityIsDescendantOfElement:", v72) & 1) != 0 || (objc_msgSend(_accessibilityContainingParentForOrdering, "_accessibilityIsDescendantOfElement:", _accessibilityContainingParentForOrdering2) & 1) != 0)
    {
      v117 = 1;
      if (_accessibilityContainingParentForOrdering2)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v144 = _accessibilityContainingParentForOrdering;

      v117 = 0;
      v71 = v144;
      if (_accessibilityContainingParentForOrdering2)
      {
LABEL_87:
        if (([_accessibilityContainingParentForOrdering2 isEqual:{_accessibilityContainingParentForOrdering, v235}] & 1) == 0 && (objc_msgSend(_accessibilityContainingParentForOrdering2, "_accessibilityIsDescendantOfElement:", v71) & 1) == 0 && (objc_msgSend(_accessibilityContainingParentForOrdering2, "_accessibilityIsDescendantOfElement:", _accessibilityContainingParentForOrdering) & 1) == 0)
        {
          v142 = _accessibilityContainingParentForOrdering2;

          v117 = 0;
          v72 = v142;
        }
      }
    }

    if (_accessibilityContainingParentForOrdering)
    {
      while (([v72 _accessibilityIsDescendantOfElement:{_accessibilityContainingParentForOrdering, v235}] & 1) == 0)
      {
        v118 = _accessibilityContainingParentForOrdering;

        accessibilityContainer7 = [v118 accessibilityContainer];
        _accessibilityContainingParentForOrdering = _scrollParentForComparingGeometryOfView(accessibilityContainer7);

        v71 = v118;
        if (!_accessibilityContainingParentForOrdering)
        {
          v71 = v118;
          break;
        }
      }
    }

    if (_accessibilityContainingParentForOrdering2)
    {
      while (([v71 _accessibilityIsDescendantOfElement:{_accessibilityContainingParentForOrdering2, v235}] & 1) == 0)
      {
        v120 = _accessibilityContainingParentForOrdering2;

        accessibilityContainer8 = [v120 accessibilityContainer];
        _accessibilityContainingParentForOrdering2 = _scrollParentForComparingGeometryOfView(accessibilityContainer8);

        v72 = v120;
        if (!_accessibilityContainingParentForOrdering2)
        {
          v72 = v120;
          break;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }

    if ([geometry _accessibilityIsOrnamentWindow])
    {
      _accessibilityIsOrnamentWindow = 1;
    }

    else
    {
      _accessibilityIsOrnamentWindow = [v260 _accessibilityIsOrnamentWindow];
    }

    if (isKindOfClass & _accessibilityIsOrnamentWindow)
    {
      v124 = v64;
      v125 = v68;
      v126 = v73;
    }

    else
    {
      v127 = v64;
      v128 = v112;
      [geometry _accessibilityCompareFrameForScrollParent:v71 frame:v241 fromOrientation:v54 toOrientation:{v249, v15, rect, v70}];
      v129 = v127;
      v242 = v130;
      v132 = v131;
      v134 = v133;
      v136 = v135;
      v245 = v129;
      v246 = v73;
      v247 = *&v128;
      *&v244 = v68;
      [geometry _accessibilityCompareFrameForScrollParent:v72 frame:_accessibilityInterfaceOrientationForScreenCoordinates2 fromOrientation:v54 toOrientation:?];
      v250 = v137;
      v251 = v138;
      rect2b = v139;
      *&v257 = v70;
      v243 = v140;
      v282.origin.x = v249;
      v282.origin.y = v15;
      v141 = rect;
      v282.size.width = rect;
      v282.size.height = v70;
      v287.origin.x = v242;
      v287.origin.y = v132;
      v287.size.width = v134;
      v287.size.height = v136;
      if (!CGRectEqualToRect(v282, v287))
      {
        *&v257 = v136;
        v141 = v134;
        v15 = v132;
        v249 = v242;
      }

      v124 = v245;
      v283.origin.x = v246;
      v283.origin.y = v245;
      v112 = v128;
      v283.size.width = v128;
      v125 = v243;
      v283.size.height = v68;
      v288.origin.x = v250;
      v288.origin.y = v251;
      v288.size.width = rect2b;
      v288.size.height = v243;
      rect = v141;
      if (CGRectEqualToRect(v283, v288))
      {
        v125 = v68;
        v126 = v246;
        v70 = *&v257;
      }

      else
      {
        v112 = rect2b;
        v70 = *&v257;
        v126 = v250;
        v124 = v251;
      }
    }

    v68 = v125;
    v96 = v112;
    v143 = v125;
    v64 = v124;
    v73 = v126;
    if (v117)
    {
      goto LABEL_97;
    }
  }

  v143 = v68;
  v124 = v64;
  v126 = v73;
LABEL_97:
  v68 = v143;
  if (v71 == v72)
  {
    *&rect2c = v15;
    v145 = 1;
    v73 = v126;
    v64 = v124;
    _accessibilityWindow = v237;
    goto LABEL_105;
  }

  _accessibilityWindow = v237;
  if (v72)
  {
    if (v71)
    {
      v111 = _checkSortPriority(v71, v72);
      if (v111)
      {
LABEL_115:
        v48 = v111;
        goto LABEL_212;
      }
    }
  }

  if ((HIDWORD(v235) | HIDWORD(v239)))
  {
    goto LABEL_102;
  }

  if ([v71 _accessibilityAlwaysOrderedFirst])
  {
LABEL_200:
    v48 = -1;
    goto LABEL_212;
  }

  if ([v72 _accessibilityAlwaysOrderedFirst])
  {
    goto LABEL_159;
  }

LABEL_102:
  *&rect2c = v15;
  v145 = 0;
  v73 = v126;
  v64 = v124;
LABEL_105:
  v146 = 13.0;
  v147 = v249;
  if ((AXDeviceIsPad() & 1) == 0)
  {
    if (AXDeviceIsWatch())
    {
      v146 = 4.0;
    }

    else
    {
      v146 = 8.0;
    }
  }

  v148 = &off_1A9BF3000;
  if (!v71 || (v145 & 1) == 0 && ([v71 _accessibilityIsDescendantOfElement:v72] & 1) == 0 && !objc_msgSend(v72, "_accessibilityIsDescendantOfElement:", v71))
  {
    v151 = _accessibilityCommonAncestor(v71, v72);
    _accessibilityContainingParentForOrdering3 = [v151 _accessibilityContainingParentForOrdering];

    v48 = [_accessibilityContainingParentForOrdering3 _accessibilityCompareElement:v71 toElement:v72];
    if (v48)
    {
      goto LABEL_212;
    }

    v248 = v112;
    v153 = _accessibilityWindow;
    v154 = 0.0;
    goto LABEL_184;
  }

  objc_opt_class();
  LODWORD(_accessibilitySupplementaryHeaderViews) = objc_opt_isKindOfClass();
  i = v260;
  objc_opt_class();
  v150 = objc_opt_isKindOfClass();
  if (v145)
  {
    v111 = [v71 _accessibilityCompareElement:geometry toElement:v260];
    if (v111)
    {
      goto LABEL_115;
    }
  }

  if (((_accessibilitySupplementaryHeaderViews | v150) & 1) == 0)
  {
    goto LABEL_180;
  }

  v238 = _accessibilityWindow;
  LODWORD(v251) = v145;
  LODWORD(v257) = _accessibilitySupplementaryHeaderViews;
  if (_accessibilitySupplementaryHeaderViews)
  {
    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    _accessibilitySupplementaryHeaderViews = [v71 _accessibilitySupplementaryHeaderViews];
    v155 = [_accessibilitySupplementaryHeaderViews countByEnumeratingWithState:&v273 objects:v280 count:16];
    if (v155)
    {
      v156 = v155;
      LODWORD(v250) = v150;
      v157 = 0;
      v158 = 0;
      _accessibilityWindow = *v274;
      do
      {
        for (i = 0; i != v156; ++i)
        {
          if (*v274 != _accessibilityWindow)
          {
            objc_enumerationMutation(_accessibilitySupplementaryHeaderViews);
          }

          v159 = OUTLINED_FUNCTION_13(*(&v273 + 1));
          v157 |= v159;
          v158 |= OUTLINED_FUNCTION_26(v159, v160, v161, v162, v163, v164, v165, v166, v235, v238, v239, v240, v241, *&v242, *&v243, v244, *&v245, *&v246, v247, *&v249, *&v250, *&v251, rect2c, v257, *&rect, v260);
        }

        v156 = [_accessibilitySupplementaryHeaderViews countByEnumeratingWithState:&v273 objects:v280 count:16];
      }

      while (v156);
      v167 = v158 ^ 1 | v157;
      OUTLINED_FUNCTION_20();
      v145 = LODWORD(v251);
      v150 = LODWORD(v250);
    }

    else
    {
      v167 = 1;
    }

    v148 = &off_1A9BF3000;
    LOBYTE(_accessibilitySupplementaryHeaderViews) = v257;
  }

  else
  {
    v167 = 1;
  }

  if (v150)
  {
    v271 = 0u;
    v272 = 0u;
    v269 = 0u;
    v270 = 0u;
    _accessibilitySupplementaryHeaderViews = [v72 _accessibilitySupplementaryHeaderViews];
    v168 = [_accessibilitySupplementaryHeaderViews countByEnumeratingWithState:&v269 objects:v279 count:16];
    if (v168)
    {
      v169 = v168;
      LODWORD(v247) = v167;
      LODWORD(v250) = v150;
      v170 = 0;
      v171 = 0;
      _accessibilityWindow = *v270;
      do
      {
        for (i = 0; i != v169; ++i)
        {
          if (*v270 != _accessibilityWindow)
          {
            objc_enumerationMutation(_accessibilitySupplementaryHeaderViews);
          }

          v172 = OUTLINED_FUNCTION_13(*(&v269 + 1));
          v170 |= v172;
          v171 |= OUTLINED_FUNCTION_26(v172, v173, v174, v175, v176, v177, v178, v179, v235, v238, v239, v240, v241, *&v242, *&v243, v244, *&v245, *&v246, v247, *&v249, *&v250, *&v251, rect2c, v257, *&rect, v260);
        }

        v169 = [_accessibilitySupplementaryHeaderViews countByEnumeratingWithState:&v269 objects:v279 count:16];
      }

      while (v169);

      v180 = v170 & ~v171 & 1;
      if (v170 & ~v171)
      {
        v48 = -1;
      }

      else
      {
        v48 = 1;
      }

      if (!v180)
      {
        OUTLINED_FUNCTION_20();
        v148 = &off_1A9BF3000;
        v145 = LODWORD(v251);
        v150 = LODWORD(v250);
        LOBYTE(_accessibilitySupplementaryHeaderViews) = v257;
        if (v181)
        {
          goto LABEL_212;
        }

        goto LABEL_150;
      }

LABEL_177:
      OUTLINED_FUNCTION_20();
      goto LABEL_212;
    }

    LOBYTE(_accessibilitySupplementaryHeaderViews) = v257;
  }

  if ((v167 & 1) == 0)
  {
LABEL_159:
    v48 = 1;
    goto LABEL_212;
  }

LABEL_150:
  if (_accessibilitySupplementaryHeaderViews)
  {
    v267 = 0u;
    v268 = 0u;
    v265 = 0u;
    v266 = 0u;
    _accessibilitySupplementaryFooterViews = [v71 _accessibilitySupplementaryFooterViews];
    v183 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v265 objects:v278 count:16];
    if (v183)
    {
      v184 = v183;
      LODWORD(v250) = v150;
      v185 = 0;
      v186 = 0;
      v187 = *v266;
      do
      {
        for (j = 0; j != v184; ++j)
        {
          if (*v266 != v187)
          {
            objc_enumerationMutation(_accessibilitySupplementaryFooterViews);
          }

          v189 = OUTLINED_FUNCTION_13(*(&v265 + 1));
          v185 |= v189;
          v186 |= OUTLINED_FUNCTION_26(v189, v190, v191, v192, v193, v194, v195, v196, v235, v238, v239, v240, v241, *&v242, *&v243, v244, *&v245, *&v246, v247, *&v249, *&v250, *&v251, rect2c, v257, *&rect, v260);
        }

        v184 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v265 objects:v278 count:16];
      }

      while (v184);
      v197 = v186 ^ 1 | v185;
      i = v260;
      v148 = &off_1A9BF3000;
      v145 = LODWORD(v251);
      LOBYTE(v150) = LOBYTE(v250);
    }

    else
    {
      v197 = 1;
    }

    _accessibilityWindow = v238;
  }

  else
  {
    v197 = 1;
  }

  if ((v150 & 1) == 0)
  {
LABEL_179:
    if (v197)
    {
      goto LABEL_180;
    }

    goto LABEL_200;
  }

  v263 = 0u;
  v264 = 0u;
  v261 = 0u;
  v262 = 0u;
  _accessibilitySupplementaryFooterViews2 = [v72 _accessibilitySupplementaryFooterViews];
  v199 = [_accessibilitySupplementaryFooterViews2 countByEnumeratingWithState:&v261 objects:v277 count:16];
  if (!v199)
  {

    _accessibilityWindow = v238;
    v145 = LODWORD(v251);
    goto LABEL_179;
  }

  _accessibilityWindow = v199;
  LODWORD(v257) = v197;
  v200 = 0;
  v201 = 0;
  v202 = *v262;
  do
  {
    for (i = 0; i != _accessibilityWindow; ++i)
    {
      if (*v262 != v202)
      {
        objc_enumerationMutation(_accessibilitySupplementaryFooterViews2);
      }

      v203 = OUTLINED_FUNCTION_13(*(&v261 + 1));
      v200 |= v203;
      v201 |= OUTLINED_FUNCTION_26(v203, v204, v205, v206, v207, v208, v209, v210, v235, v238, v239, v240, v241, *&v242, *&v243, v244, *&v245, *&v246, v247, *&v249, *&v250, *&v251, rect2c, v257, *&rect, v260);
    }

    _accessibilityWindow = [_accessibilitySupplementaryFooterViews2 countByEnumeratingWithState:&v261 objects:v277 count:16];
  }

  while (_accessibilityWindow);

  v211 = v200 & ~v201 & 1;
  if (v200 & ~v201)
  {
    v48 = 1;
  }

  else
  {
    v48 = -1;
  }

  if (v211)
  {
    goto LABEL_177;
  }

  OUTLINED_FUNCTION_20();
  v148 = &off_1A9BF3000;
  v145 = LODWORD(v251);
  if (v212)
  {
    goto LABEL_212;
  }

LABEL_180:
  v248 = v112;
  v153 = _accessibilityWindow;
  [v71 _accessibilityAllowedGeometryOverlap];
  v214 = v213;
  if ((v145 & [v71 _accessibilityOnlyComparesByXAxis]) != 0)
  {
    v146 = v148[151];
  }

  else
  {
    v146 = v214;
  }

  [v71 _accessibilityAllowedGeometryOverlapX];
  v154 = v215;
LABEL_184:
  _accessibilityScrollParentForComparingByXAxis = [v71 _accessibilityScrollParentForComparingByXAxis];
  _accessibilityScrollParentForComparingByXAxis2 = [v72 _accessibilityScrollParentForComparingByXAxis];
  v218 = _accessibilityScrollParentForComparingByXAxis2;
  if (_accessibilityScrollParentForComparingByXAxis && _accessibilityScrollParentForComparingByXAxis == _accessibilityScrollParentForComparingByXAxis2 && ([_accessibilityScrollParentForComparingByXAxis _accessibilityOnlyComparesByXAxis] & 1) != 0 || v218 && v218 == v71 && (objc_msgSend(v218, "_accessibilityOnlyComparesByXAxis") & 1) != 0 || _accessibilityScrollParentForComparingByXAxis && _accessibilityScrollParentForComparingByXAxis == v72 && objc_msgSend(_accessibilityScrollParentForComparingByXAxis, "_accessibilityOnlyComparesByXAxis"))
  {
    v146 = v148[151];
  }

  if (vabdd_f64(*&rect2c, v64) >= v146)
  {
    if (*&rect2c > v64)
    {
LABEL_207:
      v48 = 1;
      goto LABEL_211;
    }

    v221 = *&rect2c;
    if (*&rect2c < v64)
    {
LABEL_210:
      v48 = -1;
      goto LABEL_211;
    }

LABEL_206:
    if (v221 > v64)
    {
      goto LABEL_207;
    }

    if (v221 >= v64)
    {
      v284.origin.x = v147;
      v284.origin.y = v221;
      v284.size.width = rect;
      v284.size.height = v70;
      MaxY = CGRectGetMaxY(v284);
      v224 = v73;
      v225 = v64;
      v226 = v248;
      v227 = v68;
      if (MaxY > CGRectGetMaxY(*&v224))
      {
        goto LABEL_207;
      }

      v285.origin.x = v147;
      v285.origin.y = v221;
      v285.size.width = rect;
      v285.size.height = v70;
      v228 = CGRectGetMaxY(v285);
      v286.origin.x = v73;
      v286.origin.y = v64;
      v286.size.width = v248;
      v286.size.height = v68;
      if (v228 >= CGRectGetMaxY(v286))
      {
        if (!v236)
        {
          goto LABEL_220;
        }

        [v153 windowLevel];
        v230 = v229;
        [v240 windowLevel];
        if (v230 > v231)
        {
          goto LABEL_207;
        }

        [v153 windowLevel];
        v233 = v232;
        [v240 windowLevel];
        if (v233 >= v234)
        {
LABEL_220:
          v48 = 0;
          goto LABEL_211;
        }
      }
    }

    goto LABEL_210;
  }

  if (v147 - v73 <= v154)
  {
    v221 = *&rect2c;
    if (v73 - v147 > v154)
    {
      v219 = [geometry _accessibilityIsRTL] == 0;
      v220 = 1;
      goto LABEL_203;
    }

    goto LABEL_206;
  }

  v219 = [geometry _accessibilityIsRTL] == 0;
  v220 = -1;
LABEL_203:
  if (v219)
  {
    v48 = -v220;
  }

  else
  {
    v48 = v220;
  }

LABEL_211:

  _accessibilityWindow = v153;
LABEL_212:

  v18 = v240;
LABEL_213:

LABEL_214:
  return v48;
}

void __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_11();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_1A9B83000, v4, v5, "Attempted to check for nonexistent method: %@ on class: %@", v6, v7, v8, v9, v10);
}

void __60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke_2_cold_1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_1A9B83000, v4, v5, "Attempted to check for nonexistent method: %@ on class: %@", v6, v7, v8, v9, v10);
}

void __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_22();
  [v0 _accessibilityContentOffset];
  v1 = NSStringFromCGPoint(v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_14(v2, v3, v4, v5, v6);
}

void __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_3(int a1, Class aClass)
{
  v2 = NSStringFromClass(aClass);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_14(v3, v4, v5, v6, v7);
}

void __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_5()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_6()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_7()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke_cold_8()
{
  OUTLINED_FUNCTION_22();
  [v0 _accessibilityContentOffset];
  v1 = NSStringFromCGPoint(v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_14(v2, v3, v4, v5, v6);
}

void __150__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSnapshotDescendantsWithAttributes_maxDepth_maxChildren_maxArrayCount_honorsModalViews___block_invoke_390_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A9B83000, a2, OS_LOG_TYPE_ERROR, "This child can't be serialized correctly: %{public}@", &v2, 0xCu);
}

void __150__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSnapshotDescendantsWithAttributes_maxDepth_maxChildren_maxArrayCount_honorsModalViews___block_invoke_390_cold_2()
{
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_1_2(&dword_1A9B83000, v1, v2, "Snapshot element going in:%p %{public}@", v3, v4, v5, v6, 2u);
}

void __150__NSObject_UIAccessibilityAutomation___accessibilityUserTestingSnapshotDescendantsWithAttributes_maxDepth_maxChildren_maxArrayCount_honorsModalViews___block_invoke_390_cold_3()
{
  OUTLINED_FUNCTION_10();
  v1 = objc_opt_class();
  v2 = [v0 objectForKeyedSubscript:@"UIAccessibilitySnapshotKeyElement"];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_1A9B83000, v3, v4, "Setting child snapshot element: %{private}@, %{private}@", v5, v6, v7, v8, v9);
}

@end