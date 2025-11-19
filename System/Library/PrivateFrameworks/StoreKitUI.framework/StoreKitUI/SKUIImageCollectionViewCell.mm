@interface SKUIImageCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (void)_reloadHighlightImageView;
- (void)layoutSubviews;
- (void)reloadWithCarouselItem:(id)a3 size:(CGSize)a4 context:(id)a5;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation SKUIImageCollectionViewCell

- (void)reloadWithCarouselItem:(id)a3 size:(CGSize)a4 context:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
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
  v14 = v9;
  v15 = v10;
  v16 = self;
  v11 = v10;
  v12 = v9;
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

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
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

  v17 = [v8 requestIdentifierForViewElement:v7];

  if (!v17)
  {
    v18 = v7;
    if ([v18 elementType] == 152)
    {
      v19 = [v18 thumbnailImage];

      v18 = v19;
    }

    [v8 loadImageForImageElement:v18 reason:a4];
  }

  return v17 == 0;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIImageCollectionViewCell preferredSizeForViewElement:context:];
  }

  [v6 sizeForViewElement:v5 width:1.79769313e308];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
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

  [SKUIAdornedImageView requestLayoutForViewElement:v7 width:v8 context:a4];
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
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

  [v8 sizeForViewElement:v7 width:a3];
  v19 = v18;
  if (v17 > 0.00000011920929)
  {
    v20 = v18 * (a3 / v17);
    v19 = floorf(v20);
  }

  v21 = a3;
  v22 = v19;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 imageResourceCacheKeyForViewElement:v7];
  imageRequestCacheKey = self->_imageRequestCacheKey;
  self->_imageRequestCacheKey = v9;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__SKUIImageCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v13[3] = &unk_2781F8450;
  v14 = v7;
  v15 = v8;
  v16 = self;
  v11 = v8;
  v12 = v7;
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

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [a5 requestIdentifierForResourceCacheKey:self->_imageRequestCacheKey];
  v11 = v10;
  if (v10 && (v12 = [v10 unsignedIntegerValue], v12 == objc_msgSend(v9, "requestIdentifier")))
  {
    v13 = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v13);
          }

          [*(*(&v20 + 1) + 8 * i) setImage:v8];
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  v3 = [(SKUIImageCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  v13 = [v12 firstObject];
  if (v13)
  {
    [(SKUIViewReuseCollectionViewCell *)self contentInset];
    if (self->_showsReflectionImage)
    {
      v18 = v11 * 0.5;
      v14 = v14 + floorf(v18);
    }

    [v13 setFrame:{v5 + v15, v7 + v14, v9 - (v15 + v17), v11 - (v16 + v14)}];
  }

  if ([v12 count] == 2)
  {
    v19 = [v12 objectAtIndex:1];
    v20 = v19;
    if (self->_showsReflectionImage)
    {
      [v13 frame];
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

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUIImageCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setHighlighted:a3];
  [(SKUIImageCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUIImageCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setSelected:a3];
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
    v4 = v18;
    [v20 setCompletionBlock:v21];
    [(SKUIImageView *)v4 setAlpha:0.0];
    [MEMORY[0x277CD9FF0] commit];
    v16 = v22;
    goto LABEL_9;
  }

  v3 = [(SKUIViewReuseCollectionViewCell *)self allExistingViews];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = self->_highlightImageView;
    if (!v5)
    {
      v6 = objc_alloc_init(SKUIImageView);
      v7 = self->_highlightImageView;
      self->_highlightImageView = v6;

      [(SKUIImageView *)self->_highlightImageView setAlpha:0.300000012];
      v8 = self->_highlightImageView;
      v9 = [MEMORY[0x277D75348] clearColor];
      [(SKUIImageView *)v8 setBackgroundColor:v9];

      v5 = self->_highlightImageView;
    }

    [(SKUIImageView *)v4 bounds];
    [(SKUIImageView *)v5 setBounds:?];
    v10 = self->_highlightImageView;
    [(SKUIImageView *)v4 center];
    [(SKUIImageView *)v10 setCenter:?];
    v11 = self->_highlightImageView;
    v12 = [(SKUIImageView *)v4 image];
    v13 = [MEMORY[0x277D75348] blackColor];
    v14 = [v12 _flatImageWithColor:v13];
    [(SKUIImageView *)v11 setImage:v14];

    v15 = self->_highlightImageView;
    [(SKUIImageView *)v4 transform];
    [(SKUIImageView *)v15 setTransform:v23];
    v16 = [(SKUIImageCollectionViewCell *)self contentView];
    [v16 insertSubview:self->_highlightImageView aboveSubview:v4];
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