@interface SUOverlayConfiguration
- (BOOL)matchesURL:(id)a3;
- (CGSize)size;
- (SUOverlayConfiguration)initWithDictionary:(id)a3;
- (void)dealloc;
@end

@implementation SUOverlayConfiguration

- (SUOverlayConfiguration)initWithDictionary:(id)a3
{
  if (!a3)
  {
    [(SUOverlayConfiguration *)a2 initWithDictionary:?];
  }

  v14.receiver = self;
  v14.super_class = SUOverlayConfiguration;
  v5 = [(SUOverlayConfiguration *)&v14 init];
  if (v5)
  {
    v6 = [a3 objectForKey:@"bag-key-pattern"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_bagKeyPattern = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v6 options:1 error:0];
    }

    v7 = [a3 objectForKey:@"corner-radius"];
    if (objc_opt_respondsToSelector())
    {
      v5->_cornerRadius = [v7 intValue];
    }

    v8 = [a3 objectForKey:@"height"];
    if (objc_opt_respondsToSelector())
    {
      v5->_size.height = [v8 intValue];
    }

    v9 = [a3 objectForKey:@"show-navigation-bar"];
    if (objc_opt_respondsToSelector())
    {
      v5->_shouldShowNavigationBar = [v9 BOOLValue];
    }

    v10 = [a3 objectForKey:@"transition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_transitionName = v10;
    }

    v11 = [a3 objectForKey:@"url-pattern"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_urlPattern = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v11 options:1 error:0];
    }

    v12 = [a3 objectForKey:@"width"];
    if (objc_opt_respondsToSelector())
    {
      v5->_size.width = [v12 intValue];
    }

    if (!v5->_bagKeyPattern && !v5->_urlPattern)
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUOverlayConfiguration;
  [(SUOverlayConfiguration *)&v3 dealloc];
}

- (BOOL)matchesURL:(id)a3
{
  if (!self->_urlPattern)
  {
    return 0;
  }

  v4 = [a3 absoluteString];
  return -[NSRegularExpression rangeOfFirstMatchInString:options:range:](self->_urlPattern, "rangeOfFirstMatchInString:options:range:", v4, 0, 0, [v4 length]) != 0x7FFFFFFFFFFFFFFFLL;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (uint64_t)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUOverlayConfiguration.m" lineNumber:42 description:@"Must have a dictionary"];
}

@end