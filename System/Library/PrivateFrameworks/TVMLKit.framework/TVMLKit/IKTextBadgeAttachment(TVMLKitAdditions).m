@interface IKTextBadgeAttachment(TVMLKitAdditions)
- (uint64_t)tv_isResolving;
- (void)tv_resolveWithTextLayoutDirection:()TVMLKitAdditions layoutObserver:;
- (void)tv_setCurrentTintColor:()TVMLKitAdditions;
- (void)tv_setHighlightColor:()TVMLKitAdditions;
- (void)tv_setImage:()TVMLKitAdditions;
- (void)tv_setImageProxy:()TVMLKitAdditions;
- (void)tv_setResolving:()TVMLKitAdditions;
@end

@implementation IKTextBadgeAttachment(TVMLKitAdditions)

- (void)tv_setImageProxy:()TVMLKitAdditions
{
  value = a3;
  v4 = [a1 tv_imageProxy];

  v5 = value;
  if (v4 != value)
  {
    objc_setAssociatedObject(a1, sel_tv_imageProxy, value, 1);
    v5 = value;
  }
}

- (uint64_t)tv_isResolving
{
  v1 = objc_getAssociatedObject(a1, sel_tv_isResolving);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)tv_setResolving:()TVMLKitAdditions
{
  if ([a1 tv_isResolving] != a3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    objc_setAssociatedObject(a1, sel_tv_isResolving, v5, 0x301);
  }
}

- (void)tv_setHighlightColor:()TVMLKitAdditions
{
  value = a3;
  v4 = [a1 tv_highlightColor];

  v5 = value;
  if (v4 != value)
  {
    objc_setAssociatedObject(a1, sel_tv_highlightColor, value, 1);
    v5 = value;
  }
}

- (void)tv_setCurrentTintColor:()TVMLKitAdditions
{
  value = a3;
  v4 = [a1 tv_currentTintColor];

  v5 = value;
  if (v4 != value)
  {
    objc_setAssociatedObject(a1, sel_tv_currentTintColor, value, 1);
    v5 = value;
  }
}

- (void)tv_setImage:()TVMLKitAdditions
{
  v24 = a3;
  v4 = [a1 tv_currentTintColor];
  if (v4)
  {
    v5 = [a1 tv_currentTintColor];
    v6 = [v5 color];
    v7 = [v24 _flatImageWithColor:v6];
  }

  else
  {
    v7 = v24;
  }

  v8 = [a1 badge];
  v9 = [v8 style];
  [v7 size];
  v11 = v10;
  v13 = v12;
  v14 = [v8 style];
  [v14 tv_margin];
  v16 = v15;

  [v9 tv_width];
  if (v17 > 0.0)
  {
    [v9 tv_height];
    if (v18 > 0.0)
    {
      [v9 tv_width];
      v11 = v19;
      [v9 tv_height];
LABEL_10:
      v13 = v20;
      goto LABEL_11;
    }
  }

  [v8 width];
  if (v21 > 0.0)
  {
    [v8 height];
    if (v22 > 0.0)
    {
      [v8 width];
      v11 = v23;
      [v8 height];
      goto LABEL_10;
    }
  }

LABEL_11:
  [a1 setBounds:{0.0, v16, v11, v13}];
  [a1 setImage:v7];
}

- (void)tv_resolveWithTextLayoutDirection:()TVMLKitAdditions layoutObserver:
{
  v6 = a4;
  if (([a1 tv_isResolving] & 1) == 0)
  {
    [a1 tv_setResolving:1];
    v7 = [a1 badge];
    v8 = [v7 url];
    if ([v8 tv_isResourceURL])
    {
      v9 = [v8 tv_resourceName];
      v10 = +[TVInterfaceFactory sharedInterfaceFactory];
      v11 = [v10 imageForResource:v9];

      if (v11)
      {
        v12 = [v11 imageAsset];

        if (v12)
        {
          v13 = [v11 imageAsset];
          v14 = [MEMORY[0x277D75C80] traitCollectionWithLayoutDirection:a3 == 1];
          v15 = [v13 imageWithTraitCollection:v14];

          v11 = v15;
        }

        [a1 tv_setImage:v11];
        [a1 tv_setResolving:0];
        if (v6)
        {
          v6[2](v6);
        }
      }
    }

    else
    {
      objc_initWeak(&location, a1);
      v16 = [v7 tv_imageProxy];
      [v16 setImageDirection:a3];
      [a1 tv_setImageProxy:v16];
      [v16 setCacheOnLoad:{+[TVMLUtilities canHandleDecodingOnRenderThread](TVMLUtilities, "canHandleDecodingOnRenderThread") ^ 1}];
      [v16 setLoadSynchronouslyIfCached:1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __92__IKTextBadgeAttachment_TVMLKitAdditions__tv_resolveWithTextLayoutDirection_layoutObserver___block_invoke;
      v17[3] = &unk_279D6E638;
      objc_copyWeak(&v19, &location);
      v18 = v6;
      [v16 setCompletionHandler:v17];
      [v16 load];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

@end