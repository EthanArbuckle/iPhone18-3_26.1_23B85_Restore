@interface SKUIItemArtworkContext
+ (id)lockupContextWithSize:(int64_t)a3;
+ (id)roomContext;
+ (id)wishlistContext;
- (CGSize)imageSizeForItem:(id)a3;
- (CGSize)largestImageSizeForItems:(id)a3;
- (CGSize)largestImageSizeForLockups:(id)a3;
- (id)URLForItem:(id)a3;
- (id)artworkForItem:(id)a3;
- (id)dataConsumerForItem:(id)a3;
- (id)placeholderImageForItem:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setGeneralConsumer:(id)a3;
- (void)setIconConsumer:(id)a3;
- (void)setLetterboxConsumer:(id)a3;
- (void)setNewsstandConsumer:(id)a3;
- (void)setPosterConsumer:(id)a3;
@end

@implementation SKUIItemArtworkContext

+ (id)lockupContextWithSize:(int64_t)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIItemArtworkContext *)v4 lockupContextWithSize:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = objc_alloc_init(objc_opt_class());
  v13 = [SKUIProductImageDataConsumer lockupConsumerWithSize:a3 itemKind:12];
  [v12 setGeneralConsumer:v13];

  v14 = [SKUIStyledImageDataConsumer lockupIconConsumerWithSize:a3];
  [v12 setIconConsumer:v14];

  v15 = [SKUIStyledImageDataConsumer lockupProductImageConsumerWithSize:a3];
  [v12 setNewsstandConsumer:v15];

  return v12;
}

+ (id)roomContext
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIItemArtworkContext *)v2 roomContext:v3];
      }
    }
  }

  v10 = objc_alloc_init(objc_opt_class());
  v11 = +[SKUIProductImageDataConsumer gridConsumer];
  [v10 setGeneralConsumer:v11];

  v12 = +[SKUIStyledImageDataConsumer roomIconConsumer];
  [v10 setIconConsumer:v12];

  v13 = +[SKUIStyledImageDataConsumer roomProductImageConsumer];
  [v10 setNewsstandConsumer:v13];

  return v10;
}

+ (id)wishlistContext
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIItemArtworkContext *)v2 wishlistContext:v3];
      }
    }
  }

  v10 = objc_alloc_init(objc_opt_class());
  v11 = +[SKUIProductImageDataConsumer wishlistConsumer];
  [v10 setGeneralConsumer:v11];

  v12 = +[SKUIStyledImageDataConsumer wishlistIconConsumer];
  [v10 setIconConsumer:v12];

  v13 = +[SKUIStyledImageDataConsumer wishlistProductImageConsumer];
  [v10 setNewsstandConsumer:v13];

  return v10;
}

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIItemArtworkContext *)v6 setColorScheme:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_colorScheme != v5)
  {
    objc_storeStrong(&self->_colorScheme, a3);
    [(SKUIProductImageDataConsumer *)self->_generalImageConsumer setColorScheme:self->_colorScheme];
    [(SKUIProductImageDataConsumer *)self->_letterboxConsumer setColorScheme:self->_colorScheme];
    [(SKUIProductImageDataConsumer *)self->_posterConsumer setColorScheme:self->_colorScheme];
    placeholders = self->_placeholders;
    self->_placeholders = 0;
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIItemArtworkContext *)v6 setBackgroundColor:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_backgroundColor != v5)
  {
    objc_storeStrong(&self->_backgroundColor, a3);
    [(SKUIProductImageDataConsumer *)self->_generalImageConsumer setBackgroundColor:self->_backgroundColor];
    [(SKUIStyledImageDataConsumer *)self->_iconConsumer setBackgroundColor:self->_backgroundColor];
    [(SKUIProductImageDataConsumer *)self->_letterboxConsumer setBackgroundColor:self->_backgroundColor];
    [(SKUIStyledImageDataConsumer *)self->_newsstandConsumer setBackgroundColor:self->_backgroundColor];
    [(SKUIProductImageDataConsumer *)self->_posterConsumer setBackgroundColor:self->_backgroundColor];
    placeholders = self->_placeholders;
    self->_placeholders = 0;
  }
}

- (void)setGeneralConsumer:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        [(SKUIItemArtworkContext *)v6 setGeneralConsumer:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_generalImageConsumer != v5)
  {
    objc_storeStrong(&self->_generalImageConsumer, a3);
    [(SKUIProductImageDataConsumer *)self->_generalImageConsumer setColorScheme:self->_colorScheme];
    [(SKUIProductImageDataConsumer *)self->_generalImageConsumer setBackgroundColor:self->_backgroundColor];
    placeholders = self->_placeholders;
    self->_placeholders = 0;
  }
}

