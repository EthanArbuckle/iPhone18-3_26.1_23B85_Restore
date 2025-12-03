@interface SBHIconImageIdentity
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIconImageIdentityExcludingImageGeneration:(id)generation;
- (NSString)description;
- (SBHIconImageIdentity)initWithCoder:(id)coder;
- (SBHIconImageIdentity)initWithIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info imageGeneration:(unint64_t)generation imageAppearance:(id)appearance;
- (SBHIconImageIdentity)initWithIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info imageGeneration:(unint64_t)generation imageAppearance:(id)appearance masked:(BOOL)masked;
- (SBHIconImageIdentity)initWithIconIdentifier:(id)identifier iconImageInfo:(SBIconImageInfo *)info imageGeneration:(unint64_t)generation imageAppearance:(id)appearance masked:(BOOL)masked;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBHIconImageIdentity

- (SBHIconImageIdentity)initWithIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info imageGeneration:(unint64_t)generation imageAppearance:(id)appearance
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  generationCopy = generation;
  iconImageCacheIdentifier = [icon iconImageCacheIdentifier];
  v19 = [(SBHIconImageIdentity *)self initWithIconIdentifier:iconImageCacheIdentifier iconImageInfo:info imageGeneration:generationCopy imageAppearance:1 masked:v14, v13, v12, v11];

  return v19;
}

- (SBHIconImageIdentity)initWithIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info imageGeneration:(unint64_t)generation imageAppearance:(id)appearance masked:(BOOL)masked
{
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  generationCopy = generation;
  iconImageCacheIdentifier = [icon iconImageCacheIdentifier];
  v21 = [(SBHIconImageIdentity *)self initWithIconIdentifier:iconImageCacheIdentifier iconImageInfo:info imageGeneration:generationCopy imageAppearance:appearance masked:v16, v15, v14, v13];

  return v21;
}

- (SBHIconImageIdentity)initWithIconIdentifier:(id)identifier iconImageInfo:(SBIconImageInfo *)info imageGeneration:(unint64_t)generation imageAppearance:(id)appearance masked:(BOOL)masked
{
  appearanceCopy = appearance;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  identifierCopy = identifier;
  generationCopy = generation;
  v27.receiver = self;
  v27.super_class = SBHIconImageIdentity;
  v21 = [(SBHIconImageIdentity *)&v27 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    iconIdentifier = v21->_iconIdentifier;
    v21->_iconIdentifier = v22;

    v21->_iconImageInfo.size.width = v17;
    v21->_iconImageInfo.size.height = v16;
    v21->_iconImageInfo.scale = v15;
    v21->_iconImageInfo.continuousCornerRadius = v14;
    v21->_imageGeneration = info;
    v24 = [generationCopy copy];
    imageAppearance = v21->_imageAppearance;
    v21->_imageAppearance = v24;

    v21->_masked = appearanceCopy;
  }

  return v21;
}

- (BOOL)isEqualToIconImageIdentityExcludingImageGeneration:(id)generation
{
  generationCopy = generation;
  v5 = BSEqualObjects() && SBIconImageInfoEqualToIconImageInfo(self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius, generationCopy[5], generationCopy[6], generationCopy[7], generationCopy[8]) && BSEqualObjects() && self->_masked == *(generationCopy + 8);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && self->_imageGeneration == equalCopy->_imageGeneration && [(SBHIconImageIdentity *)self isEqualToIconImageIdentityExcludingImageGeneration:equalCopy];
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

- (void)encodeWithCoder:(id)coder
{
  iconIdentifier = self->_iconIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:iconIdentifier forKey:@"iconIdentifier"];
  [coderCopy encodeDouble:@"iconImageInfoWidth" forKey:self->_iconImageInfo.size.width];
  [coderCopy encodeDouble:@"iconImageInfoHeight" forKey:self->_iconImageInfo.size.height];
  [coderCopy encodeDouble:@"iconImageInfoScale" forKey:self->_iconImageInfo.scale];
  [coderCopy encodeDouble:@"iconImageInfoContinuousCornerRadius" forKey:self->_iconImageInfo.continuousCornerRadius];
  [coderCopy encodeInteger:self->_imageGeneration forKey:@"imageGeneration"];
  [coderCopy encodeObject:self->_imageAppearance forKey:@"imageAppearance"];
  [coderCopy encodeBool:self->_masked forKey:@"masked"];
}

- (SBHIconImageIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"iconIdentifier"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"imageAppearance"];

  [coderCopy decodeDoubleForKey:@"iconImageInfoWidth"];
  v10 = v9;
  [coderCopy decodeDoubleForKey:@"iconImageInfoHeight"];
  v12 = v11;
  [coderCopy decodeDoubleForKey:@"iconImageInfoScale"];
  v14 = v13;
  [coderCopy decodeDoubleForKey:@"iconImageInfoContinuousCornerRadius"];
  v16 = v15;
  v17 = [coderCopy decodeIntegerForKey:@"imageGeneration"];
  v18 = [coderCopy decodeBoolForKey:@"masked"];

  v19 = [(SBHIconImageIdentity *)self initWithIconIdentifier:v6 iconImageInfo:v17 imageGeneration:v8 imageAppearance:v18 masked:v10, v12, v14, v16];
  return v19;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  iconIdentifier = [(SBHIconImageIdentity *)self iconIdentifier];
  [formatterCopy appendString:iconIdentifier withName:@"iconIdentifier" skipIfEmpty:0];

  [(SBHIconImageIdentity *)self iconImageInfo];
  v9 = SBHStringForIconImageInfo(v5, v6, v7, v8);
  [formatterCopy appendString:v9 withName:@"iconImageInfo" skipIfEmpty:0];

  v10 = [formatterCopy appendUnsignedInteger:-[SBHIconImageIdentity imageGeneration](self withName:{"imageGeneration"), @"imageGeneration"}];
  imageAppearance = [(SBHIconImageIdentity *)self imageAppearance];
  v12 = [formatterCopy appendObject:imageAppearance withName:@"imageAppearance"];

  v13 = [formatterCopy appendBool:-[SBHIconImageIdentity isMasked](self withName:{"isMasked"), @"isMasked"}];
}

@end