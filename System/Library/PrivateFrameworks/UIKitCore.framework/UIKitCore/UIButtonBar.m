@interface UIButtonBar
@end

@implementation UIButtonBar

void __38___UIButtonBar__updateEffectiveLayout__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 _sendPrepareForLayout];
  v6 = [*(*(a1 + 32) + 80) objectForKey:v5];
  if (!v6)
  {
    v7 = *(a1 + 32);
    v8 = v5;
    if (v7)
    {
      v6 = [[_UIButtonBarItemGroupLayout alloc] initWithLayoutMetrics:*(v7 + 56) barButtonItemGroup:v8];
      [(_UIButtonBarItemGroupLayout *)v6 setUseGroupSizing:*(v7 + 128)];
      objc_initWeak(&location, v7);
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __32___UIButtonBar__newGroupLayout___block_invoke;
      v17 = &unk_1E70F72A8;
      objc_copyWeak(&v18, &location);
      [(_UIButtonBarItemGroupLayout *)v6 setItemViewGenerator:&v14];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v6 = 0;
    }
  }

  [(_UIButtonBarItemGroupLayout *)v6 setFixed:a3, v14, v15, v16, v17];
  [(_UIButtonBarItemGroupLayout *)v6 setSuppressSpacing:*(a1 + 64)];
  [(_UIButtonBarItemGroupLayout *)v6 setSuppressCustomSpacing:*(*(a1 + 32) + 129)];
  [(_UIButtonBarItemGroupLayout *)v6 setLeadingSpacerType:0];
  [*(a1 + 40) setObject:v6 forKey:v5];
  [*(a1 + 48) addObject:v6];
  if ([v5 _isCritical] && (objc_msgSend(v5, "_isHiddenForCalculation") & 1) == 0)
  {
    v9 = *(*(a1 + 56) + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      [(_UIButtonBarItemGroupLayout *)v6 setCritical:1];
      goto LABEL_13;
    }

    if (!os_variant_has_internal_diagnostics())
    {
      v10 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49C910) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Only one critical group allowed per button bar", &v14, 2u);
        if (a3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

LABEL_13:
      if (a3)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v12 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v14) = 0;
      _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Only one critical group allowed per button bar", &v14, 2u);
    }

    if ((a3 & 1) == 0)
    {
LABEL_14:
      if (os_variant_has_internal_diagnostics())
      {
        v13 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v14) = 0;
          _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "critical group should have been marked as fixed already", &v14, 2u);
        }
      }

      else
      {
        v11 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49C918) + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "critical group should have been marked as fixed already", &v14, 2u);
        }
      }

      [(_UIButtonBarItemGroupLayout *)v6 setFixed:1];
    }
  }

LABEL_18:
}

uint64_t __33___UIButtonBar_hasVisibleContent__block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void __39___UIButtonBar_hasAlwaysOverflowGroups__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isHidden] & 1) == 0 && objc_msgSend(v3, "_showInOverflow"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __39___UIButtonBar_elementsForOverflowMenu__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isHidden] & 1) == 0 && objc_msgSend(v3, "_showInOverflow"))
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __35___UIButtonBar_itemAtPoint_inView___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v6 = [v7 view];
  if (v6)
  {
    [*(a1 + 32) convertPoint:v6 toView:{*(a1 + 48), *(a1 + 56)}];
    if ([v6 pointInside:0 withEvent:?])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a3 = 1;
    }
  }
}

uint64_t __46___UIButtonBar__forwardEnumerateVisibleItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 enumerateVisibleItems:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a4 = result;
  return result;
}

uint64_t __46___UIButtonBar__forwardEnumerateVisibleItems___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 enumerateVisibleItems:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a4 = result;
  return result;
}

uint64_t __46___UIButtonBar__forwardEnumerateVisibleItems___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 enumerateVisibleItems:*(a1 + 32)];
  *a4 = result;
  return result;
}

uint64_t __46___UIButtonBar__reverseEnumerateVisibleItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 reverseEnumerateVisibleItems:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a4 = result;
  return result;
}

uint64_t __46___UIButtonBar__reverseEnumerateVisibleItems___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 reverseEnumerateVisibleItems:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a4 = result;
  return result;
}

uint64_t __46___UIButtonBar__reverseEnumerateVisibleItems___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 reverseEnumerateVisibleItems:*(a1 + 32)];
  *a4 = result;
  return result;
}

void __36___UIButtonBar_trailingClippingItem__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    *a3 = 1;
  }

  else
  {
    *(v6 + 24) = 1;
  }
}

id __32___UIButtonBar__newGroupLayout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _updatedViewForBarButtonItem:v6 withView:v5];

  return v8;
}

@end