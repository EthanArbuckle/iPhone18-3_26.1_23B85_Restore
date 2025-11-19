@interface SSItemArtworkImage
- (BOOL)isEqual:(id)a3;
- (BOOL)isPrerendered;
- (CGSize)imageSize;
- (NSString)description;
- (NSURL)URL;
- (SSItemArtworkImage)initWithArtworkDictionary:(id)a3;
- (SSItemArtworkImage)initWithXPCEncoding:(id)a3;
- (double)imageScale;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)valueForProperty:(id)a3;
- (int64_t)height;
- (int64_t)imageOrientation;
- (int64_t)width;
- (unint64_t)hash;
- (void)_setValue:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)setImageKindWithTypeName:(id)a3 variantName:(id)a4;
- (void)setURL:(id)a3;
@end

@implementation SSItemArtworkImage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSItemArtworkImage;
  [(SSItemArtworkImage *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[1] = [(NSMutableDictionary *)self->_dictionary mutableCopyWithZone:a3];
  v5[2] = [(NSString *)self->_imageKind copyWithZone:a3];
  return v5;
}

- (int64_t)height
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"box-height"];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  [(SSItemArtworkImage *)self imageScale];
  if (v5 > 0.00000011920929)
  {
    return (v4 / v5);
  }

  return v4;
}

- (int64_t)imageOrientation
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"image-orientation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 isEqualToString:@"landscape"])
  {
    return 1;
  }

  v5 = [(SSItemArtworkImage *)self width];
  return v5 > [(SSItemArtworkImage *)self height];
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
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  [(SSItemArtworkImage *)self imageScale];
  if (v5 > 0.00000011920929)
  {
    return (v4 / v5);
  }

  return v4;
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

- (id)valueForProperty:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:a3];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SSItemArtworkImage;
  v4 = [(SSItemArtworkImage *)&v8 description];
  v5 = [(SSItemArtworkImage *)self imageKind];
  if ([(SSItemArtworkImage *)self isPrerendered])
  {
    v6 = @" (prerendered)";
  }

  else
  {
    v6 = &stru_1F503F418;
  }

  return [v3 stringWithFormat:@"%@: [%@:%@ %ldx%ld] %@", v4, v5, v6, -[SSItemArtworkImage width](self, "width"), -[SSItemArtworkImage height](self, "height"), -[SSItemArtworkImage URL](self, "URL")];
}

- (unint64_t)hash
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"url"];

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"url"];
  v6 = [a3 valueForProperty:@"url"];

  return [v5 isEqualToString:v6];
}

- (SSItemArtworkImage)initWithArtworkDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSItemArtworkImage;
  v4 = [(SSItemArtworkImage *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [a3 mutableCopy];
  }

  return v4;
}

- (CGSize)imageSize
{
  v3 = [(SSItemArtworkImage *)self width];
  v4 = [(SSItemArtworkImage *)self height];
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setImageKindWithTypeName:(id)a3 variantName:(id)a4
{
  v4 = a4;
  if ([a4 hasSuffix:@"@2x"])
  {
    LODWORD(v7) = 2.0;
    -[SSItemArtworkImage _setValue:forKey:](self, "_setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v7], @"scale");
    v4 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 3}];
  }

  v8 = [a3 stringByAppendingFormat:@".%@", v4];

  [(SSItemArtworkImage *)self setImageKind:v8];
}

- (void)setURL:(id)a3
{
  v4 = [a3 absoluteString];

  [(SSItemArtworkImage *)self _setValue:v4 forKey:@"url"];
}

- (void)_setValue:(id)a3 forKey:(id)a4
{
  dictionary = self->_dictionary;
  if (a3)
  {
    if (!dictionary)
    {
      dictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_dictionary = dictionary;
    }

    [(NSMutableDictionary *)dictionary setObject:a3 forKey:a4];
  }

  else
  {

    [(NSMutableDictionary *)dictionary removeObjectForKey:a4];
  }
}

- (SSItemArtworkImage)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSItemArtworkImage;
    v5 = [(SSItemArtworkImage *)&v7 init];
    if (v5)
    {
      objc_opt_class();
      v5->_dictionary = SSXPCDictionaryCopyCFObjectWithClass(a3, "0");
      objc_opt_class();
      v5->_imageKind = SSXPCDictionaryCopyCFObjectWithClass(a3, "1");
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