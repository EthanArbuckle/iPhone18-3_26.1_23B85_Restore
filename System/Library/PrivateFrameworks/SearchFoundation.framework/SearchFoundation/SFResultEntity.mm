@interface SFResultEntity
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFResultEntity)initWithCoder:(id)coder;
- (SFResultEntity)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFResultEntity

- (unint64_t)hash
{
  name = [(SFResultEntity *)self name];
  v4 = [name hash];
  maps_encrypted_muid = [(SFResultEntity *)self maps_encrypted_muid];
  v6 = [maps_encrypted_muid hash] ^ v4;
  location_type_info = [(SFResultEntity *)self location_type_info];
  v8 = [location_type_info hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFResultEntity *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      name = [(SFResultEntity *)self name];
      name2 = [(SFResultEntity *)v6 name];
      if ((name != 0) == (name2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      name3 = [(SFResultEntity *)self name];
      if (name3)
      {
        name4 = [(SFResultEntity *)self name];
        name5 = [(SFResultEntity *)v6 name];
        if (![name4 isEqual:name5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = name5;
      }

      maps_encrypted_muid = [(SFResultEntity *)self maps_encrypted_muid];
      maps_encrypted_muid2 = [(SFResultEntity *)v6 maps_encrypted_muid];
      v14 = maps_encrypted_muid2;
      if ((maps_encrypted_muid != 0) == (maps_encrypted_muid2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      maps_encrypted_muid3 = [(SFResultEntity *)self maps_encrypted_muid];
      if (maps_encrypted_muid3)
      {
        v25 = maps_encrypted_muid;
        maps_encrypted_muid4 = [(SFResultEntity *)self maps_encrypted_muid];
        maps_encrypted_muid5 = [(SFResultEntity *)v6 maps_encrypted_muid];
        v28 = maps_encrypted_muid4;
        if (![maps_encrypted_muid4 isEqual:?])
        {
          v11 = 0;
          maps_encrypted_muid = v25;
          goto LABEL_25;
        }

        v29 = maps_encrypted_muid3;
        v30 = name4;
        maps_encrypted_muid = v25;
      }

      else
      {
        v29 = 0;
        v30 = name4;
      }

      location_type_info = [(SFResultEntity *)self location_type_info];
      location_type_info2 = [(SFResultEntity *)v6 location_type_info];
      if ((location_type_info != 0) == (location_type_info2 == 0))
      {

        v11 = 0;
        maps_encrypted_muid3 = v29;
        name4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = location_type_info;
        v26 = location_type_info2;
        location_type_info3 = [(SFResultEntity *)self location_type_info];
        maps_encrypted_muid3 = v29;
        if (location_type_info3)
        {
          v23 = location_type_info3;
          location_type_info4 = [(SFResultEntity *)self location_type_info];
          location_type_info5 = [(SFResultEntity *)v6 location_type_info];
          v11 = [location_type_info4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        name4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      name5 = v31;
      if (!name3)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(SFResultEntity *)self name];
  v6 = [name copy];
  [v4 setName:v6];

  maps_encrypted_muid = [(SFResultEntity *)self maps_encrypted_muid];
  v8 = [maps_encrypted_muid copy];
  [v4 setMaps_encrypted_muid:v8];

  location_type_info = [(SFResultEntity *)self location_type_info];
  v10 = [location_type_info copy];
  [v4 setLocation_type_info:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBResultEntity alloc] initWithFacade:self];
  jsonData = [(_SFPBResultEntity *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBResultEntity alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBResultEntity *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBResultEntity alloc] initWithFacade:self];
  data = [(_SFPBResultEntity *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFResultEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBResultEntity alloc] initWithData:v5];
  v7 = [(SFResultEntity *)self initWithProtobuf:v6];

  return v7;
}

- (SFResultEntity)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = SFResultEntity;
  v5 = [(SFResultEntity *)&v16 init];
  if (v5)
  {
    name = [protobufCopy name];

    if (name)
    {
      name2 = [protobufCopy name];
      [(SFResultEntity *)v5 setName:name2];
    }

    maps_encrypted_muid = [protobufCopy maps_encrypted_muid];

    if (maps_encrypted_muid)
    {
      maps_encrypted_muid2 = [protobufCopy maps_encrypted_muid];
      [(SFResultEntity *)v5 setMaps_encrypted_muid:maps_encrypted_muid2];
    }

    location_type_info = [protobufCopy location_type_info];

    if (location_type_info)
    {
      v11 = [SFLocationTypeInfo alloc];
      location_type_info2 = [protobufCopy location_type_info];
      v13 = [(SFLocationTypeInfo *)v11 initWithProtobuf:location_type_info2];
      [(SFResultEntity *)v5 setLocation_type_info:v13];
    }

    v14 = v5;
  }

  return v5;
}

@end