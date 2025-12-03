@interface SSItemArtworkImage
- (BOOL)isEqual:(id)equal;
- (BOOL)isPrerendered;
- (CGSize)imageSize;
- (NSString)description;
- (NSURL)URL;
- (SSItemArtworkImage)initWithArtworkDictionary:(id)dictionary;
- (SSItemArtworkImage)initWithXPCEncoding:(id)encoding;
- (double)imageScale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)valueForProperty:(id)property;
- (int64_t)height;
- (int64_t)imageOrientation;
- (int64_t)width;
- (unint64_t)hash;
- (void)_setValue:(id)value forKey:(id)key;
- (void)dealloc;
- (void)setImageKindWithTypeName:(id)name variantName:(id)variantName;
- (void)setURL:(id)l;
@end

@implementation SSItemArtworkImage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSItemArtworkImage;
  [(SSItemArtworkImage *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[1] = [(NSMutableDictionary *)self->_dictionary mutableCopyWithZone:zone];
  v5[2] = [(NSString *)self->_imageKind copyWithZone:zone];
  return v5;
}

- (int64_t)height
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"box-height"];
  if (objc_opt_respondsToSelector())
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  [(SSItemArtworkImage *)self imageScale];
  if (v5 > 0.00000011920929)
  {
    return (intValue / v5);
  }

  return intValue;
}

- (int64_t)imageOrientation
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"image-orientation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 isEqualToString:@"landscape"])
  {
    return 1;
  }

  width = [(SSItemArtworkImage *)self width];
  return width > [(SSItemArtworkImage *)self height];
}

- (double)imageScale
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"scale"];
  v3 = objc_opt_respondsToSelector();
  result = 1.0;
  if (v3)
  {
    [v2 floatValue];
    return v5;
  }

  return result;
}

- (BOOL)isPrerendered
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"needs-shine"];
  if (objc_opt_respondsToSelector())
  {
    return [v2 BOOLValue] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (int64_t)width
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"box-width"];
  if (objc_opt_respondsToSelector())
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  [(SSItemArtworkImage *)self imageScale];
  if (v5 > 0.00000011920929)
  {
    return (intValue / v5);
  }

  return intValue;
}

- (NSURL)URL
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (id)valueForProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:property];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SSItemArtworkImage;
  v4 = [(SSItemArtworkImage *)&v8 description];
  imageKind = [(SSItemArtworkImage *)self imageKind];
  if ([(SSItemArtworkImage *)self isPrerendered])
  {
    v6 = @" (prerendered)";
  }

  else
  {
    v6 = &stru_1F503F418;
  }

  return [v3 stringWithFormat:@"%@: [%@:%@ %ldx%ld] %@", v4, imageKind, v6, -[SSItemArtworkImage width](self, "width"), -[SSItemArtworkImage height](self, "height"), -[SSItemArtworkImage URL](self, "URL")];
}

- (unint64_t)hash
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"url"];

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"url"];
  v6 = [equal valueForProperty:@"url"];

  return [v5 isEqualToString:v6];
}

- (SSItemArtworkImage)initWithArtworkDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = SSItemArtworkImage;
  v4 = [(SSItemArtworkImage *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [dictionary mutableCopy];
  }

  return v4;
}

- (CGSize)imageSize
{
  width = [(SSItemArtworkImage *)self width];
  height = [(SSItemArtworkImage *)self height];
  v5 = width;
  result.height = height;
  result.width = v5;
  return result;
}

- (void)setImageKindWithTypeName:(id)name variantName:(id)variantName
{
  variantNameCopy = variantName;
  if ([variantName hasSuffix:@"@2x"])
  {
    LODWORD(v7) = 2.0;
    -[SSItemArtworkImage _setValue:forKey:](self, "_setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v7], @"scale");
    variantNameCopy = [variantNameCopy substringToIndex:{objc_msgSend(variantNameCopy, "length") - 3}];
  }

  variantNameCopy = [name stringByAppendingFormat:@".%@", variantNameCopy];

  [(SSItemArtworkImage *)self setImageKind:variantNameCopy];
}

- (void)setURL:(id)l
{
  absoluteString = [l absoluteString];

  [(SSItemArtworkImage *)self _setValue:absoluteString forKey:@"url"];
}

- (void)_setValue:(id)value forKey:(id)key
{
  dictionary = self->_dictionary;
  if (value)
  {
    if (!dictionary)
    {
      dictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_dictionary = dictionary;
    }

    [(NSMutableDictionary *)dictionary setObject:value forKey:key];
  }

  else
  {

    [(NSMutableDictionary *)dictionary removeObjectForKey:key];
  }
}

- (SSItemArtworkImage)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSItemArtworkImage;
    v5 = [(SSItemArtworkImage *)&v7 init];
    if (v5)
    {
      objc_opt_class();
      v5->_dictionary = SSXPCDictionaryCopyCFObjectWithClass(encoding, "0");
      objc_opt_class();
      v5->_imageKind = SSXPCDictionaryCopyCFObjectWithClass(encoding, "1");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_dictionary);
  SSXPCDictionarySetCFObject(v3, "1", self->_imageKind);
  return v3;
}

@end