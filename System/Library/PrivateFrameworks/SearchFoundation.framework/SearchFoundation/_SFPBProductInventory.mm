@interface _SFPBProductInventory
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBProductInventory)initWithDictionary:(id)a3;
- (_SFPBProductInventory)initWithFacade:(id)a3;
- (_SFPBProductInventory)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setStoreAddress:(id)a3;
- (void)setStoreId:(id)a3;
- (void)setStoreName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBProductInventory

- (_SFPBProductInventory)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBProductInventory *)self init];
  if (v5)
  {
    if ([v4 hasType])
    {
      -[_SFPBProductInventory setType:](v5, "setType:", [v4 type]);
    }

    v6 = [v4 storeId];

    if (v6)
    {
      v7 = [v4 storeId];
      [(_SFPBProductInventory *)v5 setStoreId:v7];
    }

    if ([v4 hasAvailabilityStatus])
    {
      -[_SFPBProductInventory setAvailabilityStatus:](v5, "setAvailabilityStatus:", [v4 availabilityStatus]);
    }

    v8 = [v4 distance];

    if (v8)
    {
      v9 = [v4 distance];
      [v9 floatValue];
      [(_SFPBProductInventory *)v5 setDistance:?];
    }

    if ([v4 hasDistanceUnit])
    {
      -[_SFPBProductInventory setDistanceUnit:](v5, "setDistanceUnit:", [v4 distanceUnit]);
    }

    v10 = [v4 timestamp];

    if (v10)
    {
      v11 = [_SFPBDate alloc];
      v12 = [v4 timestamp];
      v13 = [(_SFPBDate *)v11 initWithNSDate:v12];
      [(_SFPBProductInventory *)v5 setTimestamp:v13];
    }

    v14 = [v4 storeName];

    if (v14)
    {
      v15 = [v4 storeName];
      [(_SFPBProductInventory *)v5 setStoreName:v15];
    }

    v16 = [v4 storeAddress];

    if (v16)
    {
      v17 = [v4 storeAddress];
      [(_SFPBProductInventory *)v5 setStoreAddress:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBProductInventory)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _SFPBProductInventory;
  v5 = [(_SFPBProductInventory *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBProductInventory setType:](v5, "setType:", [v6 intValue]);
    }

    v20 = v6;
    v7 = [v4 objectForKeyedSubscript:@"storeId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(_SFPBProductInventory *)v5 setStoreId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"availabilityStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBProductInventory setAvailabilityStatus:](v5, "setAvailabilityStatus:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"distance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(_SFPBProductInventory *)v5 setDistance:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"distanceUnit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBProductInventory setDistanceUnit:](v5, "setDistanceUnit:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBDate alloc] initWithDictionary:v12];
      [(_SFPBProductInventory *)v5 setTimestamp:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"storeName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBProductInventory *)v5 setStoreName:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"storeAddress"];
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

- (_SFPBProductInventory)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBProductInventory *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBProductInventory *)self dictionaryRepresentation];
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
  if (self->_availabilityStatus)
  {
    v4 = [(_SFPBProductInventory *)self availabilityStatus];
    if (v4 >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACE560[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"availabilityStatus"];
  }

  if (self->_distance != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBProductInventory *)self distance];
    v7 = [v6 numberWithFloat:?];
    [v3 setObject:v7 forKeyedSubscript:@"distance"];
  }

  if (self->_distanceUnit)
  {
    v8 = [(_SFPBProductInventory *)self distanceUnit];
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = @"1";
      }

      else
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
      }
    }

    else
    {
      v9 = @"0";
    }

    [v3 setObject:v9 forKeyedSubscript:@"distanceUnit"];
  }

  if (self->_storeAddress)
  {
    v10 = [(_SFPBProductInventory *)self storeAddress];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"storeAddress"];
  }

  if (self->_storeId)
  {
    v12 = [(_SFPBProductInventory *)self storeId];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"storeId"];
  }

  if (self->_storeName)
  {
    v14 = [(_SFPBProductInventory *)self storeName];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"storeName"];
  }

  if (self->_timestamp)
  {
    v16 = [(_SFPBProductInventory *)self timestamp];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"timestamp"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"timestamp"];
    }
  }

  if (self->_type)
  {
    v19 = [(_SFPBProductInventory *)self type];
    if (v19)
    {
      if (v19 == 1)
      {
        v20 = @"1";
      }

      else
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v19];
      }
    }

    else
    {
      v20 = @"0";
    }

    [v3 setObject:v20 forKeyedSubscript:@"type"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  type = self->_type;
  if (type != [v4 type])
  {
    goto LABEL_26;
  }

  v6 = [(_SFPBProductInventory *)self storeId];
  v7 = [v4 storeId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_25;
  }

  v8 = [(_SFPBProductInventory *)self storeId];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBProductInventory *)self storeId];
    v11 = [v4 storeId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  availabilityStatus = self->_availabilityStatus;
  if (availabilityStatus != [v4 availabilityStatus])
  {
    goto LABEL_26;
  }

  distance = self->_distance;
  [v4 distance];
  if (distance != v15)
  {
    goto LABEL_26;
  }

  distanceUnit = self->_distanceUnit;
  if (distanceUnit != [v4 distanceUnit])
  {
    goto LABEL_26;
  }

  v6 = [(_SFPBProductInventory *)self timestamp];
  v7 = [v4 timestamp];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_25;
  }

  v17 = [(_SFPBProductInventory *)self timestamp];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBProductInventory *)self timestamp];
    v20 = [v4 timestamp];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v6 = [(_SFPBProductInventory *)self storeName];
  v7 = [v4 storeName];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_25;
  }

  v22 = [(_SFPBProductInventory *)self storeName];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBProductInventory *)self storeName];
    v25 = [v4 storeName];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v6 = [(_SFPBProductInventory *)self storeAddress];
  v7 = [v4 storeAddress];
  if ((v6 != 0) != (v7 == 0))
  {
    v27 = [(_SFPBProductInventory *)self storeAddress];
    if (!v27)
    {

LABEL_29:
      v32 = 1;
      goto LABEL_27;
    }

    v28 = v27;
    v29 = [(_SFPBProductInventory *)self storeAddress];
    v30 = [v4 storeAddress];
    v31 = [v29 isEqual:v30];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
  if ([(_SFPBProductInventory *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBProductInventory *)self storeId];
  if (v4)
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

  v6 = [(_SFPBProductInventory *)self timestamp];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBProductInventory *)self storeName];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBProductInventory *)self storeAddress];
  if (v8)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setStoreAddress:(id)a3
{
  v4 = [a3 copy];
  storeAddress = self->_storeAddress;
  self->_storeAddress = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setStoreName:(id)a3
{
  v4 = [a3 copy];
  storeName = self->_storeName;
  self->_storeName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setStoreId:(id)a3
{
  v4 = [a3 copy];
  storeId = self->_storeId;
  self->_storeId = v4;

  MEMORY[0x1EEE66BB8]();
}

@end