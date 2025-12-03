@interface _SFPBRFDefaultBrowserAppIconImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFDefaultBrowserAppIconImage)initWithDictionary:(id)dictionary;
- (_SFPBRFDefaultBrowserAppIconImage)initWithFacade:(id)facade;
- (_SFPBRFDefaultBrowserAppIconImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFDefaultBrowserAppIconImage

- (_SFPBRFDefaultBrowserAppIconImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFDefaultBrowserAppIconImage *)self init];
  if (v5)
  {
    if ([facadeCopy hasImage_style])
    {
      -[_SFPBRFDefaultBrowserAppIconImage setImage_style:](v5, "setImage_style:", [facadeCopy image_style]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBRFDefaultBrowserAppIconImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = _SFPBRFDefaultBrowserAppIconImage;
  v5 = [(_SFPBRFDefaultBrowserAppIconImage *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"imageStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFDefaultBrowserAppIconImage setImage_style:](v5, "setImage_style:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBRFDefaultBrowserAppIconImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFDefaultBrowserAppIconImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFDefaultBrowserAppIconImage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_image_style)
  {
    image_style = [(_SFPBRFDefaultBrowserAppIconImage *)self image_style];
    if (image_style < 0x2A && ((0x3FFDFFFFFFFuLL >> image_style) & 1) != 0)
    {
      v5 = off_1E7ACE270[image_style];
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", image_style];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"imageStyle"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    image_style = self->_image_style;
    v6 = image_style == [equalCopy image_style];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBRFDefaultBrowserAppIconImage *)self image_style])
  {
    PBDataWriterWriteInt32Field();
  }
}

@end