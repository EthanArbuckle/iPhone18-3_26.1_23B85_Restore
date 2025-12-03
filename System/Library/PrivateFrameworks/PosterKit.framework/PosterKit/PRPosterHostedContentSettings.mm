@interface PRPosterHostedContentSettings
+ (PRPosterHostedContentSettings)allocWithZone:(_NSZone *)zone;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRPosterHostedContentSettings)initWithBSXPCCoder:(id)coder;
- (PRPosterHostedContentSettings)initWithImages:(id)images;
- (PRPosterHostedContentSettings)initWithImages:(id)images otherSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRPosterHostedContentSettings

- (PRPosterHostedContentSettings)initWithImages:(id)images
{
  v4 = MEMORY[0x1E698E700];
  imagesCopy = images;
  v6 = objc_alloc_init(v4);
  v7 = [(PRPosterHostedContentSettings *)self initWithImages:imagesCopy otherSettings:v6];

  return v7;
}

- (PRPosterHostedContentSettings)initWithImages:(id)images otherSettings:(id)settings
{
  v16[1] = *MEMORY[0x1E69E9840];
  imagesCopy = images;
  settingsCopy = settings;
  v14.receiver = self;
  v14.super_class = PRPosterHostedContentSettings;
  v8 = [(PRPosterHostedContentSettings *)&v14 init];
  if (v8)
  {
    v16[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v15 = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v11 = [imagesCopy pf_sanitizeWithAllowedKeyClasses:v9 allowedValueClasses:v10];
    images = v8->_images;
    v8->_images = v11;

    objc_storeStrong(&v8->_otherSettings, settings);
  }

  return v8;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  images = self->_images;
  coderCopy = coder;
  [coderCopy encodeObject:images forKey:@"_images"];
  [coderCopy encodeObject:self->_otherSettings forKey:@"_otherSettings"];
}

- (PRPosterHostedContentSettings)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeDictionaryOfClass:objc_opt_class() forKey:@"_images"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_otherSettings"];

  v7 = [(PRPosterHostedContentSettings *)self initWithImages:v5 otherSettings:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    images = self->_images;
    images = [v8 images];
    LODWORD(images) = [(NSDictionary *)images isEqualToDictionary:images];

    if (images)
    {
      otherSettings = [v8 otherSettings];
      v12 = BSEqualObjects();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = self == 0;
  }

  return v12;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_images];
  v5 = [builder appendObject:self->_otherSettings];
  v6 = [builder hash];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p, images: %@, otherSettings: %@>", v5, self, self->_images, self->_otherSettings];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v4 = [(NSDictionary *)selfCopy->_images copy];
  v5 = [(BSMutableSettings *)selfCopy->_otherSettings copy];
  v6 = [(PRPosterHostedContentSettings *)selfCopy initWithImages:v4 otherSettings:v5];

  return v6;
}

+ (PRPosterHostedContentSettings)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() != self)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"Subclassing %@ is not allowed.", v8}];
  }

  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___PRPosterHostedContentSettings;
  return objc_msgSendSuper2(&v10, sel_allocWithZone_, zone);
}

@end