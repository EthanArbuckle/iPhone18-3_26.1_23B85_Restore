@interface _SFPBRFMapMarker
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFMapMarker)initWithDictionary:(id)dictionary;
- (_SFPBRFMapMarker)initWithFacade:(id)facade;
- (_SFPBRFMapMarker)initWithJSON:(id)n;
- (_SFPBRFMapMarkerIdentifier)identifier;
- (_SFPBRFMapMarkerImage)image;
- (_SFPBRFMapMarkerText)text;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setIdentifier:(id)identifier;
- (void)setImage:(id)image;
- (void)setText:(id)text;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFMapMarker

- (_SFPBRFMapMarker)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFMapMarker *)self init];
  if (v5)
  {
    if ([facadeCopy hasIdentifier])
    {
      identifier = [facadeCopy identifier];

      if (identifier)
      {
        v7 = [_SFPBRFMapMarkerIdentifier alloc];
        identifier2 = [facadeCopy identifier];
        v9 = [(_SFPBRFMapMarkerIdentifier *)v7 initWithFacade:identifier2];
        [(_SFPBRFMapMarker *)v5 setIdentifier:v9];
      }
    }

    if ([facadeCopy hasText])
    {
      text = [facadeCopy text];

      if (text)
      {
        v11 = [_SFPBRFMapMarkerText alloc];
        text2 = [facadeCopy text];
        v13 = [(_SFPBRFMapMarkerText *)v11 initWithFacade:text2];
        [(_SFPBRFMapMarker *)v5 setText:v13];
      }
    }

    if ([facadeCopy hasImage])
    {
      image = [facadeCopy image];

      if (image)
      {
        v15 = [_SFPBRFMapMarkerImage alloc];
        image2 = [facadeCopy image];
        v17 = [(_SFPBRFMapMarkerImage *)v15 initWithFacade:image2];
        [(_SFPBRFMapMarker *)v5 setImage:v17];
      }
    }

    tint = [facadeCopy tint];

    if (tint)
    {
      v19 = [_SFPBRFColor alloc];
      tint2 = [facadeCopy tint];
      v21 = [(_SFPBRFColor *)v19 initWithFacade:tint2];
      [(_SFPBRFMapMarker *)v5 setTint:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBRFMapMarker)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = _SFPBRFMapMarker;
  v5 = [(_SFPBRFMapMarker *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFMapMarkerIdentifier alloc] initWithDictionary:v6];
      [(_SFPBRFMapMarker *)v5 setIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFMapMarkerText alloc] initWithDictionary:v8];
      [(_SFPBRFMapMarker *)v5 setText:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFMapMarkerImage alloc] initWithDictionary:v10];
      [(_SFPBRFMapMarker *)v5 setImage:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"tint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFColor alloc] initWithDictionary:v12];
      [(_SFPBRFMapMarker *)v5 setTint:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFMapMarker)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFMapMarker *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFMapMarker *)self dictionaryRepresentation];
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
  if (self->_identifier)
  {
    identifier = [(_SFPBRFMapMarker *)self identifier];
    dictionaryRepresentation = [identifier dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"identifier"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"identifier"];
    }
  }

  if (self->_image)
  {
    image = [(_SFPBRFMapMarker *)self image];
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

  if (self->_text)
  {
    text = [(_SFPBRFMapMarker *)self text];
    dictionaryRepresentation3 = [text dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"text"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"text"];
    }
  }

  if (self->_tint)
  {
    tint = [(_SFPBRFMapMarker *)self tint];
    dictionaryRepresentation4 = [tint dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"tint"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"tint"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFMapMarkerIdentifier *)self->_identifier hash];
  v4 = [(_SFPBRFMapMarkerText *)self->_text hash]^ v3;
  v5 = [(_SFPBRFMapMarkerImage *)self->_image hash];
  return v4 ^ v5 ^ [(_SFPBRFColor *)self->_tint hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  identifier = [(_SFPBRFMapMarker *)self identifier];
  identifier2 = [equalCopy identifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_21;
  }

  identifier3 = [(_SFPBRFMapMarker *)self identifier];
  if (identifier3)
  {
    v8 = identifier3;
    identifier4 = [(_SFPBRFMapMarker *)self identifier];
    identifier5 = [equalCopy identifier];
    v11 = [identifier4 isEqual:identifier5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  identifier = [(_SFPBRFMapMarker *)self text];
  identifier2 = [equalCopy text];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_21;
  }

  text = [(_SFPBRFMapMarker *)self text];
  if (text)
  {
    v13 = text;
    text2 = [(_SFPBRFMapMarker *)self text];
    text3 = [equalCopy text];
    v16 = [text2 isEqual:text3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  identifier = [(_SFPBRFMapMarker *)self image];
  identifier2 = [equalCopy image];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_21;
  }

  image = [(_SFPBRFMapMarker *)self image];
  if (image)
  {
    v18 = image;
    image2 = [(_SFPBRFMapMarker *)self image];
    image3 = [equalCopy image];
    v21 = [image2 isEqual:image3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  identifier = [(_SFPBRFMapMarker *)self tint];
  identifier2 = [equalCopy tint];
  if ((identifier != 0) != (identifier2 == 0))
  {
    tint = [(_SFPBRFMapMarker *)self tint];
    if (!tint)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = tint;
    tint2 = [(_SFPBRFMapMarker *)self tint];
    tint3 = [equalCopy tint];
    v26 = [tint2 isEqual:tint3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  identifier = [(_SFPBRFMapMarker *)self identifier];
  if (identifier)
  {
    PBDataWriterWriteSubmessage();
  }

  text = [(_SFPBRFMapMarker *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  image = [(_SFPBRFMapMarker *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }

  tint = [(_SFPBRFMapMarker *)self tint];
  if (tint)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (_SFPBRFMapMarkerImage)image
{
  if (self->_whichValue == 3)
  {
    v3 = self->_image;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  identifier = self->_identifier;
  self->_identifier = 0;

  text = self->_text;
  self->_text = 0;

  v7 = 3;
  if (!imageCopy)
  {
    v7 = 0;
  }

  self->_whichValue = v7;
  image = self->_image;
  self->_image = imageCopy;
}

- (_SFPBRFMapMarkerText)text
{
  if (self->_whichValue == 2)
  {
    v3 = self->_text;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setText:(id)text
{
  textCopy = text;
  identifier = self->_identifier;
  self->_identifier = 0;

  image = self->_image;
  self->_image = 0;

  self->_whichValue = 2 * (textCopy != 0);
  text = self->_text;
  self->_text = textCopy;
}

- (_SFPBRFMapMarkerIdentifier)identifier
{
  if (self->_whichValue == 1)
  {
    v3 = self->_identifier;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  text = self->_text;
  self->_text = 0;

  image = self->_image;
  self->_image = 0;

  self->_whichValue = identifierCopy != 0;
  identifier = self->_identifier;
  self->_identifier = identifierCopy;
}

@end