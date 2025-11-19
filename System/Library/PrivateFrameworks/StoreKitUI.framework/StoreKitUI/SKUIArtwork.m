@interface SKUIArtwork
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (NSMutableDictionary)cacheRepresentation;
- (NSString)description;
- (NSURL)URL;
- (SKUIArtwork)initWithArtworkDictionary:(id)a3;
- (SKUIArtwork)initWithCacheRepresentation:(id)a3;
- (SKUIArtwork)initWithCoder:(id)a3;
- (SKUIArtwork)initWithURL:(id)a3 size:(CGSize)a4;
- (id)_lookupDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKUIArtwork

- (SKUIArtwork)initWithArtworkDictionary:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIArtwork initWithArtworkDictionary:];
  }

  v10.receiver = self;
  v10.super_class = SKUIArtwork;
  v5 = [(SKUIArtwork *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_urlString, v6);
    }

    v7 = [v4 objectForKey:@"width"];

    if (objc_opt_respondsToSelector())
    {
      v5->_width = [v7 integerValue];
    }

    v8 = [v4 objectForKey:@"height"];

    if (objc_opt_respondsToSelector())
    {
      v5->_height = [v8 integerValue];
    }
  }

  return v5;
}

- (SKUIArtwork)initWithURL:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
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
    v10 = [v7 copy];
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(NSURL *)self->_url absoluteString];
  if (v4 || (v4 = self->_urlString) != 0)
  {
    v5 = v4;
    [v3 setObject:v4 forKey:@"url"];
  }

  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:self->_height];
  [v3 setObject:v6 forKey:@"height"];
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:self->_width];
  [v3 setObject:v7 forKey:@"width"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (width = self->_width, width == [v4 width]) && (height = self->_height, height == objc_msgSend(v4, "height")))
  {
    v8 = [(SKUIArtwork *)self URL];
    v9 = [v4 URL];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 8) = self->_height;
  objc_storeStrong((v4 + 24), self->_urlString);
  v5 = [(NSURL *)self->_url copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  *(v4 + 32) = self->_width;
  return v4;
}

- (SKUIArtwork)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = SKUIArtwork;
    v5 = [(SKUIArtwork *)&v12 init];
    if (v5)
    {
      v6 = [v4 objectForKey:@"height"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_height = [v6 intValue];
      }

      v7 = [v4 objectForKey:@"width"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_width = [v7 intValue];
      }

      v8 = [v4 objectForKey:@"url"];

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
  v7 = [v6 absoluteString];

  if (v7)
  {
    [v3 setObject:v7 forKey:@"url"];
  }

  return v3;
}

- (SKUIArtwork)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKUIArtwork;
  v5 = [(SKUIArtwork *)&v9 init];
  if (v5)
  {
    v5->_height = [v4 decodeIntegerForKey:@"height"];
    v5->_width = [v4 decodeIntegerForKey:@"width"];
    v6 = [v4 decodeObjectForKey:@"URL"];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  height = self->_height;
  v5 = a3;
  [v5 encodeInteger:height forKey:@"height"];
  [v5 encodeInteger:self->_width forKey:@"width"];
  [v5 encodeObject:self->_url forKey:@"URL"];
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