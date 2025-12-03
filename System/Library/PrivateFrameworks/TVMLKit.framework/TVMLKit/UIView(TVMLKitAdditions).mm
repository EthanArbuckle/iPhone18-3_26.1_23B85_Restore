@interface UIView(TVMLKitAdditions)
- (double)tv_focusMargin;
- (double)tv_interitemSpacing;
- (double)tv_itemHeight;
- (double)tv_itemWidth;
- (double)tv_lineSpacing;
- (double)tv_margin;
- (double)tv_maxHeight;
- (double)tv_maxWidth;
- (double)tv_minHeight;
- (double)tv_minWidth;
- (double)tv_nonDirectionalMargin;
- (double)tv_padding;
- (double)tv_sizeThatFits:()TVMLKitAdditions withSizeCalculation:;
- (id)tv_valueForTVViewTag:()TVMLKitAdditions;
- (id)valueForTVViewStyle:()TVMLKitAdditions;
- (int64_t)tv_alignment;
- (int64_t)tv_position;
- (uint64_t)transferLayoutStylesFromElement:()TVMLKitAdditions;
- (uint64_t)tv_contentAlignment;
- (uint64_t)tv_elementType;
- (uint64_t)tv_isAnimationDisabledForProperty:()TVMLKitAdditions;
- (uint64_t)tv_isPrototypeView;
- (uint64_t)tv_marqueeOnHighlight;
- (uint64_t)tv_shouldAnimatePropertyWithKey:()TVMLKitAdditions;
- (uint64_t)tv_shouldReuseCachedSizeThatFits:()TVMLKitAdditions previousTargetSize:newTargetSize:;
- (uint64_t)tv_showOnHighlight;
- (uint64_t)tv_sizeThatFits:()TVMLKitAdditions;
- (void)_transferAttributesFromElement:()TVMLKitAdditions;
- (void)setValue:()TVMLKitAdditions forTVViewStyle:;
- (void)tv_disableAnimation:()TVMLKitAdditions forProperty:;
- (void)tv_setValue:()TVMLKitAdditions forTVViewTag:;
@end

@implementation UIView(TVMLKitAdditions)

- (void)setValue:()TVMLKitAdditions forTVViewStyle:
{
  v9 = a3;
  v6 = a4;
  tv_layout = [self tv_layout];
  v8 = [tv_layout tv_layoutPropertySetterForStyle:v6];

  if (v8)
  {
    (v8)[2](v8, v9);
  }
}

- (id)valueForTVViewStyle:()TVMLKitAdditions
{
  v4 = a3;
  tv_layout = [self tv_layout];
  v6 = tv_layout;
  if (tv_layout)
  {
    v7 = [tv_layout tv_layoutPropertyGetterForStyle:v4];
    v8 = v7;
    if (v7)
    {
      v9 = (*(v7 + 16))(v7);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tv_setValue:()TVMLKitAdditions forTVViewTag:
{
  v6 = a4;
  v7 = a3;
  layer = [self layer];
  [layer setValue:v7 forKey:v6];
}

- (id)tv_valueForTVViewTag:()TVMLKitAdditions
{
  v4 = a3;
  layer = [self layer];
  v6 = [layer valueForKey:v4];

  return v6;
}

- (void)tv_disableAnimation:()TVMLKitAdditions forProperty:
{
  v12 = a4;
  if (tv_disableAnimation_forProperty__onceToken != -1)
  {
    [UIView(TVMLKitAdditions) tv_disableAnimation:forProperty:];
  }

  v6 = objc_getAssociatedObject(self, "TVMLDisabledAnimations");
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
  }

  v10 = v9;

  if (a3)
  {
    [v10 addObject:v12];
  }

  else
  {
    [v10 removeObject:v12];
  }

  v11 = [v10 copy];
  objc_setAssociatedObject(self, "TVMLDisabledAnimations", v11, 0x301);
}

- (uint64_t)tv_isAnimationDisabledForProperty:()TVMLKitAdditions
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self, "TVMLDisabledAnimations");
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)transferLayoutStylesFromElement:()TVMLKitAdditions
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [TVViewLayout layoutClassForElement:v4];
    tv_layout = [self tv_layout];
    v7 = [(objc_class *)v5 layoutWithLayout:tv_layout element:v9];

    if (v7)
    {
      [self tv_setLayout:v7];
    }

    [self _transferAttributesFromElement:v9];
  }

  return MEMORY[0x2821F96F8]();
}

