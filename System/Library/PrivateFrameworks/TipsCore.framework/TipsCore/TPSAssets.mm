@interface TPSAssets
- (BOOL)hasVideo;
- (BOOL)isEqual:(id)equal;
- (TPSAssets)initWithCoder:(id)coder;
- (TPSAssets)initWithDictionary:(id)dictionary metadata:(id)metadata;
- (TPSAssets)initWithSymbolId:(id)id symbolColor:(id)color symbolSize:(id)size alt:(id)alt gradientColorStrings:(id)strings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)identifierForKey:(id)key dictionary:(id)dictionary;
- (id)imageIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAssets

- (TPSAssets)initWithSymbolId:(id)id symbolColor:(id)color symbolSize:(id)size alt:(id)alt gradientColorStrings:(id)strings
{
  idCopy = id;
  colorCopy = color;
  sizeCopy = size;
  altCopy = alt;
  stringsCopy = strings;
  v23.receiver = self;
  v23.super_class = TPSAssets;
  v17 = [(TPSAssets *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_symbolId, id);
    objc_storeStrong(&v18->_symbolColor, color);
    objc_storeStrong(&v18->_symbolSize, size);
    objc_storeStrong(&v18->_alt, alt);
    v19 = [[TPSGradient alloc] initWithColorStrings:stringsCopy];
    gradient = v18->_gradient;
    v18->_gradient = v19;
  }

  return v18;
}

- (TPSAssets)initWithDictionary:(id)dictionary metadata:(id)metadata
{
  dictionaryCopy = dictionary;
  metadataCopy = metadata;
  v41.receiver = self;
  v41.super_class = TPSAssets;
  v8 = [(TPSSerializableObject *)&v41 initWithDictionary:dictionaryCopy];
  if (!v8)
  {
    goto LABEL_15;
  }

  assetBaseURL = [metadataCopy assetBaseURL];
  baseURL = v8->_baseURL;
  v8->_baseURL = assetBaseURL;

  v11 = [dictionaryCopy TPSSafeStringForKey:@"type"];
  if (v11)
  {
    v12 = [dictionaryCopy TPSSafeDictionaryForKey:@"attrs"];
    if (!v12)
    {
LABEL_17:

      v39 = 0;
      goto LABEL_16;
    }

    imageId = v12;
    if ([v11 isEqualToString:@"symbol"])
    {
      v14 = [imageId TPSSafeStringForKey:@"stringId"];
      symbolId = v8->_symbolId;
      v8->_symbolId = v14;

      v16 = [imageId TPSSafeStringForKey:@"color"];
      symbolColor = v8->_symbolColor;
      v8->_symbolColor = v16;

      v18 = [imageId TPSSafeStringForKey:@"size"];
      v19 = &OBJC_IVAR___TPSAssets__symbolSize;
    }

    else
    {
      if (![v11 isEqualToString:@"inlineIcon"])
      {
LABEL_10:
        v35 = [imageId TPSSafeStringForKey:@"alt"];
        alt = v8->_alt;
        v8->_alt = v35;

        v37 = [[TPSGradient alloc] initWithDictionary:imageId];
        gradient = v8->_gradient;
        v8->_gradient = v37;

        goto LABEL_11;
      }

      v18 = [(TPSAssets *)v8 identifierForKey:@"imageId" dictionary:imageId];
      v19 = &OBJC_IVAR___TPSAssets__imageId;
    }

    v33 = *v19;
    v34 = *(&v8->super.super.isa + v33);
    *(&v8->super.super.isa + v33) = v18;

    goto LABEL_10;
  }

  v20 = [dictionaryCopy TPSSafeStringForKey:@"alt"];
  v21 = v8->_alt;
  v8->_alt = v20;

  v22 = [dictionaryCopy TPSSafeStringForKey:@"caption"];
  caption = v8->_caption;
  v8->_caption = v22;

  v24 = [(TPSAssets *)v8 identifierForKey:@"posterId" dictionary:dictionaryCopy];
  posterId = v8->_posterId;
  v8->_posterId = v24;

  v26 = [(TPSAssets *)v8 identifierForKey:@"thumbnailId" dictionary:dictionaryCopy];
  thumbnailId = v8->_thumbnailId;
  v8->_thumbnailId = v26;

  v28 = [(TPSAssets *)v8 identifierForKey:@"videoId" dictionary:dictionaryCopy];
  videoId = v8->_videoId;
  v8->_videoId = v28;

  v30 = [(TPSAssets *)v8 identifierForKey:@"fallbackId" dictionary:dictionaryCopy];
  fallbackId = v8->_fallbackId;
  v8->_fallbackId = v30;

  v32 = [(TPSAssets *)v8 identifierForKey:@"imageId" dictionary:dictionaryCopy];
  imageId = v8->_imageId;
  v8->_imageId = v32;
LABEL_11:

  if (![(TPSAssets *)v8 hasImage]&& ![(TPSAssets *)v8 hasVideo]&& !v8->_thumbnailId)
  {
    goto LABEL_17;
  }

LABEL_15:
  v39 = v8;
LABEL_16:

  return v39;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = TPSAssets;
  v4 = [(TPSSerializableObject *)&v18 copyWithZone:zone];
  v5 = [(TPSAssets *)self alt];
  [v4 setAlt:v5];

  caption = [(TPSAssets *)self caption];
  [v4 setCaption:caption];

  posterId = [(TPSAssets *)self posterId];
  [v4 setPosterId:posterId];

  thumbnailId = [(TPSAssets *)self thumbnailId];
  [v4 setThumbnailId:thumbnailId];

  videoId = [(TPSAssets *)self videoId];
  [v4 setVideoId:videoId];

  fallbackId = [(TPSAssets *)self fallbackId];
  [v4 setFallbackId:fallbackId];

  imageId = [(TPSAssets *)self imageId];
  [v4 setImageId:imageId];

  symbolId = [(TPSAssets *)self symbolId];
  [v4 setSymbolId:symbolId];

  symbolColor = [(TPSAssets *)self symbolColor];
  [v4 setSymbolColor:symbolColor];

  symbolSize = [(TPSAssets *)self symbolSize];
  [v4 setSymbolSize:symbolSize];

  baseURL = [(TPSAssets *)self baseURL];
  [v4 setBaseURL:baseURL];

  gradient = [(TPSAssets *)self gradient];
  [v4 setGradient:gradient];

  return v4;
}

