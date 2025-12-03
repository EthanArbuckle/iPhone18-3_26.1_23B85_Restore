@interface SKUIImageCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (void)_reloadHighlightImageView;
- (void)layoutSubviews;
- (void)reloadWithCarouselItem:(id)item size:(CGSize)size context:(id)context;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation SKUIImageCollectionViewCell

- (void)reloadWithCarouselItem:(id)item size:(CGSize)size context:(id)context
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIImageCollectionViewCell reloadWithCarouselItem:size:context:];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__SKUIImageCollectionViewCell_reloadWithCarouselItem_size_context___block_invoke;
  v13[3] = &unk_2781F8428;
  v17 = width;
  v18 = height;
  v14 = itemCopy;
  v15 = contextCopy;
  selfCopy = self;
  v11 = contextCopy;
  v12 = itemCopy;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v13];
}

void __67__SKUIImageCollectionViewCell_reloadWithCarouselItem_size_context___block_invoke(uint64_t a1, void *a2)
{
  v25 = [a2 addReusableViewWithReuseIdentifier:0x28280C7E8];
  v3 = [*(a1 + 32) accessibilityLabel];
  [v25 setAccessibilityLabel:v3];

  [v25 setEnabled:0];
  [v25 setImageSize:{*(a1 + 56), *(a1 + 64)}];
  v4 = objc_alloc_init(SKUIStyledImageDataConsumer);
  v5 = 0.0;
  v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [(SKUIStyledImageDataConsumer *)v4 setBorderColor:v6];

  v7 = [*(a1 + 40) aggregateValueForKey:@"SKUICIBWK"];
  v8 = v7;
  if (v7)
  {
    [v7 UIEdgeInsetsValue];
    v5 = v12;
  }

  else
  {
    v10 = 1.0;
    v9 = 0.0;
    v11 = 0.0;
  }

  [(SKUIStyledImageDataConsumer *)v4 setBorderWidths:v5, v9, v10, v11];
  v13 = [*(a1 + 32) artworkForSize:{*(a1 + 56), *(a1 + 64)}];
  v14 = [*(a1 + 40) imageResourceCacheKeyForArtwork:v13];
  v15 = *(a1 + 48);
  v16 = *(v15 + 832);
  *(v15 + 832) = v14;

  v17 = [*(a1 + 40) requestIdentifierForArtwork:v13];
  v18 = *(a1 + 40);
  if (v17)
  {
    v19 = [v18 resourceLoader];
    v20 = [v19 cachedResourceForRequestIdentifier:{objc_msgSend(v17, "unsignedIntegerValue")}];
    if (v20)
    {
      v21 = v20;

      goto LABEL_12;
    }

    [*(a1 + 40) loadImageForArtwork:v13 dataConsumer:v4 reason:1];
  }

  else
  {
    [v18 loadImageForArtwork:v13 dataConsumer:v4 reason:1];
  }

  v22 = [(SKUIStyledImageDataConsumer *)v4 isImagePlaceholderAvailable];
  v23 = *(a1 + 40);
  if (v22)
  {
    v24 = [v23 placeholderColor];
    v21 = [(SKUIStyledImageDataConsumer *)v4 imagePlaceholderForColor:v24];
  }

  else
  {
    v21 = [v23 placeholderImageForSize:{*(a1 + 56), *(a1 + 64)}];
  }

LABEL_12:
  [v25 setContents:v21];
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIImageCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [contextCopy requestIdentifierForViewElement:elementCopy];

  if (!v17)
  {
    v18 = elementCopy;
    if ([v18 elementType] == 152)
    {
      thumbnailImage = [v18 thumbnailImage];

      v18 = thumbnailImage;
    }

    [contextCopy loadImageForImageElement:v18 reason:reason];
  }

  return v17 == 0;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIImageCollectionViewCell preferredSizeForViewElement:context:];
  }

  [contextCopy sizeForViewElement:elementCopy width:1.79769313e308];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIImageCollectionViewCell *)v9 requestLayoutForViewElement:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIAdornedImageView requestLayoutForViewElement:elementCopy width:contextCopy context:width];
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIImageCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [contextCopy sizeForViewElement:elementCopy width:width];
  v19 = v18;
  if (v17 > 0.00000011920929)
  {
    v20 = v18 * (width / v17);
    v19 = floorf(v20);
  }

  widthCopy = width;
  v22 = v19;
  result.height = v22;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v9 = [contextCopy imageResourceCacheKeyForViewElement:elementCopy];
  imageRequestCacheKey = self->_imageRequestCacheKey;
  self->_imageRequestCacheKey = v9;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__SKUIImageCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v13[3] = &unk_2781F8450;
  v14 = elementCopy;
  v15 = contextCopy;
  selfCopy = self;
  v11 = contextCopy;
  v12 = elementCopy;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v13];
}

