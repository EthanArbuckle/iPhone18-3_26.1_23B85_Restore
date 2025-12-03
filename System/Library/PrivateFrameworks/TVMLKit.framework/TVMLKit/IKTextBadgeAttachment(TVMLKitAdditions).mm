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
  tv_imageProxy = [self tv_imageProxy];

  v5 = value;
  if (tv_imageProxy != value)
  {
    objc_setAssociatedObject(self, sel_tv_imageProxy, value, 1);
    v5 = value;
  }
}

- (uint64_t)tv_isResolving
{
  v1 = objc_getAssociatedObject(self, sel_tv_isResolving);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)tv_setResolving:()TVMLKitAdditions
{
  if ([self tv_isResolving] != a3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    objc_setAssociatedObject(self, sel_tv_isResolving, v5, 0x301);
  }
}

- (void)tv_setHighlightColor:()TVMLKitAdditions
{
  value = a3;
  tv_highlightColor = [self tv_highlightColor];

  v5 = value;
  if (tv_highlightColor != value)
  {
    objc_setAssociatedObject(self, sel_tv_highlightColor, value, 1);
    v5 = value;
  }
}

- (void)tv_setCurrentTintColor:()TVMLKitAdditions
{
  value = a3;
  tv_currentTintColor = [self tv_currentTintColor];

  v5 = value;
  if (tv_currentTintColor != value)
  {
    objc_setAssociatedObject(self, sel_tv_currentTintColor, value, 1);
    v5 = value;
  }
}

- (void)tv_setImage:()TVMLKitAdditions
{
  v24 = a3;
  tv_currentTintColor = [self tv_currentTintColor];
  if (tv_currentTintColor)
  {
    tv_currentTintColor2 = [self tv_currentTintColor];
    color = [tv_currentTintColor2 color];
    v7 = [v24 _flatImageWithColor:color];
  }

  else
  {
    v7 = v24;
  }

  badge = [self badge];
  style = [badge style];
  [v7 size];
  v11 = v10;
  v13 = v12;
  style2 = [badge style];
  [style2 tv_margin];
  v16 = v15;

  [style tv_width];
  if (v17 > 0.0)
  {
    [style tv_height];
    if (v18 > 0.0)
    {
      [style tv_width];
      v11 = v19;
      [style tv_height];
LABEL_10:
      v13 = v20;
      goto LABEL_11;
    }
  }

  [badge width];
  if (v21 > 0.0)
  {
    [badge height];
    if (v22 > 0.0)
    {
      [badge width];
      v11 = v23;
      [badge height];
      goto LABEL_10;
    }
  }

LABEL_11:
  [self setBounds:{0.0, v16, v11, v13}];
  [self setImage:v7];
}

- (void)tv_resolveWithTextLayoutDirection:()TVMLKitAdditions layoutObserver:
{
  v6 = a4;
  if (([self tv_isResolving] & 1) == 0)
  {
    [self tv_setResolving:1];
    badge = [self badge];
    v8 = [badge url];
    if ([v8 tv_isResourceURL])
    {
      tv_resourceName = [v8 tv_resourceName];
      v10 = +[TVInterfaceFactory sharedInterfaceFactory];
      v11 = [v10 imageForResource:tv_resourceName];

      if (v11)
      {
        imageAsset = [v11 imageAsset];

        if (imageAsset)
        {
          imageAsset2 = [v11 imageAsset];
          v14 = [MEMORY[0x277D75C80] traitCollectionWithLayoutDirection:a3 == 1];
          v15 = [imageAsset2 imageWithTraitCollection:v14];

          v11 = v15;
        }

        [self tv_setImage:v11];
        [self tv_setResolving:0];
        if (v6)
        {
          v6[2](v6);
        }
      }
    }

    else
    {
      objc_initWeak(&location, self);
      tv_imageProxy = [badge tv_imageProxy];
      [tv_imageProxy setImageDirection:a3];
      [self tv_setImageProxy:tv_imageProxy];
      [tv_imageProxy setCacheOnLoad:{+[TVMLUtilities canHandleDecodingOnRenderThread](TVMLUtilities, "canHandleDecodingOnRenderThread") ^ 1}];
      [tv_imageProxy setLoadSynchronouslyIfCached:1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __92__IKTextBadgeAttachment_TVMLKitAdditions__tv_resolveWithTextLayoutDirection_layoutObserver___block_invoke;
      v17[3] = &unk_279D6E638;
      objc_copyWeak(&v19, &location);
      v18 = v6;
      [tv_imageProxy setCompletionHandler:v17];
      [tv_imageProxy load];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

@end