- (uint64_t)tv_sizeThatFits:()TVMLKitAdditions
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [self tv_textSizeForSize:{a2, a3}];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__UIView_TVMLKitAdditions__tv_sizeThatFits___block_invoke;
    v7[3] = &unk_279D6E518;
    v7[4] = self;
    return [self tv_sizeThatFits:v7 withSizeCalculation:{a2, a3}];
  }
}

- (double)tv_sizeThatFits:()TVMLKitAdditions withSizeCalculation:
{
  v7 = a5;
  [self tv_minWidth];
  v9 = v8;
  [self tv_minHeight];
  [self tv_maxWidth];
  v11 = v10;
  [self tv_maxHeight];
  v13 = v12;
  [self tv_itemWidth];
  v15 = v14;
  [self tv_itemHeight];
  v17 = v16;
  if (v15 <= 0.0 || v16 <= 0.0)
  {
    v18 = v15;
    v19 = v15;
    if (v15 <= 0.0)
    {
      if (a2 > 0.0 && (a2 < v11 || v11 <= 0.0))
      {
        v15 = a2;
        v18 = v9;
        v19 = a2;
      }

      else
      {
        if (v11 <= 0.0)
        {
          v15 = a2;
        }

        else
        {
          v15 = v11;
        }

        v18 = v9;
        v19 = v11;
      }
    }

    if (v16 <= 0.0)
    {
      if (a3 > 0.0 && (a3 < v13 || v13 <= 0.0))
      {
        v17 = a3;
      }

      else if (v13 > 0.0)
      {
        v17 = v13;
      }

      else
      {
        v17 = a3;
      }
    }

    v20 = v7[2](v7, v15, v17);
    if (v20 <= v19 || v19 <= 0.0)
    {
      v22 = v20;
    }

    else
    {
      v22 = v19;
    }

    if (v20 >= v18)
    {
      v15 = v22;
    }

    else
    {
      v15 = v18;
    }
  }

  return v15;
}

- (uint64_t)tv_shouldReuseCachedSizeThatFits:()TVMLKitAdditions previousTargetSize:newTargetSize:
{
  if (self == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    return 1;
  }

  if (a3 == a5 && a4 == a6)
  {
    return 0;
  }

  if (a5 > a3)
  {
    v8 = self < a3;
    return !v8;
  }

  if (a5 < a3)
  {
    v8 = self < a5;
    return !v8;
  }

  if (a6 == 0.0)
  {
    v8 = a2 < a4;
    return !v8;
  }

  v10 = a2 > a6;
  if (a6 >= a4)
  {
    v10 = 0;
  }

  if (a6 > a4)
  {
    v10 = a2 >= a4;
  }

  if (a4 == 0.0)
  {
    return a2 > a6;
  }

  else
  {
    return v10;
  }
}

- (double)tv_margin
{
  v1 = [self valueForTVViewStyle:@"margin"];
  if (objc_opt_respondsToSelector())
  {
    [v1 UIEdgeInsetsValue];
    v3 = v2;
  }

  else
  {
    v3 = *MEMORY[0x277D768C8];
  }

  return v3;
}

- (double)tv_nonDirectionalMargin
{
  [self tv_margin];
  v3 = v2;
  [self effectiveUserInterfaceLayoutDirection];
  return v3;
}

- (double)tv_focusMargin
{
  v1 = [self valueForTVViewStyle:@"tv-focus-margin"];
  if (objc_opt_respondsToSelector())
  {
    [v1 UIEdgeInsetsValue];
    v3 = v2;
  }

  else
  {
    v3 = *MEMORY[0x277D768C8];
  }

  return v3;
}

