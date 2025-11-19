@interface UIButtonBarButtonMakerForVisualProvider
@end

@implementation UIButtonBarButtonMakerForVisualProvider

id ___UIButtonBarButtonMakerForVisualProvider_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
LABEL_6:
    v14 = [objc_alloc(objc_msgSend(*(a1 + 32) "buttonBarButtonClass"))];

    goto LABEL_7;
  }

  v10 = v9;
  v11 = v10;
  if (!v10)
  {
    goto LABEL_6;
  }

  v12 = [v10 visualProvider];
  v13 = [v12 isEqual:*(a1 + 32)];

  v14 = v11;
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v15 = [v8 style];
  if (v15 == 2)
  {
    v17 = [v7 doneItemAppearance];
    [v14 setAppearanceData:v17];

    if (![v7 doneItemAppearanceNeedsUpdate])
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v15)
  {
    [v14 setAppearanceData:0];
    goto LABEL_14;
  }

  v16 = [v7 plainItemAppearance];
  [v14 setAppearanceData:v16];

  if ([v7 plainItemAppearanceNeedsUpdate])
  {
LABEL_12:
    [v14 setNeedsAppearanceUpdate];
  }

LABEL_14:
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [v7 _appearanceDelegate];
  [v14 configureFromBarItem:v8 withAppearanceDelegate:v18];

  [v14 removeTarget:0 action:0 forControlEvents:0x2000];
  v19 = [v7 _targetActionForBarButtonItem:v8];
  [v14 addTarget:v7 action:sel__invalidateAssistant_ forControlEvents:0x2000];
  [v14 addTarget:v19 action:objc_msgSend(v19 forControlEvents:{"proxyAction"), 0x2000}];

  return v14;
}

@end