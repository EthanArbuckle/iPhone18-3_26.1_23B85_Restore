@interface SSItemContentRating
+ (id)stringForRatingSystem:(int64_t)a3;
+ (int64_t)ratingSystemFromString:(id)a3;
- (BOOL)isRestricted;
- (BOOL)shouldHideWhenRestricted;
- (NSDictionary)contentRatingDictionary;
- (NSString)ratingDescription;
- (NSString)ratingLabel;
- (SSItemArtworkImage)ratingSystemLogo;
- (SSItemContentRating)init;
- (SSItemContentRating)initWithDictionary:(id)a3;
- (SSItemContentRating)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)valueForProperty:(id)a3;
- (int64_t)rank;
- (int64_t)ratingSystem;
- (void)_setValue:(id)a3 forProperty:(id)a4;
- (void)_setValueCopy:(id)a3 forProperty:(id)a4;
- (void)dealloc;
- (void)setRank:(int64_t)a3;
- (void)setRatingSystem:(int64_t)a3;
- (void)setShouldHideWhenRestricted:(BOOL)a3;
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

- (SSItemContentRating)initWithDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSItemContentRating;
  v4 = [(SSItemContentRating *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [a3 mutableCopy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSItemContentRating;
  [(SSItemContentRating *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[1] = [(NSMutableDictionary *)self->_dictionary mutableCopyWithZone:a3];
  return v5;
}

- (BOOL)isRestricted
{
  v3 = [(SSItemContentRating *)self ratingSystem];
  if ([(SSItemContentRating *)self _isRatingSystemForApps:v3])
  {
    v4 = 0;
  }

  else if ([(SSItemContentRating *)self _isRatingSystemForMovies:v3])
  {
    v4 = 1;
  }

  else
  {
    if (![(SSItemContentRating *)self _isRatingSystemForTV:v3])
    {
      goto LABEL_9;
    }

    v4 = 2;
  }

  v5 = SSRestrictionsCopyRankForMediaType(v4);
  if (v5)
  {
    v6 = v5;
    v7 = [(SSItemContentRating *)self rank];
    v8 = v7 > [v6 integerValue];

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

- (void)setRank:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  [(SSItemContentRating *)self _setValue:v4 forProperty:@"rank"];
}

- (void)setRatingSystem:(int64_t)a3
{
  v4 = [objc_opt_class() stringForRatingSystem:a3];

  [(SSItemContentRating *)self _setValue:v4 forProperty:@"system"];
}

- (void)setShouldHideWhenRestricted:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];

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

- (id)valueForProperty:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:a3];

  return v3;
}

+ (int64_t)ratingSystemFromString:(id)a3
{
  v4 = &qword_1E84AFE78;
  v5 = 96;
  while ([*(v4 - 1) caseInsensitiveCompare:a3])
  {
    v4 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return *v4;
}

+ (id)stringForRatingSystem:(int64_t)a3
{
  v3 = &qword_1E84AFE78;
  v4 = 96;
  while (*v3 != a3)
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

- (SSItemContentRating)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSItemContentRating;
    v5 = [(SSItemContentRating *)&v7 init];
    if (v5)
    {
      objc_opt_class();
      v5->_dictionary = SSXPCDictionaryCopyCFObjectWithClass(a3, "0");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (void)_setValueCopy:(id)a3 forProperty:(id)a4
{
  v6 = [a3 copy];
  [(SSItemContentRating *)self _setValue:v6 forProperty:a4];
}

- (void)_setValue:(id)a3 forProperty:(id)a4
{
  dictionary = self->_dictionary;
  if (a3)
  {
    [(NSMutableDictionary *)dictionary setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)dictionary removeObjectForKey:a4];
  }
}

@end