- (void)setIconConsumer:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        [(SKUIItemArtworkContext *)v6 setIconConsumer:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_iconConsumer != v5)
  {
    objc_storeStrong(&self->_iconConsumer, a3);
    [(SKUIStyledImageDataConsumer *)self->_iconConsumer setBackgroundColor:self->_backgroundColor];
    placeholders = self->_placeholders;
    self->_placeholders = 0;
  }
}

- (void)setLetterboxConsumer:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIItemArtworkContext *)v6 setLetterboxConsumer:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_letterboxConsumer != v5)
  {
    objc_storeStrong(&self->_letterboxConsumer, a3);
    [(SKUIProductImageDataConsumer *)self->_letterboxConsumer setColorScheme:self->_colorScheme];
    [(SKUIProductImageDataConsumer *)self->_letterboxConsumer setBackgroundColor:self->_backgroundColor];
    placeholders = self->_placeholders;
    self->_placeholders = 0;
  }
}

- (void)setNewsstandConsumer:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        [(SKUIItemArtworkContext *)v6 setNewsstandConsumer:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_newsstandConsumer != v5)
  {
    objc_storeStrong(&self->_newsstandConsumer, a3);
    [(SKUIStyledImageDataConsumer *)self->_newsstandConsumer setBackgroundColor:self->_backgroundColor];
    placeholders = self->_placeholders;
    self->_placeholders = 0;
  }
}

- (void)setPosterConsumer:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIItemArtworkContext *)v6 setPosterConsumer:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_posterConsumer != v5)
  {
    objc_storeStrong(&self->_posterConsumer, a3);
    [(SKUIProductImageDataConsumer *)self->_posterConsumer setColorScheme:self->_colorScheme];
    [(SKUIProductImageDataConsumer *)self->_posterConsumer setBackgroundColor:self->_backgroundColor];
    placeholders = self->_placeholders;
    self->_placeholders = 0;
  }
}

- (id)dataConsumerForItem:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIItemArtworkContext *)v5 dataConsumerForItem:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 itemKind];
  if (v13 > 0x11)
  {
LABEL_18:
    v14 = 24;
    goto LABEL_19;
  }

  if (((1 << v13) & 0x21020) == 0)
  {
    if (((1 << v13) & 0x44) != 0)
    {
      v14 = 64;
      goto LABEL_19;
    }

    if (v13 == 8)
    {
      v14 = 40;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ([v4 isNewsstandApp] && (objc_msgSend(v4, "newsstandArtworks"), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v14 = 48;
  }

  else if ([v4 isHiddenFromSpringBoard] && (objc_msgSend(v4, "hasMessagesExtension") & 1) != 0)
  {
    v14 = 72;
  }

  else
  {
    v14 = 32;
  }

LABEL_19:
  v16 = *(&self->super.isa + v14);
  if (!v16)
  {
    generalImageConsumer = self->_generalImageConsumer;
    if (!generalImageConsumer)
    {
      generalImageConsumer = self->_iconConsumer;
    }

    v16 = generalImageConsumer;
  }

  return v16;
}

- (CGSize)imageSizeForItem:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && (v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG)))
  {
    [(SKUIItemArtworkContext *)v5 imageSizeForItem:v6, v7, v8, v9, v10, v11, v12];
    if (v4)
    {
LABEL_5:
      v13 = [v4 itemKind];
      v14 = 0;
      if (v13 <= 0x11 && ((1 << v13) & 0x21020) != 0)
      {
        v14 = [v4 isNewsstandApp] ^ 1;
      }

      v15 = [(SKUIItemArtworkContext *)self dataConsumerForItem:v4];
      [v15 imageSize];
      v17 = v16;
      v19 = v18;

      if ((v14 & 1) == 0)
      {
        v20 = [v4 artworksProvider];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 bestArtworkForScaledSize:{v17, v19}];
          [v22 size];
          v24 = v23;
          v26 = v25;

          v27 = v17 / v24;
          if (v17 / v24 >= v19 / v26)
          {
            v27 = v19 / v26;
          }

          v17 = ceil(v24 * v27);
          v19 = ceil(v26 * v27);
        }
      }

      goto LABEL_24;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  v17 = *MEMORY[0x277CBF3A8];
  v19 = *(MEMORY[0x277CBF3A8] + 8);
  v28 = self->_iconConsumer;
  v29 = self->_newsstandConsumer;
  v30 = self->_generalImageConsumer;
  v31 = self->_letterboxConsumer;
  *&v32 = v30;
  *(&v32 + 1) = v31;
  *&v33 = v28;
  *(&v33 + 1) = v29;
  v42 = v33;
  v43 = v32;
  v34 = self->_posterConsumer;
  v35 = 0;
  v44 = v34;
  do
  {
    v36 = *(&v42 + v35);
    if (v36)
    {
      [v36 imageSize];
      if (v17 < v37)
      {
        v17 = v37;
      }

      if (v19 < v38)
      {
        v19 = v38;
      }
    }

    v35 += 8;
  }

  while (v35 != 40);
  for (i = 32; i != -8; i -= 8)
  {
  }

