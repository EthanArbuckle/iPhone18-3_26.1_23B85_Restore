@interface _SFPBResultEntity
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBResultEntity)initWithDictionary:(id)a3;
- (_SFPBResultEntity)initWithFacade:(id)a3;
- (_SFPBResultEntity)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setMaps_encrypted_muid:(id)a3;
- (void)setName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBResultEntity

- (_SFPBResultEntity)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBResultEntity *)self init];
  if (v5)
  {
    v6 = [v4 name];

    if (v6)
    {
      v7 = [v4 name];
      [(_SFPBResultEntity *)v5 setName:v7];
    }

    v8 = [v4 maps_encrypted_muid];

    if (v8)
    {
      v9 = [v4 maps_encrypted_muid];
      [(_SFPBResultEntity *)v5 setMaps_encrypted_muid:v9];
    }

    v10 = [v4 location_type_info];

    if (v10)
    {
      v11 = [_SFPBLocationTypeInfo alloc];
      v12 = [v4 location_type_info];
      v13 = [(_SFPBLocationTypeInfo *)v11 initWithFacade:v12];
      [(_SFPBResultEntity *)v5 setLocation_type_info:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBResultEntity)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBResultEntity;
  v5 = [(_SFPBResultEntity *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBResultEntity *)v5 setName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"mapsEncryptedMuid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBResultEntity *)v5 setMaps_encrypted_muid:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"locationTypeInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBLocationTypeInfo alloc] initWithDictionary:v10];
      [(_SFPBResultEntity *)v5 setLocation_type_info:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBResultEntity)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBResultEntity *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBResultEntity *)self dictionaryRepresentation];
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
  if (self->_location_type_info)
  {
    v4 = [(_SFPBResultEntity *)self location_type_info];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"locationTypeInfo"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"locationTypeInfo"];
    }
  }

  if (self->_maps_encrypted_muid)
  {
    v7 = [(_SFPBResultEntity *)self maps_encrypted_muid];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"mapsEncryptedMuid"];
  }

  if (self->_name)
  {
    v9 = [(_SFPBResultEntity *)self name];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"name"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_maps_encrypted_muid hash]^ v3;
  return v4 ^ [(_SFPBLocationTypeInfo *)self->_location_type_info hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBResultEntity *)self name];
  v6 = [v4 name];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBResultEntity *)self name];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBResultEntity *)self name];
    v10 = [v4 name];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBResultEntity *)self maps_encrypted_muid];
  v6 = [v4 maps_encrypted_muid];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBResultEntity *)self maps_encrypted_muid];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBResultEntity *)self maps_encrypted_muid];
    v15 = [v4 maps_encrypted_muid];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBResultEntity *)self location_type_info];
  v6 = [v4 location_type_info];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBResultEntity *)self location_type_info];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBResultEntity *)self location_type_info];
    v20 = [v4 location_type_info];
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
  v4 = [(_SFPBResultEntity *)self name];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBResultEntity *)self maps_encrypted_muid];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBResultEntity *)self location_type_info];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setMaps_encrypted_muid:(id)a3
{
  v4 = [a3 copy];
  maps_encrypted_muid = self->_maps_encrypted_muid;
  self->_maps_encrypted_muid = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

@end