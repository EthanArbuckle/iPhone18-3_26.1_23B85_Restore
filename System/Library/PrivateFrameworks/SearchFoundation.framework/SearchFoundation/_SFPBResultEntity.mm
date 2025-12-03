@interface _SFPBResultEntity
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBResultEntity)initWithDictionary:(id)dictionary;
- (_SFPBResultEntity)initWithFacade:(id)facade;
- (_SFPBResultEntity)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setMaps_encrypted_muid:(id)maps_encrypted_muid;
- (void)setName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _SFPBResultEntity

- (_SFPBResultEntity)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBResultEntity *)self init];
  if (v5)
  {
    name = [facadeCopy name];

    if (name)
    {
      name2 = [facadeCopy name];
      [(_SFPBResultEntity *)v5 setName:name2];
    }

    maps_encrypted_muid = [facadeCopy maps_encrypted_muid];

    if (maps_encrypted_muid)
    {
      maps_encrypted_muid2 = [facadeCopy maps_encrypted_muid];
      [(_SFPBResultEntity *)v5 setMaps_encrypted_muid:maps_encrypted_muid2];
    }

    location_type_info = [facadeCopy location_type_info];

    if (location_type_info)
    {
      v11 = [_SFPBLocationTypeInfo alloc];
      location_type_info2 = [facadeCopy location_type_info];
      v13 = [(_SFPBLocationTypeInfo *)v11 initWithFacade:location_type_info2];
      [(_SFPBResultEntity *)v5 setLocation_type_info:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBResultEntity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBResultEntity;
  v5 = [(_SFPBResultEntity *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBResultEntity *)v5 setName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"mapsEncryptedMuid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBResultEntity *)v5 setMaps_encrypted_muid:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"locationTypeInfo"];
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

- (_SFPBResultEntity)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBResultEntity *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBResultEntity *)self dictionaryRepresentation];
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
  if (self->_location_type_info)
  {
    location_type_info = [(_SFPBResultEntity *)self location_type_info];
    dictionaryRepresentation = [location_type_info dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"locationTypeInfo"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"locationTypeInfo"];
    }
  }

  if (self->_maps_encrypted_muid)
  {
    maps_encrypted_muid = [(_SFPBResultEntity *)self maps_encrypted_muid];
    v8 = [maps_encrypted_muid copy];
    [dictionary setObject:v8 forKeyedSubscript:@"mapsEncryptedMuid"];
  }

  if (self->_name)
  {
    name = [(_SFPBResultEntity *)self name];
    v10 = [name copy];
    [dictionary setObject:v10 forKeyedSubscript:@"name"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_maps_encrypted_muid hash]^ v3;
  return v4 ^ [(_SFPBLocationTypeInfo *)self->_location_type_info hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  name = [(_SFPBResultEntity *)self name];
  name2 = [equalCopy name];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_16;
  }

  name3 = [(_SFPBResultEntity *)self name];
  if (name3)
  {
    v8 = name3;
    name4 = [(_SFPBResultEntity *)self name];
    name5 = [equalCopy name];
    v11 = [name4 isEqual:name5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  name = [(_SFPBResultEntity *)self maps_encrypted_muid];
  name2 = [equalCopy maps_encrypted_muid];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_16;
  }

  maps_encrypted_muid = [(_SFPBResultEntity *)self maps_encrypted_muid];
  if (maps_encrypted_muid)
  {
    v13 = maps_encrypted_muid;
    maps_encrypted_muid2 = [(_SFPBResultEntity *)self maps_encrypted_muid];
    maps_encrypted_muid3 = [equalCopy maps_encrypted_muid];
    v16 = [maps_encrypted_muid2 isEqual:maps_encrypted_muid3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  name = [(_SFPBResultEntity *)self location_type_info];
  name2 = [equalCopy location_type_info];
  if ((name != 0) != (name2 == 0))
  {
    location_type_info = [(_SFPBResultEntity *)self location_type_info];
    if (!location_type_info)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = location_type_info;
    location_type_info2 = [(_SFPBResultEntity *)self location_type_info];
    location_type_info3 = [equalCopy location_type_info];
    v21 = [location_type_info2 isEqual:location_type_info3];

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
  name = [(_SFPBResultEntity *)self name];
  if (name)
  {
    PBDataWriterWriteStringField();
  }

  maps_encrypted_muid = [(_SFPBResultEntity *)self maps_encrypted_muid];
  if (maps_encrypted_muid)
  {
    PBDataWriterWriteStringField();
  }

  location_type_info = [(_SFPBResultEntity *)self location_type_info];
  if (location_type_info)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setMaps_encrypted_muid:(id)maps_encrypted_muid
{
  v4 = [maps_encrypted_muid copy];
  maps_encrypted_muid = self->_maps_encrypted_muid;
  self->_maps_encrypted_muid = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

@end