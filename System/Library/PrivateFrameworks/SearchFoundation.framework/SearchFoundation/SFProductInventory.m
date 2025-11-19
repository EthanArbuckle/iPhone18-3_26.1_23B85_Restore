@interface SFProductInventory
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFProductInventory)initWithCoder:(id)a3;
- (SFProductInventory)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFProductInventory

- (SFProductInventory)initWithProtobuf:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SFProductInventory;
  v5 = [(SFProductInventory *)&v21 init];
  if (v5)
  {
    if ([v4 type])
    {
      -[SFProductInventory setType:](v5, "setType:", [v4 type]);
    }

    v6 = [v4 storeId];

    if (v6)
    {
      v7 = [v4 storeId];
      [(SFProductInventory *)v5 setStoreId:v7];
    }

    if ([v4 availabilityStatus])
    {
      -[SFProductInventory setAvailabilityStatus:](v5, "setAvailabilityStatus:", [v4 availabilityStatus]);
    }

    [v4 distance];
    if (v8 != 0.0)
    {
      v9 = MEMORY[0x1E696AD98];
      [v4 distance];
      v10 = [v9 numberWithFloat:?];
      [(SFProductInventory *)v5 setDistance:v10];
    }

    if ([v4 distanceUnit])
    {
      -[SFProductInventory setDistanceUnit:](v5, "setDistanceUnit:", [v4 distanceUnit]);
    }

    v11 = [v4 timestamp];

    if (v11)
    {
      v12 = [v4 timestamp];
      v13 = MEMORY[0x1E695DF00];
      [v12 secondsSince1970];
      v14 = [v13 dateWithTimeIntervalSince1970:?];
      [(SFProductInventory *)v5 setTimestamp:v14];
    }

    v15 = [v4 storeName];

    if (v15)
    {
      v16 = [v4 storeName];
      [(SFProductInventory *)v5 setStoreName:v16];
    }

    v17 = [v4 storeAddress];

    if (v17)
    {
      v18 = [v4 storeAddress];
      [(SFProductInventory *)v5 setStoreAddress:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFProductInventory *)self type];
  v4 = [(SFProductInventory *)self storeId];
  v5 = [v4 hash] ^ v3;
  v6 = [(SFProductInventory *)self availabilityStatus];
  v7 = [(SFProductInventory *)self distance];
  v8 = v5 ^ v6 ^ [v7 hash];
  v9 = [(SFProductInventory *)self distanceUnit];
  v10 = [(SFProductInventory *)self timestamp];
  v11 = v9 ^ [v10 hash];
  v12 = [(SFProductInventory *)self storeName];
  v13 = v8 ^ v11 ^ [v12 hash];
  v14 = [(SFProductInventory *)self storeAddress];
  v15 = [v14 hash];

  return v13 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFProductInventory *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(SFProductInventory *)self type];
      if (v8 != [(SFProductInventory *)v7 type])
      {
        v12 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v9 = [(SFProductInventory *)self storeId];
      v10 = [(SFProductInventory *)v7 storeId];
      if ((v9 != 0) == (v10 == 0))
      {
        v12 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v11 = [(SFProductInventory *)self storeId];
      if (v11)
      {
        v3 = [(SFProductInventory *)self storeId];
        v4 = [(SFProductInventory *)v7 storeId];
        if (![v3 isEqual:v4])
        {
          v12 = 0;
          goto LABEL_31;
        }
      }

      v13 = [(SFProductInventory *)self availabilityStatus];
      if (v13 == [(SFProductInventory *)v7 availabilityStatus])
      {
        v14 = [(SFProductInventory *)self distance];
        v15 = [(SFProductInventory *)v7 distance];
        if ((v14 != 0) != (v15 == 0))
        {
          v50 = v15;
          v51 = [(SFProductInventory *)self distance];
          if (v51)
          {
            v16 = [(SFProductInventory *)self distance];
            [(SFProductInventory *)v7 distance];
            v48 = v49 = v16;
            if (![v16 isEqual:?])
            {
              v12 = 0;
              v17 = v14;
              v18 = v51;
              goto LABEL_23;
            }
          }

          v19 = [(SFProductInventory *)self distanceUnit];
          if (v19 != [(SFProductInventory *)v7 distanceUnit])
          {
            v12 = 0;
            v17 = v14;
            v18 = v51;
            if (!v51)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

          v47 = v3;
          v20 = [(SFProductInventory *)self timestamp];
          v21 = [(SFProductInventory *)v7 timestamp];
          if ((v20 != 0) != (v21 == 0))
          {
            v45 = v20;
            v46 = v21;
            v22 = [(SFProductInventory *)self timestamp];
            v44 = v14;
            if (v22)
            {
              v23 = [(SFProductInventory *)self timestamp];
              [(SFProductInventory *)v7 timestamp];
              v43 = v41 = v23;
              if (![v23 isEqual:?])
              {
                v12 = 0;
                v18 = v51;
                v29 = v43;
LABEL_52:

LABEL_53:
                v3 = v47;
                v17 = v44;
                if (!v18)
                {
LABEL_24:

                  if (!v11)
                  {
                    goto LABEL_32;
                  }

                  goto LABEL_31;
                }

LABEL_23:

                goto LABEL_24;
              }

              v42 = v22;
            }

            else
            {
              v42 = 0;
            }

            v25 = [(SFProductInventory *)self storeName];
            v26 = [(SFProductInventory *)v7 storeName];
            if ((v25 != 0) == (v26 == 0))
            {

              v12 = 0;
              goto LABEL_51;
            }

            v40 = v26;
            v38 = v25;
            v39 = [(SFProductInventory *)self storeName];
            if (!v39 || (-[SFProductInventory storeName](self, "storeName"), v27 = objc_claimAutoreleasedReturnValue(), -[SFProductInventory storeName](v7, "storeName"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v27, [v27 isEqual:?]))
            {
              v30 = [(SFProductInventory *)self storeAddress];
              v31 = [(SFProductInventory *)v7 storeAddress];
              if ((v30 != 0) == (v31 == 0))
              {

                v12 = 0;
              }

              else
              {
                v35 = v31;
                v34 = [(SFProductInventory *)self storeAddress];
                if (v34)
                {
                  v33 = [(SFProductInventory *)self storeAddress];
                  v32 = [(SFProductInventory *)v7 storeAddress];
                  v12 = [v33 isEqual:v32];
                }

                else
                {

                  v12 = 1;
                }
              }

              v25 = v38;
              v28 = v39;
              if (!v39)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v12 = 0;
              v28 = v39;
            }

LABEL_50:
LABEL_51:
            v18 = v51;
            v22 = v42;
            v29 = v43;
            if (!v42)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }

          if (v51)
          {
          }

          v15 = v50;
          v3 = v47;
        }
      }

      v12 = 0;
      if (!v11)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setType:{-[SFProductInventory type](self, "type")}];
  v5 = [(SFProductInventory *)self storeId];
  v6 = [v5 copy];
  [v4 setStoreId:v6];

  [v4 setAvailabilityStatus:{-[SFProductInventory availabilityStatus](self, "availabilityStatus")}];
  v7 = [(SFProductInventory *)self distance];
  v8 = [v7 copy];
  [v4 setDistance:v8];

  [v4 setDistanceUnit:{-[SFProductInventory distanceUnit](self, "distanceUnit")}];
  v9 = [(SFProductInventory *)self timestamp];
  v10 = [v9 copy];
  [v4 setTimestamp:v10];

  v11 = [(SFProductInventory *)self storeName];
  v12 = [v11 copy];
  [v4 setStoreName:v12];

  v13 = [(SFProductInventory *)self storeAddress];
  v14 = [v13 copy];
  [v4 setStoreAddress:v14];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBProductInventory alloc] initWithFacade:self];
  v3 = [(_SFPBProductInventory *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBProductInventory alloc] initWithFacade:self];
  v3 = [(_SFPBProductInventory *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBProductInventory alloc] initWithFacade:self];
  v5 = [(_SFPBProductInventory *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFProductInventory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBProductInventory alloc] initWithData:v5];
  v7 = [(SFProductInventory *)self initWithProtobuf:v6];

  return v7;
}

@end