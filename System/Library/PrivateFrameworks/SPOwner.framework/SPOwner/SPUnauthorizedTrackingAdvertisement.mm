@interface SPUnauthorizedTrackingAdvertisement
- (BOOL)isEqual:(id)equal;
- (NSData)address;
- (NSData)data;
- (SPUnauthorizedTrackingAdvertisement)initWithAddress:(id)address advertisementData:(id)data rssi:(int64_t)rssi scanDate:(id)date;
- (SPUnauthorizedTrackingAdvertisement)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPUnauthorizedTrackingAdvertisement

- (SPUnauthorizedTrackingAdvertisement)initWithAddress:(id)address advertisementData:(id)data rssi:(int64_t)rssi scanDate:(id)date
{
  dateCopy = date;
  dataCopy = data;
  addressCopy = address;
  v13 = objc_opt_new();
  v14 = [(SPUnauthorizedTrackingAdvertisement *)self initWithAddress:addressCopy advertisementData:dataCopy status:0 reserved:v13 rssi:rssi scanDate:dateCopy];

  return v14;
}

- (SPUnauthorizedTrackingAdvertisement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  [(SPUnauthorizedTrackingAdvertisement *)self set_address:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"advertisementData"];
  [(SPUnauthorizedTrackingAdvertisement *)self setAdvertisementData:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
  -[SPUnauthorizedTrackingAdvertisement setStatus:](self, "setStatus:", [v7 unsignedIntegerValue]);

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reserved"];
  [(SPUnauthorizedTrackingAdvertisement *)self setReserved:v8];

  -[SPUnauthorizedTrackingAdvertisement setRssi:](self, "setRssi:", [coderCopy decodeIntegerForKey:@"rssi"]);
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scanDate"];
  [(SPUnauthorizedTrackingAdvertisement *)self setScanDate:v9];

  -[SPUnauthorizedTrackingAdvertisement setIsPosh:](self, "setIsPosh:", [coderCopy decodeBoolForKey:@"isPosh"]);
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkID"];

  -[SPUnauthorizedTrackingAdvertisement setNetworkID:](self, "setNetworkID:", [v10 unsignedIntegerValue]);
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      scanDate = [(SPUnauthorizedTrackingAdvertisement *)self scanDate];
      scanDate2 = [(SPUnauthorizedTrackingAdvertisement *)v5 scanDate];
      if ([scanDate isEqualToDate:scanDate2])
      {
        advertisementData = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
        advertisementData2 = [(SPUnauthorizedTrackingAdvertisement *)v5 advertisementData];
        if ([advertisementData isEqualToData:advertisementData2] && (v10 = -[SPUnauthorizedTrackingAdvertisement status](self, "status"), v10 == -[SPUnauthorizedTrackingAdvertisement status](v5, "status")))
        {
          reserved = [(SPUnauthorizedTrackingAdvertisement *)self reserved];
          reserved2 = [(SPUnauthorizedTrackingAdvertisement *)v5 reserved];
          if ([reserved isEqualToData:reserved2] && (v13 = -[SPUnauthorizedTrackingAdvertisement rssi](self, "rssi"), v13 == -[SPUnauthorizedTrackingAdvertisement rssi](v5, "rssi")))
          {
            _address = [(SPUnauthorizedTrackingAdvertisement *)self _address];
            address = [(SPUnauthorizedTrackingAdvertisement *)v5 address];
            v22 = _address;
            v16 = _address;
            v17 = address;
            if ([v16 isEqualToData:address] && (v21 = -[SPUnauthorizedTrackingAdvertisement isPosh](self, "isPosh"), v21 == -[SPUnauthorizedTrackingAdvertisement isPosh](v5, "isPosh")))
            {
              networkID = [(SPUnauthorizedTrackingAdvertisement *)self networkID];
              v18 = networkID == [(SPUnauthorizedTrackingAdvertisement *)v5 networkID];
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
  rssi = [(SPUnauthorizedTrackingAdvertisement *)self rssi];
  isPosh = [(SPUnauthorizedTrackingAdvertisement *)self isPosh];
  if (rssi >= 0)
  {
    v5 = rssi;
  }

  else
  {
    v5 = -rssi;
  }

  v6 = [(SPUnauthorizedTrackingAdvertisement *)self scanDate:isPosh];
  v7 = [v6 hash];
  advertisementData = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
  v9 = [advertisementData hash];
  status = [(SPUnauthorizedTrackingAdvertisement *)self status];
  reserved = [(SPUnauthorizedTrackingAdvertisement *)self reserved];
  v12 = [reserved hash];
  _address = [(SPUnauthorizedTrackingAdvertisement *)self _address];
  v14 = [_address hash];
  networkID = [(SPUnauthorizedTrackingAdvertisement *)self networkID];
  v16 = v20 ^ v19 ^ v7 ^ v9 ^ status;
  v17 = v12 ^ v14 ^ networkID;

  return v16 ^ v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _address = [(SPUnauthorizedTrackingAdvertisement *)self _address];
  [coderCopy encodeObject:_address forKey:@"address"];

  advertisementData = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
  [coderCopy encodeObject:advertisementData forKey:@"advertisementData"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[SPUnauthorizedTrackingAdvertisement status](self, "status")}];
  [coderCopy encodeObject:v7 forKey:@"status"];

  reserved = [(SPUnauthorizedTrackingAdvertisement *)self reserved];
  [coderCopy encodeObject:reserved forKey:@"reserved"];

  [coderCopy encodeInteger:-[SPUnauthorizedTrackingAdvertisement rssi](self forKey:{"rssi"), @"rssi"}];
  scanDate = [(SPUnauthorizedTrackingAdvertisement *)self scanDate];
  [coderCopy encodeObject:scanDate forKey:@"scanDate"];

  [coderCopy encodeBool:-[SPUnauthorizedTrackingAdvertisement isPosh](self forKey:{"isPosh"), @"isPosh"}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[SPUnauthorizedTrackingAdvertisement networkID](self, "networkID")}];
  [coderCopy encodeObject:v10 forKey:@"networkID"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _address = [(SPUnauthorizedTrackingAdvertisement *)self _address];
  fm_hexString = [_address fm_hexString];
  advertisementData = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
  fm_hexString2 = [advertisementData fm_hexString];
  scanDate = [(SPUnauthorizedTrackingAdvertisement *)self scanDate];
  v9 = [v3 stringWithFormat:@"SPUnauthorizedTrackingAdvertisement %@%@ %@ posh: %i", fm_hexString, fm_hexString2, scanDate, -[SPUnauthorizedTrackingAdvertisement isPosh](self, "isPosh")];

  return v9;
}

- (NSData)address
{
  _address = [(SPUnauthorizedTrackingAdvertisement *)self _address];

  if (_address)
  {
    _address2 = [(SPUnauthorizedTrackingAdvertisement *)self _address];
  }

  else
  {
    advertisementData = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
    _address2 = [advertisementData subdataWithRange:{0, 6}];
  }

  return _address2;
}

- (NSData)data
{
  _address = [(SPUnauthorizedTrackingAdvertisement *)self _address];

  if (_address)
  {
    v4 = MEMORY[0x277CBEB28];
    _address2 = [(SPUnauthorizedTrackingAdvertisement *)self _address];
    advertisementData2 = [v4 dataWithData:_address2];

    advertisementData = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
    [advertisementData2 appendData:advertisementData];
  }

  else
  {
    advertisementData2 = [(SPUnauthorizedTrackingAdvertisement *)self advertisementData];
  }

  return advertisementData2;
}

@end