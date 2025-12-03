@interface SSItemContentRating
+ (id)stringForRatingSystem:(int64_t)system;
+ (int64_t)ratingSystemFromString:(id)string;
- (BOOL)isRestricted;
- (BOOL)shouldHideWhenRestricted;
- (NSDictionary)contentRatingDictionary;
- (NSString)ratingDescription;
- (NSString)ratingLabel;
- (SSItemArtworkImage)ratingSystemLogo;
- (SSItemContentRating)init;
- (SSItemContentRating)initWithDictionary:(id)dictionary;
- (SSItemContentRating)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)valueForProperty:(id)property;
- (int64_t)rank;
- (int64_t)ratingSystem;
- (void)_setValue:(id)value forProperty:(id)property;
- (void)_setValueCopy:(id)copy forProperty:(id)property;
- (void)dealloc;
- (void)setRank:(int64_t)rank;
- (void)setRatingSystem:(int64_t)system;
- (void)setShouldHideWhenRestricted:(BOOL)restricted;
@end

@implementation SSItemContentRating

- (SSItemContentRating)init
{
  v4.receiver = self;
  v4.super_class = SSItemContentRating;
  v2 = [(SSItemContentRating *)&v4 init];
  if (v2)
  {
    v2->_dictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (SSItemContentRating)initWithDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = SSItemContentRating;
  v4 = [(SSItemContentRating *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [dictionary mutableCopy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSItemContentRating;
  [(SSItemContentRating *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[1] = [(NSMutableDictionary *)self->_dictionary mutableCopyWithZone:zone];
  return v5;
}

- (BOOL)isRestricted
{
  ratingSystem = [(SSItemContentRating *)self ratingSystem];
  if ([(SSItemContentRating *)self _isRatingSystemForApps:ratingSystem])
  {
    v4 = 0;
  }

  else if ([(SSItemContentRating *)self _isRatingSystemForMovies:ratingSystem])
  {
    v4 = 1;
  }

  else
  {
    if (![(SSItemContentRating *)self _isRatingSystemForTV:ratingSystem])
    {
      goto LABEL_9;
    }

    v4 = 2;
  }

  v5 = SSRestrictionsCopyRankForMediaType(v4);
  if (v5)
  {
    v6 = v5;
    rank = [(SSItemContentRating *)self rank];
    v8 = rank > [v6 integerValue];

    return v8;
  }

LABEL_9:
  if (![(SSItemContentRating *)self isExplicitContent])
  {
    return 0;
  }

  return SSRestrictionsShouldRestrictExplicitContent();
}

- (int64_t)rank
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"rank"];
  if (objc_opt_respondsToSelector())
  {
    return [v2 intValue];
  }

  else
  {
    return 0;
  }
}

- (NSString)ratingDescription
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"description"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSString)ratingLabel
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"label"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (int64_t)ratingSystem
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"system"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = objc_opt_class();

  return [v3 ratingSystemFromString:v2];
}

- (void)setRank:(int64_t)rank
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:rank];

  [(SSItemContentRating *)self _setValue:v4 forProperty:@"rank"];
}

- (void)setRatingSystem:(int64_t)system
{
  v4 = [objc_opt_class() stringForRatingSystem:system];

  [(SSItemContentRating *)self _setValue:v4 forProperty:@"system"];
}

- (void)setShouldHideWhenRestricted:(BOOL)restricted
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:restricted];

  [(SSItemContentRating *)self _setValue:v4 forProperty:@"hide-item-if-restricted"];
}

- (BOOL)shouldHideWhenRestricted
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"hide-item-if-restricted"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (id)valueForProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:property];

  return v3;
}

+ (int64_t)ratingSystemFromString:(id)string
{
  v4 = &qword_1E84AFE78;
  v5 = 96;
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

+ (id)stringForRatingSystem:(int64_t)system
{
  v3 = &qword_1E84AFE78;
  v4 = 96;
  while (*v3 != system)
  {
    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

- (NSDictionary)contentRatingDictionary
{
  v2 = [(NSMutableDictionary *)self->_dictionary copy];

  return v2;
}

- (SSItemArtworkImage)ratingSystemLogo
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"logo-artwork-url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[SSItemArtworkImage alloc] initWithArtworkDictionary:v2];
    if ([(SSItemArtworkImage *)v3 URL])
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_dictionary);
  return v3;
}

- (SSItemContentRating)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSItemContentRating;
    v5 = [(SSItemContentRating *)&v7 init];
    if (v5)
    {
      objc_opt_class();
      v5->_dictionary = SSXPCDictionaryCopyCFObjectWithClass(encoding, "0");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (void)_setValueCopy:(id)copy forProperty:(id)property
{
  v6 = [copy copy];
  [(SSItemContentRating *)self _setValue:v6 forProperty:property];
}

- (void)_setValue:(id)value forProperty:(id)property
{
  dictionary = self->_dictionary;
  if (value)
  {
    [(NSMutableDictionary *)dictionary setObject:value forKey:property];
  }

  else
  {
    [(NSMutableDictionary *)dictionary removeObjectForKey:property];
  }
}

@end