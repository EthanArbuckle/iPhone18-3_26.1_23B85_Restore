@interface _SFPBRFMapMarkerText
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFMapMarkerText)initWithDictionary:(id)dictionary;
- (_SFPBRFMapMarkerText)initWithFacade:(id)facade;
- (_SFPBRFMapMarkerText)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFMapMarkerText

- (_SFPBRFMapMarkerText)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFMapMarkerText *)self init];
  if (v5)
  {
    coordinate = [facadeCopy coordinate];

    if (coordinate)
    {
      v7 = [_SFPBLatLng alloc];
      coordinate2 = [facadeCopy coordinate];
      v9 = [(_SFPBLatLng *)v7 initWithFacade:coordinate2];
      [(_SFPBRFMapMarkerText *)v5 setCoordinate:v9];
    }

    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBRFMapMarkerText *)v5 setTitle:title2];
    }

    monogram = [facadeCopy monogram];

    if (monogram)
    {
      v13 = [_SFPBRFTextProperty alloc];
      monogram2 = [facadeCopy monogram];
      v15 = [(_SFPBRFTextProperty *)v13 initWithFacade:monogram2];
      [(_SFPBRFMapMarkerText *)v5 setMonogram:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBRFMapMarkerText)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBRFMapMarkerText;
  v5 = [(_SFPBRFMapMarkerText *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"coordinate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBLatLng alloc] initWithDictionary:v6];
      [(_SFPBRFMapMarkerText *)v5 setCoordinate:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBRFMapMarkerText *)v5 setTitle:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"monogram"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFMapMarkerText *)v5 setMonogram:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFMapMarkerText)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFMapMarkerText *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFMapMarkerText *)self dictionaryRepresentation];
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
    coordinate = [(_SFPBRFMapMarkerText *)self coordinate];
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

  if (self->_monogram)
  {
    monogram = [(_SFPBRFMapMarkerText *)self monogram];
    dictionaryRepresentation2 = [monogram dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"monogram"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"monogram"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBRFMapMarkerText *)self title];
    v11 = [title copy];
    [dictionary setObject:v11 forKeyedSubscript:@"title"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBLatLng *)self->_coordinate hash];
  v4 = [(NSString *)self->_title hash]^ v3;
  return v4 ^ [(_SFPBRFTextProperty *)self->_monogram hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  coordinate = [(_SFPBRFMapMarkerText *)self coordinate];
  coordinate2 = [equalCopy coordinate];
  if ((coordinate != 0) == (coordinate2 == 0))
  {
    goto LABEL_16;
  }

  coordinate3 = [(_SFPBRFMapMarkerText *)self coordinate];
  if (coordinate3)
  {
    v8 = coordinate3;
    coordinate4 = [(_SFPBRFMapMarkerText *)self coordinate];
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

  coordinate = [(_SFPBRFMapMarkerText *)self title];
  coordinate2 = [equalCopy title];
  if ((coordinate != 0) == (coordinate2 == 0))
  {
    goto LABEL_16;
  }

  title = [(_SFPBRFMapMarkerText *)self title];
  if (title)
  {
    v13 = title;
    title2 = [(_SFPBRFMapMarkerText *)self title];
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

  coordinate = [(_SFPBRFMapMarkerText *)self monogram];
  coordinate2 = [equalCopy monogram];
  if ((coordinate != 0) != (coordinate2 == 0))
  {
    monogram = [(_SFPBRFMapMarkerText *)self monogram];
    if (!monogram)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = monogram;
    monogram2 = [(_SFPBRFMapMarkerText *)self monogram];
    monogram3 = [equalCopy monogram];
    v21 = [monogram2 isEqual:monogram3];

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
  coordinate = [(_SFPBRFMapMarkerText *)self coordinate];
  if (coordinate)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBRFMapMarkerText *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  monogram = [(_SFPBRFMapMarkerText *)self monogram];
  if (monogram)
  {
    PBDataWriterWriteSubmessage();
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