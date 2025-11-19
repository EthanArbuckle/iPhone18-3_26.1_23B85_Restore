@interface PRPosterHostedContentSettings
+ (PRPosterHostedContentSettings)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PRPosterHostedContentSettings)initWithBSXPCCoder:(id)a3;
- (PRPosterHostedContentSettings)initWithImages:(id)a3;
- (PRPosterHostedContentSettings)initWithImages:(id)a3 otherSettings:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRPosterHostedContentSettings

- (PRPosterHostedContentSettings)initWithImages:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(PRPosterHostedContentSettings *)self initWithImages:v5 otherSettings:v6];

  return v7;
}

- (PRPosterHostedContentSettings)initWithImages:(id)a3 otherSettings:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PRPosterHostedContentSettings;
  v8 = [(PRPosterHostedContentSettings *)&v14 init];
  if (v8)
  {
    v16[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v15 = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v11 = [v6 pf_sanitizeWithAllowedKeyClasses:v9 allowedValueClasses:v10];
    images = v8->_images;
    v8->_images = v11;

    objc_storeStrong(&v8->_otherSettings, a4);
  }

  return v8;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  images = self->_images;
  v5 = a3;
  [v5 encodeObject:images forKey:@"_images"];
  [v5 encodeObject:self->_otherSettings forKey:@"_otherSettings"];
}

- (PRPosterHostedContentSettings)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeDictionaryOfClass:objc_opt_class() forKey:@"_images"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_otherSettings"];

  v7 = [(PRPosterHostedContentSettings *)self initWithImages:v5 otherSettings:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
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
    v10 = [v8 images];
    LODWORD(images) = [(NSDictionary *)images isEqualToDictionary:v10];

    if (images)
    {
      v11 = [v8 otherSettings];
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_images];
  v5 = [v3 appendObject:self->_otherSettings];
  v6 = [v3 hash];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v4 = [(NSDictionary *)v3->_images copy];
  v5 = [(BSMutableSettings *)v3->_otherSettings copy];
  v6 = [(PRPosterHostedContentSettings *)v3 initWithImages:v4 otherSettings:v5];

  return v6;
}

+ (PRPosterHostedContentSettings)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() != a1)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"Subclassing %@ is not allowed.", v8}];
  }

  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___PRPosterHostedContentSettings;
  return objc_msgSendSuper2(&v10, sel_allocWithZone_, a3);
}

@end