@interface UIView(AccessibilityBridging)
- (id)ttriAccessibilityShouldUseViewHierarchyForFindingScrollParent;
- (uint64_t)ttriAccessibilityShowContextMenuAtPoint:()AccessibilityBridging;
@end

@implementation UIView(AccessibilityBridging)

- (uint64_t)ttriAccessibilityShowContextMenuAtPoint:()AccessibilityBridging
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  if (selfCopy)
  {
    v6 = selfCopy;
    v7 = 0;
    do
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      interactions = [v6 interactions];
      v9 = [interactions countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(interactions);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            if (v13)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = v13;
                if (objc_opt_respondsToSelector())
                {
                  [v14 _presentMenuAtLocation:{a2, a3}];

                  v7 = 1;
                  goto LABEL_16;
                }
              }
            }
          }

          v10 = [interactions countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:

      superview = [v6 superview];

      v6 = superview;
    }

    while (superview);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)ttriAccessibilityShouldUseViewHierarchyForFindingScrollParent
{
  v2.receiver = self;
  v2.super_class = UIView_0;
  return objc_msgSendSuper2(&v2, sel__accessibilityShouldUseViewHierarchyForFindingScrollParent);
}

@end