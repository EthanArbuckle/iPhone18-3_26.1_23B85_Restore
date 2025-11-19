@interface SPUnauthorizedTrackingAdvertisement
- (BOOL)isEqual:(id)a3;
- (NSData)address;
- (NSData)data;
- (SPUnauthorizedTrackingAdvertisement)initWithAddress:(id)a3 advertisementData:(id)a4 rssi:(int64_t)a5 scanDate:(id)a6;
- (SPUnauthorizedTrackingAdvertisement)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPUnauthorizedTrackingAdvertisement

- (SPUnauthorizedTrackingAdvertisement)initWithAddress:(id)a3 advertisementData:(id)a4 rssi:(int64_t)a5 scanDate:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = [(SPUnauthorizedTrackingAdvertisement *)self initWithAddress:v12 advertisementData:v11 status:0 reserved:v13 rssi:a5 scanDate:v10];

  return v14;
}

- (SPUnauthorizedTrackingAdvertisement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  [(SPUnauthorizedTrackingAdvertisement *)self set_address:v5];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"advertisementData"];
  [(SPUnauthorizedTrackingAdvertisement *)self setAdvertisementData:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
  -[SPUnauthorizedTrackingAdvertisement setStatus:](self, "setStatus:", [v7 unsignedIntegerValue]);

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reserved"];
  [(SPUnauthorizedTrackingAdvertisement *)self setReserved:v8];

  -[SPUnauthorizedTrackingAdvertisement setRssi:](self, "setRssi:", [v4 decodeIntegerForKey:@"rssi"]);
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scanDate"];
  [(SPUnauthorizedTrackingAdvertisement *)self setScanDate:v9];

  -[SPUnauthorizedTrackingAdvertisement setIsPosh:](self, "setIsPosh:", [v4 decodeBoolForKey:@"isPosh"]);
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkID"];

  -[SPUnauthorizedTrackingAdvertisement setNetworkID:](self, "setNetworkID:", [v10 unsignedIntegerValue]);
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPUnauthorizedTrackingAdvertisement *)self scanDate];
      v7 = [(SPUnauthorizedTrackingAdvertisement *)v5 scanDate];
      if ([v6 isEqualToDate:v7])
      {
        v8 = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
        v9 = [(SPUnauthorizedTrackingAdvertisement *)v5 advertisementData];
        if ([v8 isEqualToData:v9] && (v10 = -[SPUnauthorizedTrackingAdvertisement status](self, "status"), v10 == -[SPUnauthorizedTrackingAdvertisement status](v5, "status")))
        {
          v11 = [(SPUnauthorizedTrackingAdvertisement *)self reserved];
          v12 = [(SPUnauthorizedTrackingAdvertisement *)v5 reserved];
          if ([v11 isEqualToData:v12] && (v13 = -[SPUnauthorizedTrackingAdvertisement rssi](self, "rssi"), v13 == -[SPUnauthorizedTrackingAdvertisement rssi](v5, "rssi")))
          {
            v14 = [(SPUnauthorizedTrackingAdvertisement *)self _address];
            v15 = [(SPUnauthorizedTrackingAdvertisement *)v5 address];
            v22 = v14;
            v16 = v14;
            v17 = v15;
            if ([v16 isEqualToData:v15] && (v21 = -[SPUnauthorizedTrackingAdvertisement isPosh](self, "isPosh"), v21 == -[SPUnauthorizedTrackingAdvertisement isPosh](v5, "isPosh")))
            {
              v19 = [(SPUnauthorizedTrackingAdvertisement *)self networkID];
              v18 = v19 == [(SPUnauthorizedTrackingAdvertisement *)v5 networkID];
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(SPUnauthorizedTrackingAdvertisement *)self rssi];
  v4 = [(SPUnauthorizedTrackingAdvertisement *)self isPosh];
  if (v3 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = -v3;
  }

  v6 = [(SPUnauthorizedTrackingAdvertisement *)self scanDate:v4];
  v7 = [v6 hash];
  v8 = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
  v9 = [v8 hash];
  v10 = [(SPUnauthorizedTrackingAdvertisement *)self status];
  v11 = [(SPUnauthorizedTrackingAdvertisement *)self reserved];
  v12 = [v11 hash];
  v13 = [(SPUnauthorizedTrackingAdvertisement *)self _address];
  v14 = [v13 hash];
  v15 = [(SPUnauthorizedTrackingAdvertisement *)self networkID];
  v16 = v20 ^ v19 ^ v7 ^ v9 ^ v10;
  v17 = v12 ^ v14 ^ v15;

  return v16 ^ v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPUnauthorizedTrackingAdvertisement *)self _address];
  [v4 encodeObject:v5 forKey:@"address"];

  v6 = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
  [v4 encodeObject:v6 forKey:@"advertisementData"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[SPUnauthorizedTrackingAdvertisement status](self, "status")}];
  [v4 encodeObject:v7 forKey:@"status"];

  v8 = [(SPUnauthorizedTrackingAdvertisement *)self reserved];
  [v4 encodeObject:v8 forKey:@"reserved"];

  [v4 encodeInteger:-[SPUnauthorizedTrackingAdvertisement rssi](self forKey:{"rssi"), @"rssi"}];
  v9 = [(SPUnauthorizedTrackingAdvertisement *)self scanDate];
  [v4 encodeObject:v9 forKey:@"scanDate"];

  [v4 encodeBool:-[SPUnauthorizedTrackingAdvertisement isPosh](self forKey:{"isPosh"), @"isPosh"}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[SPUnauthorizedTrackingAdvertisement networkID](self, "networkID")}];
  [v4 encodeObject:v10 forKey:@"networkID"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SPUnauthorizedTrackingAdvertisement *)self _address];
  v5 = [v4 fm_hexString];
  v6 = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
  v7 = [v6 fm_hexString];
  v8 = [(SPUnauthorizedTrackingAdvertisement *)self scanDate];
  v9 = [v3 stringWithFormat:@"SPUnauthorizedTrackingAdvertisement %@%@ %@ posh: %i", v5, v7, v8, -[SPUnauthorizedTrackingAdvertisement isPosh](self, "isPosh")];

  return v9;
}

- (NSData)address
{
  v3 = [(SPUnauthorizedTrackingAdvertisement *)self _address];

  if (v3)
  {
    v4 = [(SPUnauthorizedTrackingAdvertisement *)self _address];
  }

  else
  {
    v5 = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
    v4 = [v5 subdataWithRange:{0, 6}];
  }

  return v4;
}

- (NSData)data
{
  v3 = [(SPUnauthorizedTrackingAdvertisement *)self _address];

  if (v3)
  {
    v4 = MEMORY[0x277CBEB28];
    v5 = [(SPUnauthorizedTrackingAdvertisement *)self _address];
    v6 = [v4 dataWithData:v5];

    v7 = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
    [v6 appendData:v7];
  }

  else
  {
    v6 = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
  }

  return v6;
}

@end