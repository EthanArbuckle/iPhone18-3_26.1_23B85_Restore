@interface _SFPBUserActivityInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBUserActivityInfo)initWithDictionary:(id)dictionary;
- (_SFPBUserActivityInfo)initWithFacade:(id)facade;
- (_SFPBUserActivityInfo)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setKey:(id)key;
- (void)setStringValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _SFPBUserActivityInfo

- (_SFPBUserActivityInfo)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBUserActivityInfo *)self init];
  if (v5)
  {
    if ([facadeCopy hasValueType])
    {
      -[_SFPBUserActivityInfo setValueType:](v5, "setValueType:", [facadeCopy valueType]);
    }

    v6 = [facadeCopy key];

    if (v6)
    {
      v7 = [facadeCopy key];
      [(_SFPBUserActivityInfo *)v5 setKey:v7];
    }

    stringValue = [facadeCopy stringValue];

    if (stringValue)
    {
      stringValue2 = [facadeCopy stringValue];
      [(_SFPBUserActivityInfo *)v5 setStringValue:stringValue2];
    }

    urlValue = [facadeCopy urlValue];

    if (urlValue)
    {
      v11 = [_SFPBURL alloc];
      urlValue2 = [facadeCopy urlValue];
      v13 = [(_SFPBURL *)v11 initWithNSURL:urlValue2];
      [(_SFPBUserActivityInfo *)v5 setUrlValue:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBUserActivityInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBUserActivityInfo;
  v5 = [(_SFPBUserActivityInfo *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"valueType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBUserActivityInfo setValueType:](v5, "setValueType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(_SFPBUserActivityInfo *)v5 setKey:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"stringValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(_SFPBUserActivityInfo *)v5 setStringValue:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"urlValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[_SFPBURL alloc] initWithDictionary:v11];
      [(_SFPBUserActivityInfo *)v5 setUrlValue:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBUserActivityInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBUserActivityInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBUserActivityInfo *)self dictionaryRepresentation];
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
  if (self->_key)
  {
    v4 = [(_SFPBUserActivityInfo *)self key];
    v5 = [v4 copy];
    [dictionary setObject:v5 forKeyedSubscript:@"key"];
  }

  if (self->_stringValue)
  {
    stringValue = [(_SFPBUserActivityInfo *)self stringValue];
    v7 = [stringValue copy];
    [dictionary setObject:v7 forKeyedSubscript:@"stringValue"];
  }

  if (self->_urlValue)
  {
    urlValue = [(_SFPBUserActivityInfo *)self urlValue];
    dictionaryRepresentation = [urlValue dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"urlValue"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"urlValue"];
    }
  }

  if (self->_valueType)
  {
    valueType = [(_SFPBUserActivityInfo *)self valueType];
    if (valueType)
    {
      if (valueType == 1)
      {
        v12 = @"1";
      }

      else
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", valueType];
      }
    }

    else
    {
      v12 = @"0";
    }

    [dictionary setObject:v12 forKeyedSubscript:@"valueType"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_valueType;
  v4 = [(NSString *)self->_key hash];
  v5 = v4 ^ [(NSString *)self->_stringValue hash];
  return v5 ^ [(_SFPBURL *)self->_urlValue hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  valueType = self->_valueType;
  if (valueType != [equalCopy valueType])
  {
    goto LABEL_18;
  }

  stringValue = [(_SFPBUserActivityInfo *)self key];
  stringValue2 = [equalCopy key];
  if ((stringValue != 0) == (stringValue2 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(_SFPBUserActivityInfo *)self key];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBUserActivityInfo *)self key];
    v11 = [equalCopy key];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  stringValue = [(_SFPBUserActivityInfo *)self stringValue];
  stringValue2 = [equalCopy stringValue];
  if ((stringValue != 0) == (stringValue2 == 0))
  {
    goto LABEL_17;
  }

  stringValue3 = [(_SFPBUserActivityInfo *)self stringValue];
  if (stringValue3)
  {
    v14 = stringValue3;
    stringValue4 = [(_SFPBUserActivityInfo *)self stringValue];
    stringValue5 = [equalCopy stringValue];
    v17 = [stringValue4 isEqual:stringValue5];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  stringValue = [(_SFPBUserActivityInfo *)self urlValue];
  stringValue2 = [equalCopy urlValue];
  if ((stringValue != 0) != (stringValue2 == 0))
  {
    urlValue = [(_SFPBUserActivityInfo *)self urlValue];
    if (!urlValue)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = urlValue;
    urlValue2 = [(_SFPBUserActivityInfo *)self urlValue];
    urlValue3 = [equalCopy urlValue];
    v22 = [urlValue2 isEqual:urlValue3];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBUserActivityInfo *)self valueType])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBUserActivityInfo *)self key];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  stringValue = [(_SFPBUserActivityInfo *)self stringValue];
  if (stringValue)
  {
    PBDataWriterWriteStringField();
  }

  urlValue = [(_SFPBUserActivityInfo *)self urlValue];
  if (urlValue)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setStringValue:(id)value
{
  v4 = [value copy];
  stringValue = self->_stringValue;
  self->_stringValue = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setKey:(id)key
{
  v4 = [key copy];
  key = self->_key;
  self->_key = v4;

  MEMORY[0x1EEE66BB8]();
}

@end