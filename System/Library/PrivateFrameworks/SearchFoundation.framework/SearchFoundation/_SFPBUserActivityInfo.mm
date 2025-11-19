@interface _SFPBUserActivityInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBUserActivityInfo)initWithDictionary:(id)a3;
- (_SFPBUserActivityInfo)initWithFacade:(id)a3;
- (_SFPBUserActivityInfo)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setKey:(id)a3;
- (void)setStringValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBUserActivityInfo

- (_SFPBUserActivityInfo)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBUserActivityInfo *)self init];
  if (v5)
  {
    if ([v4 hasValueType])
    {
      -[_SFPBUserActivityInfo setValueType:](v5, "setValueType:", [v4 valueType]);
    }

    v6 = [v4 key];

    if (v6)
    {
      v7 = [v4 key];
      [(_SFPBUserActivityInfo *)v5 setKey:v7];
    }

    v8 = [v4 stringValue];

    if (v8)
    {
      v9 = [v4 stringValue];
      [(_SFPBUserActivityInfo *)v5 setStringValue:v9];
    }

    v10 = [v4 urlValue];

    if (v10)
    {
      v11 = [_SFPBURL alloc];
      v12 = [v4 urlValue];
      v13 = [(_SFPBURL *)v11 initWithNSURL:v12];
      [(_SFPBUserActivityInfo *)v5 setUrlValue:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBUserActivityInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _SFPBUserActivityInfo;
  v5 = [(_SFPBUserActivityInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"valueType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBUserActivityInfo setValueType:](v5, "setValueType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(_SFPBUserActivityInfo *)v5 setKey:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"stringValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(_SFPBUserActivityInfo *)v5 setStringValue:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"urlValue"];
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

- (_SFPBUserActivityInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBUserActivityInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBUserActivityInfo *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_key)
  {
    v4 = [(_SFPBUserActivityInfo *)self key];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"key"];
  }

  if (self->_stringValue)
  {
    v6 = [(_SFPBUserActivityInfo *)self stringValue];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"stringValue"];
  }

  if (self->_urlValue)
  {
    v8 = [(_SFPBUserActivityInfo *)self urlValue];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"urlValue"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"urlValue"];
    }
  }

  if (self->_valueType)
  {
    v11 = [(_SFPBUserActivityInfo *)self valueType];
    if (v11)
    {
      if (v11 == 1)
      {
        v12 = @"1";
      }

      else
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v11];
      }
    }

    else
    {
      v12 = @"0";
    }

    [v3 setObject:v12 forKeyedSubscript:@"valueType"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_valueType;
  v4 = [(NSString *)self->_key hash];
  v5 = v4 ^ [(NSString *)self->_stringValue hash];
  return v5 ^ [(_SFPBURL *)self->_urlValue hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  valueType = self->_valueType;
  if (valueType != [v4 valueType])
  {
    goto LABEL_18;
  }

  v6 = [(_SFPBUserActivityInfo *)self key];
  v7 = [v4 key];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(_SFPBUserActivityInfo *)self key];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBUserActivityInfo *)self key];
    v11 = [v4 key];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(_SFPBUserActivityInfo *)self stringValue];
  v7 = [v4 stringValue];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(_SFPBUserActivityInfo *)self stringValue];
  if (v13)
  {
    v14 = v13;
    v15 = [(_SFPBUserActivityInfo *)self stringValue];
    v16 = [v4 stringValue];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(_SFPBUserActivityInfo *)self urlValue];
  v7 = [v4 urlValue];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(_SFPBUserActivityInfo *)self urlValue];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(_SFPBUserActivityInfo *)self urlValue];
    v21 = [v4 urlValue];
    v22 = [v20 isEqual:v21];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  if ([(_SFPBUserActivityInfo *)self valueType])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBUserActivityInfo *)self key];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBUserActivityInfo *)self stringValue];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBUserActivityInfo *)self urlValue];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setStringValue:(id)a3
{
  v4 = [a3 copy];
  stringValue = self->_stringValue;
  self->_stringValue = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setKey:(id)a3
{
  v4 = [a3 copy];
  key = self->_key;
  self->_key = v4;

  MEMORY[0x1EEE66BB8]();
}

@end