- (TPSAssets)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = TPSAssets;
  v5 = [(TPSSerializableObject *)&v31 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alt"];
    alt = v5->_alt;
    v5->_alt = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"caption"];
    caption = v5->_caption;
    v5->_caption = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"posterId"];
    posterId = v5->_posterId;
    v5->_posterId = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailId"];
    thumbnailId = v5->_thumbnailId;
    v5->_thumbnailId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"videoId"];
    videoId = v5->_videoId;
    v5->_videoId = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fallbackId"];
    fallbackId = v5->_fallbackId;
    v5->_fallbackId = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageId"];
    imageId = v5->_imageId;
    v5->_imageId = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringId"];
    symbolId = v5->_symbolId;
    v5->_symbolId = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    symbolColor = v5->_symbolColor;
    v5->_symbolColor = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    symbolSize = v5->_symbolSize;
    v5->_symbolSize = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gradient"];
    gradient = v5->_gradient;
    v5->_gradient = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = TPSAssets;
  coderCopy = coder;
  [(TPSSerializableObject *)&v17 encodeWithCoder:coderCopy];
  v5 = [(TPSAssets *)self alt:v17.receiver];
  [coderCopy encodeObject:v5 forKey:@"alt"];

  caption = [(TPSAssets *)self caption];
  [coderCopy encodeObject:caption forKey:@"caption"];

  posterId = [(TPSAssets *)self posterId];
  [coderCopy encodeObject:posterId forKey:@"posterId"];

  thumbnailId = [(TPSAssets *)self thumbnailId];
  [coderCopy encodeObject:thumbnailId forKey:@"thumbnailId"];

  videoId = [(TPSAssets *)self videoId];
  [coderCopy encodeObject:videoId forKey:@"videoId"];

  fallbackId = [(TPSAssets *)self fallbackId];
  [coderCopy encodeObject:fallbackId forKey:@"fallbackId"];

  imageId = [(TPSAssets *)self imageId];
  [coderCopy encodeObject:imageId forKey:@"imageId"];

  symbolId = [(TPSAssets *)self symbolId];
  [coderCopy encodeObject:symbolId forKey:@"stringId"];

  symbolColor = [(TPSAssets *)self symbolColor];
  [coderCopy encodeObject:symbolColor forKey:@"color"];

  symbolSize = [(TPSAssets *)self symbolSize];
  [coderCopy encodeObject:symbolSize forKey:@"size"];

  baseURL = [(TPSAssets *)self baseURL];
  [coderCopy encodeObject:baseURL forKey:@"baseURL"];

  gradient = [(TPSAssets *)self gradient];
  [coderCopy encodeObject:gradient forKey:@"gradient"];
}

- (id)imageIdentifier
{
  posterId = self->_posterId;
  if (posterId)
  {
    goto LABEL_2;
  }

  v3 = self->_imageId;
  if (!v3)
  {
    posterId = self->_fallbackId;
LABEL_2:
    v3 = posterId;
  }

  return v3;
}

- (BOOL)hasVideo
{
  videoId = [(TPSAssets *)self videoId];
  v3 = [videoId length] != 0;

  return v3;
}

