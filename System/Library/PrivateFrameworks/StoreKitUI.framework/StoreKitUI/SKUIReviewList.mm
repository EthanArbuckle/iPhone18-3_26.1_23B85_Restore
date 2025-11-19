@interface SKUIReviewList
- (NSMutableDictionary)cacheRepresentation;
- (NSURL)writeReviewURL;
- (SKUIReviewList)initWithCacheRepresentation:(id)a3;
- (SKUIReviewList)initWithReviewListDictionary:(id)a3;
- (float)userRating;
- (int64_t)fiveStarRatingCount;
- (int64_t)fourStarRatingCount;
- (int64_t)numberOfPages;
- (int64_t)oneStarRatingCount;
- (int64_t)ratingCount;
- (int64_t)threeStarRatingCount;
- (int64_t)twoStarRatingCount;
@end

@implementation SKUIReviewList

- (SKUIReviewList)initWithReviewListDictionary:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReviewList initWithReviewListDictionary:];
  }

  v25.receiver = self;
  v25.super_class = SKUIReviewList;
  v5 = [(SKUIReviewList *)&v25 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v8 = [v4 objectForKey:@"review_list"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v20 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          v14 = 0;
          do
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[SKUIReview alloc] initWithReviewDictionary:v15];
              if (v16)
              {
                [v9 addObject:v16];
              }
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v12);
      }

      v17 = [v9 mutableCopy];
      reviews = v5->_reviews;
      v5->_reviews = v17;

      v8 = v20;
    }
  }

  return v5;
}

- (int64_t)fiveStarRatingCount
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"rating_count_5stars"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)fourStarRatingCount
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"rating_count_4stars"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)numberOfPages
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"total_num_pages"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)oneStarRatingCount
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"rating_count_1star"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)ratingCount
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"rating_count"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)threeStarRatingCount
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"rating_count_3stars"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)twoStarRatingCount
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"rating_count_2stars"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (float)userRating
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"rating_average"];
  objc_opt_class();
  v3 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v2 floatValue];
    v3 = v4;
  }

  return v3;
}

- (NSURL)writeReviewURL
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"writeReviewUrl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SKUIReviewList)initWithCacheRepresentation:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25.receiver = self;
    v25.super_class = SKUIReviewList;
    v5 = [(SKUIReviewList *)&v25 init];
    if (v5)
    {
      v6 = [v4 copy];
      dictionary = v5->_dictionary;
      v5->_dictionary = v6;

      v8 = [v4 objectForKey:@"reviews"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            v14 = 0;
            do
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * v14);
              v16 = [SKUIReview alloc];
              v17 = [(SKUIReview *)v16 initWithCacheRepresentation:v15, v21];
              if (v17)
              {
                [v9 addObject:v17];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
          }

          while (v12);
        }

        v18 = [v9 copy];
        reviews = v5->_reviews;
        v5->_reviews = v18;
      }
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_dictionary mutableCopy];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_reviews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) cacheRepresentation];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v3 setObject:v4 forKey:@"reviews"];

  return v3;
}

- (void)initWithReviewListDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReviewList initWithReviewListDictionary:]";
}

@end