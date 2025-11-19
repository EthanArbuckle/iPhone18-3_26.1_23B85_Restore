@interface _SFPBPin
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPin)initWithDictionary:(id)a3;
- (_SFPBPin)initWithFacade:(id)a3;
- (_SFPBPin)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setLabel:(id)a3;
- (void)setMapsData:(id)a3;
- (void)setPinText:(id)a3;
- (void)setResultID:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPin

- (_SFPBPin)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBPin *)self init];
  if (v5)
  {
    v6 = [v4 location];

    if (v6)
    {
      v7 = [_SFPBLatLng alloc];
      v8 = [v4 location];
      v9 = [(_SFPBLatLng *)v7 initWithFacade:v8];
      [(_SFPBPin *)v5 setLocation:v9];
    }

    v10 = [v4 pinColor];

    if (v10)
    {
      v11 = [_SFPBColor alloc];
      v12 = [v4 pinColor];
      v13 = [(_SFPBColor *)v11 initWithFacade:v12];
      [(_SFPBPin *)v5 setPinColor:v13];
    }

    v14 = [v4 label];

    if (v14)
    {
      v15 = [v4 label];
      [(_SFPBPin *)v5 setLabel:v15];
    }

    v16 = [v4 resultID];

    if (v16)
    {
      v17 = [v4 resultID];
      [(_SFPBPin *)v5 setResultID:v17];
    }

    v18 = [v4 mapsData];

    if (v18)
    {
      v19 = [v4 mapsData];
      [(_SFPBPin *)v5 setMapsData:v19];
    }

    if ([v4 hasPinBehavior])
    {
      -[_SFPBPin setPinBehavior:](v5, "setPinBehavior:", [v4 pinBehavior]);
    }

    v20 = [v4 pinText];

    if (v20)
    {
      v21 = [v4 pinText];
      [(_SFPBPin *)v5 setPinText:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBPin)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _SFPBPin;
  v5 = [(_SFPBPin *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBLatLng alloc] initWithDictionary:v6];
      [(_SFPBPin *)v5 setLocation:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"pinColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBColor alloc] initWithDictionary:v8];
      [(_SFPBPin *)v5 setPinColor:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBPin *)v5 setLabel:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"resultID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBPin *)v5 setResultID:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"mapsData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v14 options:0];
      [(_SFPBPin *)v5 setMapsData:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"pinBehavior"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPin setPinBehavior:](v5, "setPinBehavior:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"pinText"];
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

- (_SFPBPin)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPin *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPin *)self dictionaryRepresentation];
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
  if (self->_label)
  {
    v4 = [(_SFPBPin *)self label];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"label"];
  }

  if (self->_location)
  {
    v6 = [(_SFPBPin *)self location];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"location"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"location"];
    }
  }

  if (self->_mapsData)
  {
    v9 = [(_SFPBPin *)self mapsData];
    v10 = [v9 base64EncodedStringWithOptions:0];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"mapsData"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"mapsData"];
    }
  }

  if (self->_pinBehavior)
  {
    v12 = [(_SFPBPin *)self pinBehavior];
    if (v12 >= 3)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
    }

    else
    {
      v13 = off_1E7ACE548[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"pinBehavior"];
  }

  if (self->_pinColor)
  {
    v14 = [(_SFPBPin *)self pinColor];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"pinColor"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"pinColor"];
    }
  }

  if (self->_pinText)
  {
    v17 = [(_SFPBPin *)self pinText];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"pinText"];
  }

  if (self->_resultID)
  {
    v19 = [(_SFPBPin *)self resultID];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"resultID"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  v5 = [(_SFPBPin *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v7 = [(_SFPBPin *)self location];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBPin *)self location];
    v10 = [v4 location];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPin *)self pinColor];
  v6 = [v4 pinColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v12 = [(_SFPBPin *)self pinColor];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBPin *)self pinColor];
    v15 = [v4 pinColor];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPin *)self label];
  v6 = [v4 label];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v17 = [(_SFPBPin *)self label];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBPin *)self label];
    v20 = [v4 label];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPin *)self resultID];
  v6 = [v4 resultID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v22 = [(_SFPBPin *)self resultID];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBPin *)self resultID];
    v25 = [v4 resultID];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPin *)self mapsData];
  v6 = [v4 mapsData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v27 = [(_SFPBPin *)self mapsData];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBPin *)self mapsData];
    v30 = [v4 mapsData];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  pinBehavior = self->_pinBehavior;
  if (pinBehavior != [v4 pinBehavior])
  {
    goto LABEL_33;
  }

  v5 = [(_SFPBPin *)self pinText];
  v6 = [v4 pinText];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_32:

    goto LABEL_33;
  }

  v33 = [(_SFPBPin *)self pinText];
  if (!v33)
  {

LABEL_36:
    v38 = 1;
    goto LABEL_34;
  }

  v34 = v33;
  v35 = [(_SFPBPin *)self pinText];
  v36 = [v4 pinText];
  v37 = [v35 isEqual:v36];

  if (v37)
  {
    goto LABEL_36;
  }

LABEL_33:
  v38 = 0;
LABEL_34:

  return v38;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(_SFPBPin *)self location];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBPin *)self pinColor];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBPin *)self label];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBPin *)self resultID];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBPin *)self mapsData];
  if (v8)
  {
    PBDataWriterWriteDataField();
  }

  if ([(_SFPBPin *)self pinBehavior])
  {
    PBDataWriterWriteInt32Field();
  }

  v9 = [(_SFPBPin *)self pinText];
  if (v9)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setPinText:(id)a3
{
  v4 = [a3 copy];
  pinText = self->_pinText;
  self->_pinText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMapsData:(id)a3
{
  v4 = [a3 copy];
  mapsData = self->_mapsData;
  self->_mapsData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setResultID:(id)a3
{
  v4 = [a3 copy];
  resultID = self->_resultID;
  self->_resultID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLabel:(id)a3
{
  v4 = [a3 copy];
  label = self->_label;
  self->_label = v4;

  MEMORY[0x1EEE66BB8]();
}

@end