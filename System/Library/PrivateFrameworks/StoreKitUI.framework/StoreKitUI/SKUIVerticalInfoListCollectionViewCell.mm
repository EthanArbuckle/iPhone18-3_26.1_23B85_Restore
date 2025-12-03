@interface SKUIVerticalInfoListCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForButton:(id)button context:(id)context;
+ (id)_attributedStringForLabel:(id)label context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (SKUIVerticalInfoListCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_buttonAction:(id)action;
- (void)_imageTapAction:(id)action;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)reloadWithViewElements:(id)elements width:(double)width context:(id)context;
@end

@implementation SKUIVerticalInfoListCollectionViewCell

- (SKUIVerticalInfoListCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIVerticalInfoListCollectionViewCell initWithFrame:];
  }

  v14.receiver = self;
  v14.super_class = SKUIVerticalInfoListCollectionViewCell;
  height = [(SKUIViewReuseCollectionViewCell *)&v14 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    titleViews = height->_titleViews;
    height->_titleViews = v9;

    v11 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    valueViews = height->_valueViews;
    height->_valueViews = v11;
  }

  return height;
}

- (void)reloadWithViewElements:(id)elements width:(double)width context:(id)context
{
  elementsCopy = elements;
  contextCopy = context;
  [(NSHashTable *)self->_titleViews removeAllObjects];
  [(NSMapTable *)self->_valueViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__SKUIVerticalInfoListCollectionViewCell_reloadWithViewElements_width_context___block_invoke;
  v12[3] = &unk_2781F95C8;
  widthCopy = width;
  v13 = elementsCopy;
  v14 = contextCopy;
  selfCopy = self;
  v10 = contextCopy;
  v11 = elementsCopy;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v12];
}

void __79__SKUIVerticalInfoListCollectionViewCell_reloadWithViewElements_width_context___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v30)
  {
    v29 = *v38;
    do
    {
      v4 = 0;
      do
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v4;
        v5 = *(*(&v37 + 1) + 8 * v4);
        v6 = [v5 titleElement];
        if (v6)
        {
          v7 = [v3 addLabelViewWithElement:v6 width:*(a1 + 40) context:*(a1 + 56)];
          [*(*(a1 + 48) + 832) addObject:v7];
        }

        v31 = v6;
        v8 = [v5 valueElements];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v34;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v34 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v33 + 1) + 8 * i);
              v14 = [v13 elementType];
              v15 = 0;
              if (v14 > 61)
              {
                if (v14 <= 140)
                {
                  if (v14 == 62)
                  {
                    v17 = [v3 addHorizontalListWithElement:v13 width:*(a1 + 40) context:*(a1 + 56)];
                  }

                  else if (v14 == 135)
                  {
                    v17 = [v3 addStarRatingViewWithViewElement:v13 width:*(a1 + 40) context:*(a1 + 56)];
                  }

                  else
                  {
                    v16 = 0;
                    if (v14 != 138)
                    {
                      goto LABEL_52;
                    }

                    v17 = [v3 addLabelViewWithElement:v13 width:*(a1 + 40) context:*(a1 + 56)];
                  }

LABEL_42:
                  v15 = v17;
LABEL_43:
                  v16 = 0;
                  goto LABEL_44;
                }

                if (v14 == 141)
                {
                  goto LABEL_30;
                }

                if (v14 == 144)
                {
                  v17 = [v3 addTomatoRatingViewWithViewElement:v13 width:*(a1 + 40) context:*(a1 + 56)];
                  goto LABEL_42;
                }

                v16 = 0;
                if (v14 != 152)
                {
                  goto LABEL_52;
                }

                v18 = [v3 addImageViewWithVideoElement:v13 context:*(a1 + 40)];
                goto LABEL_35;
              }

              if (v14 <= 31)
              {
                if (v14 != 8)
                {
                  v16 = 0;
                  if (v14 != 12)
                  {
                    goto LABEL_52;
                  }

LABEL_30:
                  v19 = [v3 addButtonWithElement:v13 width:*(a1 + 40) context:*(a1 + 56)];
                  [v19 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
                  v15 = v19;
                  if ([v13 elementType] == 50)
                  {
                    v16 = v15;
                  }

                  else
                  {
                    v16 = 0;
                  }

                  goto LABEL_44;
                }

                v18 = [v3 addBadgeViewWithElement:v13 width:*(a1 + 40) context:*(a1 + 56)];
LABEL_35:
                v20 = v18;
                goto LABEL_37;
              }

              if (v14 == 32)
              {
                v15 = [v3 addDividerWithElement:v13 context:*(a1 + 40)];
                [v15 setDividerOrientation:0];
                goto LABEL_43;
              }

              if (v14 != 49)
              {
                v16 = 0;
                if (v14 != 50)
                {
                  goto LABEL_52;
                }

                goto LABEL_30;
              }

              v21 = [v3 addImageViewWithElement:v13 context:*(a1 + 40)];
              v22 = [v21 tapRecognizer];
              [v22 addTarget:*(a1 + 48) action:sel__imageTapAction_];

              v20 = v21;
LABEL_37:
              v15 = v20;
              v16 = v20;
LABEL_44:
              if (v15)
              {
                [*(*(a1 + 48) + 840) setObject:v13 forKey:v15];
              }

              if (v16)
              {
                v23 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v13];
                if (v23)
                {
                  v24 = *(*(a1 + 48) + 824);
                  if (!v24)
                  {
                    v25 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
                    v26 = *(a1 + 48);
                    v27 = *(v26 + 824);
                    *(v26 + 824) = v25;

                    v24 = *(*(a1 + 48) + 824);
                  }

                  [v24 setObject:v23 forKey:v16];
                }
              }

