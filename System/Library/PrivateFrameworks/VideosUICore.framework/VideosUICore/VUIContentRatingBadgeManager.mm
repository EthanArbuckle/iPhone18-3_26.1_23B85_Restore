@interface VUIContentRatingBadgeManager
+ (id)_badgeDescriptorLookupKeyWithRatingLabel:(id)label inRatingSystem:(int64_t)system;
+ (id)_cleanedRatingLabel:(id)label;
+ (id)_imageLookupKeyWithRatingLabel:(id)label inRatingSystem:(int64_t)system;
+ (id)sharedInstance;
+ (void)_addImageDescriptorToDictionary:(id)dictionary ratingSystem:(int64_t)system ratingLabel:(id)label resourceName:(id)name isTemplatedImage:(BOOL)image;
- (BOOL)isTemplatedBadgeForContentRating:(id)rating;
- (NSDictionary)badgeDescriptors;
- (id)_badgeDescriptorForContentRating:(id)rating;
- (id)_badgeDescriptorForRatingLabel:(id)label inRatingSystem:(int64_t)system;
- (id)badgeForContentRating:(id)rating drawUnknownRatingBadge:(BOOL)badge;
- (id)badgeForRatingLabel:(id)label inRatingSystem:(int64_t)system drawUnknownRatingBadge:(BOOL)badge;
- (void)setCachesImages:(BOOL)images;
@end

@implementation VUIContentRatingBadgeManager

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[VUIContentRatingBadgeManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

uint64_t __46__VUIContentRatingBadgeManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_0 = objc_alloc_init(VUIContentRatingBadgeManager);

  return MEMORY[0x2821F96F8]();
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
      [v5 setName:@"VUIContentRatingBadgeManagerCache"];
    }

    else
    {
      v5 = 0;
    }

    [(VUIContentRatingBadgeManager *)self setImageCache:v5];
  }
}

- (id)badgeForContentRating:(id)rating drawUnknownRatingBadge:(BOOL)badge
{
  badgeCopy = badge;
  ratingCopy = rating;
  ratingLabel = [ratingCopy ratingLabel];
  ratingSystem = [ratingCopy ratingSystem];

  v9 = [(VUIContentRatingBadgeManager *)self badgeForRatingLabel:ratingLabel inRatingSystem:ratingSystem drawUnknownRatingBadge:badgeCopy];

  return v9;
}

