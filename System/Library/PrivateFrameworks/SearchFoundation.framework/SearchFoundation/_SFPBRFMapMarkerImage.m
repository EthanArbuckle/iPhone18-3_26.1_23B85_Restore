@interface _SFPBRFMapMarkerImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFMapMarkerImage)initWithDictionary:(id)a3;
- (_SFPBRFMapMarkerImage)initWithFacade:(id)a3;
- (_SFPBRFMapMarkerImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setSystemImage:(id)a3;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFMapMarkerImage

- (_SFPBRFMapMarkerImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFMapMarkerImage *)self init];
  if (v5)
  {
    v6 = [v4 coordinate];

    if (v6)
    {
      v7 = [_SFPBLatLng alloc];
      v8 = [v4 coordinate];
      v9 = [(_SFPBLatLng *)v7 initWithFacade:v8];
      [(_SFPBRFMapMarkerImage *)v5 setCoordinate:v9];
    }

    v10 = [v4 title];

    if (v10)
    {
      v11 = [v4 title];
      [(_SFPBRFMapMarkerImage *)v5 setTitle:v11];
    }

    v12 = [v4 systemImage];

    if (v12)
    {
      v13 = [v4 systemImage];
      [(_SFPBRFMapMarkerImage *)v5 setSystemImage:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFMapMarkerImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBRFMapMarkerImage;
  v5 = [(_SFPBRFMapMarkerImage *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"coordinate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBLatLng alloc] initWithDictionary:v6];
      [(_SFPBRFMapMarkerImage *)v5 setCoordinate:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBRFMapMarkerImage *)v5 setTitle:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"systemImage"];
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

- (_SFPBRFMapMarkerImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFMapMarkerImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFMapMarkerImage *)self dictionaryRepresentation];
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
  if (self->_coordinate)
  {
    v4 = [(_SFPBRFMapMarkerImage *)self coordinate];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"coordinate"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"coordinate"];
    }
  }

  if (self->_systemImage)
  {
    v7 = [(_SFPBRFMapMarkerImage *)self systemImage];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"systemImage"];
  }

  if (self->_title)
  {
    v9 = [(_SFPBRFMapMarkerImage *)self title];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"title"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBLatLng *)self->_coordinate hash];
  v4 = [(NSString *)self->_title hash]^ v3;
  return v4 ^ [(NSString *)self->_systemImage hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBRFMapMarkerImage *)self coordinate];
  v6 = [v4 coordinate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBRFMapMarkerImage *)self coordinate];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFMapMarkerImage *)self coordinate];
    v10 = [v4 coordinate];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFMapMarkerImage *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBRFMapMarkerImage *)self title];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFMapMarkerImage *)self title];
    v15 = [v4 title];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFMapMarkerImage *)self systemImage];
  v6 = [v4 systemImage];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBRFMapMarkerImage *)self systemImage];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBRFMapMarkerImage *)self systemImage];
    v20 = [v4 systemImage];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_SFPBRFMapMarkerImage *)self coordinate];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBRFMapMarkerImage *)self title];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBRFMapMarkerImage *)self systemImage];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setSystemImage:(id)a3
{
  v4 = [a3 copy];
  systemImage = self->_systemImage;
  self->_systemImage = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end