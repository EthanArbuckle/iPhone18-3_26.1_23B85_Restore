@interface TPSAssets
- (BOOL)hasVideo;
- (BOOL)isEqual:(id)a3;
- (TPSAssets)initWithCoder:(id)a3;
- (TPSAssets)initWithDictionary:(id)a3 metadata:(id)a4;
- (TPSAssets)initWithSymbolId:(id)a3 symbolColor:(id)a4 symbolSize:(id)a5 alt:(id)a6 gradientColorStrings:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)identifierForKey:(id)a3 dictionary:(id)a4;
- (id)imageIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAssets

- (TPSAssets)initWithSymbolId:(id)a3 symbolColor:(id)a4 symbolSize:(id)a5 alt:(id)a6 gradientColorStrings:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = TPSAssets;
  v17 = [(TPSAssets *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_symbolId, a3);
    objc_storeStrong(&v18->_symbolColor, a4);
    objc_storeStrong(&v18->_symbolSize, a5);
    objc_storeStrong(&v18->_alt, a6);
    v19 = [[TPSGradient alloc] initWithColorStrings:v16];
    gradient = v18->_gradient;
    v18->_gradient = v19;
  }

  return v18;
}

- (TPSAssets)initWithDictionary:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41.receiver = self;
  v41.super_class = TPSAssets;
  v8 = [(TPSSerializableObject *)&v41 initWithDictionary:v6];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = [v7 assetBaseURL];
  baseURL = v8->_baseURL;
  v8->_baseURL = v9;

  v11 = [v6 TPSSafeStringForKey:@"type"];
  if (v11)
  {
    v12 = [v6 TPSSafeDictionaryForKey:@"attrs"];
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

  v20 = [v6 TPSSafeStringForKey:@"alt"];
  v21 = v8->_alt;
  v8->_alt = v20;

  v22 = [v6 TPSSafeStringForKey:@"caption"];
  caption = v8->_caption;
  v8->_caption = v22;

  v24 = [(TPSAssets *)v8 identifierForKey:@"posterId" dictionary:v6];
  posterId = v8->_posterId;
  v8->_posterId = v24;

  v26 = [(TPSAssets *)v8 identifierForKey:@"thumbnailId" dictionary:v6];
  thumbnailId = v8->_thumbnailId;
  v8->_thumbnailId = v26;

  v28 = [(TPSAssets *)v8 identifierForKey:@"videoId" dictionary:v6];
  videoId = v8->_videoId;
  v8->_videoId = v28;

  v30 = [(TPSAssets *)v8 identifierForKey:@"fallbackId" dictionary:v6];
  fallbackId = v8->_fallbackId;
  v8->_fallbackId = v30;

  v32 = [(TPSAssets *)v8 identifierForKey:@"imageId" dictionary:v6];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = TPSAssets;
  v4 = [(TPSSerializableObject *)&v18 copyWithZone:a3];
  v5 = [(TPSAssets *)self alt];
  [v4 setAlt:v5];

  v6 = [(TPSAssets *)self caption];
  [v4 setCaption:v6];

  v7 = [(TPSAssets *)self posterId];
  [v4 setPosterId:v7];

  v8 = [(TPSAssets *)self thumbnailId];
  [v4 setThumbnailId:v8];

  v9 = [(TPSAssets *)self videoId];
  [v4 setVideoId:v9];

  v10 = [(TPSAssets *)self fallbackId];
  [v4 setFallbackId:v10];

  v11 = [(TPSAssets *)self imageId];
  [v4 setImageId:v11];

  v12 = [(TPSAssets *)self symbolId];
  [v4 setSymbolId:v12];

  v13 = [(TPSAssets *)self symbolColor];
  [v4 setSymbolColor:v13];

  v14 = [(TPSAssets *)self symbolSize];
  [v4 setSymbolSize:v14];

  v15 = [(TPSAssets *)self baseURL];
  [v4 setBaseURL:v15];

  v16 = [(TPSAssets *)self gradient];
  [v4 setGradient:v16];

  return v4;
}