- (id)badgeForRatingLabel:(id)label inRatingSystem:(int64_t)system drawUnknownRatingBadge:(BOOL)badge
{
  badgeCopy = badge;
  labelCopy = label;
  imageCache = [(VUIContentRatingBadgeManager *)self imageCache];
  v10 = [objc_opt_class() _imageLookupKeyWithRatingLabel:labelCopy inRatingSystem:system];
  v11 = [imageCache objectForKey:v10];
  if (v11)
  {
    goto LABEL_13;
  }

  v12 = [(VUIContentRatingBadgeManager *)self _badgeDescriptorForRatingLabel:labelCopy inRatingSystem:system];
  v13 = v12;
  if (!v12)
  {
    v11 = 0;
    goto LABEL_8;
  }

  resourceName = [v12 resourceName];
  if (resourceName)
  {
    v15 = MEMORY[0x277D755B8];
    v16 = +[VUICoreUtilities VideosUICoreBundle];
    v11 = [v15 vuiImageNamed:resourceName inBundle:v16];
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
  v3 = [(VUIContentRatingBadgeManager *)self _badgeDescriptorForContentRating:rating];
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
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:153 ratingLabel:@"tvy" resourceName:@"tv-y" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:153 ratingLabel:@"tvy7" resourceName:@"tv-y7" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:153 ratingLabel:@"tvy7fv" resourceName:@"tv-y7fv" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:153 ratingLabel:@"tvg" resourceName:@"tv-g" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:153 ratingLabel:@"tvpg" resourceName:@"tv-pg" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:153 ratingLabel:@"tv14" resourceName:@"tv-14" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:153 ratingLabel:@"tvma" resourceName:@"tv-ma" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:153 ratingLabel:@"unrated" resourceName:@"unrated" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:153 ratingLabel:@"ur" resourceName:@"unrated" isTemplatedImage:1];
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
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:149 ratingLabel:@"g" resourceName:@"NZ-g" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:149 ratingLabel:@"pg" resourceName:@"NZ-pg" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:149 ratingLabel:@"m" resourceName:@"NZ-m" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:149 ratingLabel:@"r13" resourceName:@"NZ-r13" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:149 ratingLabel:@"r15" resourceName:@"NZ-r15" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:149 ratingLabel:@"r16" resourceName:@"NZ-r16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:149 ratingLabel:@"r18" resourceName:@"NZ-r18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:149 ratingLabel:@"rp13" resourceName:@"NZ-rp13" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:149 ratingLabel:@"rp16" resourceName:@"NZ-rp16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:149 ratingLabel:@"r" resourceName:@"NZ-r" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"l" resourceName:@"bars-l" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"10" resourceName:@"bars-10" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"12" resourceName:@"bars-12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"14" resourceName:@"bars-14" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"16" resourceName:@"bars-16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"18" resourceName:@"bars-18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"al" resourceName:@"bars-al" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"a10" resourceName:@"bars-a10" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"a12" resourceName:@"bars-a12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"a14" resourceName:@"bars-a14" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"a16" resourceName:@"bars-a16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:21 ratingLabel:@"a18" resourceName:@"bars-a18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"l" resourceName:@"bars-l" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"10" resourceName:@"bars-10" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"12" resourceName:@"bars-12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"14" resourceName:@"bars-14" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"16" resourceName:@"bars-16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"18" resourceName:@"bars-18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"al" resourceName:@"bars-al" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"a10" resourceName:@"bars-a10" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"a12" resourceName:@"bars-a12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"a14" resourceName:@"bars-a14" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"a16" resourceName:@"bars-a16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:143 ratingLabel:@"a18" resourceName:@"bars-a18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:129 ratingLabel:@"genel i̇zleyici" resourceName:@"tr-ga" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:129 ratingLabel:@"6a" resourceName:@"tr-6a" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:129 ratingLabel:@"6+" resourceName:@"tr-6plus" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:129 ratingLabel:@"10a" resourceName:@"tr-10a" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:129 ratingLabel:@"10+" resourceName:@"tr-10plus" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:129 ratingLabel:@"13a" resourceName:@"tr-13a" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:129 ratingLabel:@"13+" resourceName:@"tr-13plus" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:129 ratingLabel:@"16+" resourceName:@"tr-16plus" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:129 ratingLabel:@"18+" resourceName:@"tr-18plus" isTemplatedImage:1];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"u" resourceName:@"bbfc-u" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"pg" resourceName:@"bbfc-pg" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"12" resourceName:@"bbfc-12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"12a" resourceName:@"bbfc-12a" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"15" resourceName:@"bbfc-15" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"18" resourceName:@"bbfc-18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:134 ratingLabel:@"r18" resourceName:@"bbfc-r18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"u" resourceName:@"bbfc-u" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"pg" resourceName:@"bbfc-pg" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"12" resourceName:@"bbfc-12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"12a" resourceName:@"bbfc-12a" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"15" resourceName:@"bbfc-15" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"18" resourceName:@"bbfc-18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:152 ratingLabel:@"r18" resourceName:@"bbfc-r18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:116 ratingLabel:@"12세 이상 관람가" resourceName:@"kr_movies-12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:116 ratingLabel:@"15세 이상 관람가" resourceName:@"kr_movies-15" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:116 ratingLabel:@"청소년 관람불가" resourceName:@"kr_movies-19" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:116 ratingLabel:@"전체관람가" resourceName:@"kr_movies-all" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:151 ratingLabel:@"7" resourceName:@"kr_tv-7" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:151 ratingLabel:@"12" resourceName:@"kr_tv-12" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:151 ratingLabel:@"15" resourceName:@"kr_tv-15" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:151 ratingLabel:@"19" resourceName:@"kr_tv-19" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:151 ratingLabel:@"all" resourceName:@"kr_tv-all" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:65 ratingLabel:@"t" resourceName:@"it-t" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:65 ratingLabel:@"6+" resourceName:@"it-6plus" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:65 ratingLabel:@"14+" resourceName:@"it-14plus" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:65 ratingLabel:@"18+" resourceName:@"it-18plus" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:147 ratingLabel:@"t" resourceName:@"it-t" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:147 ratingLabel:@"6+" resourceName:@"it-6plus" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:147 ratingLabel:@"14+" resourceName:@"it-14plus" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:147 ratingLabel:@"18+" resourceName:@"it-18plus" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:115 ratingLabel:@"pg" resourceName:@"za_movies-pg" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:115 ratingLabel:@"10" resourceName:@"za_movies-10" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:115 ratingLabel:@"10-12pg" resourceName:@"za_movies-1012pg" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:115 ratingLabel:@"13" resourceName:@"za_movies-13" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:115 ratingLabel:@"16" resourceName:@"za_movies-16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:115 ratingLabel:@"18" resourceName:@"za_movies-18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:115 ratingLabel:@"7-9pg" resourceName:@"za_movies-79pg" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:115 ratingLabel:@"a" resourceName:@"za_movies-a" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"pg" resourceName:@"za_tv-pg" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"10" resourceName:@"za_tv-10" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"10-12pg" resourceName:@"za_tv-1012pg" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"13" resourceName:@"za_tv-13" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"16" resourceName:@"za_tv-16" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"18" resourceName:@"za_movies-18" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"7-9pg" resourceName:@"za_tv-79pg" isTemplatedImage:0];
    [objc_opt_class() _addImageDescriptorToDictionary:v4 ratingSystem:150 ratingLabel:@"a" resourceName:@"za_tv-a" isTemplatedImage:0];
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

  v7 = [(VUIContentRatingBadgeManager *)self _badgeDescriptorForRatingLabel:ratingLabel inRatingSystem:ratingSystem];

  return v7;
}

