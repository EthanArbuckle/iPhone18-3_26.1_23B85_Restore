@interface SKUIItemContentRating
- (SKUIItemContentRating)initWithContentRatingDictionary:(id)dictionary systemName:(id)name;
@end

@implementation SKUIItemContentRating

- (SKUIItemContentRating)initWithContentRatingDictionary:(id)dictionary systemName:(id)name
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIItemContentRating initWithContentRatingDictionary:systemName:];
  }

  v23.receiver = self;
  v23.super_class = SKUIItemContentRating;
  v8 = [(SKUIItemContentRating *)&v23 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A2E8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      contentRatingAdvisories = v8->_contentRatingAdvisories;
      v8->_contentRatingAdvisories = v10;
    }

    v12 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A318]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      contentRatingName = v8->_contentRatingName;
      v8->_contentRatingName = v13;
    }

    v15 = [dictionaryCopy objectForKey:@"rank"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [v15 stringValue];
      contentRank = v8->_contentRank;
      v8->_contentRank = stringValue;
    }

    v18 = [dictionaryCopy objectForKey:@"system"];

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = nameCopy;
    }

    v20 = [v19 copy];
    contentRatingSystemName = v8->_contentRatingSystemName;
    v8->_contentRatingSystemName = v20;
  }

  return v8;
}

- (void)initWithContentRatingDictionary:systemName:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItemContentRating initWithContentRatingDictionary:systemName:]";
}

@end