@interface UIDragItem(SBHIconDragUtilities)
- (id)sbh_appDragLocalContext;
- (void)sbh_setAppDragLocalContext:()SBHIconDragUtilities;
@end

@implementation UIDragItem(SBHIconDragUtilities)

- (id)sbh_appDragLocalContext
{
  v2 = [a1 localObject];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = v2;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = objc_getAssociatedObject(a1, "com.apple.springboard.appDragLocalContext");
    v7 = objc_opt_self();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      goto LABEL_11;
    }
  }

  v5 = [SBIconView dragContextForDragItem:a1];
  if (v5 && !v2)
  {
    [a1 sbh_setAppDragLocalContext:v5];
  }

LABEL_11:

  return v5;
}

- (void)sbh_setAppDragLocalContext:()SBHIconDragUtilities
{
  value = a3;
  [a1 setLocalObject:value];
  objc_setAssociatedObject(a1, "com.apple.springboard.appDragLocalContext", value, 1);
}

@end