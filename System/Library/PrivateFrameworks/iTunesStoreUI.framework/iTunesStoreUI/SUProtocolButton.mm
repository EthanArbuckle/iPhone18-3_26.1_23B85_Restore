@interface SUProtocolButton
- (NSString)buttonLocation;
- (NSString)buttonTarget;
- (NSString)buttonTitle;
- (NSURL)URL;
- (SUProtocolButton)initWithButtonDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation SUProtocolButton

- (SUProtocolButton)initWithButtonDictionary:(id)dictionary
{
  if (!dictionary)
  {
    [(SUProtocolButton *)a2 initWithButtonDictionary:?];
  }

  v7.receiver = self;
  v7.super_class = SUProtocolButton;
  v5 = [(SUProtocolButton *)&v7 init];
  if (v5)
  {
    v5->_buttonDictionary = [dictionary copy];
    if (![(SUProtocolButton *)v5 buttonTitle]|| ![(SUProtocolButton *)v5 URL])
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUProtocolButton;
  [(SUProtocolButton *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[1] = [(NSDictionary *)self->_buttonDictionary copyWithZone:zone];
  return v5;
}

- (NSString)buttonLocation
{
  v2 = [(NSDictionary *)self->_buttonDictionary objectForKey:@"location"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return @"left";
  }

  v3 = v2;

  return v3;
}

- (NSString)buttonTarget
{
  v2 = [(NSDictionary *)self->_buttonDictionary objectForKey:@"target"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return @"new";
  }

  v3 = v2;

  return v3;
}

- (NSString)buttonTitle
{
  v2 = [(NSDictionary *)self->_buttonDictionary objectForKey:@"title"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSURL)URL
{
  v2 = [(NSDictionary *)self->_buttonDictionary objectForKey:@"url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (uint64_t)initWithButtonDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUProtocolButton.m" lineNumber:37 description:@"Must provide button dictionary"];
}

@end