LABEL_52:
            }

            v10 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v10);
        }

        v4 = v32 + 1;
      }

      while (v32 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v30);
  }
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  valueElements = [element valueElements];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [valueElements countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(valueElements);
        }

        v11 |= [contextCopy prefetchResourcesForViewElement:*(*(&v15 + 1) + 8 * i) reason:reason];
      }

      v10 = [valueElements countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  labelLayoutCache = [contextCopy labelLayoutCache];
  titleElement = [elementCopy titleElement];
  if (titleElement)
  {
    v12 = [self _attributedStringForLabel:titleElement context:contextCopy];
    [labelLayoutCache requestLayoutForLabel:titleElement attributedString:v12 width:width];
  }

  v23 = elementCopy;
  valueElements = [elementCopy valueElements];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [valueElements countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(valueElements);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        elementType = [v18 elementType];
        if (elementType <= 134)
        {
          if (elementType == 8)
          {
            [labelLayoutCache requestLayoutForBadge:v18 width:width];
            continue;
          }

          if (elementType == 12)
          {
            goto LABEL_20;
          }

          if (elementType != 62)
          {
            continue;
          }

          v21 = SKUIHorizontalListView;
        }

        else if (elementType > 140)
        {
          if (elementType == 141)
          {
LABEL_20:
            v20 = [self _attributedStringForButton:v18 context:contextCopy];
            [labelLayoutCache requestLayoutForButton:v18 attributedString:v20 width:width];
LABEL_21:

            continue;
          }

          if (elementType != 144)
          {
            continue;
          }

          v21 = SKUITomatoRatingView;
        }

        else
        {
          if (elementType != 135)
          {
            if (elementType != 138)
            {
              continue;
            }

            v20 = [self _attributedStringForLabel:v18 context:contextCopy];
            [labelLayoutCache requestLayoutForLabel:v18 attributedString:v20 width:width];
            goto LABEL_21;
          }

          v21 = SKUIStarRatingViewElementView;
        }

        [(__objc2_class *)v21 requestLayoutForViewElement:v18 width:contextCopy context:width];
      }

      v15 = [valueElements countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  valueElements = [elementCopy valueElements];
  v10 = [valueElements count];
  titleElement = [elementCopy titleElement];
  if (titleElement)
  {
    [contextCopy sizeForViewElement:titleElement width:width];
    v13 = v12 + 0.0;
    ++v10;
  }

  else
  {
    v13 = 0.0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = valueElements;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [contextCopy sizeForViewElement:*(*(&v22 + 1) + 8 * i) width:{width, v22}];
        v13 = v13 + v19;
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  if (v10 > 1)
  {
    v13 = v13 + 0.0;
  }

  widthCopy = width;
  v21 = v13;
  result.height = v21;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  v8 = MEMORY[0x277CBEA60];
  contextCopy = context;
  elementCopy = element;
  v11 = [[v8 alloc] initWithObjects:{elementCopy, 0}];

  [(SKUIVerticalInfoListCollectionViewCell *)self reloadWithViewElements:v11 width:contextCopy context:width];
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  contextCopy = context;
  requestIdentifier = [request requestIdentifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v22 = imageCopy;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15, v22];
        v17 = [contextCopy requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == requestIdentifier)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            imageView = [v15 imageView];
            imageCopy = v22;
            [imageView setImage:v22];
          }

          else
          {
            imageCopy = v22;
            [v15 setImage:v22];
          }

          v19 = 1;
          goto LABEL_16;
        }
      }

      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v19 = 0;
    imageCopy = v22;
  }

  else
  {
    v19 = 0;
  }

