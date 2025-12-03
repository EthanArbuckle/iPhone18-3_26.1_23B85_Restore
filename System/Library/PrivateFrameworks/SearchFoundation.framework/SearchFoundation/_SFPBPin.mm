@interface _SFPBPin
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPin)initWithDictionary:(id)dictionary;
- (_SFPBPin)initWithFacade:(id)facade;
- (_SFPBPin)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setLabel:(id)label;
- (void)setMapsData:(id)data;
- (void)setPinText:(id)text;
- (void)setResultID:(id)d;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPin

- (_SFPBPin)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPin *)self init];
  if (v5)
  {
    location = [facadeCopy location];

    if (location)
    {
      v7 = [_SFPBLatLng alloc];
      location2 = [facadeCopy location];
      v9 = [(_SFPBLatLng *)v7 initWithFacade:location2];
      [(_SFPBPin *)v5 setLocation:v9];
    }

    pinColor = [facadeCopy pinColor];

    if (pinColor)
    {
      v11 = [_SFPBColor alloc];
      pinColor2 = [facadeCopy pinColor];
      v13 = [(_SFPBColor *)v11 initWithFacade:pinColor2];
      [(_SFPBPin *)v5 setPinColor:v13];
    }

    label = [facadeCopy label];

    if (label)
    {
      label2 = [facadeCopy label];
      [(_SFPBPin *)v5 setLabel:label2];
    }

    resultID = [facadeCopy resultID];

    if (resultID)
    {
      resultID2 = [facadeCopy resultID];
      [(_SFPBPin *)v5 setResultID:resultID2];
    }

    mapsData = [facadeCopy mapsData];

    if (mapsData)
    {
      mapsData2 = [facadeCopy mapsData];
      [(_SFPBPin *)v5 setMapsData:mapsData2];
    }

    if ([facadeCopy hasPinBehavior])
    {
      -[_SFPBPin setPinBehavior:](v5, "setPinBehavior:", [facadeCopy pinBehavior]);
    }

    pinText = [facadeCopy pinText];

    if (pinText)
    {
      pinText2 = [facadeCopy pinText];
      [(_SFPBPin *)v5 setPinText:pinText2];
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBPin)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = _SFPBPin;
  v5 = [(_SFPBPin *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBLatLng alloc] initWithDictionary:v6];
      [(_SFPBPin *)v5 setLocation:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"pinColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBColor alloc] initWithDictionary:v8];
      [(_SFPBPin *)v5 setPinColor:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBPin *)v5 setLabel:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"resultID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBPin *)v5 setResultID:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"mapsData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v14 options:0];
      [(_SFPBPin *)v5 setMapsData:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"pinBehavior"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPin setPinBehavior:](v5, "setPinBehavior:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"pinText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBPin *)v5 setPinText:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (_SFPBPin)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPin *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPin *)self dictionaryRepresentation];
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
  if (self->_label)
  {
    label = [(_SFPBPin *)self label];
    v5 = [label copy];
    [dictionary setObject:v5 forKeyedSubscript:@"label"];
  }

  if (self->_location)
  {
    location = [(_SFPBPin *)self location];
    dictionaryRepresentation = [location dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"location"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"location"];
    }
  }

  if (self->_mapsData)
  {
    mapsData = [(_SFPBPin *)self mapsData];
    v10 = [mapsData base64EncodedStringWithOptions:0];
    if (v10)
    {
      [dictionary setObject:v10 forKeyedSubscript:@"mapsData"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"mapsData"];
    }
  }

  if (self->_pinBehavior)
  {
    pinBehavior = [(_SFPBPin *)self pinBehavior];
    if (pinBehavior >= 3)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", pinBehavior];
    }

    else
    {
      v13 = off_1E7ACE548[pinBehavior];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"pinBehavior"];
  }

  if (self->_pinColor)
  {
    pinColor = [(_SFPBPin *)self pinColor];
    dictionaryRepresentation2 = [pinColor dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"pinColor"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"pinColor"];
    }
  }

  if (self->_pinText)
  {
    pinText = [(_SFPBPin *)self pinText];
    v18 = [pinText copy];
    [dictionary setObject:v18 forKeyedSubscript:@"pinText"];
  }

  if (self->_resultID)
  {
    resultID = [(_SFPBPin *)self resultID];
    v20 = [resultID copy];
    [dictionary setObject:v20 forKeyedSubscript:@"resultID"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBLatLng *)self->_location hash];
  v4 = [(_SFPBColor *)self->_pinColor hash];
  v5 = [(NSString *)self->_label hash];
  v6 = [(NSString *)self->_resultID hash];
  v7 = [(NSData *)self->_mapsData hash];
  v8 = 2654435761 * self->_pinBehavior;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_pinText hash]^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  location = [(_SFPBPin *)self location];
  location2 = [equalCopy location];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_32;
  }

  location3 = [(_SFPBPin *)self location];
  if (location3)
  {
    v8 = location3;
    location4 = [(_SFPBPin *)self location];
    location5 = [equalCopy location];
    v11 = [location4 isEqual:location5];

    if (!v11)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  location = [(_SFPBPin *)self pinColor];
  location2 = [equalCopy pinColor];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_32;
  }

  pinColor = [(_SFPBPin *)self pinColor];
  if (pinColor)
  {
    v13 = pinColor;
    pinColor2 = [(_SFPBPin *)self pinColor];
    pinColor3 = [equalCopy pinColor];
    v16 = [pinColor2 isEqual:pinColor3];

    if (!v16)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  location = [(_SFPBPin *)self label];
  location2 = [equalCopy label];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_32;
  }

  label = [(_SFPBPin *)self label];
  if (label)
  {
    v18 = label;
    label2 = [(_SFPBPin *)self label];
    label3 = [equalCopy label];
    v21 = [label2 isEqual:label3];

    if (!v21)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  location = [(_SFPBPin *)self resultID];
  location2 = [equalCopy resultID];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_32;
  }

  resultID = [(_SFPBPin *)self resultID];
  if (resultID)
  {
    v23 = resultID;
    resultID2 = [(_SFPBPin *)self resultID];
    resultID3 = [equalCopy resultID];
    v26 = [resultID2 isEqual:resultID3];

    if (!v26)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  location = [(_SFPBPin *)self mapsData];
  location2 = [equalCopy mapsData];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_32;
  }

  mapsData = [(_SFPBPin *)self mapsData];
  if (mapsData)
  {
    v28 = mapsData;
    mapsData2 = [(_SFPBPin *)self mapsData];
    mapsData3 = [equalCopy mapsData];
    v31 = [mapsData2 isEqual:mapsData3];

    if (!v31)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  pinBehavior = self->_pinBehavior;
  if (pinBehavior != [equalCopy pinBehavior])
  {
    goto LABEL_33;
  }

  location = [(_SFPBPin *)self pinText];
  location2 = [equalCopy pinText];
  if ((location != 0) == (location2 == 0))
  {
LABEL_32:

    goto LABEL_33;
  }

  pinText = [(_SFPBPin *)self pinText];
  if (!pinText)
  {

LABEL_36:
    v38 = 1;
    goto LABEL_34;
  }

  v34 = pinText;
  pinText2 = [(_SFPBPin *)self pinText];
  pinText3 = [equalCopy pinText];
  v37 = [pinText2 isEqual:pinText3];

  if (v37)
  {
    goto LABEL_36;
  }

LABEL_33:
  v38 = 0;
LABEL_34:

  return v38;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  location = [(_SFPBPin *)self location];
  if (location)
  {
    PBDataWriterWriteSubmessage();
  }

  pinColor = [(_SFPBPin *)self pinColor];
  if (pinColor)
  {
    PBDataWriterWriteSubmessage();
  }

  label = [(_SFPBPin *)self label];
  if (label)
  {
    PBDataWriterWriteStringField();
  }

  resultID = [(_SFPBPin *)self resultID];
  if (resultID)
  {
    PBDataWriterWriteStringField();
  }

  mapsData = [(_SFPBPin *)self mapsData];
  if (mapsData)
  {
    PBDataWriterWriteDataField();
  }

  if ([(_SFPBPin *)self pinBehavior])
  {
    PBDataWriterWriteInt32Field();
  }

  pinText = [(_SFPBPin *)self pinText];
  if (pinText)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setPinText:(id)text
{
  v4 = [text copy];
  pinText = self->_pinText;
  self->_pinText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMapsData:(id)data
{
  v4 = [data copy];
  mapsData = self->_mapsData;
  self->_mapsData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setResultID:(id)d
{
  v4 = [d copy];
  resultID = self->_resultID;
  self->_resultID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLabel:(id)label
{
  v4 = [label copy];
  label = self->_label;
  self->_label = v4;

  MEMORY[0x1EEE66BB8]();
}

@end