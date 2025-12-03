@interface UIDragItem(SBHIconDragUtilities)
- (id)sbh_appDragLocalContext;
- (void)sbh_setAppDragLocalContext:()SBHIconDragUtilities;
@end

@implementation UIDragItem(SBHIconDragUtilities)

- (id)sbh_appDragLocalContext
{
  localObject = [self localObject];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = localObject;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = objc_getAssociatedObject(self, "com.apple.springboard.appDragLocalContext");
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

  v5 = [SBIconView dragContextForDragItem:self];
  if (v5 && !localObject)
  {
    [self sbh_setAppDragLocalContext:v5];
  }

LABEL_11:

  return v5;
}

- (void)sbh_setAppDragLocalContext:()SBHIconDragUtilities
{
  value = a3;
  [self setLocalObject:value];
  objc_setAssociatedObject(self, "com.apple.springboard.appDragLocalContext", value, 1);
}

@end