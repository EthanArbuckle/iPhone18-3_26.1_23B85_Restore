@interface IKViewElement(ViewElementRegistry)
+ (id)tv_approximateViewElementForView:()ViewElementRegistry;
- (id)tv_proxyView;
- (void)tv_setProxyView:()ViewElementRegistry;
@end

@implementation IKViewElement(ViewElementRegistry)

- (id)tv_proxyView
{
  v2 = objc_getAssociatedObject(self, sel_tv_proxyView);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_getAssociatedObject(self, sel_tv_proxyView);
  }

  else
  {
    v3 = 0;
  }

  object = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([object isViewLoaded])
    {
      view = [object view];
LABEL_9:
      v6 = view;
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      view = object;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (void)tv_setProxyView:()ViewElementRegistry
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = objc_getAssociatedObject(self, sel_tv_proxyView);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_getAssociatedObject(self, sel_tv_proxyView);

      if (v5)
      {
LABEL_8:
        [(_TVProxyWeakContainer *)v5 setObject:v6];

        goto LABEL_9;
      }
    }

    else
    {
    }

    v5 = objc_alloc_init(_TVProxyWeakContainer);
    objc_setAssociatedObject(self, sel_tv_proxyView, v5, 1);
    goto LABEL_8;
  }

LABEL_9:
}

+ (id)tv_approximateViewElementForView:()ViewElementRegistry
{
  v3 = a3;
  tv_associatedIKViewElement = [v3 tv_associatedIKViewElement];
  if (tv_associatedIKViewElement)
  {
    v5 = tv_associatedIKViewElement;
    superview = v3;
  }

  else
  {
    superview = v3;
    while (1)
    {
      v7 = superview;
      superview = [superview superview];

      if (!superview)
      {
        break;
      }

      tv_associatedIKViewElement2 = [superview tv_associatedIKViewElement];
      if (tv_associatedIKViewElement2)
      {
        v5 = tv_associatedIKViewElement2;
        goto LABEL_8;
      }
    }

    v5 = 0;
  }

LABEL_8:

  return v5;
}

@end