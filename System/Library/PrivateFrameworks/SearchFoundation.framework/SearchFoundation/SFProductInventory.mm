@interface SFProductInventory
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFProductInventory)initWithCoder:(id)coder;
- (SFProductInventory)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFProductInventory

- (SFProductInventory)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v21.receiver = self;
  v21.super_class = SFProductInventory;
  v5 = [(SFProductInventory *)&v21 init];
  if (v5)
  {
    if ([protobufCopy type])
    {
      -[SFProductInventory setType:](v5, "setType:", [protobufCopy type]);
    }

    storeId = [protobufCopy storeId];

    if (storeId)
    {
      storeId2 = [protobufCopy storeId];
      [(SFProductInventory *)v5 setStoreId:storeId2];
    }

    if ([protobufCopy availabilityStatus])
    {
      -[SFProductInventory setAvailabilityStatus:](v5, "setAvailabilityStatus:", [protobufCopy availabilityStatus]);
    }

    [protobufCopy distance];
    if (v8 != 0.0)
    {
      v9 = MEMORY[0x1E696AD98];
      [protobufCopy distance];
      v10 = [v9 numberWithFloat:?];
      [(SFProductInventory *)v5 setDistance:v10];
    }

    if ([protobufCopy distanceUnit])
    {
      -[SFProductInventory setDistanceUnit:](v5, "setDistanceUnit:", [protobufCopy distanceUnit]);
    }

    timestamp = [protobufCopy timestamp];

    if (timestamp)
    {
      timestamp2 = [protobufCopy timestamp];
      v13 = MEMORY[0x1E695DF00];
      [timestamp2 secondsSince1970];
      v14 = [v13 dateWithTimeIntervalSince1970:?];
      [(SFProductInventory *)v5 setTimestamp:v14];
    }

    storeName = [protobufCopy storeName];

    if (storeName)
    {
      storeName2 = [protobufCopy storeName];
      [(SFProductInventory *)v5 setStoreName:storeName2];
    }

    storeAddress = [protobufCopy storeAddress];

    if (storeAddress)
    {
      storeAddress2 = [protobufCopy storeAddress];
      [(SFProductInventory *)v5 setStoreAddress:storeAddress2];
    }

    v19 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  type = [(SFProductInventory *)self type];
  storeId = [(SFProductInventory *)self storeId];
  v5 = [storeId hash] ^ type;
  availabilityStatus = [(SFProductInventory *)self availabilityStatus];
  distance = [(SFProductInventory *)self distance];
  v8 = v5 ^ availabilityStatus ^ [distance hash];
  distanceUnit = [(SFProductInventory *)self distanceUnit];
  timestamp = [(SFProductInventory *)self timestamp];
  v11 = distanceUnit ^ [timestamp hash];
  storeName = [(SFProductInventory *)self storeName];
  v13 = v8 ^ v11 ^ [storeName hash];
  storeAddress = [(SFProductInventory *)self storeAddress];
  v15 = [storeAddress hash];

  return v13 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFProductInventory *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      type = [(SFProductInventory *)self type];
      if (type != [(SFProductInventory *)v7 type])
      {
        v12 = 0;
LABEL_34:

        goto LABEL_35;
      }

      storeId = [(SFProductInventory *)self storeId];
      storeId2 = [(SFProductInventory *)v7 storeId];
      if ((storeId != 0) == (storeId2 == 0))
      {
        v12 = 0;
LABEL_33:

        goto LABEL_34;
      }

      storeId3 = [(SFProductInventory *)self storeId];
      if (storeId3)
      {
        storeId4 = [(SFProductInventory *)self storeId];
        storeId5 = [(SFProductInventory *)v7 storeId];
        if (![storeId4 isEqual:storeId5])
        {
          v12 = 0;
          goto LABEL_31;
        }
      }

      availabilityStatus = [(SFProductInventory *)self availabilityStatus];
      if (availabilityStatus == [(SFProductInventory *)v7 availabilityStatus])
      {
        distance = [(SFProductInventory *)self distance];
        distance2 = [(SFProductInventory *)v7 distance];
        if ((distance != 0) != (distance2 == 0))
        {
          v50 = distance2;
          distance3 = [(SFProductInventory *)self distance];
          if (distance3)
          {
            distance4 = [(SFProductInventory *)self distance];
            [(SFProductInventory *)v7 distance];
            v48 = v49 = distance4;
            if (![distance4 isEqual:?])
            {
              v12 = 0;
              v17 = distance;
              v18 = distance3;
              goto LABEL_23;
            }
          }

          distanceUnit = [(SFProductInventory *)self distanceUnit];
          if (distanceUnit != [(SFProductInventory *)v7 distanceUnit])
          {
            v12 = 0;
            v17 = distance;
            v18 = distance3;
            if (!distance3)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

          v47 = storeId4;
          timestamp = [(SFProductInventory *)self timestamp];
          timestamp2 = [(SFProductInventory *)v7 timestamp];
          if ((timestamp != 0) != (timestamp2 == 0))
          {
            v45 = timestamp;
            v46 = timestamp2;
            timestamp3 = [(SFProductInventory *)self timestamp];
            v44 = distance;
            if (timestamp3)
            {
              timestamp4 = [(SFProductInventory *)self timestamp];
              [(SFProductInventory *)v7 timestamp];
              v43 = v41 = timestamp4;
              if (![timestamp4 isEqual:?])
              {
                v12 = 0;
                v18 = distance3;
                v29 = v43;
LABEL_52:

LABEL_53:
                storeId4 = v47;
                v17 = v44;
                if (!v18)
                {
LABEL_24:

                  if (!storeId3)
                  {
                    goto LABEL_32;
                  }

                  goto LABEL_31;
                }

LABEL_23:

                goto LABEL_24;
              }

              v42 = timestamp3;
            }

            else
            {
              v42 = 0;
            }

            storeName = [(SFProductInventory *)self storeName];
            storeName2 = [(SFProductInventory *)v7 storeName];
            if ((storeName != 0) == (storeName2 == 0))
            {

              v12 = 0;
              goto LABEL_51;
            }

            v40 = storeName2;
            v38 = storeName;
            storeName3 = [(SFProductInventory *)self storeName];
            if (!storeName3 || (-[SFProductInventory storeName](self, "storeName"), v27 = objc_claimAutoreleasedReturnValue(), -[SFProductInventory storeName](v7, "storeName"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v27, [v27 isEqual:?]))
            {
              storeAddress = [(SFProductInventory *)self storeAddress];
              storeAddress2 = [(SFProductInventory *)v7 storeAddress];
              if ((storeAddress != 0) == (storeAddress2 == 0))
              {

                v12 = 0;
              }

              else
              {
                v35 = storeAddress2;
                storeAddress3 = [(SFProductInventory *)self storeAddress];
                if (storeAddress3)
                {
                  storeAddress4 = [(SFProductInventory *)self storeAddress];
                  storeAddress5 = [(SFProductInventory *)v7 storeAddress];
                  v12 = [storeAddress4 isEqual:storeAddress5];
                }

                else
                {

                  v12 = 1;
                }
              }

              storeName = v38;
              v28 = storeName3;
              if (!storeName3)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v12 = 0;
              v28 = storeName3;
            }

LABEL_50:
LABEL_51:
            v18 = distance3;
            timestamp3 = v42;
            v29 = v43;
            if (!v42)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }

          if (distance3)
          {
          }

          distance2 = v50;
          storeId4 = v47;
        }
      }

      v12 = 0;
      if (!storeId3)
      {
LABEL_32:

        goto LABEL_33;
      }

LABEL_31:

      goto LABEL_32;
    }

    v12 = 0;
  }

LABEL_35:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setType:{-[SFProductInventory type](self, "type")}];
  storeId = [(SFProductInventory *)self storeId];
  v6 = [storeId copy];
  [v4 setStoreId:v6];

  [v4 setAvailabilityStatus:{-[SFProductInventory availabilityStatus](self, "availabilityStatus")}];
  distance = [(SFProductInventory *)self distance];
  v8 = [distance copy];
  [v4 setDistance:v8];

  [v4 setDistanceUnit:{-[SFProductInventory distanceUnit](self, "distanceUnit")}];
  timestamp = [(SFProductInventory *)self timestamp];
  v10 = [timestamp copy];
  [v4 setTimestamp:v10];

  storeName = [(SFProductInventory *)self storeName];
  v12 = [storeName copy];
  [v4 setStoreName:v12];

  storeAddress = [(SFProductInventory *)self storeAddress];
  v14 = [storeAddress copy];
  [v4 setStoreAddress:v14];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBProductInventory alloc] initWithFacade:self];
  jsonData = [(_SFPBProductInventory *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBProductInventory alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBProductInventory *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBProductInventory alloc] initWithFacade:self];
  data = [(_SFPBProductInventory *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFProductInventory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBProductInventory alloc] initWithData:v5];
  v7 = [(SFProductInventory *)self initWithProtobuf:v6];

  return v7;
}

@end