- (double)tv_padding
{
  v1 = [self valueForTVViewStyle:@"padding"];
  if (objc_opt_respondsToSelector())
  {
    [v1 UIEdgeInsetsValue];
    v3 = v2;
  }

  else
  {
    v3 = *MEMORY[0x277D768C8];
  }

  return v3;
}

- (int64_t)tv_alignment
{
  v2 = [self valueForTVViewStyle:@"tv-align"];
  v3 = +[TVMLUtilities semanticAlignmentForAlignment:semanticContentAttribute:](TVMLUtilities, "semanticAlignmentForAlignment:semanticContentAttribute:", [v2 unsignedIntegerValue], objc_msgSend(self, "semanticContentAttribute"));

  return v3;
}

- (uint64_t)tv_contentAlignment
{
  v1 = [self valueForTVViewStyle:@"tv-content-align"];
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)tv_position
{
  v2 = [self valueForTVViewStyle:@"tv-position"];
  v3 = +[TVMLUtilities semanticPositionForPosition:semanticContentAttribute:](TVMLUtilities, "semanticPositionForPosition:semanticContentAttribute:", [v2 unsignedIntegerValue], objc_msgSend(self, "semanticContentAttribute"));

  return v3;
}

- (double)tv_itemWidth
{
  v1 = [self valueForTVViewStyle:@"width"];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (double)tv_itemHeight
{
  v1 = [self valueForTVViewStyle:@"height"];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (double)tv_maxHeight
{
  v1 = [self valueForTVViewStyle:@"max-height"];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (double)tv_maxWidth
{
  v1 = [self valueForTVViewStyle:@"max-width"];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (double)tv_minHeight
{
  v1 = [self valueForTVViewStyle:@"min-height"];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (double)tv_minWidth
{
  v1 = [self valueForTVViewStyle:@"min-width"];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (double)tv_interitemSpacing
{
  v1 = [self valueForTVViewStyle:@"tv-interitem-spacing"];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (double)tv_lineSpacing
{
  v1 = [self valueForTVViewStyle:@"tv-line-spacing"];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)tv_elementType
{
  v1 = [self tv_valueForTVViewTag:@"TVMLElementTypeTag"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v1 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (uint64_t)tv_isPrototypeView
{
  v1 = [self tv_valueForTVViewTag:@"TVMLElementIsPrototypeViewTag"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)tv_showOnHighlight
{
  v2 = [self valueForTVViewStyle:@"tv-highlight-style"];
  if ([v2 isEqualToString:@"show-on-highlight"])
  {
    v3 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [self valueForTVViewStyle:@"tv-text-highlight-style"];

      if ([v4 isEqualToString:@"show-on-highlight"])
      {
        v3 = 1;
      }

      else
      {
        v3 = [v4 isEqualToString:@"marquee-and-show-on-highlight"];
      }

      v2 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (uint64_t)tv_marqueeOnHighlight
{
  v1 = [self valueForTVViewStyle:@"tv-text-highlight-style"];
  if ([v1 isEqualToString:@"marquee-on-highlight"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"marquee-and-show-on-highlight"];
  }

  return v2;
}

- (uint64_t)tv_shouldAnimatePropertyWithKey:()TVMLKitAdditions
{
  v4 = a3;
  if ([self tv_isAnimationDisabledForProperty:v4])
  {
    v5 = 0;
  }

  else
  {
    v5 = [self tv_shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)_transferAttributesFromElement:()TVMLKitAdditions
{
  v4 = a3;
  [self setSemanticContentAttribute:{objc_msgSend(v4, "tv_semanticContentAttribute")}];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "tv_elementType")}];
  [self tv_setValue:v5 forTVViewTag:@"TVMLElementTypeTag"];

  elementName = [v4 elementName];
  [self tv_setValue:elementName forTVViewTag:@"TVMLElementTypeName"];

  v7 = MEMORY[0x277CCABB0];
  isPartOfPrototypeElement = [v4 isPartOfPrototypeElement];

  v9 = [v7 numberWithBool:isPartOfPrototypeElement];
  [self tv_setValue:v9 forTVViewTag:@"TVMLElementIsPrototypeViewTag"];
}

@end