@interface UITabSidebarTransaction
@end

@implementation UITabSidebarTransaction

void __39___UITabSidebarTransaction_updateTabs___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKey:?];

  if (!v3)
  {
    [*(a1 + 40) removeObject:v4];
  }
}

void __39___UITabSidebarTransaction_updateTabs___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKey:?];

  if (!v3)
  {
    [*(a1 + 40) removeObject:v4];
  }
}

void __54___UITabSidebarTransaction_resetCustomizationForTabs___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 allowsHiding])
  {
    [*(a1 + 32) updateTab:v7 toHidden:{objc_msgSend(v7, "isHiddenByDefault")}];
  }

  if ([v7 _isGroup])
  {
    v3 = *(a1 + 32);
    v4 = v7;
    [v3 _resetDisplayOrderForGroup:v4];
    v5 = *(a1 + 32);
    v6 = [v4 children];

    [v5 resetCustomizationForTabs:v6];
  }
}

void __35___UITabSidebarTransaction__commit__block_invoke(void *a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 tabsByIdentifier];
  v8 = [v7 objectForKey:v6];

  if (([v8 _isGroup] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a1[6] object:a1[4] file:@"_UITabSidebarTransaction.m" lineNumber:266 description:{@"Cannot change the display order for a non-group element, %@", v8}];
  }

  if ([v8 _setDisplayOrderIdentifiers:v10])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UITabBarController *)a1[5] _notifyDisplayOrderChangesForGroup:v8];
    }
  }
}

@end