- (TPSAssets)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = TPSAssets;
  v5 = [(TPSSerializableObject *)&v31 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alt"];
    alt = v5->_alt;
    v5->_alt = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"caption"];
    caption = v5->_caption;
    v5->_caption = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"posterId"];
    posterId = v5->_posterId;
    v5->_posterId = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailId"];
    thumbnailId = v5->_thumbnailId;
    v5->_thumbnailId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"videoId"];
    videoId = v5->_videoId;
    v5->_videoId = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fallbackId"];
    fallbackId = v5->_fallbackId;
    v5->_fallbackId = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageId"];
    imageId = v5->_imageId;
    v5->_imageId = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringId"];
    symbolId = v5->_symbolId;
    v5->_symbolId = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    symbolColor = v5->_symbolColor;
    v5->_symbolColor = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    symbolSize = v5->_symbolSize;
    v5->_symbolSize = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gradient"];
    gradient = v5->_gradient;
    v5->_gradient = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = TPSAssets;
  v4 = a3;
  [(TPSSerializableObject *)&v17 encodeWithCoder:v4];
  v5 = [(TPSAssets *)self alt:v17.receiver];
  [v4 encodeObject:v5 forKey:@"alt"];

  v6 = [(TPSAssets *)self caption];
  [v4 encodeObject:v6 forKey:@"caption"];

  v7 = [(TPSAssets *)self posterId];
  [v4 encodeObject:v7 forKey:@"posterId"];

  v8 = [(TPSAssets *)self thumbnailId];
  [v4 encodeObject:v8 forKey:@"thumbnailId"];

  v9 = [(TPSAssets *)self videoId];
  [v4 encodeObject:v9 forKey:@"videoId"];

  v10 = [(TPSAssets *)self fallbackId];
  [v4 encodeObject:v10 forKey:@"fallbackId"];

  v11 = [(TPSAssets *)self imageId];
  [v4 encodeObject:v11 forKey:@"imageId"];

  v12 = [(TPSAssets *)self symbolId];
  [v4 encodeObject:v12 forKey:@"stringId"];

  v13 = [(TPSAssets *)self symbolColor];
  [v4 encodeObject:v13 forKey:@"color"];

  v14 = [(TPSAssets *)self symbolSize];
  [v4 encodeObject:v14 forKey:@"size"];

  v15 = [(TPSAssets *)self baseURL];
  [v4 encodeObject:v15 forKey:@"baseURL"];

  v16 = [(TPSAssets *)self gradient];
  [v4 encodeObject:v16 forKey:@"gradient"];
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
  v2 = [(TPSAssets *)self videoId];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)identifierForKey:(id)a3 dictionary:(id)a4
{
  v4 = [a4 TPSSafeStringForKey:a3];
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

  v8 = [(TPSAssets *)self caption];

  if (v8)
  {
    v9 = [(TPSAssets *)self caption];
    [v5 appendFormat:@"  %@ = %@\n", @"caption", v9];
  }

  v10 = [(TPSAssets *)self posterId];

  if (v10)
  {
    v11 = [(TPSAssets *)self posterId];
    [v5 appendFormat:@"  %@ = %@\n", @"posterId", v11];
  }

  v12 = [(TPSAssets *)self thumbnailId];

  if (v12)
  {
    v13 = [(TPSAssets *)self thumbnailId];
    [v5 appendFormat:@"  %@ = %@\n", @"thumbnailId", v13];
  }

  v14 = [(TPSAssets *)self videoId];

  if (v14)
  {
    v15 = [(TPSAssets *)self videoId];
    [v5 appendFormat:@"  %@ = %@\n", @"videoId", v15];
  }

  v16 = [(TPSAssets *)self fallbackId];

  if (v16)
  {
    v17 = [(TPSAssets *)self fallbackId];
    [v5 appendFormat:@"  %@ = %@\n", @"fallbackId", v17];
  }

  v18 = [(TPSAssets *)self imageId];

  if (v18)
  {
    v19 = [(TPSAssets *)self imageId];
    [v5 appendFormat:@"  %@ = %@\n", @"imageId", v19];
  }

  v20 = [(TPSAssets *)self symbolId];

  if (v20)
  {
    v21 = [(TPSAssets *)self symbolId];
    [v5 appendFormat:@"  %@ = %@\n", @"stringId", v21];
  }

  v22 = [(TPSAssets *)self symbolColor];

  if (v22)
  {
    v23 = [(TPSAssets *)self symbolColor];
    [v5 appendFormat:@"  %@ = %@\n", @"color", v23];
  }

  v24 = [(TPSAssets *)self symbolColor];

  if (v24)
  {
    v25 = [(TPSAssets *)self symbolSize];
    [v5 appendFormat:@"  %@ = %@\n", @"size", v25];
  }

  v26 = [(TPSAssets *)self baseURL];

  if (v26)
  {
    v27 = [(TPSAssets *)self baseURL];
    [v5 appendFormat:@"  %@ = %@\n", @"baseURL", v27];
  }

  v28 = [(TPSAssets *)self gradient];

  if (v28)
  {
    v29 = [(TPSAssets *)self gradient];
    v30 = [v29 debugDescription];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

@end