void __67__SKUIImageCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) elementType];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v3 == 152)
  {
    v6 = [v10 addImageViewWithVideoElement:v4 context:v5];
    if (*(*(a1 + 48) + 840) == 1)
    {
      v7 = [v10 addImageViewWithVideoElement:*(a1 + 32) context:*(a1 + 40)];
    }
  }

  else
  {
    v8 = [v10 addImageViewWithElement:v4 context:v5];
    if (*(*(a1 + 48) + 840) == 1)
    {
      v9 = [v10 addImageViewWithElement:*(a1 + 32) context:*(a1 + 40)];
    }
  }
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestCopy = request;
  v10 = [context requestIdentifierForResourceCacheKey:self->_imageRequestCacheKey];
  v11 = v10;
  if (v10 && (v12 = [v10 unsignedIntegerValue], v12 == objc_msgSend(requestCopy, "requestIdentifier")))
  {
    allExistingViews = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [allExistingViews countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(allExistingViews);
          }

          [*(*(&v20 + 1) + 8 * i) setImage:imageCopy];
        }

        v15 = [allExistingViews countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SKUIImageCollectionViewCell;
  [(SKUICollectionViewCell *)&v22 layoutSubviews];
  contentView = [(SKUIImageCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  allExistingViews = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  firstObject = [allExistingViews firstObject];
  if (firstObject)
  {
    [(SKUIViewReuseCollectionViewCell *)self contentInset];
    if (self->_showsReflectionImage)
    {
      v18 = v11 * 0.5;
      v14 = v14 + floorf(v18);
    }

    [firstObject setFrame:{v5 + v15, v7 + v14, v9 - (v15 + v17), v11 - (v16 + v14)}];
  }

  if ([allExistingViews count] == 2)
  {
    v19 = [allExistingViews objectAtIndex:1];
    v20 = v19;
    if (self->_showsReflectionImage)
    {
      [firstObject frame];
      [v20 setFrame:?];
      [v20 setHidden:0];
      CGAffineTransformMakeScale(&v21, -1.0, -1.0);
      [v20 setTransform:&v21];
    }

    else
    {
      [v19 setHidden:1];
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SKUIImageCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setHighlighted:highlighted];
  [(SKUIImageCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = SKUIImageCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setSelected:selected];
  [(SKUIImageCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)_reloadHighlightImageView
{
  if (([(SKUIImageCollectionViewCell *)self isHighlighted]& 1) == 0 && ![(SKUIImageCollectionViewCell *)self isSelected])
  {
    highlightImageView = self->_highlightImageView;
    if (!highlightImageView)
    {
      return;
    }

    v18 = highlightImageView;
    v19 = self->_highlightImageView;
    self->_highlightImageView = 0;

    [MEMORY[0x277CD9FF0] begin];
    v20 = MEMORY[0x277CD9FF0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__SKUIImageCollectionViewCell__reloadHighlightImageView__block_invoke;
    v21[3] = &unk_2781F80F0;
    v22 = v18;
    firstObject = v18;
    [v20 setCompletionBlock:v21];
    [(SKUIImageView *)firstObject setAlpha:0.0];
    [MEMORY[0x277CD9FF0] commit];
    contentView = v22;
    goto LABEL_9;
  }

  allExistingViews = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  firstObject = [allExistingViews firstObject];

  if (firstObject)
  {
    v5 = self->_highlightImageView;
    if (!v5)
    {
      v6 = objc_alloc_init(SKUIImageView);
      v7 = self->_highlightImageView;
      self->_highlightImageView = v6;

      [(SKUIImageView *)self->_highlightImageView setAlpha:0.300000012];
      v8 = self->_highlightImageView;
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(SKUIImageView *)v8 setBackgroundColor:clearColor];

      v5 = self->_highlightImageView;
    }

    [(SKUIImageView *)firstObject bounds];
    [(SKUIImageView *)v5 setBounds:?];
    v10 = self->_highlightImageView;
    [(SKUIImageView *)firstObject center];
    [(SKUIImageView *)v10 setCenter:?];
    v11 = self->_highlightImageView;
    image = [(SKUIImageView *)firstObject image];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v14 = [image _flatImageWithColor:blackColor];
    [(SKUIImageView *)v11 setImage:v14];

    v15 = self->_highlightImageView;
    [(SKUIImageView *)firstObject transform];
    [(SKUIImageView *)v15 setTransform:v23];
    contentView = [(SKUIImageCollectionViewCell *)self contentView];
    [contentView insertSubview:self->_highlightImageView aboveSubview:firstObject];
LABEL_9:
  }
}

- (void)reloadWithCarouselItem:size:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIImageCollectionViewCell reloadWithCarouselItem:size:context:]";
}

+ (void)preferredSizeForViewElement:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIImageCollectionViewCell preferredSizeForViewElement:context:]";
}

@end