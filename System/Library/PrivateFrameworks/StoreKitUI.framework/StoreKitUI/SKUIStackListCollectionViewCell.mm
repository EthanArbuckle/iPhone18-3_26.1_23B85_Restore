@interface SKUIStackListCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)layoutSubviewsWithFixedWidth:(CGRect)width size:(CGSize *)size;
- (BOOL)layoutSubviewsWithFlowLayout:(CGRect)layout size:(CGSize *)size;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIStackListCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUIStackListCollectionViewCell

- (SKUIStackListCollectionViewCell)initWithFrame:(CGRect)frame
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
        [(SKUIStackListCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIStackListCollectionViewCell;
  height = [(SKUIViewReuseCollectionViewCell *)&v20 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    listViews = height->_listViews;
    height->_listViews = v17;
  }

  return height;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  style = [elementCopy style];
  -[SKUIStackListCollectionViewCell setAlignment:](self, "setAlignment:", [style elementAlignment]);

  listViews = [(SKUIStackListCollectionViewCell *)self listViews];
  [listViews removeAllObjects];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__SKUIStackListCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v14[3] = &unk_2781F95C8;
  widthCopy = width;
  v15 = elementCopy;
  v16 = contextCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = elementCopy;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v14];
}

void __71__SKUIStackListCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) children];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 elementType] == 59)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v3 addStackItemViewWithElement:v9 width:*(a1 + 40) context:*(a1 + 56)];
            if (v10)
            {
              v11 = v10;
              v12 = [*(a1 + 48) listViews];
              [v12 setObject:v9 forKey:v11];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
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
        [(SKUIStackListCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  children = [elementCopy children];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [children countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(children);
        }

        v20 |= [contextCopy prefetchResourcesForViewElement:*(*(&v24 + 1) + 8 * i) reason:reason];
      }

      v19 = [children countByEnumeratingWithState:&v24 objects:v28 count:16];
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
        [(SKUIStackListCollectionViewCell *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
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
  v28 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIStackListCollectionViewCell *)v9 requestLayoutForViewElement:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  children = [elementCopy children];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [children countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(children);
        }

        v22 = *(*(&v23 + 1) + 8 * i);
        if ([v22 elementType] == 59)
        {
          [SKUIStackItemView requestLayoutForViewElement:v22 width:contextCopy context:width];
        }
      }

      v19 = [children countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  v76 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIStackListCollectionViewCell *)v8 sizeThatFitsWidth:v9 viewElement:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  v17 = *MEMORY[0x277CBF3A8];
  MaxY = *(MEMORY[0x277CBF3A8] + 8);
  [elementCopy children];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v18 = v72 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v70;
    v22 = 0.0;
    v23 = MaxY;
    v24 = v17;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v70 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v69 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [SKUIStackItemView sizeThatFitsWidth:v26 viewElement:contextCopy context:0 numberOfLines:width];
          v29 = v22 + 17.0;
          if (v22 <= 0.0)
          {
            v29 = v22;
          }

          v22 = v29 + v27;
          if (v29 + v27 > width)
          {

            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v31 = v18;
            v32 = [v31 countByEnumeratingWithState:&v65 objects:v74 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = width * 0.5 + -8.5;
              v35 = floorf(v34);
              v36 = *v66;
              while (2)
              {
                for (j = 0; j != v33; ++j)
                {
                  if (*v66 != v36)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v38 = *(*(&v65 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v64 = 0;
                    [SKUIStackItemView sizeThatFitsWidth:v38 viewElement:contextCopy context:&v64 numberOfLines:v35];
                    if (MaxY < v39)
                    {
                      MaxY = v39;
                    }

                    if (v64 > 2)
                    {

                      v41 = *MEMORY[0x277CBF3A0];
                      v40 = *(MEMORY[0x277CBF3A0] + 8);
                      v42 = *(MEMORY[0x277CBF3A0] + 16);
                      v43 = *(MEMORY[0x277CBF3A0] + 24);
                      v62 = 0u;
                      v63 = 0u;
                      v60 = 0u;
                      v61 = 0u;
                      v44 = v31;
                      v45 = [v44 countByEnumeratingWithState:&v60 objects:v73 count:16];
                      if (v45)
                      {
                        v46 = v45;
                        v47 = *v61;
                        do
                        {
                          for (k = 0; k != v46; ++k)
                          {
                            if (*v61 != v47)
                            {
                              objc_enumerationMutation(v44);
                            }

                            v49 = *(*(&v60 + 1) + 8 * k);
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              [SKUIStackItemView sizeThatFitsWidth:v49 viewElement:contextCopy context:0 numberOfLines:width];
                              v52 = v51;
                              if (v50 >= 16.0)
                              {
                                v53 = v50;
                              }

                              else
                              {
                                v53 = 16.0;
                              }

                              v78.origin.x = v41;
                              v78.origin.y = v40;
                              v78.size.width = v42;
                              v78.size.height = v43;
                              if (v52 + CGRectGetMaxX(v78) <= width)
                              {
                                v41 = v41 + v52;
                              }

                              else
                              {
                                v79.origin.x = v41;
                                v79.origin.y = v40;
                                v79.size.width = v42;
                                v79.size.height = v43;
                                v40 = v40 + CGRectGetHeight(v79) + 6.0;
                                v41 = 0.0;
                              }

                              v80.origin.x = v41;
                              v80.origin.y = v40;
                              v80.size.width = v52;
                              v80.size.height = v53;
                              MaxX = CGRectGetMaxX(v80);
                              if (v17 < MaxX)
                              {
                                v17 = MaxX;
                              }

                              v42 = v52;
                              v43 = v53;
                            }
                          }

                          v46 = [v44 countByEnumeratingWithState:&v60 objects:v73 count:16];
                        }

                        while (v46);
                      }

                      v81.origin.x = v41;
                      v81.origin.y = v40;
                      v81.size.width = v42;
                      v81.size.height = v43;
                      MaxY = CGRectGetMaxY(v81);
                      goto LABEL_55;
                    }
                  }
                }

                v33 = [v31 countByEnumeratingWithState:&v65 objects:v74 count:16];
                if (v33)
                {
                  continue;
                }

                break;
              }
            }

            goto LABEL_58;
          }

          if (v28 >= 16.0)
          {
            v30 = v28;
          }

          else
          {
            v30 = 16.0;
          }

          if (v23 < v30)
          {
            v23 = v30;
          }

          if (v24 < v22)
          {
            v24 = v22;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v69 objects:v75 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }

    MaxY = v23;
    v17 = v24;
  }

  else
  {
  }

LABEL_55:
  style = [elementCopy style];
  elementAlignment = [style elementAlignment];

  if (elementAlignment == 3)
  {
    MaxY = MaxY + 6.0;
  }

  width = v17;
LABEL_58:

  widthCopy = width;
  v58 = MaxY;
  result.height = v58;
  result.width = widthCopy;
  return result;
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  imageCopy = image;
  requestCopy = request;
  contextCopy = context;
  listViews = [(SKUIStackListCollectionViewCell *)self listViews];
  keyEnumerator = [listViews keyEnumerator];

  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v14 = nextObject;
    v15 = 0;
    do
    {
      if (v15)
      {
        v15 = 1;
      }

      else
      {
        v15 = [v14 setImage:imageCopy forArtworkRequest:requestCopy context:contextCopy];
      }

      nextObject2 = [keyEnumerator nextObject];

      v14 = nextObject2;
    }

    while (nextObject2);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v8 = *MEMORY[0x277CBF3A8];
  if (![(SKUIStackListCollectionViewCell *)self layoutSubviewsWithFlowLayout:&v8 size:0.0, 0.0, fits.width, fits.height])
  {
    if ([(SKUIStackListCollectionViewCell *)self layoutSubviewsWithFixedWidth:&v8 size:0.0, 0.0, width, height])
    {
      goto LABEL_6;
    }

    [(SKUIStackListCollectionViewCell *)self layoutSubviewsWithFlowLayout:&v8 size:0.0, 0.0, width, height];
  }

  if ([(SKUIStackListCollectionViewCell *)self alignment]== 3)
  {
    *(&v8 + 1) = *(&v8 + 1) + 6.0;
  }

LABEL_6:
  v7 = *(&v8 + 1);
  v6 = *&v8;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SKUIStackListCollectionViewCell;
  [(SKUICollectionViewCell *)&v12 layoutSubviews];
  contentView = [(SKUIStackListCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (![(SKUIStackListCollectionViewCell *)self layoutSubviewsWithFlowLayout:0 size:v5, v7, v9, v11]&& ![(SKUIStackListCollectionViewCell *)self layoutSubviewsWithFixedWidth:0 size:v5, v7, v9, v11])
  {
    [(SKUIStackListCollectionViewCell *)self layoutSubviewsWithFlowLayout:0 size:v5, v7, v9, v11];
  }
}

- (BOOL)layoutSubviewsWithFlowLayout:(CGRect)layout size:(CGSize *)size
{
  height = layout.size.height;
  width = layout.size.width;
  y = layout.origin.y;
  x = layout.origin.x;
  v76 = *MEMORY[0x277D85DE8];
  [(SKUIViewReuseCollectionViewCell *)self contentInset];
  rect = v10;
  v12 = v11;
  v14 = v13;
  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = width;
  v77.size.height = height;
  v15 = CGRectGetWidth(v77);
  v61.origin.x = x;
  v61.origin.y = y;
  v78.origin.x = x;
  v78.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v78.size.width = width;
  v78.size.height = height;
  v16 = CGRectGetWidth(v78);
  v18 = *MEMORY[0x277CBF3A0];
  v17 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *(MEMORY[0x277CBF3A0] + 24);
  _isRightAligned = [(SKUIStackListCollectionViewCell *)self _isRightAligned];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  allExistingViews = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  v23 = [allExistingViews countByEnumeratingWithState:&v71 objects:v75 count:16];
  v68 = v18;
  v69 = v17;
  if (!v23)
  {
    v26 = 1;
    v27 = 0.0;
    goto LABEL_32;
  }

  v24 = v23;
  v70 = v15 - v12 - v14;
  v65 = v12;
  v62 = v16 - v14;
  v63 = v18;
  if (_isRightAligned)
  {
    v12 = v16 - v14;
  }

  v25 = *v72;
  v26 = 1;
  v27 = 0.0;
  v28 = rect;
  v64 = v17;
  do
  {
    v29 = 0;
    v30 = v20;
    v31 = v19;
    do
    {
      v67 = v30;
      if (*v72 != v25)
      {
        objc_enumerationMutation(allExistingViews);
      }

      v32 = *(*(&v71 + 1) + 8 * v29);
      [v32 sizeThatFits:{v70, 1.79769313e308, *&v61.origin.x, *&v61.origin.y, *&v61.size.width, *&v61.size.height}];
      v19 = v33;
      v79.size.height = v34;
      v79.origin.x = v63;
      v79.origin.y = v17;
      v79.size.width = v19;
      v35 = fmax(CGRectGetHeight(v79), 16.0);
      if ([(SKUIStackListCollectionViewCell *)self _isRightAligned])
      {
        v80.origin.x = v63;
        v80.origin.y = v17;
        v80.size.width = v19;
        v36 = v35;
        v80.size.height = v35;
        v12 = v12 - CGRectGetWidth(v80);
      }

      else
      {
        v36 = v35;
      }

      _isRightAligned2 = [(SKUIStackListCollectionViewCell *)self _isRightAligned];
      v38 = v12;
      v39 = v28;
      v40 = v19;
      v20 = v36;
      v41 = v36;
      if (_isRightAligned2)
      {
        MinX = CGRectGetMinX(*&v38);
        if (MinX >= v65 + CGRectGetMinX(v61))
        {
          goto LABEL_13;
        }
      }

      else if (CGRectGetMaxX(*&v38) <= v62)
      {
LABEL_13:
        v43 = v12;
        v44 = v12;
        goto LABEL_20;
      }

      if (v70 < v27)
      {
        v27 = v70;
      }

      [v32 setFrame:{v12, v28, v19, v20}];
      [v32 layoutIfNeeded];
      v45 = [v32 numberOfLines] > 1;
      v43 = v65;
      if ([(SKUIStackListCollectionViewCell *)self _isRightAligned])
      {
        v81.origin.x = v12;
        v81.origin.y = rect;
        v81.size.width = v19;
        v81.size.height = v20;
        v43 = v62 - CGRectGetWidth(v81);
      }

      v26 &= v45;
      v82.origin.x = v68;
      v82.origin.y = v69;
      v82.size.width = v31;
      v82.size.height = v67;
      v28 = CGRectGetMaxY(v82) + 6.0;
      v44 = v43;
LABEL_20:
      [v32 setFrame:{v43, v28, v19, v20}];
      _isRightAligned3 = [(SKUIStackListCollectionViewCell *)self _isRightAligned];
      v47 = v43;
      v48 = v28;
      v49 = v19;
      v50 = v20;
      if (_isRightAligned3)
      {
        MaxX = CGRectGetMinX(*&v47);
        v52 = -17.0;
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v47);
        v52 = 17.0;
      }

      v12 = MaxX + v52;
      _isRightAligned4 = [(SKUIStackListCollectionViewCell *)self _isRightAligned];
      v68 = v44;
      v69 = v28;
      v54 = v43;
      v55 = v28;
      v56 = v19;
      v57 = v20;
      if (_isRightAligned4)
      {
        v58 = v70 - CGRectGetMinX(*&v54);
      }

      else
      {
        v58 = CGRectGetMaxX(*&v54);
      }

      if (v27 < v58)
      {
        v27 = v58;
      }

      ++v29;
      v30 = v20;
      v31 = v19;
      v28 = rect;
      v17 = v64;
    }

    while (v24 != v29);
    v24 = [allExistingViews countByEnumeratingWithState:&v71 objects:v75 count:{16, v20}];
  }

  while (v24);
LABEL_32:

  if (size)
  {
    v83.origin.x = v68;
    v83.origin.y = v69;
    v83.size.width = v19;
    v83.size.height = v20;
    MaxY = CGRectGetMaxY(v83);
    size->width = v27;
    size->height = MaxY;
  }

  return v26 & 1;
}

- (BOOL)layoutSubviewsWithFixedWidth:(CGRect)width size:(CGSize *)size
{
  height = width.size.height;
  width = width.size.width;
  y = width.origin.y;
  x = width.origin.x;
  v43 = *MEMORY[0x277D85DE8];
  [(SKUIViewReuseCollectionViewCell *)self contentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v37.origin.x = x;
  v37.origin.y = y;
  v44.origin.x = x;
  v44.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v44.size.width = width;
  v44.size.height = height;
  v38 = 0u;
  v39 = 0u;
  v36 = v15;
  v16 = CGRectGetWidth(v44) - v13 - v15;
  v40 = 0u;
  v41 = 0u;
  allExistingViews = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  v18 = [allExistingViews countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = v16 * 0.5 + -8.5;
    v35 = floorf(v20);
    v21 = *v39;
    v22 = 1;
    v23 = v13;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(allExistingViews);
        }

        v25 = *(*(&v38 + 1) + 8 * i);
        [v25 sizeThatFits:{v35, 1.79769313e308}];
        v27 = v26;
        v29 = v28;
        v45.origin.x = v23;
        v45.origin.y = v11;
        v45.size.width = v27;
        v45.size.height = v29;
        MaxX = CGRectGetMaxX(v45);
        if (MaxX <= CGRectGetMaxX(v37) - v36)
        {
          v31 = v11;
          v32 = v23;
        }

        else
        {
          v46.origin.x = v13;
          v46.origin.y = v11;
          v46.size.width = v27;
          v46.size.height = v29;
          v31 = CGRectGetMaxY(v46) + 6.0;
          v23 = v13;
          v32 = v13;
        }

        [v25 setFrame:{v23, v31, v27, v29}];
        [v25 layoutIfNeeded];
        v22 &= [v25 numberOfLines] < 3;
        v47.origin.x = v23;
        v47.origin.y = v31;
        v47.size.width = v27;
        v47.size.height = v29;
        v23 = CGRectGetMaxX(v47) + 17.0;
      }

      v19 = [allExistingViews countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v19);
  }

  else
  {
    v32 = *MEMORY[0x277CBF3A0];
    v31 = *(MEMORY[0x277CBF3A0] + 8);
    v27 = *(MEMORY[0x277CBF3A0] + 16);
    v29 = *(MEMORY[0x277CBF3A0] + 24);
    v22 = 1;
  }

  if (size)
  {
    v48.origin.x = v32;
    v48.origin.y = v31;
    v48.size.width = v27;
    v48.size.height = v29;
    MaxY = CGRectGetMaxY(v48);
    size->width = v16;
    size->height = MaxY;
  }

  return v22;
}

@end