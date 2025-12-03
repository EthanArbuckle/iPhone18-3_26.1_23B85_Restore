@interface SKUIKeyValueInfoListCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (double)titleColumnWidthWithViewElement:(id)element width:(double)width context:(id)context;
+ (id)_attributedStringForButton:(id)button context:(id)context;
+ (id)_attributedStringForLabel:(id)label context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (SKUIKeyValueInfoListCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_buttonAction:(id)action;
- (void)_imageTapAction:(id)action;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUIKeyValueInfoListCollectionViewCell

- (SKUIKeyValueInfoListCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIKeyValueInfoListCollectionViewCell;
  height = [(SKUIViewReuseCollectionViewCell *)&v20 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    valueViews = height->_valueViews;
    height->_valueViews = v17;
  }

  return height;
}

+ (double)titleColumnWidthWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v10 titleColumnWidthWithViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  titleElement = [elementCopy titleElement];
  if (titleElement)
  {
    v19 = [self _attributedStringForLabel:titleElement context:contextCopy];
    v20 = width * 0.4;
    labelLayoutCache = [contextCopy labelLayoutCache];
    [labelLayoutCache requestLayoutForLabel:titleElement attributedString:v19 width:vcvtms_s32_f32(v20)];
    [labelLayoutCache sizeForLabel:titleElement width:floorf(v20)];
    *&v22 = v22;
    v23 = ceilf(*&v22);
  }

  else
  {
    v23 = 0.0;
  }

  return v23;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  valueElements = [elementCopy valueElements];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [valueElements countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(valueElements);
        }

        v20 |= [contextCopy prefetchResourcesForViewElement:*(*(&v24 + 1) + 8 * i) reason:reason];
      }

      v19 = [valueElements countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20 & 1;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v19 = [contextCopy aggregateValueForKey:@"SKUIKVILTCWK"];
  [v19 floatValue];
  v21 = v20;

  v33 = elementCopy;
  valueElements = [elementCopy valueElements];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = [valueElements countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = width - v21 + -14.0;
    v26 = v25;
    v27 = *v35;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(valueElements);
        }

        v29 = *(*(&v34 + 1) + 8 * i);
        elementType = [v29 elementType];
        if (elementType <= 134)
        {
          if (elementType == 8)
          {
            [labelLayoutCache requestLayoutForBadge:v29 width:width];
            continue;
          }

          if (elementType == 12)
          {
            goto LABEL_22;
          }

          if (elementType != 62)
          {
            continue;
          }

          v32 = SKUIHorizontalListView;
        }

        else if (elementType > 140)
        {
          if (elementType == 141)
          {
LABEL_22:
            v31 = [self _attributedStringForButton:v29 context:contextCopy];
            [labelLayoutCache requestLayoutForButton:v29 attributedString:v31 width:v26];
LABEL_23:

            continue;
          }

          if (elementType != 144)
          {
            continue;
          }

          v32 = SKUITomatoRatingView;
        }

        else
        {
          if (elementType != 135)
          {
            if (elementType != 138)
            {
              continue;
            }

            v31 = [self _attributedStringForLabel:v29 context:contextCopy];
            [labelLayoutCache requestLayoutForLabel:v29 attributedString:v31 width:v26];
            goto LABEL_23;
          }

          v32 = SKUIStarRatingViewElementView;
        }

        [(__objc2_class *)v32 requestLayoutForViewElement:v29 width:contextCopy context:v25];
      }

      v24 = [valueElements countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v24);
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  titleElement = [elementCopy titleElement];
  v18 = 0.0;
  v19 = 0.0;
  if (titleElement)
  {
    v20 = width * 0.4;
    [contextCopy sizeForViewElement:titleElement width:floorf(v20)];
    v19 = v21;
  }

  v22 = [contextCopy aggregateValueForKey:@"SKUIKVILTCWK"];
  [v22 floatValue];
  v24 = v23;

  valueElements = [elementCopy valueElements];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = [valueElements countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = width - v24 + -14.0;
    v29 = *v35;
    do
    {
      v30 = 0;
      do
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(valueElements);
        }

        [contextCopy sizeForViewElement:*(*(&v34 + 1) + 8 * v30) width:v28];
        v18 = v18 + v31;
        ++v30;
      }

      while (v27 != v30);
      v27 = [valueElements countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v27);
  }

  if (v19 < v18)
  {
    v19 = v18;
  }

  widthCopy = width;
  v33 = v19;
  result.height = v33;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v10 = [contextCopy aggregateValueForKey:@"SKUIKVILTCWK"];
  [v10 floatValue];
  self->_titleColumnWidth = v11;

  titleView = self->_titleView;
  self->_titleView = 0;

  [(NSMapTable *)self->_valueViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SKUIKeyValueInfoListCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v15[3] = &unk_2781F95C8;
  v16 = elementCopy;
  selfCopy = self;
  widthCopy = width;
  v18 = contextCopy;
  v13 = contextCopy;
  v14 = elementCopy;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v15];
}

void __78__SKUIKeyValueInfoListCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) titleElement];
  v5 = *(a1 + 56) * 0.4;
  v32 = v4;
  v6 = [v3 addLabelViewWithElement:floorf(v5) width:? context:?];
  v7 = *(a1 + 40);
  v8 = *(v7 + 832);
  *(v7 + 832) = v6;

  v9 = *(a1 + 56);
  v10 = *(*(a1 + 40) + 824);
  v11 = [*(a1 + 32) valueElements];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = v9 - v10 + -14.0;
    v15 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        v18 = [v17 elementType];
        v19 = 0;
        if (v18 > 134)
        {
          if (v18 <= 140)
          {
            if (v18 == 135)
            {
              v20 = [v3 addStarRatingViewWithViewElement:v17 width:*(a1 + 48) context:v14];
            }

            else
            {
              if (v18 != 138)
              {
                goto LABEL_42;
              }

              v20 = [v3 addLabelViewWithElement:v17 width:*(a1 + 48) context:v14];
            }

LABEL_34:
            v19 = v20;
            v23 = 0;
            if (!v20)
            {
              goto LABEL_36;
            }

LABEL_35:
            [*(*(a1 + 40) + 840) setObject:v17 forKey:v19];
            goto LABEL_36;
          }

          if (v18 != 141)
          {
            if (v18 == 144)
            {
              v20 = [v3 addTomatoRatingViewWithViewElement:v17 width:*(a1 + 48) context:v14];
              goto LABEL_34;
            }

            if (v18 != 152)
            {
              goto LABEL_42;
            }

            v21 = [v3 addImageViewWithVideoElement:v17 context:*(a1 + 48)];
LABEL_28:
            v24 = v21;
LABEL_31:
            v23 = v24;
            v19 = v24;
            if (v24)
            {
              goto LABEL_35;
            }

            goto LABEL_36;
          }
        }

        else if (v18 <= 48)
        {
          if (v18 == 8)
          {
            v21 = [v3 addBadgeViewWithElement:v17 width:*(a1 + 48) context:v14];
            goto LABEL_28;
          }

          if (v18 != 12)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v18 == 49)
          {
            v25 = [v3 addImageViewWithElement:v17 context:*(a1 + 48)];
            v26 = [v25 tapRecognizer];
            [v26 addTarget:*(a1 + 40) action:sel__imageTapAction_];

            v24 = v25;
            goto LABEL_31;
          }

          if (v18 != 50)
          {
            if (v18 != 62)
            {
              goto LABEL_42;
            }

            v20 = [v3 addHorizontalListWithElement:v17 width:*(a1 + 48) context:v14];
            goto LABEL_34;
          }
        }

        v22 = [v3 addButtonWithElement:v17 width:*(a1 + 48) context:v14];
        [v22 addTarget:*(a1 + 40) action:sel__buttonAction_ forControlEvents:64];
        v19 = v22;
        if ([v17 elementType] == 50)
        {
          v23 = v19;
        }

        else
        {
          v23 = 0;
        }

        if (v19)
        {
          goto LABEL_35;
        }

LABEL_36:
        if (v23)
        {
          v27 = [*(a1 + 48) imageResourceCacheKeyForViewElement:v17];
          if (v27)
          {
            v28 = *(*(a1 + 40) + 848);
            if (!v28)
            {
              v29 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
              v30 = *(a1 + 40);
              v31 = *(v30 + 848);
              *(v30 + 848) = v29;

              v28 = *(*(a1 + 40) + 848);
            }

            [v28 setObject:v27 forKey:v23];
          }
        }

