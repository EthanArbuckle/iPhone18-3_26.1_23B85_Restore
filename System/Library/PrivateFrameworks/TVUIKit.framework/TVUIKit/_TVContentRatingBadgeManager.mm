@interface _TVContentRatingBadgeManager
+ (id)_badgeDescriptorLookupKeyWithRatingLabel:(id)label inRatingSystem:(int64_t)system;
+ (id)_cleanedRatingLabel:(id)label;
+ (id)_imageLookupKeyWithRatingLabel:(id)label inRatingSystem:(int64_t)system;
+ (id)sharedInstance;
- (BOOL)isTemplatedBadgeForContentRating:(id)rating;
- (NSDictionary)badgeDescriptors;
- (id)_badgeDescriptorForContentRating:(id)rating;
- (id)_badgeDescriptorForRatingLabel:(id)label inRatingSystem:(int64_t)system;
- (id)badgeForRatingLabel:(id)label inRatingSystem:(int64_t)system drawUnknownRatingBadge:(BOOL)badge;
- (void)setCachesImages:(BOOL)images;
@end

@implementation _TVContentRatingBadgeManager

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[_TVContentRatingBadgeManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

- (void)setCachesImages:(BOOL)images
{
  if (self->_cachesImages != images)
  {
    self->_cachesImages = images;
    if (images)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
      [v5 setCountLimit:20];
      [v5 setName:@"_TVContentRatingBadgeManagerCache"];
    }

    else
    {
      v5 = 0;
    }

    [(_TVContentRatingBadgeManager *)self setImageCache:v5];
  }
}

- (id)badgeForRatingLabel:(id)label inRatingSystem:(int64_t)system drawUnknownRatingBadge:(BOOL)badge
{
  badgeCopy = badge;
  labelCopy = label;
  imageCache = [(_TVContentRatingBadgeManager *)self imageCache];
  v10 = [objc_opt_class() _imageLookupKeyWithRatingLabel:labelCopy inRatingSystem:system];
  v11 = [imageCache objectForKey:v10];
  if (v11)
  {
    goto LABEL_13;
  }

  v12 = [(_TVContentRatingBadgeManager *)self _badgeDescriptorForRatingLabel:labelCopy inRatingSystem:system];
  v13 = v12;
  if (!v12)
  {
    v11 = 0;
    goto LABEL_8;
  }

  [v12 isTemplatedImage];
  resourceName = [v13 resourceName];
  if (resourceName)
  {
    v15 = MEMORY[0x277D755B8];
    v16 = +[TVUIKitUtilities TVUIKitBundle];
    v11 = [v15 imageNamed:resourceName inBundle:v16];
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
LABEL_8:
    if (badgeCopy)
    {
      v11 = [objc_opt_class() _imageForUnknownRatingLabel:labelCopy];
    }
  }

  if (v11)
  {
    [imageCache setObject:v11 forKey:v10];
  }

LABEL_13:

  return v11;
}

- (BOOL)isTemplatedBadgeForContentRating:(id)rating
{
  v3 = [(_TVContentRatingBadgeManager *)self _badgeDescriptorForContentRating:rating];
  v4 = v3;
  if (v3)
  {
    isTemplatedImage = [v3 isTemplatedImage];
  }

  else
  {
    isTemplatedImage = 1;
  }

  return isTemplatedImage;
}

