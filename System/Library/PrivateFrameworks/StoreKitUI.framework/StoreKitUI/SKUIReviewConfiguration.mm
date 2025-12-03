@interface SKUIReviewConfiguration
- (SKUIReviewConfiguration)initWithConfigurationDictionary:(id)dictionary;
@end

@implementation SKUIReviewConfiguration

- (SKUIReviewConfiguration)initWithConfigurationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIReviewConfiguration initWithConfigurationDictionary:];
  }

  v22.receiver = self;
  v22.super_class = SKUIReviewConfiguration;
  v5 = [(SKUIReviewConfiguration *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"allVersionsUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      allVersionsURLString = v5->_allVersionsURLString;
      v5->_allVersionsURLString = v7;
    }

    v9 = [dictionaryCopy objectForKey:@"currentVersionUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      currentVersionURLString = v5->_currentVersionURLString;
      v5->_currentVersionURLString = v10;
    }

    v12 = [dictionaryCopy objectForKey:@"inlineRatingUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      ratingURLString = v5->_ratingURLString;
      v5->_ratingURLString = v13;
    }

    v15 = [dictionaryCopy objectForKey:@"pageNumberQueryParam"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      pageNumberQueryParameter = v5->_pageNumberQueryParameter;
      v5->_pageNumberQueryParameter = v16;
    }

    v18 = [dictionaryCopy objectForKey:@"storeExternalVersionID"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      storeExternalVersionID = v5->_storeExternalVersionID;
      v5->_storeExternalVersionID = v19;
    }
  }

  return v5;
}

- (void)initWithConfigurationDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReviewConfiguration initWithConfigurationDictionary:]";
}

@end