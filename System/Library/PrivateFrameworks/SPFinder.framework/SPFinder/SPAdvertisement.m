@interface SPAdvertisement
- (BOOL)isEqual:(id)a3;
- (SPAdvertisement)initWithAddress:(id)a3 advertisementData:(id)a4 rssi:(int64_t)a5 scanDate:(id)a6;
- (SPAdvertisement)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPAdvertisement

- (SPAdvertisement)initWithAddress:(id)a3 advertisementData:(id)a4 rssi:(int64_t)a5 scanDate:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  LOBYTE(v16) = 0;
  v14 = [(SPAdvertisement *)self initWithAddress:v12 advertisementData:v11 status:0 reserved:v13 rssi:a5 scanDate:v10 isPosh:v16];

  return v14;
}

- (SPAdvertisement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  [(SPAdvertisement *)self setAddress:v5];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"advertisementData"];
  [(SPAdvertisement *)self setAdvertisementData:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
  -[SPAdvertisement setStatus:](self, "setStatus:", [v7 unsignedIntegerValue]);

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reserved"];
  [(SPAdvertisement *)self setReserved:v8];

  -[SPAdvertisement setRssi:](self, "setRssi:", [v4 decodeIntegerForKey:@"rssi"]);
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scanDate"];
  [(SPAdvertisement *)self setScanDate:v9];

  v10 = [v4 decodeBoolForKey:@"isPosh"];
  [(SPAdvertisement *)self setIsPosh:v10];
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPAdvertisement *)self scanDate];
      v7 = [(SPAdvertisement *)v5 scanDate];
      if ([v6 isEqualToDate:v7])
      {
        v8 = [(SPAdvertisement *)self advertisementData];
        v9 = [(SPAdvertisement *)v5 advertisementData];
        if ([v8 isEqualToData:v9] && (v10 = -[SPAdvertisement status](self, "status"), v10 == -[SPAdvertisement status](v5, "status")))
        {
          v11 = [(SPAdvertisement *)self reserved];
          v12 = [(SPAdvertisement *)v5 reserved];
          if ([v11 isEqualToData:v12] && (v13 = -[SPAdvertisement rssi](self, "rssi"), v13 == -[SPAdvertisement rssi](v5, "rssi")))
          {
            v14 = [(SPAdvertisement *)self address];
            v15 = [(SPAdvertisement *)v5 address];
            v21 = v14;
            v16 = v14;
            v17 = v15;
            if ([v16 isEqualToData:v15])
            {
              v18 = [(SPAdvertisement *)self isPosh];
              v19 = v18 ^ [(SPAdvertisement *)v5 isPosh]^ 1;
            }

            else
            {
              LOBYTE(v19) = 0;
            }
          }

          else
          {
            LOBYTE(v19) = 0;
          }
        }

        else
        {
          LOBYTE(v19) = 0;
        }
      }

      else
      {
        LOBYTE(v19) = 0;
      }
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  return v19;
}

- (unint64_t)hash
{
  v3 = [(SPAdvertisement *)self rssi];
  v4 = [(SPAdvertisement *)self isPosh];
  if (v3 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = -v3;
  }

  v6 = v4;
  v7 = [(SPAdvertisement *)self scanDate];
  v8 = [v7 hash];
  v9 = [(SPAdvertisement *)self advertisementData];
  v10 = [v9 hash];
  v11 = [(SPAdvertisement *)self status];
  v12 = [(SPAdvertisement *)self reserved];
  v13 = [v12 hash];
  v14 = [(SPAdvertisement *)self address];
  v15 = v5 ^ v6 ^ v8 ^ v10 ^ v11;
  v16 = v13 ^ [v14 hash];

  return v15 ^ v16;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(SPAdvertisement *)self address];
  [v9 encodeObject:v4 forKey:@"address"];

  v5 = [(SPAdvertisement *)self advertisementData];
  [v9 encodeObject:v5 forKey:@"advertisementData"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[SPAdvertisement status](self, "status")}];
  [v9 encodeObject:v6 forKey:@"status"];

  v7 = [(SPAdvertisement *)self reserved];
  [v9 encodeObject:v7 forKey:@"reserved"];

  [v9 encodeInteger:-[SPAdvertisement rssi](self forKey:{"rssi"), @"rssi"}];
  v8 = [(SPAdvertisement *)self scanDate];
  [v9 encodeObject:v8 forKey:@"scanDate"];

  [v9 encodeBool:-[SPAdvertisement isPosh](self forKey:{"isPosh"), @"isPosh"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SPAdvertisement *)self address];
  v5 = [v4 fm_hexString];
  v6 = [(SPAdvertisement *)self advertisementData];
  v7 = [v6 fm_hexString];
  v8 = [(SPAdvertisement *)self scanDate];
  v9 = [v3 stringWithFormat:@"SPAdvertisement %@%@ %@ posh: %i", v5, v7, v8, -[SPAdvertisement isPosh](self, "isPosh")];

  return v9;
}

@end