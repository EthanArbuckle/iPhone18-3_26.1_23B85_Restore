@interface SKUIRatingStarsCache
+ (id)cacheWithProperties:(int64_t)properties;
- (SKUIRatingStarsCache)initWithProperties:(int64_t)properties;
- (id)ratingStarsImageForRating:(double)rating;
@end

@implementation SKUIRatingStarsCache

- (SKUIRatingStarsCache)initWithProperties:(int64_t)properties
{
  propertiesCopy = properties;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIRatingStarsCache initWithProperties:];
  }

  v28.receiver = self;
  v28.super_class = SKUIRatingStarsCache;
  v5 = [(SKUIRatingStarsCache *)&v28 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = @"Small";
    if ((propertiesCopy & 1) == 0)
    {
      v7 = &stru_2827FFAC8;
    }

    if ((propertiesCopy & 4) != 0)
    {
      v8 = @"Large";
    }

    else
    {
      v8 = v7;
    }

    if ((propertiesCopy & 0x10) != 0)
    {
      v9 = @"Selected";
    }

    else
    {
      v9 = &stru_2827FFAC8;
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@StarEmpty%@", v8, v9];
    v11 = [MEMORY[0x277D755B8] imageNamed:v10 inBundle:v6];
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    v13 = [v11 _flatImageWithColor:systemOrangeColor];
    emptyStarImage = v5->_emptyStarImage;
    v5->_emptyStarImage = v13;

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@StarFull%@", v8, v9];
    v16 = [MEMORY[0x277D755B8] imageNamed:v15 inBundle:v6];
    systemOrangeColor2 = [MEMORY[0x277D75348] systemOrangeColor];
    v18 = [v16 _flatImageWithColor:systemOrangeColor2];
    filledStarImage = v5->_filledStarImage;
    v5->_filledStarImage = v18;

    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@StarHalf%@", v8, v9];
    v21 = [MEMORY[0x277D755B8] imageNamed:v20 inBundle:v6];
    systemOrangeColor3 = [MEMORY[0x277D75348] systemOrangeColor];
    v23 = [v21 _flatImageWithColor:systemOrangeColor3];
    halfStarImage = v5->_halfStarImage;
    v5->_halfStarImage = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedImages = v5->_cachedImages;
    v5->_cachedImages = v25;
  }

  return v5;
}

+ (id)cacheWithProperties:(int64_t)properties
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIRatingStarsCache cacheWithProperties:];
  }

  if (!cacheWithProperties__sCaches)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = cacheWithProperties__sCaches;
    cacheWithProperties__sCaches = v5;
  }

  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:properties];
  v8 = [cacheWithProperties__sCaches objectForKey:v7];
  if (!v8)
  {
    v8 = [[self alloc] initWithProperties:properties];
    [cacheWithProperties__sCaches setObject:v8 forKey:v7];
  }

  return v8;
}

- (id)ratingStarsImageForRating:(double)rating
{
  v4 = rating * 10.0;
  v5 = rintf(v4);
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v5];
  v7 = [(NSMutableDictionary *)self->_cachedImages objectForKey:v6];
  if (!v7)
  {
    [(UIImage *)self->_emptyStarImage size];
    v9 = v8;
    v11 = v10;
    [(UIImage *)self->_filledStarImage size];
    v13 = v12;
    v15 = v14;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v18 = v17;
    v28.width = v9 * 5.0;
    v28.height = v11;
    UIGraphicsBeginImageContextWithOptions(v28, 0, v18);

    v19 = 0.0;
    v20 = -2;
    do
    {
      [(UIImage *)self->_emptyStarImage drawInRect:v19, 0.0, v9, v11];
      v19 = v9 + v19;
      v20 += 2;
    }

    while (v20 < 8);
    v21 = 0.0;
    if (v5 >= 2)
    {
      for (i = 2; i <= v5; i += 2)
      {
        [(UIImage *)self->_filledStarImage drawInRect:v21, 0.0, v13, v15];
        v21 = v13 + v21;
      }
    }

    if ((v5 & 0x8000000000000001) == 1)
    {
      [(UIImage *)self->_halfStarImage size];
      [(UIImage *)self->_halfStarImage drawInRect:v21, 0.0, v23, v24];
    }

    v7 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v7)
    {
      [(NSMutableDictionary *)self->_cachedImages setObject:v7 forKey:v6];
    }
  }

  imageFlippedForRightToLeftLayoutDirection = [v7 imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
}

- (void)initWithProperties:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRatingStarsCache initWithProperties:]";
}

+ (void)cacheWithProperties:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIRatingStarsCache cacheWithProperties:]";
}

@end