@interface _SFPBRFMapMarker
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFMapMarker)initWithDictionary:(id)a3;
- (_SFPBRFMapMarker)initWithFacade:(id)a3;
- (_SFPBRFMapMarker)initWithJSON:(id)a3;
- (_SFPBRFMapMarkerIdentifier)identifier;
- (_SFPBRFMapMarkerImage)image;
- (_SFPBRFMapMarkerText)text;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setIdentifier:(id)a3;
- (void)setImage:(id)a3;
- (void)setText:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFMapMarker

- (_SFPBRFMapMarker)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFMapMarker *)self init];
  if (v5)
  {
    if ([v4 hasIdentifier])
    {
      v6 = [v4 identifier];

      if (v6)
      {
        v7 = [_SFPBRFMapMarkerIdentifier alloc];
        v8 = [v4 identifier];
        v9 = [(_SFPBRFMapMarkerIdentifier *)v7 initWithFacade:v8];
        [(_SFPBRFMapMarker *)v5 setIdentifier:v9];
      }
    }

    if ([v4 hasText])
    {
      v10 = [v4 text];

      if (v10)
      {
        v11 = [_SFPBRFMapMarkerText alloc];
        v12 = [v4 text];
        v13 = [(_SFPBRFMapMarkerText *)v11 initWithFacade:v12];
        [(_SFPBRFMapMarker *)v5 setText:v13];
      }
    }

    if ([v4 hasImage])
    {
      v14 = [v4 image];

      if (v14)
      {
        v15 = [_SFPBRFMapMarkerImage alloc];
        v16 = [v4 image];
        v17 = [(_SFPBRFMapMarkerImage *)v15 initWithFacade:v16];
        [(_SFPBRFMapMarker *)v5 setImage:v17];
      }
    }

    v18 = [v4 tint];

    if (v18)
    {
      v19 = [_SFPBRFColor alloc];
      v20 = [v4 tint];
      v21 = [(_SFPBRFColor *)v19 initWithFacade:v20];
      [(_SFPBRFMapMarker *)v5 setTint:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBRFMapMarker)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _SFPBRFMapMarker;
  v5 = [(_SFPBRFMapMarker *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFMapMarkerIdentifier alloc] initWithDictionary:v6];
      [(_SFPBRFMapMarker *)v5 setIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFMapMarkerText alloc] initWithDictionary:v8];
      [(_SFPBRFMapMarker *)v5 setText:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFMapMarkerImage alloc] initWithDictionary:v10];
      [(_SFPBRFMapMarker *)v5 setImage:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"tint"];
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

- (_SFPBRFMapMarker)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFMapMarker *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFMapMarker *)self dictionaryRepresentation];
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
  if (self->_identifier)
  {
    v4 = [(_SFPBRFMapMarker *)self identifier];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"identifier"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"identifier"];
    }
  }

  if (self->_image)
  {
    v7 = [(_SFPBRFMapMarker *)self image];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"image"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"image"];
    }
  }

  if (self->_text)
  {
    v10 = [(_SFPBRFMapMarker *)self text];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"text"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"text"];
    }
  }

  if (self->_tint)
  {
    v13 = [(_SFPBRFMapMarker *)self tint];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"tint"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"tint"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFMapMarkerIdentifier *)self->_identifier hash];
  v4 = [(_SFPBRFMapMarkerText *)self->_text hash]^ v3;
  v5 = [(_SFPBRFMapMarkerImage *)self->_image hash];
  return v4 ^ v5 ^ [(_SFPBRFColor *)self->_tint hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_SFPBRFMapMarker *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_SFPBRFMapMarker *)self identifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFMapMarker *)self identifier];
    v10 = [v4 identifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFMapMarker *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_SFPBRFMapMarker *)self text];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFMapMarker *)self text];
    v15 = [v4 text];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFMapMarker *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_SFPBRFMapMarker *)self image];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFMapMarker *)self image];
    v20 = [v4 image];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFMapMarker *)self tint];
  v6 = [v4 tint];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_SFPBRFMapMarker *)self tint];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_SFPBRFMapMarker *)self tint];
    v25 = [v4 tint];
    v26 = [v24 isEqual:v25];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_SFPBRFMapMarker *)self identifier];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBRFMapMarker *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFMapMarker *)self image];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFMapMarker *)self tint];
  if (v7)
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

- (void)setImage:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  self->_identifier = 0;

  text = self->_text;
  self->_text = 0;

  v7 = 3;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichValue = v7;
  image = self->_image;
  self->_image = v4;
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

- (void)setText:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  self->_identifier = 0;

  image = self->_image;
  self->_image = 0;

  self->_whichValue = 2 * (v4 != 0);
  text = self->_text;
  self->_text = v4;
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

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  text = self->_text;
  self->_text = 0;

  image = self->_image;
  self->_image = 0;

  self->_whichValue = v4 != 0;
  identifier = self->_identifier;
  self->_identifier = v4;
}

@end