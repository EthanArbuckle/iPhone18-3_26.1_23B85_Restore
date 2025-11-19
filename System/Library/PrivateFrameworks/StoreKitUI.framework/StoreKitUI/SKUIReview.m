@interface SKUIReview
- (NSMutableDictionary)cacheRepresentation;
- (SKUIReview)initWithCacheRepresentation:(id)a3;
- (SKUIReview)initWithReviewDictionary:(id)a3;
- (id)formattedBylineWithClientContext:(id)a3;
@end

@implementation SKUIReview

- (SKUIReview)initWithReviewDictionary:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReview initWithReviewDictionary:];
  }

  v21.receiver = self;
  v21.super_class = SKUIReview;
  v5 = [(SKUIReview *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"review_body"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 stringByReplacingOccurrencesOfString:@"<br/>" withString:@"\n"];
      body = v5->_body;
      v5->_body = v7;
    }

    v9 = [v4 objectForKey:@"review_date"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      dateString = v5->_dateString;
      v5->_dateString = v10;
    }

    v12 = [v4 objectForKey:@"review_star_count"];

    if (objc_opt_respondsToSelector())
    {
      [v12 floatValue];
      v5->_rating = v13;
    }

    v14 = [v4 objectForKey:@"review_name"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      reviewer = v5->_reviewer;
      v5->_reviewer = v15;
    }

    v17 = [v4 objectForKey:@"review_title"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      title = v5->_title;
      v5->_title = v18;
    }
  }

  return v5;
}

- (id)formattedBylineWithClientContext:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_dateString)
  {
    goto LABEL_28;
  }

  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  v6 = 1;
  [v5 setLenient:1];
  v7 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v5 setTimeZone:v7];

  v19 = xmmword_2781FDDA8;
  v8 = &v19;
  do
  {
    v9 = v6;
    [v5 setDateFormat:*v8];
    v10 = [v5 dateFromString:self->_dateString];
    v11 = v10;
    if (v10)
    {
      break;
    }

    v6 = 0;
    v8 = (&v19 + 8);
  }

  while ((v9 & 1) != 0);
  if (v10)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v12 setDateStyle:2];
    [v12 setTimeStyle:0];
    v13 = [v12 stringFromDate:v11];
  }

  else
  {
    v13 = 0;
  }

  for (i = 8; i != -8; i -= 8)
  {
  }

  if (v13)
  {
    if (self->_reviewer)
    {
      if (v4)
      {
        [v4 localizedStringForKey:@"REVIEW_BYLINE_WITH_DATE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"REVIEW_BYLINE_WITH_DATE" inBundles:0 inTable:@"ProductPage"];
      }
      v17 = ;
      v15 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v17 validFormatSpecifiers:@"%@%@" error:0, self->_reviewer, v13, v19];
    }

    else
    {
      v13 = v13;
      v15 = v13;
    }
  }

  else
  {
LABEL_28:
    if (self->_reviewer)
    {
      if (v4)
      {
        [v4 localizedStringForKey:@"REVIEW_BYLINE_NO_DATE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"REVIEW_BYLINE_NO_DATE" inBundles:0 inTable:@"ProductPage"];
      }
      v16 = ;
      v15 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, self->_reviewer];

      v13 = 0;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }
  }

  return v15;
}

- (SKUIReview)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21.receiver = self;
    v21.super_class = SKUIReview;
    v5 = [(SKUIReview *)&v21 init];
    if (v5)
    {
      v6 = [v4 objectForKey:@"review_body"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 copy];
        body = v5->_body;
        v5->_body = v7;
      }

      v9 = [v4 objectForKey:@"review_date"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 copy];
        dateString = v5->_dateString;
        v5->_dateString = v10;
      }

      v12 = [v4 objectForKey:@"review_star_count"];

      if (objc_opt_respondsToSelector())
      {
        [v12 floatValue];
        v5->_rating = v13;
      }

      v14 = [v4 objectForKey:@"review_name"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 copy];
        reviewer = v5->_reviewer;
        v5->_reviewer = v15;
      }

      v17 = [v4 objectForKey:@"review_title"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 copy];
        title = v5->_title;
        v5->_title = v18;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  *&v4 = self->_rating;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"review_star_count"];

  body = self->_body;
  if (body)
  {
    [v3 setObject:body forKey:@"review_body"];
  }

  dateString = self->_dateString;
  if (dateString)
  {
    [v3 setObject:dateString forKey:@"review_date"];
  }

  reviewer = self->_reviewer;
  if (reviewer)
  {
    [v3 setObject:reviewer forKey:@"review_name"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"review_title"];
  }

  return v3;
}

- (void)initWithReviewDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReview initWithReviewDictionary:]";
}

@end