LABEL_42:
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }
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
  selfCopy = self;
  v70 = *MEMORY[0x277D85DE8];
  v68.receiver = self;
  v68.super_class = SKUIKeyValueInfoListCollectionViewCell;
  [(SKUICollectionViewCell *)&v68 layoutSubviews];
  contentView = [(SKUIKeyValueInfoListCollectionViewCell *)selfCopy contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SKUIViewReuseCollectionViewCell *)selfCopy contentInset];
  MaxY = v12;
  v15 = v14;
  v60 = v16;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  y = *(MEMORY[0x277CBF3A0] + 8);
  titleView = selfCopy->_titleView;
  rect = y;
  if (titleView)
  {
    [(SKUIAttributedStringView *)titleView firstBaselineOffset];
    v56 = v20;
    [(SKUIAttributedStringView *)selfCopy->_titleView sizeThatFits:selfCopy->_titleColumnWidth, 1.79769313e308];
    v22 = v21;
    v24 = v23;
    if (ShouldReverseLayoutDirection)
    {
      v71.origin.x = v5;
      v71.origin.y = v7;
      v71.size.width = v9;
      v71.size.height = v11;
      v25 = CGRectGetMaxX(v71) - v15 - selfCopy->_titleColumnWidth;
    }

    else
    {
      v25 = v15 + selfCopy->_titleColumnWidth - v21;
    }

    v28 = MaxY;
    v29 = v22;
    v30 = v24;
    v72 = CGRectIntegral(*&v25);
    y = v72.origin.y;
    height = v72.size.height;
    [(SKUIAttributedStringView *)selfCopy->_titleView setFrame:v72.origin.x];
    if (ShouldReverseLayoutDirection)
    {
      goto LABEL_8;
    }

LABEL_5:
    v26 = v15 + selfCopy->_titleColumnWidth;
    v27 = 14.0;
    goto LABEL_9;
  }

  height = *(MEMORY[0x277CBF3A0] + 24);
  v56 = 0.0;
  if ((ShouldReverseLayoutDirection & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_8:
  v73.origin.x = v5;
  v73.origin.y = v7;
  v73.size.width = v9;
  v73.size.height = v11;
  v26 = CGRectGetMaxX(v73) - v15 - selfCopy->_titleColumnWidth;
  v27 = -14.0;
LABEL_9:
  v31 = v26 + v27;
  [(SKUIViewReuseCollectionViewCell *)selfCopy allExistingViews];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v67 = 0u;
  v32 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = 0;
    v35 = v9 - v60 - v31;
    v36 = floorf(v35);
    v37 = *v65;
    v57 = y + v56;
    v59 = *v65;
    do
    {
      v38 = 0;
      v61 = v33;
      do
      {
        if (*v65 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v64 + 1) + 8 * v38);
        if (v39 != selfCopy->_titleView)
        {
          [*(*(&v64 + 1) + 8 * v38) sizeThatFits:{v36, 1.79769313e308}];
          v41 = v40;
          v43 = v42;
          v44 = v31;
          if (ShouldReverseLayoutDirection)
          {
            v74.origin.x = v31;
            v74.origin.y = rect;
            v74.size.width = v41;
            v74.size.height = v43;
            v44 = v31 - CGRectGetWidth(v74);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v45 = ShouldReverseLayoutDirection;
            v46 = v39;
            [(SKUIAttributedStringView *)v46 firstBaselineOffset];
            v48 = v47;
            v49 = selfCopy;
            usesTallCharacterSet = [(SKUIAttributedStringView *)selfCopy->_titleView usesTallCharacterSet];
            usesTallCharacterSet2 = [(SKUIAttributedStringView *)v46 usesTallCharacterSet];

            if (v34)
            {
              ShouldReverseLayoutDirection = v45;
              selfCopy = v49;
              v37 = v59;
              v33 = v61;
LABEL_27:
              [(SKUIAttributedStringView *)v39 setFrame:v44, MaxY, v41, v43];
              v75.origin.x = v44;
              v75.origin.y = MaxY;
              v75.size.width = v41;
              v75.size.height = v43;
              MaxY = CGRectGetMaxY(v75);
              ++v34;
              goto LABEL_28;
            }

            v52 = usesTallCharacterSet == usesTallCharacterSet2;
            ShouldReverseLayoutDirection = v45;
            selfCopy = v49;
            v37 = v59;
            v33 = v61;
            if (!v52)
            {
              v53 = MaxY + v56 - v48;
              v54 = floorf(v53);
              goto LABEL_26;
            }
          }

          else if (v34)
          {
            goto LABEL_27;
          }

          MaxY = rect;
          if (v43 >= height)
          {
            goto LABEL_27;
          }

          v55 = v57 - v43;
          v54 = ceilf(v55);
LABEL_26:
          MaxY = v54;
          goto LABEL_27;
        }

LABEL_28:
        ++v38;
      }

      while (v33 != v38);
      v33 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v33);
  }
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
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v7 _attributedStringForButton:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  v16 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [buttonCopy style];
  }

  v18 = style;

  v19 = SKUIViewElementFontWithStyle(v18);
  if (!v19)
  {
    v19 = SKUIFontPreferredFontForTextStyle(5);
  }

  tintColor = [contextCopy tintColor];
  v21 = SKUIViewElementPlainColorWithStyle(v18, tintColor);

  if (!v21)
  {
    v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  buttonText = [buttonCopy buttonText];
  v23 = [buttonText attributedStringWithDefaultFont:v19 foregroundColor:v21 style:v18];

  return v23;
}

+ (id)_attributedStringForLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v7 _attributedStringForLabel:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  style = [labelCopy style];
  v16 = SKUIViewElementFontWithStyle(style);
  if (!v16)
  {
    v16 = SKUIFontPreferredFontForTextStyle(5);
  }

  tintColor = [contextCopy tintColor];
  v18 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v18)
  {
    v19 = [labelCopy labelViewStyle] == 5;
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:dbl_215F3FDA0[v19]];
  }

  text = [labelCopy text];
  v21 = [text attributedStringWithDefaultFont:v16 foregroundColor:v18 style:style];

  return v21;
}

@end