- (id)identifierForKey:(id)key dictionary:(id)dictionary
{
  v4 = [dictionary TPSSafeStringForKey:key];
  if (![v4 length])
  {

    v4 = 0;
  }

  return v4;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v32.receiver = self;
  v32.super_class = TPSAssets;
  v4 = [(TPSSerializableObject *)&v32 debugDescription];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSAssets *)self alt];

  if (v6)
  {
    v7 = [(TPSAssets *)self alt];
    [v5 appendFormat:@"  %@ = %@\n", @"alt", v7];
  }

  caption = [(TPSAssets *)self caption];

  if (caption)
  {
    caption2 = [(TPSAssets *)self caption];
    [v5 appendFormat:@"  %@ = %@\n", @"caption", caption2];
  }

  posterId = [(TPSAssets *)self posterId];

  if (posterId)
  {
    posterId2 = [(TPSAssets *)self posterId];
    [v5 appendFormat:@"  %@ = %@\n", @"posterId", posterId2];
  }

  thumbnailId = [(TPSAssets *)self thumbnailId];

  if (thumbnailId)
  {
    thumbnailId2 = [(TPSAssets *)self thumbnailId];
    [v5 appendFormat:@"  %@ = %@\n", @"thumbnailId", thumbnailId2];
  }

  videoId = [(TPSAssets *)self videoId];

  if (videoId)
  {
    videoId2 = [(TPSAssets *)self videoId];
    [v5 appendFormat:@"  %@ = %@\n", @"videoId", videoId2];
  }

  fallbackId = [(TPSAssets *)self fallbackId];

  if (fallbackId)
  {
    fallbackId2 = [(TPSAssets *)self fallbackId];
    [v5 appendFormat:@"  %@ = %@\n", @"fallbackId", fallbackId2];
  }

  imageId = [(TPSAssets *)self imageId];

  if (imageId)
  {
    imageId2 = [(TPSAssets *)self imageId];
    [v5 appendFormat:@"  %@ = %@\n", @"imageId", imageId2];
  }

  symbolId = [(TPSAssets *)self symbolId];

  if (symbolId)
  {
    symbolId2 = [(TPSAssets *)self symbolId];
    [v5 appendFormat:@"  %@ = %@\n", @"stringId", symbolId2];
  }

  symbolColor = [(TPSAssets *)self symbolColor];

  if (symbolColor)
  {
    symbolColor2 = [(TPSAssets *)self symbolColor];
    [v5 appendFormat:@"  %@ = %@\n", @"color", symbolColor2];
  }

  symbolColor3 = [(TPSAssets *)self symbolColor];

  if (symbolColor3)
  {
    symbolSize = [(TPSAssets *)self symbolSize];
    [v5 appendFormat:@"  %@ = %@\n", @"size", symbolSize];
  }

  baseURL = [(TPSAssets *)self baseURL];

  if (baseURL)
  {
    baseURL2 = [(TPSAssets *)self baseURL];
    [v5 appendFormat:@"  %@ = %@\n", @"baseURL", baseURL2];
  }

  gradient = [(TPSAssets *)self gradient];

  if (gradient)
  {
    gradient2 = [(TPSAssets *)self gradient];
    v30 = [gradient2 debugDescription];
    [v5 appendFormat:@"  %@ = %@\n", @"gradient", v30];
  }

  return v5;
}

id __24__TPSAssets_na_identity__block_invoke()
{
  if (TPSAssetsGradientKey_block_invoke_na_once_token_0 != -1)
  {
    __24__TPSAssets_na_identity__block_invoke_cold_1();
  }

  v1 = TPSAssetsGradientKey_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __24__TPSAssets_na_identity__block_invoke_2()
{
  v0 = __24__TPSAssets_na_identity__block_invoke_3();
  v1 = TPSAssetsGradientKey_block_invoke_na_once_object_0;
  TPSAssetsGradientKey_block_invoke_na_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __24__TPSAssets_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_54];
  v2 = [v0 appendCharacteristic:&__block_literal_global_56];
  v3 = [v0 appendCharacteristic:&__block_literal_global_58];
  v4 = [v0 appendCharacteristic:&__block_literal_global_60];
  v5 = [v0 appendCharacteristic:&__block_literal_global_62];
  v6 = [v0 appendCharacteristic:&__block_literal_global_64_0];
  v7 = [v0 appendCharacteristic:&__block_literal_global_66];
  v8 = [v0 appendCharacteristic:&__block_literal_global_68];
  v9 = [v0 appendCharacteristic:&__block_literal_global_70];
  v10 = [v0 appendCharacteristic:&__block_literal_global_72];
  v11 = [v0 appendCharacteristic:&__block_literal_global_75];
  v12 = [v0 appendCharacteristic:&__block_literal_global_78];
  v13 = [v0 build];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

@end