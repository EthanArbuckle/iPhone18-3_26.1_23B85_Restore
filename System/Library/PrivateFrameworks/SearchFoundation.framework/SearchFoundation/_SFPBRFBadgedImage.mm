@interface _SFPBRFBadgedImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFBadgedImage)initWithDictionary:(id)dictionary;
- (_SFPBRFBadgedImage)initWithFacade:(id)facade;
- (_SFPBRFBadgedImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFBadgedImage

- (_SFPBRFBadgedImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFBadgedImage *)self init];
  if (v5)
  {
    image = [facadeCopy image];

    if (image)
    {
      v7 = [_SFPBRFImageSource alloc];
      image2 = [facadeCopy image];
      v9 = [(_SFPBRFImageSource *)v7 initWithFacade:image2];
      [(_SFPBRFBadgedImage *)v5 setImage:v9];
    }

    badge = [facadeCopy badge];

    if (badge)
    {
      v11 = [_SFPBRFImageSource alloc];
      badge2 = [facadeCopy badge];
      v13 = [(_SFPBRFImageSource *)v11 initWithFacade:badge2];
      [(_SFPBRFBadgedImage *)v5 setBadge:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFBadgedImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRFBadgedImage;
  v5 = [(_SFPBRFBadgedImage *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFImageSource alloc] initWithDictionary:v6];
      [(_SFPBRFBadgedImage *)v5 setImage:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"badge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFImageSource alloc] initWithDictionary:v8];
      [(_SFPBRFBadgedImage *)v5 setBadge:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFBadgedImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFBadgedImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFBadgedImage *)self dictionaryRepresentation];
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
  if (self->_badge)
  {
    badge = [(_SFPBRFBadgedImage *)self badge];
    dictionaryRepresentation = [badge dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"badge"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"badge"];
    }
  }

  if (self->_image)
  {
    image = [(_SFPBRFBadgedImage *)self image];
    dictionaryRepresentation2 = [image dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"image"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"image"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  image = [(_SFPBRFBadgedImage *)self image];
  image2 = [equalCopy image];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_11;
  }

  image3 = [(_SFPBRFBadgedImage *)self image];
  if (image3)
  {
    v8 = image3;
    image4 = [(_SFPBRFBadgedImage *)self image];
    image5 = [equalCopy image];
    v11 = [image4 isEqual:image5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  image = [(_SFPBRFBadgedImage *)self badge];
  image2 = [equalCopy badge];
  if ((image != 0) != (image2 == 0))
  {
    badge = [(_SFPBRFBadgedImage *)self badge];
    if (!badge)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = badge;
    badge2 = [(_SFPBRFBadgedImage *)self badge];
    badge3 = [equalCopy badge];
    v16 = [badge2 isEqual:badge3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  image = [(_SFPBRFBadgedImage *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }

  badge = [(_SFPBRFBadgedImage *)self badge];
  if (badge)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end