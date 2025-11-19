@interface SBHIconImageIdentity
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIconImageIdentityExcludingImageGeneration:(id)a3;
- (NSString)description;
- (SBHIconImageIdentity)initWithCoder:(id)a3;
- (SBHIconImageIdentity)initWithIcon:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 imageGeneration:(unint64_t)a5 imageAppearance:(id)a6;
- (SBHIconImageIdentity)initWithIcon:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 imageGeneration:(unint64_t)a5 imageAppearance:(id)a6 masked:(BOOL)a7;
- (SBHIconImageIdentity)initWithIconIdentifier:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 imageGeneration:(unint64_t)a5 imageAppearance:(id)a6 masked:(BOOL)a7;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBHIconImageIdentity

- (SBHIconImageIdentity)initWithIcon:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 imageGeneration:(unint64_t)a5 imageAppearance:(id)a6
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  v17 = a5;
  v18 = [a3 iconImageCacheIdentifier];
  v19 = [(SBHIconImageIdentity *)self initWithIconIdentifier:v18 iconImageInfo:a4 imageGeneration:v17 imageAppearance:1 masked:v14, v13, v12, v11];

  return v19;
}

- (SBHIconImageIdentity)initWithIcon:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 imageGeneration:(unint64_t)a5 imageAppearance:(id)a6 masked:(BOOL)a7
{
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  v19 = a5;
  v20 = [a3 iconImageCacheIdentifier];
  v21 = [(SBHIconImageIdentity *)self initWithIconIdentifier:v20 iconImageInfo:a4 imageGeneration:v19 imageAppearance:a6 masked:v16, v15, v14, v13];

  return v21;
}

- (SBHIconImageIdentity)initWithIconIdentifier:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 imageGeneration:(unint64_t)a5 imageAppearance:(id)a6 masked:(BOOL)a7
{
  v11 = a6;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  v19 = a3;
  v20 = a5;
  v27.receiver = self;
  v27.super_class = SBHIconImageIdentity;
  v21 = [(SBHIconImageIdentity *)&v27 init];
  if (v21)
  {
    v22 = [v19 copy];
    iconIdentifier = v21->_iconIdentifier;
    v21->_iconIdentifier = v22;

    v21->_iconImageInfo.size.width = v17;
    v21->_iconImageInfo.size.height = v16;
    v21->_iconImageInfo.scale = v15;
    v21->_iconImageInfo.continuousCornerRadius = v14;
    v21->_imageGeneration = a4;
    v24 = [v20 copy];
    imageAppearance = v21->_imageAppearance;
    v21->_imageAppearance = v24;

    v21->_masked = v11;
  }

  return v21;
}

- (BOOL)isEqualToIconImageIdentityExcludingImageGeneration:(id)a3
{
  v4 = a3;
  v5 = BSEqualObjects() && SBIconImageInfoEqualToIconImageInfo(self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius, v4[5], v4[6], v4[7], v4[8]) && BSEqualObjects() && self->_masked == *(v4 + 8);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && self->_imageGeneration == v4->_imageGeneration && [(SBHIconImageIdentity *)self isEqualToIconImageIdentityExcludingImageGeneration:v4];
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_iconIdentifier hash];
  v4 = SBIconImageInfoHash(self->_iconImageInfo.size.width, self->_iconImageInfo.size.height) + v3;
  imageGeneration = self->_imageGeneration;
  return v4 + imageGeneration + [(SBHIconImageAppearance *)self->_imageAppearance hash]+ self->_masked;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBHIconImageIdentity *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  iconIdentifier = self->_iconIdentifier;
  v5 = a3;
  [v5 encodeObject:iconIdentifier forKey:@"iconIdentifier"];
  [v5 encodeDouble:@"iconImageInfoWidth" forKey:self->_iconImageInfo.size.width];
  [v5 encodeDouble:@"iconImageInfoHeight" forKey:self->_iconImageInfo.size.height];
  [v5 encodeDouble:@"iconImageInfoScale" forKey:self->_iconImageInfo.scale];
  [v5 encodeDouble:@"iconImageInfoContinuousCornerRadius" forKey:self->_iconImageInfo.continuousCornerRadius];
  [v5 encodeInteger:self->_imageGeneration forKey:@"imageGeneration"];
  [v5 encodeObject:self->_imageAppearance forKey:@"imageAppearance"];
  [v5 encodeBool:self->_masked forKey:@"masked"];
}

- (SBHIconImageIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"iconIdentifier"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"imageAppearance"];

  [v4 decodeDoubleForKey:@"iconImageInfoWidth"];
  v10 = v9;
  [v4 decodeDoubleForKey:@"iconImageInfoHeight"];
  v12 = v11;
  [v4 decodeDoubleForKey:@"iconImageInfoScale"];
  v14 = v13;
  [v4 decodeDoubleForKey:@"iconImageInfoContinuousCornerRadius"];
  v16 = v15;
  v17 = [v4 decodeIntegerForKey:@"imageGeneration"];
  v18 = [v4 decodeBoolForKey:@"masked"];

  v19 = [(SBHIconImageIdentity *)self initWithIconIdentifier:v6 iconImageInfo:v17 imageGeneration:v8 imageAppearance:v18 masked:v10, v12, v14, v16];
  return v19;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v14 = a3;
  v4 = [(SBHIconImageIdentity *)self iconIdentifier];
  [v14 appendString:v4 withName:@"iconIdentifier" skipIfEmpty:0];

  [(SBHIconImageIdentity *)self iconImageInfo];
  v9 = SBHStringForIconImageInfo(v5, v6, v7, v8);
  [v14 appendString:v9 withName:@"iconImageInfo" skipIfEmpty:0];

  v10 = [v14 appendUnsignedInteger:-[SBHIconImageIdentity imageGeneration](self withName:{"imageGeneration"), @"imageGeneration"}];
  v11 = [(SBHIconImageIdentity *)self imageAppearance];
  v12 = [v14 appendObject:v11 withName:@"imageAppearance"];

  v13 = [v14 appendBool:-[SBHIconImageIdentity isMasked](self withName:{"isMasked"), @"isMasked"}];
}

@end