@interface _SFPBAppLink
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAppLink)initWithDictionary:(id)dictionary;
- (_SFPBAppLink)initWithFacade:(id)facade;
- (_SFPBAppLink)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBAppLink

- (_SFPBAppLink)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBAppLink *)self init];
  if (v5)
  {
    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBAppLink *)v5 setTitle:title2];
    }

    appPunchout = [facadeCopy appPunchout];

    if (appPunchout)
    {
      v9 = [_SFPBPunchout alloc];
      appPunchout2 = [facadeCopy appPunchout];
      v11 = [(_SFPBPunchout *)v9 initWithFacade:appPunchout2];
      [(_SFPBAppLink *)v5 setAppPunchout:v11];
    }

    image = [facadeCopy image];

    if (image)
    {
      v13 = [_SFPBImage alloc];
      image2 = [facadeCopy image];
      v15 = [(_SFPBImage *)v13 initWithFacade:image2];
      [(_SFPBAppLink *)v5 setImage:v15];
    }

    if ([facadeCopy hasImageAlign])
    {
      -[_SFPBAppLink setImageAlign:](v5, "setImageAlign:", [facadeCopy imageAlign]);
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBAppLink)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBAppLink;
  v5 = [(_SFPBAppLink *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBAppLink *)v5 setTitle:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appPunchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBPunchout alloc] initWithDictionary:v8];
      [(_SFPBAppLink *)v5 setAppPunchout:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBImage alloc] initWithDictionary:v10];
      [(_SFPBAppLink *)v5 setImage:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"imageAlign"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAppLink setImageAlign:](v5, "setImageAlign:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBAppLink)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBAppLink *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBAppLink *)self dictionaryRepresentation];
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
  if (self->_appPunchout)
  {
    appPunchout = [(_SFPBAppLink *)self appPunchout];
    dictionaryRepresentation = [appPunchout dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appPunchout"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appPunchout"];
    }
  }

  if (self->_image)
  {
    image = [(_SFPBAppLink *)self image];
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

  if (self->_imageAlign)
  {
    imageAlign = [(_SFPBAppLink *)self imageAlign];
    if (imageAlign >= 5)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", imageAlign];
    }

    else
    {
      v11 = off_1E7ACE448[imageAlign];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"imageAlign"];
  }

  if (self->_title)
  {
    title = [(_SFPBAppLink *)self title];
    v13 = [title copy];
    [dictionary setObject:v13 forKeyedSubscript:@"title"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(_SFPBPunchout *)self->_appPunchout hash];
  return v4 ^ v3 ^ [(_SFPBImage *)self->_image hash]^ (2654435761 * self->_imageAlign);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  title = [(_SFPBAppLink *)self title];
  title2 = [equalCopy title];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_16;
  }

  title3 = [(_SFPBAppLink *)self title];
  if (title3)
  {
    v8 = title3;
    title4 = [(_SFPBAppLink *)self title];
    title5 = [equalCopy title];
    v11 = [title4 isEqual:title5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  title = [(_SFPBAppLink *)self appPunchout];
  title2 = [equalCopy appPunchout];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_16;
  }

  appPunchout = [(_SFPBAppLink *)self appPunchout];
  if (appPunchout)
  {
    v13 = appPunchout;
    appPunchout2 = [(_SFPBAppLink *)self appPunchout];
    appPunchout3 = [equalCopy appPunchout];
    v16 = [appPunchout2 isEqual:appPunchout3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  title = [(_SFPBAppLink *)self image];
  title2 = [equalCopy image];
  if ((title != 0) != (title2 == 0))
  {
    image = [(_SFPBAppLink *)self image];
    if (!image)
    {

LABEL_20:
      imageAlign = self->_imageAlign;
      v22 = imageAlign == [equalCopy imageAlign];
      goto LABEL_18;
    }

    v18 = image;
    image2 = [(_SFPBAppLink *)self image];
    image3 = [equalCopy image];
    v21 = [image2 isEqual:image3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  title = [(_SFPBAppLink *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  appPunchout = [(_SFPBAppLink *)self appPunchout];
  if (appPunchout)
  {
    PBDataWriterWriteSubmessage();
  }

  image = [(_SFPBAppLink *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }

  imageAlign = [(_SFPBAppLink *)self imageAlign];
  v8 = toCopy;
  if (imageAlign)
  {
    PBDataWriterWriteInt32Field();
    v8 = toCopy;
  }
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end