LABEL_16:

  return v19;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SKUIVerticalInfoListCollectionViewCell;
  [(SKUICollectionViewCell *)&v22 layoutSubviews];
  contentView = [(SKUIVerticalInfoListCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SKUIViewReuseCollectionViewCell *)self contentInset];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  Width = CGRectGetWidth(v23);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3010000000;
  v21[3] = &unk_215F8ACD7;
  *&v21[4] = v15;
  v21[5] = v13;
  allExistingViews = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__SKUIVerticalInfoListCollectionViewCell_layoutSubviews__block_invoke;
  v20[3] = &unk_278201058;
  v20[4] = self;
  v20[5] = v21;
  *&v20[6] = Width - v15 - v17;
  [allExistingViews enumerateObjectsUsingBlock:v20];

  _Block_object_dispose(v21, 8);
}

void __56__SKUIVerticalInfoListCollectionViewCell_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v15 = v5;
  if (a3)
  {
    v9 = [*(*(a1 + 32) + 832) containsObject:v5];
    v10 = v15;
    if (v9)
    {
      v8 = v8 + 13.0;
    }
  }

  else
  {
    v10 = v5;
  }

  [v10 sizeThatFits:{*(a1 + 48), 1.79769313e308}];
  v12 = v11;
  v14 = v13;
  [v15 setFrame:{v7, v8, v11, v13}];
  v17.origin.x = v7;
  v17.origin.y = v8;
  v17.size.width = v12;
  v17.size.height = v14;
  *(*(*(a1 + 40) + 8) + 40) = CGRectGetMaxY(v17) + 0.0;
}

- (void)_buttonAction:(id)action
{
  v4 = [(NSMapTable *)self->_valueViews objectForKey:action];
  if (v4)
  {
    v8 = v4;
    v5 = SKUICollectionViewForView(self);
    delegate = [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 indexPathForCell:self];
      [delegate collectionView:v5 didConfirmButtonElement:v8 withClickInfo:0 forItemAtIndexPath:v7];
    }

    else
    {
      [v8 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    }

    v4 = v8;
  }
}

- (void)_imageTapAction:(id)action
{
  valueViews = self->_valueViews;
  view = [action view];
  v5 = [(NSMapTable *)valueViews objectForKey:view];

  [v5 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

+ (id)_attributedStringForButton:(id)button context:(id)context
{
  buttonCopy = button;
  contextCopy = context;
  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  v8 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [buttonCopy style];
  }

  v10 = style;

  v11 = SKUIViewElementFontWithStyle(v10);
  if (!v11)
  {
    v11 = SKUIFontPreferredFontForTextStyle(5);
  }

  tintColor = [contextCopy tintColor];
  v13 = SKUIViewElementPlainColorWithStyle(v10, tintColor);

  if (!v13)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  buttonText = [buttonCopy buttonText];
  v15 = [buttonText attributedStringWithDefaultFont:v11 foregroundColor:v13 style:v10];

  return v15;
}

+ (id)_attributedStringForLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  style = [labelCopy style];
  v8 = SKUIViewElementFontWithStyle(style);
  if (!v8)
  {
    v8 = SKUIFontPreferredFontForTextStyle(5);
  }

  tintColor = [contextCopy tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v10)
  {
    v11 = [labelCopy labelViewStyle] == 5;
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:dbl_215F3FDA0[v11]];
  }

  text = [labelCopy text];
  v13 = [text attributedStringWithDefaultFont:v8 foregroundColor:v10 style:style];

  return v13;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIVerticalInfoListCollectionViewCell initWithFrame:]";
}

@end