- (id)_badgeDescriptorForRatingLabel:(id)label inRatingSystem:(int64_t)system
{
  labelCopy = label;
  v7 = [objc_opt_class() _badgeDescriptorLookupKeyWithRatingLabel:labelCopy inRatingSystem:system];

  badgeDescriptors = [(VUIContentRatingBadgeManager *)self badgeDescriptors];
  v9 = [badgeDescriptors objectForKey:v7];

  return v9;
}

+ (id)_badgeDescriptorLookupKeyWithRatingLabel:(id)label inRatingSystem:(int64_t)system
{
  if (system)
  {
    labelCopy = label;
    v7 = [VUIContentRatingSystemUtilities stringForRatingSystem:system];
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
  v3 = [label stringByReplacingOccurrencesOfString:@" " withString:&stru_2880D3950];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:&stru_2880D3950];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:&stru_2880D3950];

  lowercaseString = [v5 lowercaseString];

  return lowercaseString;
}

+ (void)_addImageDescriptorToDictionary:(id)dictionary ratingSystem:(int64_t)system ratingLabel:(id)label resourceName:(id)name isTemplatedImage:(BOOL)image
{
  imageCopy = image;
  dictionaryCopy = dictionary;
  nameCopy = name;
  labelCopy = label;
  v13 = [[VUIContentRatingBadgeDescriptor alloc] initWithResourceName:nameCopy isTemplatedImage:imageCopy];

  v14 = [objc_opt_class() _badgeDescriptorLookupKeyWithRatingLabel:labelCopy inRatingSystem:system];

  if (v14)
  {
    [dictionaryCopy setObject:v13 forKey:v14];
  }
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