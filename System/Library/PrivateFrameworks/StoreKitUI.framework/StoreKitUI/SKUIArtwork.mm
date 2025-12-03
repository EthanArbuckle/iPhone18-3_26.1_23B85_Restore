@interface SKUIArtwork
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (NSMutableDictionary)cacheRepresentation;
- (NSString)description;
- (NSURL)URL;
- (SKUIArtwork)initWithArtworkDictionary:(id)dictionary;
- (SKUIArtwork)initWithCacheRepresentation:(id)representation;
- (SKUIArtwork)initWithCoder:(id)coder;
- (SKUIArtwork)initWithURL:(id)l size:(CGSize)size;
- (id)_lookupDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKUIArtwork

- (SKUIArtwork)initWithArtworkDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIArtwork initWithArtworkDictionary:];
  }

  v10.receiver = self;
  v10.super_class = SKUIArtwork;
  v5 = [(SKUIArtwork *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_urlString, v6);
    }

    v7 = [dictionaryCopy objectForKey:@"width"];

    if (objc_opt_respondsToSelector())
    {
      v5->_width = [v7 integerValue];
    }

    v8 = [dictionaryCopy objectForKey:@"height"];

    if (objc_opt_respondsToSelector())
    {
      v5->_height = [v8 integerValue];
    }
  }

  return v5;
}

- (SKUIArtwork)initWithURL:(id)l size:(CGSize)size
{
  height = size.height;
  width = size.width;
  lCopy = l;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIArtwork initWithURL:size:];
  }

  v13.receiver = self;
  v13.super_class = SKUIArtwork;
  v8 = [(SKUIArtwork *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_height = height;
    v10 = [lCopy copy];
    url = v9->_url;
    v9->_url = v10;

    v9->_width = width;
  }

  return v9;
}

- (CGSize)size
{
  width = self->_width;
  height = self->_height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSURL)URL
{
  url = self->_url;
  if (!url)
  {
    if (self->_urlString)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:self->_urlString];
      v5 = self->_url;
      self->_url = v4;

      urlString = self->_urlString;
      self->_urlString = 0;

      url = self->_url;
    }

    else
    {
      url = 0;
    }
  }

  return url;
}

- (id)_lookupDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  absoluteString = [(NSURL *)self->_url absoluteString];
  if (absoluteString || (absoluteString = self->_urlString) != 0)
  {
    v5 = absoluteString;
    [dictionary setObject:absoluteString forKey:@"url"];
  }

  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:self->_height];
  [dictionary setObject:v6 forKey:@"height"];
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:self->_width];
  [dictionary setObject:v7 forKey:@"width"];

  return dictionary;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = SKUIArtwork;
  v4 = [(SKUIArtwork *)&v10 description];
  width = self->_width;
  height = self->_height;
  v7 = [(SKUIArtwork *)self URL];
  v8 = [v3 stringWithFormat:@"%@: [%ld, %ld] %@", v4, width, height, v7];;

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (width = self->_width, width == [equalCopy width]) && (height = self->_height, height == objc_msgSend(equalCopy, "height")))
  {
    v8 = [(SKUIArtwork *)self URL];
    v9 = [equalCopy URL];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 8) = self->_height;
  objc_storeStrong((v4 + 24), self->_urlString);
  v5 = [(NSURL *)self->_url copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  *(v4 + 32) = self->_width;
  return v4;
}

- (SKUIArtwork)initWithCacheRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = SKUIArtwork;
    v5 = [(SKUIArtwork *)&v12 init];
    if (v5)
    {
      v6 = [representationCopy objectForKey:@"height"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_height = [v6 intValue];
      }

      v7 = [representationCopy objectForKey:@"width"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_width = [v7 intValue];
      }

      v8 = [representationCopy objectForKey:@"url"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v8];
        url = v5->_url;
        v5->_url = v9;
      }
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_height];
  [v3 setObject:v4 forKey:@"height"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_width];
  [v3 setObject:v5 forKey:@"width"];

  v6 = [(SKUIArtwork *)self URL];
  absoluteString = [v6 absoluteString];

  if (absoluteString)
  {
    [v3 setObject:absoluteString forKey:@"url"];
  }

  return v3;
}

- (SKUIArtwork)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SKUIArtwork;
  v5 = [(SKUIArtwork *)&v9 init];
  if (v5)
  {
    v5->_height = [coderCopy decodeIntegerForKey:@"height"];
    v5->_width = [coderCopy decodeIntegerForKey:@"width"];
    v6 = [coderCopy decodeObjectForKey:@"URL"];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  height = self->_height;
  coderCopy = coder;
  [coderCopy encodeInteger:height forKey:@"height"];
  [coderCopy encodeInteger:self->_width forKey:@"width"];
  [coderCopy encodeObject:self->_url forKey:@"URL"];
}

- (void)initWithArtworkDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIArtwork initWithArtworkDictionary:]";
}

- (void)initWithURL:size:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIArtwork initWithURL:size:]";
}

@end