@interface _SFPBRFMapMarkerImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFMapMarkerImage)initWithDictionary:(id)dictionary;
- (_SFPBRFMapMarkerImage)initWithFacade:(id)facade;
- (_SFPBRFMapMarkerImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setSystemImage:(id)image;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFMapMarkerImage

- (_SFPBRFMapMarkerImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFMapMarkerImage *)self init];
  if (v5)
  {
    coordinate = [facadeCopy coordinate];

    if (coordinate)
    {
      v7 = [_SFPBLatLng alloc];
      coordinate2 = [facadeCopy coordinate];
      v9 = [(_SFPBLatLng *)v7 initWithFacade:coordinate2];
      [(_SFPBRFMapMarkerImage *)v5 setCoordinate:v9];
    }

    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBRFMapMarkerImage *)v5 setTitle:title2];
    }

    systemImage = [facadeCopy systemImage];

    if (systemImage)
    {
      systemImage2 = [facadeCopy systemImage];
      [(_SFPBRFMapMarkerImage *)v5 setSystemImage:systemImage2];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFMapMarkerImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBRFMapMarkerImage;
  v5 = [(_SFPBRFMapMarkerImage *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"coordinate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBLatLng alloc] initWithDictionary:v6];
      [(_SFPBRFMapMarkerImage *)v5 setCoordinate:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBRFMapMarkerImage *)v5 setTitle:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"systemImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBRFMapMarkerImage *)v5 setSystemImage:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFMapMarkerImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFMapMarkerImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFMapMarkerImage *)self dictionaryRepresentation];
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
  if (self->_coordinate)
  {
    coordinate = [(_SFPBRFMapMarkerImage *)self coordinate];
    dictionaryRepresentation = [coordinate dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"coordinate"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"coordinate"];
    }
  }

  if (self->_systemImage)
  {
    systemImage = [(_SFPBRFMapMarkerImage *)self systemImage];
    v8 = [systemImage copy];
    [dictionary setObject:v8 forKeyedSubscript:@"systemImage"];
  }

  if (self->_title)
  {
    title = [(_SFPBRFMapMarkerImage *)self title];
    v10 = [title copy];
    [dictionary setObject:v10 forKeyedSubscript:@"title"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBLatLng *)self->_coordinate hash];
  v4 = [(NSString *)self->_title hash]^ v3;
  return v4 ^ [(NSString *)self->_systemImage hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  coordinate = [(_SFPBRFMapMarkerImage *)self coordinate];
  coordinate2 = [equalCopy coordinate];
  if ((coordinate != 0) == (coordinate2 == 0))
  {
    goto LABEL_16;
  }

  coordinate3 = [(_SFPBRFMapMarkerImage *)self coordinate];
  if (coordinate3)
  {
    v8 = coordinate3;
    coordinate4 = [(_SFPBRFMapMarkerImage *)self coordinate];
    coordinate5 = [equalCopy coordinate];
    v11 = [coordinate4 isEqual:coordinate5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  coordinate = [(_SFPBRFMapMarkerImage *)self title];
  coordinate2 = [equalCopy title];
  if ((coordinate != 0) == (coordinate2 == 0))
  {
    goto LABEL_16;
  }

  title = [(_SFPBRFMapMarkerImage *)self title];
  if (title)
  {
    v13 = title;
    title2 = [(_SFPBRFMapMarkerImage *)self title];
    title3 = [equalCopy title];
    v16 = [title2 isEqual:title3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  coordinate = [(_SFPBRFMapMarkerImage *)self systemImage];
  coordinate2 = [equalCopy systemImage];
  if ((coordinate != 0) != (coordinate2 == 0))
  {
    systemImage = [(_SFPBRFMapMarkerImage *)self systemImage];
    if (!systemImage)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = systemImage;
    systemImage2 = [(_SFPBRFMapMarkerImage *)self systemImage];
    systemImage3 = [equalCopy systemImage];
    v21 = [systemImage2 isEqual:systemImage3];

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
  coordinate = [(_SFPBRFMapMarkerImage *)self coordinate];
  if (coordinate)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBRFMapMarkerImage *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  systemImage = [(_SFPBRFMapMarkerImage *)self systemImage];
  if (systemImage)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setSystemImage:(id)image
{
  v4 = [image copy];
  systemImage = self->_systemImage;
  self->_systemImage = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end