LABEL_24:

  v40 = v17;
  v41 = v19;
  result.height = v41;
  result.width = v40;
  return result;
}

- (CGSize)largestImageSizeForItems:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemArtworkContext *)v5 largestImageSizeForItems:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if ([v4 count])
  {
    v13 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v4;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        v19 = 0;
        do
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(SKUIItemArtworkContext *)self imageSizeForItem:*(*(&v26 + 1) + 8 * v19), v26];
          if (v14 < v21)
          {
            v14 = v21;
          }

          if (v13 < v20)
          {
            v13 = v20;
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }
  }

  else
  {
    [(SKUIItemArtworkContext *)self imageSizeForItem:0];
    v13 = v22;
    v14 = v23;
  }

  v24 = v13;
  v25 = v14;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGSize)largestImageSizeForLockups:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemArtworkContext *)v5 largestImageSizeForLockups:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = *MEMORY[0x277CBF3A8];
  v14 = *(MEMORY[0x277CBF3A8] + 8);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
  v17 = v14;
  v18 = v13;
  if (v16)
  {
    v19 = v16;
    v20 = *v31;
    v17 = v14;
    v18 = v13;
    do
    {
      v21 = 0;
      do
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = [*(*(&v30 + 1) + 8 * v21) item];
        if (v22)
        {
          [(SKUIItemArtworkContext *)self imageSizeForItem:v22];
          if (v17 < v24)
          {
            v17 = v24;
          }

          if (v18 < v23)
          {
            v18 = v23;
          }
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v19);
  }

  if (v18 == v13 && v17 == v14)
  {
    [(SKUIItemArtworkContext *)self imageSizeForItem:0];
    v18 = v26;
    v17 = v27;
  }

  v28 = v18;
  v29 = v17;
  result.height = v29;
  result.width = v28;
  return result;
}

- (id)placeholderImageForItem:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIItemArtworkContext *)v5 placeholderImageForItem:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIItemArtworkContext *)self imageSizeForItem:v4];
  v14 = v13;
  v16 = v15;
  v17 = [(SKUIItemArtworkContext *)self dataConsumerForItem:v4];

  if (v17 == self->_iconConsumer)
  {
    v22 = 1;
    v23 = @"application";
  }

  else if (v17 == self->_messagesIconConsumer)
  {
    v22 = 1;
    v23 = @"messages";
  }

  else
  {
    if (v17 == self->_newsstandConsumer)
    {
      v24 = MEMORY[0x277CCACA8];
      v33.width = v14;
      v33.height = v16;
      v21 = NSStringFromCGSize(v33);
      [v24 stringWithFormat:@"newsstand: %@", v21];
    }

    else if (v17 == self->_posterConsumer)
    {
      v25 = MEMORY[0x277CCACA8];
      v34.width = v14;
      v34.height = v16;
      v21 = NSStringFromCGSize(v34);
      [v25 stringWithFormat:@"poster: %@", v21];
    }

    else
    {
      letterboxConsumer = self->_letterboxConsumer;
      v19 = MEMORY[0x277CCACA8];
      v32.width = v14;
      v32.height = v16;
      v20 = NSStringFromCGSize(v32);
      v21 = v20;
      if (v17 == letterboxConsumer)
      {
        [v19 stringWithFormat:@"letterbox: %@", v20];
      }

      else
      {
        [v19 stringWithFormat:@"general: %@", v20];
      }
    }
    v23 = ;

    v22 = 0;
  }

  placeholders = self->_placeholders;
  if (!placeholders)
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v28 = self->_placeholders;
    self->_placeholders = v27;

    placeholders = self->_placeholders;
  }

  v29 = [(NSMutableDictionary *)placeholders objectForKey:v23];
  if (!v29)
  {
    if (v22)
    {
      [(SKUIProductImageDataConsumer *)v17 imageForColor:0];
    }

    else
    {
      [(SKUIProductImageDataConsumer *)v17 imageForColor:0 size:v14, v16];
    }
    v29 = ;
    if (v29)
    {
      [(NSMutableDictionary *)self->_placeholders setObject:v29 forKey:v23];
    }
  }

  return v29;
}

- (id)URLForItem:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemArtworkContext *)v5 URLForItem:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIItemArtworkContext *)self artworkForItem:v4];
  v14 = [v13 URL];

  return v14;
}

- (id)artworkForItem:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemArtworkContext *)v5 artworkForItem:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIItemArtworkContext *)self dataConsumerForItem:v4];
  [v13 imageSize];
  v15 = v14;
  v17 = v16;

  v18 = [v4 artworksProvider];

  v19 = [v18 bestArtworkForScaledSize:{v15, v17}];

  return v19;
}

@end