@interface RTPeopleDiscoveryAdvertisement
- (BOOL)isEqual:(id)equal;
- (RTPeopleDiscoveryAdvertisement)initWithAddress:(id)address rssi:(int64_t)rssi scanDate:(id)date contactID:(id)d;
- (RTPeopleDiscoveryAdvertisement)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPeopleDiscoveryAdvertisement

- (RTPeopleDiscoveryAdvertisement)initWithAddress:(id)address rssi:(int64_t)rssi scanDate:(id)date contactID:(id)d
{
  addressCopy = address;
  dateCopy = date;
  dCopy = d;
  v24.receiver = self;
  v24.super_class = RTPeopleDiscoveryAdvertisement;
  v13 = [(RTPeopleDiscoveryAdvertisement *)&v24 init];
  if (!v13)
  {
    goto LABEL_4;
  }

  if (addressCopy)
  {
    v14 = [addressCopy copy];
    address = v13->_address;
    v13->_address = v14;

    v13->_rssi = rssi;
    v16 = [dateCopy copy];
    scanDate = v13->_scanDate;
    v13->_scanDate = v16;

    v18 = [dCopy copy];
    contactID = v13->_contactID;
    v13->_contactID = v18;

LABEL_4:
    v20 = v13;
    goto LABEL_8;
  }

  v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *v23 = 0;
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: address", v23, 2u);
  }

  v20 = 0;
LABEL_8:

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      scanDate = [(RTPeopleDiscoveryAdvertisement *)self scanDate];
      scanDate2 = [(RTPeopleDiscoveryAdvertisement *)v5 scanDate];
      if ([scanDate isEqualToDate:scanDate2] && (v8 = -[RTPeopleDiscoveryAdvertisement rssi](self, "rssi"), v8 == -[RTPeopleDiscoveryAdvertisement rssi](v5, "rssi")))
      {
        address = [(RTPeopleDiscoveryAdvertisement *)self address];
        address2 = [(RTPeopleDiscoveryAdvertisement *)v5 address];
        if ([address isEqualToData:address2])
        {
          contactID = [(RTPeopleDiscoveryAdvertisement *)self contactID];
          contactID2 = [(RTPeopleDiscoveryAdvertisement *)v5 contactID];
          v13 = [contactID isEqualToString:contactID2];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  rssi = [(RTPeopleDiscoveryAdvertisement *)self rssi];
  if (rssi >= 0)
  {
    v4 = rssi;
  }

  else
  {
    v4 = -rssi;
  }

  scanDate = [(RTPeopleDiscoveryAdvertisement *)self scanDate];
  v6 = [scanDate hash];
  address = [(RTPeopleDiscoveryAdvertisement *)self address];
  v8 = v6 ^ [address hash] ^ v4;
  contactID = [(RTPeopleDiscoveryAdvertisement *)self contactID];
  v10 = [contactID hash];

  return v8 ^ v10;
}

- (id)descriptionDictionary
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15[0] = @"Address";
  address = [(RTPeopleDiscoveryAdvertisement *)self address];
  if (address)
  {
    address2 = [(RTPeopleDiscoveryAdvertisement *)self address];
    hexString = [address2 hexString];
  }

  else
  {
    hexString = &stru_284528390;
  }

  v16[0] = hexString;
  v15[1] = @"RSSI";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RTPeopleDiscoveryAdvertisement rssi](self, "rssi")}];
  v16[1] = v7;
  v15[2] = @"Date";
  scanDate = [(RTPeopleDiscoveryAdvertisement *)self scanDate];
  if (scanDate)
  {
    scanDate2 = [(RTPeopleDiscoveryAdvertisement *)self scanDate];
    getFormattedDateString = [scanDate2 getFormattedDateString];
  }

  else
  {
    getFormattedDateString = @"-";
  }

  v16[2] = getFormattedDateString;
  v15[3] = @"ContactID";
  contactID = [(RTPeopleDiscoveryAdvertisement *)self contactID];
  v11 = contactID;
  if (contactID)
  {
    v12 = contactID;
  }

  else
  {
    v12 = &stru_284528390;
  }

  v16[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  if (scanDate)
  {
  }

  if (address)
  {
  }

  return v13;
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  descriptionDictionary = [(RTPeopleDiscoveryAdvertisement *)self descriptionDictionary];
  v11 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", buf, 0x16u);
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v3;
  }

  v7 = string;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  address = [(RTPeopleDiscoveryAdvertisement *)self address];
  [coderCopy encodeObject:address forKey:@"Address"];

  [coderCopy encodeInteger:-[RTPeopleDiscoveryAdvertisement rssi](self forKey:{"rssi"), @"RSSI"}];
  scanDate = [(RTPeopleDiscoveryAdvertisement *)self scanDate];
  [coderCopy encodeObject:scanDate forKey:@"Date"];

  contactID = [(RTPeopleDiscoveryAdvertisement *)self contactID];
  [coderCopy encodeObject:contactID forKey:@"ContactID"];
}

- (RTPeopleDiscoveryAdvertisement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
  v6 = [coderCopy decodeIntegerForKey:@"RSSI"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContactID"];

  v9 = [(RTPeopleDiscoveryAdvertisement *)self initWithAddress:v5 rssi:v6 scanDate:v7 contactID:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTPeopleDiscoveryAdvertisement alloc];
  address = self->_address;
  rssi = self->_rssi;
  scanDate = self->_scanDate;
  contactID = self->_contactID;

  return [(RTPeopleDiscoveryAdvertisement *)v4 initWithAddress:address rssi:rssi scanDate:scanDate contactID:contactID];
}

@end