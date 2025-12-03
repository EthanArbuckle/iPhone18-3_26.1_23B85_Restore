@interface SPAdvertisement
- (BOOL)isEqual:(id)equal;
- (SPAdvertisement)initWithAddress:(id)address advertisementData:(id)data rssi:(int64_t)rssi scanDate:(id)date;
- (SPAdvertisement)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPAdvertisement

- (SPAdvertisement)initWithAddress:(id)address advertisementData:(id)data rssi:(int64_t)rssi scanDate:(id)date
{
  dateCopy = date;
  dataCopy = data;
  addressCopy = address;
  v13 = objc_opt_new();
  LOBYTE(v16) = 0;
  v14 = [(SPAdvertisement *)self initWithAddress:addressCopy advertisementData:dataCopy status:0 reserved:v13 rssi:rssi scanDate:dateCopy isPosh:v16];

  return v14;
}

- (SPAdvertisement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  [(SPAdvertisement *)self setAddress:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"advertisementData"];
  [(SPAdvertisement *)self setAdvertisementData:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
  -[SPAdvertisement setStatus:](self, "setStatus:", [v7 unsignedIntegerValue]);

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reserved"];
  [(SPAdvertisement *)self setReserved:v8];

  -[SPAdvertisement setRssi:](self, "setRssi:", [coderCopy decodeIntegerForKey:@"rssi"]);
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scanDate"];
  [(SPAdvertisement *)self setScanDate:v9];

  v10 = [coderCopy decodeBoolForKey:@"isPosh"];
  [(SPAdvertisement *)self setIsPosh:v10];
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      scanDate = [(SPAdvertisement *)self scanDate];
      scanDate2 = [(SPAdvertisement *)v5 scanDate];
      if ([scanDate isEqualToDate:scanDate2])
      {
        advertisementData = [(SPAdvertisement *)self advertisementData];
        advertisementData2 = [(SPAdvertisement *)v5 advertisementData];
        if ([advertisementData isEqualToData:advertisementData2] && (v10 = -[SPAdvertisement status](self, "status"), v10 == -[SPAdvertisement status](v5, "status")))
        {
          reserved = [(SPAdvertisement *)self reserved];
          reserved2 = [(SPAdvertisement *)v5 reserved];
          if ([reserved isEqualToData:reserved2] && (v13 = -[SPAdvertisement rssi](self, "rssi"), v13 == -[SPAdvertisement rssi](v5, "rssi")))
          {
            address = [(SPAdvertisement *)self address];
            address2 = [(SPAdvertisement *)v5 address];
            v21 = address;
            v16 = address;
            v17 = address2;
            if ([v16 isEqualToData:address2])
            {
              isPosh = [(SPAdvertisement *)self isPosh];
              v19 = isPosh ^ [(SPAdvertisement *)v5 isPosh]^ 1;
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
  rssi = [(SPAdvertisement *)self rssi];
  isPosh = [(SPAdvertisement *)self isPosh];
  if (rssi >= 0)
  {
    v5 = rssi;
  }

  else
  {
    v5 = -rssi;
  }

  v6 = isPosh;
  scanDate = [(SPAdvertisement *)self scanDate];
  v8 = [scanDate hash];
  advertisementData = [(SPAdvertisement *)self advertisementData];
  v10 = [advertisementData hash];
  status = [(SPAdvertisement *)self status];
  reserved = [(SPAdvertisement *)self reserved];
  v13 = [reserved hash];
  address = [(SPAdvertisement *)self address];
  v15 = v5 ^ v6 ^ v8 ^ v10 ^ status;
  v16 = v13 ^ [address hash];

  return v15 ^ v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  address = [(SPAdvertisement *)self address];
  [coderCopy encodeObject:address forKey:@"address"];

  advertisementData = [(SPAdvertisement *)self advertisementData];
  [coderCopy encodeObject:advertisementData forKey:@"advertisementData"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[SPAdvertisement status](self, "status")}];
  [coderCopy encodeObject:v6 forKey:@"status"];

  reserved = [(SPAdvertisement *)self reserved];
  [coderCopy encodeObject:reserved forKey:@"reserved"];

  [coderCopy encodeInteger:-[SPAdvertisement rssi](self forKey:{"rssi"), @"rssi"}];
  scanDate = [(SPAdvertisement *)self scanDate];
  [coderCopy encodeObject:scanDate forKey:@"scanDate"];

  [coderCopy encodeBool:-[SPAdvertisement isPosh](self forKey:{"isPosh"), @"isPosh"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  address = [(SPAdvertisement *)self address];
  fm_hexString = [address fm_hexString];
  advertisementData = [(SPAdvertisement *)self advertisementData];
  fm_hexString2 = [advertisementData fm_hexString];
  scanDate = [(SPAdvertisement *)self scanDate];
  v9 = [v3 stringWithFormat:@"SPAdvertisement %@%@ %@ posh: %i", fm_hexString, fm_hexString2, scanDate, -[SPAdvertisement isPosh](self, "isPosh")];

  return v9;
}

@end