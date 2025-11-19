@interface RTPeopleDiscoveryAdvertisement
- (BOOL)isEqual:(id)a3;
- (RTPeopleDiscoveryAdvertisement)initWithAddress:(id)a3 rssi:(int64_t)a4 scanDate:(id)a5 contactID:(id)a6;
- (RTPeopleDiscoveryAdvertisement)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPeopleDiscoveryAdvertisement

- (RTPeopleDiscoveryAdvertisement)initWithAddress:(id)a3 rssi:(int64_t)a4 scanDate:(id)a5 contactID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v24.receiver = self;
  v24.super_class = RTPeopleDiscoveryAdvertisement;
  v13 = [(RTPeopleDiscoveryAdvertisement *)&v24 init];
  if (!v13)
  {
    goto LABEL_4;
  }

  if (v10)
  {
    v14 = [v10 copy];
    address = v13->_address;
    v13->_address = v14;

    v13->_rssi = a4;
    v16 = [v11 copy];
    scanDate = v13->_scanDate;
    v13->_scanDate = v16;

    v18 = [v12 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTPeopleDiscoveryAdvertisement *)self scanDate];
      v7 = [(RTPeopleDiscoveryAdvertisement *)v5 scanDate];
      if ([v6 isEqualToDate:v7] && (v8 = -[RTPeopleDiscoveryAdvertisement rssi](self, "rssi"), v8 == -[RTPeopleDiscoveryAdvertisement rssi](v5, "rssi")))
      {
        v9 = [(RTPeopleDiscoveryAdvertisement *)self address];
        v10 = [(RTPeopleDiscoveryAdvertisement *)v5 address];
        if ([v9 isEqualToData:v10])
        {
          v11 = [(RTPeopleDiscoveryAdvertisement *)self contactID];
          v12 = [(RTPeopleDiscoveryAdvertisement *)v5 contactID];
          v13 = [v11 isEqualToString:v12];
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
  v3 = [(RTPeopleDiscoveryAdvertisement *)self rssi];
  if (v3 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = -v3;
  }

  v5 = [(RTPeopleDiscoveryAdvertisement *)self scanDate];
  v6 = [v5 hash];
  v7 = [(RTPeopleDiscoveryAdvertisement *)self address];
  v8 = v6 ^ [v7 hash] ^ v4;
  v9 = [(RTPeopleDiscoveryAdvertisement *)self contactID];
  v10 = [v9 hash];

  return v8 ^ v10;
}

- (id)descriptionDictionary
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15[0] = @"Address";
  v5 = [(RTPeopleDiscoveryAdvertisement *)self address];
  if (v5)
  {
    v2 = [(RTPeopleDiscoveryAdvertisement *)self address];
    v6 = [v2 hexString];
  }

  else
  {
    v6 = &stru_284528390;
  }

  v16[0] = v6;
  v15[1] = @"RSSI";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RTPeopleDiscoveryAdvertisement rssi](self, "rssi")}];
  v16[1] = v7;
  v15[2] = @"Date";
  v8 = [(RTPeopleDiscoveryAdvertisement *)self scanDate];
  if (v8)
  {
    v3 = [(RTPeopleDiscoveryAdvertisement *)self scanDate];
    v9 = [v3 getFormattedDateString];
  }

  else
  {
    v9 = @"-";
  }

  v16[2] = v9;
  v15[3] = @"ContactID";
  v10 = [(RTPeopleDiscoveryAdvertisement *)self contactID];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_284528390;
  }

  v16[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  if (v8)
  {
  }

  if (v5)
  {
  }

  return v13;
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(RTPeopleDiscoveryAdvertisement *)self descriptionDictionary];
  v11 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v2 error:&v11];
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

    v6 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RTPeopleDiscoveryAdvertisement *)self address];
  [v4 encodeObject:v5 forKey:@"Address"];

  [v4 encodeInteger:-[RTPeopleDiscoveryAdvertisement rssi](self forKey:{"rssi"), @"RSSI"}];
  v6 = [(RTPeopleDiscoveryAdvertisement *)self scanDate];
  [v4 encodeObject:v6 forKey:@"Date"];

  v7 = [(RTPeopleDiscoveryAdvertisement *)self contactID];
  [v4 encodeObject:v7 forKey:@"ContactID"];
}

- (RTPeopleDiscoveryAdvertisement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
  v6 = [v4 decodeIntegerForKey:@"RSSI"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ContactID"];

  v9 = [(RTPeopleDiscoveryAdvertisement *)self initWithAddress:v5 rssi:v6 scanDate:v7 contactID:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPeopleDiscoveryAdvertisement alloc];
  address = self->_address;
  rssi = self->_rssi;
  scanDate = self->_scanDate;
  contactID = self->_contactID;

  return [(RTPeopleDiscoveryAdvertisement *)v4 initWithAddress:address rssi:rssi scanDate:scanDate contactID:contactID];
}

@end