- (NSDictionary)badgeDescriptors
{
  badgeDescriptors = self->_badgeDescriptors;
  if (!badgeDescriptors)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:135 ratingLabel:@"g" resourceName:@"mpaa-g" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:135 ratingLabel:@"pg" resourceName:@"mpaa-pg" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:135 ratingLabel:@"pg13" resourceName:@"mpaa-pg13" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:135 ratingLabel:@"r" resourceName:@"mpaa-r" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:135 ratingLabel:@"nc17" resourceName:@"mpaa-nc17" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:135 ratingLabel:@"nr" resourceName:@"nr" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:135 ratingLabel:@"unrated" resourceName:@"unrated" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:135 ratingLabel:@"ur" resourceName:@"unrated" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"tvy" resourceName:@"tv-y" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"tvy7" resourceName:@"tv-y7" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"tvy7fv" resourceName:@"tv-y7fv" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"tvg" resourceName:@"tv-g" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"tvpg" resourceName:@"tv-pg" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"tv14" resourceName:@"tv-14" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"tvma" resourceName:@"tv-ma" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"unrated" resourceName:@"unrated" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"ur" resourceName:@"unrated" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:92 ratingLabel:@"g" resourceName:@"NZ-g" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:92 ratingLabel:@"pg" resourceName:@"NZ-pg" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:92 ratingLabel:@"m" resourceName:@"NZ-m" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:92 ratingLabel:@"r13" resourceName:@"NZ-r13" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:92 ratingLabel:@"r15" resourceName:@"NZ-r15" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:92 ratingLabel:@"r16" resourceName:@"NZ-r16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:92 ratingLabel:@"r18" resourceName:@"NZ-r18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:92 ratingLabel:@"rp13" resourceName:@"NZ-rp13" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:92 ratingLabel:@"rp16" resourceName:@"NZ-rp16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:92 ratingLabel:@"r" resourceName:@"NZ-r" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:148 ratingLabel:@"g" resourceName:@"NZ-g" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:148 ratingLabel:@"pg" resourceName:@"NZ-pg" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:148 ratingLabel:@"m" resourceName:@"NZ-m" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:148 ratingLabel:@"r13" resourceName:@"NZ-r13" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:148 ratingLabel:@"r15" resourceName:@"NZ-r15" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:148 ratingLabel:@"r16" resourceName:@"NZ-r16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:148 ratingLabel:@"r18" resourceName:@"NZ-r18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:148 ratingLabel:@"rp13" resourceName:@"NZ-rp13" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:148 ratingLabel:@"rp16" resourceName:@"NZ-rp16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:148 ratingLabel:@"r" resourceName:@"NZ-r" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"l" resourceName:@"bars-l" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"10" resourceName:@"bars-10" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"12" resourceName:@"bars-12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"14" resourceName:@"bars-14" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"16" resourceName:@"bars-16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"18" resourceName:@"bars-18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"l" resourceName:@"bars-l" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"10" resourceName:@"bars-10" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"12" resourceName:@"bars-12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"14" resourceName:@"bars-14" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"16" resourceName:@"bars-16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"18" resourceName:@"bars-18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"u" resourceName:@"bbfc-u" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"pg" resourceName:@"bbfc-pg" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"12" resourceName:@"bbfc-12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"12a" resourceName:@"bbfc-12a" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"15" resourceName:@"bbfc-15" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"18" resourceName:@"bbfc-18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"r18" resourceName:@"bbfc-r18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:116 ratingLabel:@"12세 이상 관람가" resourceName:@"kr_movies-12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:116 ratingLabel:@"15세 이상 관람가" resourceName:@"kr_movies-15" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:116 ratingLabel:@"청소년 관람불가" resourceName:@"kr_movies-18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:116 ratingLabel:@"전체관람가" resourceName:@"kr_movies-all" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"7" resourceName:@"kr_tv-7" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"12" resourceName:@"kr_tv-12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"15" resourceName:@"kr_tv-15" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"19" resourceName:@"kr_tv-19" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"all" resourceName:@"kr_tv-all" isTemplatedImage:0];
    v5 = [v4 copy];
    v6 = self->_badgeDescriptors;
    self->_badgeDescriptors = v5;

    badgeDescriptors = self->_badgeDescriptors;
  }

  return badgeDescriptors;
}

- (id)_badgeDescriptorForContentRating:(id)rating
{
  ratingCopy = rating;
  ratingLabel = [ratingCopy ratingLabel];
  ratingSystem = [ratingCopy ratingSystem];

  v7 = [(_TVContentRatingBadgeManager *)self _badgeDescriptorForRatingLabel:ratingLabel inRatingSystem:ratingSystem];

  return v7;
}

- (id)_badgeDescriptorForRatingLabel:(id)label inRatingSystem:(int64_t)system
{
  labelCopy = label;
  v7 = [objc_opt_class() _badgeDescriptorLookupKeyWithRatingLabel:labelCopy inRatingSystem:system];

  badgeDescriptors = [(_TVContentRatingBadgeManager *)self badgeDescriptors];
  v9 = [badgeDescriptors objectForKey:v7];

  return v9;
}

+ (id)_badgeDescriptorLookupKeyWithRatingLabel:(id)label inRatingSystem:(int64_t)system
{
  if (system)
  {
    labelCopy = label;
    v7 = [_TVContentRatingSystemUtilities stringForRatingSystem:system];
    v8 = [self _cleanedRatingLabel:labelCopy];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v7, v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_cleanedRatingLabel:(id)label
{
  v3 = [label stringByReplacingOccurrencesOfString:@" " withString:&stru_287E85D68];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:&stru_287E85D68];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:&stru_287E85D68];

  lowercaseString = [v5 lowercaseString];

  return lowercaseString;
}

+ (id)_imageLookupKeyWithRatingLabel:(id)label inRatingSystem:(int64_t)system
{
  labelCopy = label;
  v7 = labelCopy;
  if (system)
  {
    v8 = [self _badgeDescriptorLookupKeyWithRatingLabel:labelCopy inRatingSystem:system];
  }

  else
  {
    v8 = labelCopy;
  }

  v9 = v8;

  return v9;
}

@end