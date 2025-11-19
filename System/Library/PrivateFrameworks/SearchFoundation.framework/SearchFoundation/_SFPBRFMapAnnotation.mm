@interface _SFPBRFMapAnnotation
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFMapAnnotation)initWithDictionary:(id)a3;
- (_SFPBRFMapAnnotation)initWithFacade:(id)a3;
- (_SFPBRFMapAnnotation)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFMapAnnotation

- (_SFPBRFMapAnnotation)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFMapAnnotation *)self init];
  if (v5)
  {
    v6 = [v4 coordinate];

    if (v6)
    {
      v7 = [_SFPBLatLng alloc];
      v8 = [v4 coordinate];
      v9 = [(_SFPBLatLng *)v7 initWithFacade:v8];
      [(_SFPBRFMapAnnotation *)v5 setCoordinate:v9];
    }

    v10 = [v4 content];

    if (v10)
    {
      v11 = [_SFPBRFVisualProperty alloc];
      v12 = [v4 content];
      v13 = [(_SFPBRFVisualProperty *)v11 initWithFacade:v12];
      [(_SFPBRFMapAnnotation *)v5 setContent:v13];
    }

    v14 = [v4 title];

    if (v14)
    {
      v15 = [v4 title];
      [(_SFPBRFMapAnnotation *)v5 setTitle:v15];
    }

    v16 = [v4 anchor];

    if (v16)
    {
      v17 = [_SFPBRFMapPoint alloc];
      v18 = [v4 anchor];
      v19 = [(_SFPBRFMapPoint *)v17 initWithFacade:v18];
      [(_SFPBRFMapAnnotation *)v5 setAnchor:v19];
    }

    v20 = [v4 label];

    if (v20)
    {
      v21 = [_SFPBRFTextProperty alloc];
      v22 = [v4 label];
      v23 = [(_SFPBRFTextProperty *)v21 initWithFacade:v22];
      [(_SFPBRFMapAnnotation *)v5 setLabel:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (_SFPBRFMapAnnotation)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _SFPBRFMapAnnotation;
  v5 = [(_SFPBRFMapAnnotation *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"coordinate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBLatLng alloc] initWithDictionary:v6];
      [(_SFPBRFMapAnnotation *)v5 setCoordinate:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v8];
      [(_SFPBRFMapAnnotation *)v5 setContent:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBRFMapAnnotation *)v5 setTitle:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"anchor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFMapPoint alloc] initWithDictionary:v12];
      [(_SFPBRFMapAnnotation *)v5 setAnchor:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFTextProperty alloc] initWithDictionary:v14];
      [(_SFPBRFMapAnnotation *)v5 setLabel:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBRFMapAnnotation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFMapAnnotation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFMapAnnotation *)self dictionaryRepresentation];
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
  if (self->_anchor)
  {
    v4 = [(_SFPBRFMapAnnotation *)self anchor];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"anchor"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"anchor"];
    }
  }

  if (self->_content)
  {
    v7 = [(_SFPBRFMapAnnotation *)self content];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"content"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"content"];
    }
  }

  if (self->_coordinate)
  {
    v10 = [(_SFPBRFMapAnnotation *)self coordinate];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"coordinate"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"coordinate"];
    }
  }

  if (self->_label)
  {
    v13 = [(_SFPBRFMapAnnotation *)self label];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"label"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"label"];
    }
  }

  if (self->_title)
  {
    v16 = [(_SFPBRFMapAnnotation *)self title];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"title"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBLatLng *)self->_coordinate hash];
  v4 = [(_SFPBRFVisualProperty *)self->_content hash]^ v3;
  v5 = [(NSString *)self->_title hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFMapPoint *)self->_anchor hash];
  return v6 ^ [(_SFPBRFTextProperty *)self->_label hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_SFPBRFMapAnnotation *)self coordinate];
  v6 = [v4 coordinate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_SFPBRFMapAnnotation *)self coordinate];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFMapAnnotation *)self coordinate];
    v10 = [v4 coordinate];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFMapAnnotation *)self content];
  v6 = [v4 content];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_SFPBRFMapAnnotation *)self content];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFMapAnnotation *)self content];
    v15 = [v4 content];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFMapAnnotation *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_SFPBRFMapAnnotation *)self title];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFMapAnnotation *)self title];
    v20 = [v4 title];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFMapAnnotation *)self anchor];
  v6 = [v4 anchor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_SFPBRFMapAnnotation *)self anchor];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFMapAnnotation *)self anchor];
    v25 = [v4 anchor];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFMapAnnotation *)self label];
  v6 = [v4 label];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_SFPBRFMapAnnotation *)self label];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_SFPBRFMapAnnotation *)self label];
    v30 = [v4 label];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_SFPBRFMapAnnotation *)self coordinate];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBRFMapAnnotation *)self content];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFMapAnnotation *)self title];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBRFMapAnnotation *)self anchor];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBRFMapAnnotation *)self label];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end