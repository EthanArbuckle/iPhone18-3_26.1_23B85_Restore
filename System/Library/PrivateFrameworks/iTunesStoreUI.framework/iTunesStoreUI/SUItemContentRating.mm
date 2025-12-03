@interface SUItemContentRating
+ (int64_t)ratingSystemFromString:(id)string;
- (BOOL)isRestricted;
- (SUItemContentRating)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForProperty:(id)property;
- (void)dealloc;
@end

@implementation SUItemContentRating

- (SUItemContentRating)initWithDictionary:(id)dictionary
{
  v14.receiver = self;
  v14.super_class = SUItemContentRating;
  v4 = [(SUItemContentRating *)&v14 init];
  if (v4)
  {
    v5 = [dictionary copy];
    v4->_dictionary = v5;
    v6 = [(NSDictionary *)v5 objectForKey:@"rank"];
    if (objc_opt_respondsToSelector())
    {
      v4->_rank = [v6 intValue];
    }

    v7 = [(NSDictionary *)v4->_dictionary objectForKey:@"description"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_ratingDescription = v7;
    }

    v8 = [(NSDictionary *)v4->_dictionary objectForKey:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_ratingLabel = [v8 uppercaseString];
    }

    v9 = [(NSDictionary *)v4->_dictionary objectForKey:@"system"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_ratingSystem = [objc_opt_class() ratingSystemFromString:v9];
    }

    v10 = [(NSDictionary *)v4->_dictionary objectForKey:@"logo-artwork-url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x1E69D4910]) initWithArtworkDictionary:v10];
      v4->_ratingSystemLogo = v11;
      if (![(SSItemArtworkImage *)v11 URL])
      {

        v4->_ratingSystemLogo = 0;
      }
    }

    v12 = [(NSDictionary *)v4->_dictionary objectForKey:@"hide-item-if-restricted"];
    if (objc_opt_respondsToSelector())
    {
      v4->_shouldHideWhenRestricted = [v12 BOOLValue];
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUItemContentRating;
  [(SUItemContentRating *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  *(v5 + 8) = [(NSDictionary *)self->_dictionary copyWithZone:zone];
  *(v5 + 16) = self->_rank;
  *(v5 + 24) = [(NSString *)self->_ratingDescription copyWithZone:zone];
  *(v5 + 32) = [(NSString *)self->_ratingLabel copyWithZone:zone];
  *(v5 + 40) = self->_ratingSystem;
  *(v5 + 48) = [(SSItemArtworkImage *)self->_ratingSystemLogo copyWithZone:zone];
  *(v5 + 56) = self->_shouldHideWhenRestricted;
  return v5;
}

+ (int64_t)ratingSystemFromString:(id)string
{
  v4 = &qword_1E8166750;
  v5 = 36;
  while ([*(v4 - 1) caseInsensitiveCompare:string])
  {
    v4 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return *v4;
}

- (BOOL)isRestricted
{
  if ([(SUItemContentRating *)self _isRatingSystemForApps:self->_ratingSystem]|| [(SUItemContentRating *)self _isRatingSystemForMovies:self->_ratingSystem]|| [(SUItemContentRating *)self _isRatingSystemForTV:self->_ratingSystem])
  {
    v3 = SSRestrictionsCopyRankForMediaType();
    if (v3)
    {
      v4 = v3;
      rank = self->_rank;
      v6 = rank > [v3 integerValue];

      return v6;
    }
  }

  if (![(SUItemContentRating *)self isExplicitContent])
  {
    return 0;
  }

  return SSRestrictionsShouldRestrictExplicitContent();
}

- (id)valueForProperty:(id)property
{
  v3 = [(NSDictionary *)self->_dictionary objectForKey:property];

  return v3;
}

@end