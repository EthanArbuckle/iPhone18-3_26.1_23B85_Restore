@interface _SFPBProductInventory
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBProductInventory)initWithDictionary:(id)dictionary;
- (_SFPBProductInventory)initWithFacade:(id)facade;
- (_SFPBProductInventory)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setStoreAddress:(id)address;
- (void)setStoreId:(id)id;
- (void)setStoreName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _SFPBProductInventory

- (_SFPBProductInventory)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBProductInventory *)self init];
  if (v5)
  {
    if ([facadeCopy hasType])
    {
      -[_SFPBProductInventory setType:](v5, "setType:", [facadeCopy type]);
    }

    storeId = [facadeCopy storeId];

    if (storeId)
    {
      storeId2 = [facadeCopy storeId];
      [(_SFPBProductInventory *)v5 setStoreId:storeId2];
    }

    if ([facadeCopy hasAvailabilityStatus])
    {
      -[_SFPBProductInventory setAvailabilityStatus:](v5, "setAvailabilityStatus:", [facadeCopy availabilityStatus]);
    }

    distance = [facadeCopy distance];

    if (distance)
    {
      distance2 = [facadeCopy distance];
      [distance2 floatValue];
      [(_SFPBProductInventory *)v5 setDistance:?];
    }

    if ([facadeCopy hasDistanceUnit])
    {
      -[_SFPBProductInventory setDistanceUnit:](v5, "setDistanceUnit:", [facadeCopy distanceUnit]);
    }

    timestamp = [facadeCopy timestamp];

    if (timestamp)
    {
      v11 = [_SFPBDate alloc];
      timestamp2 = [facadeCopy timestamp];
      v13 = [(_SFPBDate *)v11 initWithNSDate:timestamp2];
      [(_SFPBProductInventory *)v5 setTimestamp:v13];
    }

    storeName = [facadeCopy storeName];

    if (storeName)
    {
      storeName2 = [facadeCopy storeName];
      [(_SFPBProductInventory *)v5 setStoreName:storeName2];
    }

    storeAddress = [facadeCopy storeAddress];

    if (storeAddress)
    {
      storeAddress2 = [facadeCopy storeAddress];
      [(_SFPBProductInventory *)v5 setStoreAddress:storeAddress2];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBProductInventory)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = _SFPBProductInventory;
  v5 = [(_SFPBProductInventory *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBProductInventory setType:](v5, "setType:", [v6 intValue]);
    }

    v20 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"storeId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(_SFPBProductInventory *)v5 setStoreId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"availabilityStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBProductInventory setAvailabilityStatus:](v5, "setAvailabilityStatus:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"distance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(_SFPBProductInventory *)v5 setDistance:?];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"distanceUnit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBProductInventory setDistanceUnit:](v5, "setDistanceUnit:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBDate alloc] initWithDictionary:v12];
      [(_SFPBProductInventory *)v5 setTimestamp:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"storeName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBProductInventory *)v5 setStoreName:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"storeAddress"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBProductInventory *)v5 setStoreAddress:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBProductInventory)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBProductInventory *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBProductInventory *)self dictionaryRepresentation];
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
  if (self->_availabilityStatus)
  {
    availabilityStatus = [(_SFPBProductInventory *)self availabilityStatus];
    if (availabilityStatus >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", availabilityStatus];
    }

    else
    {
      v5 = off_1E7ACE560[availabilityStatus];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"availabilityStatus"];
  }

  if (self->_distance != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBProductInventory *)self distance];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"distance"];
  }

  if (self->_distanceUnit)
  {
    distanceUnit = [(_SFPBProductInventory *)self distanceUnit];
    if (distanceUnit)
    {
      if (distanceUnit == 1)
      {
        v9 = @"1";
      }

      else
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", distanceUnit];
      }
    }

    else
    {
      v9 = @"0";
    }

    [dictionary setObject:v9 forKeyedSubscript:@"distanceUnit"];
  }

  if (self->_storeAddress)
  {
    storeAddress = [(_SFPBProductInventory *)self storeAddress];
    v11 = [storeAddress copy];
    [dictionary setObject:v11 forKeyedSubscript:@"storeAddress"];
  }

  if (self->_storeId)
  {
    storeId = [(_SFPBProductInventory *)self storeId];
    v13 = [storeId copy];
    [dictionary setObject:v13 forKeyedSubscript:@"storeId"];
  }

  if (self->_storeName)
  {
    storeName = [(_SFPBProductInventory *)self storeName];
    v15 = [storeName copy];
    [dictionary setObject:v15 forKeyedSubscript:@"storeName"];
  }

  if (self->_timestamp)
  {
    timestamp = [(_SFPBProductInventory *)self timestamp];
    dictionaryRepresentation = [timestamp dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"timestamp"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"timestamp"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBProductInventory *)self type];
    if (type)
    {
      if (type == 1)
      {
        v20 = @"1";
      }

      else
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
      }
    }

    else
    {
      v20 = @"0";
    }

    [dictionary setObject:v20 forKeyedSubscript:@"type"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(NSString *)self->_storeId hash];
  distance = self->_distance;
  v8 = distance < 0.0;
  if (distance == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v9 = distance;
    if (v8)
    {
      v9 = -v9;
    }

    *v5.i64 = floor(v9 + 0.5);
    v10 = (v9 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v12 += v10;
      }
    }

    else
    {
      v12 -= fabs(v10);
    }
  }

  v13 = 2654435761 * self->_distanceUnit;
  v14 = v4 ^ (2654435761 * type) ^ (2654435761 * self->_availabilityStatus) ^ v12;
  v15 = v13 ^ [(_SFPBDate *)self->_timestamp hash];
  v16 = v14 ^ v15 ^ [(NSString *)self->_storeName hash];
  return v16 ^ [(NSString *)self->_storeAddress hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  type = self->_type;
  if (type != [equalCopy type])
  {
    goto LABEL_26;
  }

  storeId = [(_SFPBProductInventory *)self storeId];
  storeId2 = [equalCopy storeId];
  if ((storeId != 0) == (storeId2 == 0))
  {
    goto LABEL_25;
  }

  storeId3 = [(_SFPBProductInventory *)self storeId];
  if (storeId3)
  {
    v9 = storeId3;
    storeId4 = [(_SFPBProductInventory *)self storeId];
    storeId5 = [equalCopy storeId];
    v12 = [storeId4 isEqual:storeId5];

    if (!v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  availabilityStatus = self->_availabilityStatus;
  if (availabilityStatus != [equalCopy availabilityStatus])
  {
    goto LABEL_26;
  }

  distance = self->_distance;
  [equalCopy distance];
  if (distance != v15)
  {
    goto LABEL_26;
  }

  distanceUnit = self->_distanceUnit;
  if (distanceUnit != [equalCopy distanceUnit])
  {
    goto LABEL_26;
  }

  storeId = [(_SFPBProductInventory *)self timestamp];
  storeId2 = [equalCopy timestamp];
  if ((storeId != 0) == (storeId2 == 0))
  {
    goto LABEL_25;
  }

  timestamp = [(_SFPBProductInventory *)self timestamp];
  if (timestamp)
  {
    v18 = timestamp;
    timestamp2 = [(_SFPBProductInventory *)self timestamp];
    timestamp3 = [equalCopy timestamp];
    v21 = [timestamp2 isEqual:timestamp3];

    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  storeId = [(_SFPBProductInventory *)self storeName];
  storeId2 = [equalCopy storeName];
  if ((storeId != 0) == (storeId2 == 0))
  {
    goto LABEL_25;
  }

  storeName = [(_SFPBProductInventory *)self storeName];
  if (storeName)
  {
    v23 = storeName;
    storeName2 = [(_SFPBProductInventory *)self storeName];
    storeName3 = [equalCopy storeName];
    v26 = [storeName2 isEqual:storeName3];

    if (!v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  storeId = [(_SFPBProductInventory *)self storeAddress];
  storeId2 = [equalCopy storeAddress];
  if ((storeId != 0) != (storeId2 == 0))
  {
    storeAddress = [(_SFPBProductInventory *)self storeAddress];
    if (!storeAddress)
    {

LABEL_29:
      v32 = 1;
      goto LABEL_27;
    }

    v28 = storeAddress;
    storeAddress2 = [(_SFPBProductInventory *)self storeAddress];
    storeAddress3 = [equalCopy storeAddress];
    v31 = [storeAddress2 isEqual:storeAddress3];

    if (v31)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  v32 = 0;
LABEL_27:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBProductInventory *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  storeId = [(_SFPBProductInventory *)self storeId];
  if (storeId)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBProductInventory *)self availabilityStatus])
  {
    PBDataWriterWriteInt32Field();
  }

  [(_SFPBProductInventory *)self distance];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_SFPBProductInventory *)self distanceUnit])
  {
    PBDataWriterWriteInt32Field();
  }

  timestamp = [(_SFPBProductInventory *)self timestamp];
  if (timestamp)
  {
    PBDataWriterWriteSubmessage();
  }

  storeName = [(_SFPBProductInventory *)self storeName];
  if (storeName)
  {
    PBDataWriterWriteStringField();
  }

  storeAddress = [(_SFPBProductInventory *)self storeAddress];
  if (storeAddress)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setStoreAddress:(id)address
{
  v4 = [address copy];
  storeAddress = self->_storeAddress;
  self->_storeAddress = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setStoreName:(id)name
{
  v4 = [name copy];
  storeName = self->_storeName;
  self->_storeName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setStoreId:(id)id
{
  v4 = [id copy];
  storeId = self->_storeId;
  self->_storeId = v4;

  MEMORY[0x1EEE66BB8]();
}

@end