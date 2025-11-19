@interface WPAdvertisingRequest
- (WPAdvertisingRequest)init;
- (WPAdvertisingRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)changePriorityValue:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAdvertisingData:(id)a3;
@end

@implementation WPAdvertisingRequest

- (WPAdvertisingRequest)init
{
  v11.receiver = self;
  v11.super_class = WPAdvertisingRequest;
  v2 = [(WPAdvertisingRequest *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_advertisingRate = 290;
    v4 = [MEMORY[0x277CBEA90] data];
    advertisingData = v3->_advertisingData;
    v3->_advertisingData = v4;

    *&v3->_clientType = 28;
    v3->_stopOnAdvertisingAddressChange = 0;
    v3->_priorityValue = 0;
    v3->_updateTime = 0.0;
    v6 = [MEMORY[0x277CBEAC0] dictionary];
    advertisingOptions = v3->_advertisingOptions;
    v3->_advertisingOptions = v6;

    v3->_holdVoucher = 0;
    advertisementRequestedAt = v3->_advertisementRequestedAt;
    v3->_advertisementRequestedAt = 0;

    advertisingRandomData = v3->_advertisingRandomData;
    v3->_advertisingRandomData = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    [v4 setClientType:{-[WPAdvertisingRequest clientType](self, "clientType")}];
    v5 = [(WPAdvertisingRequest *)self advertisingData];
    [v4 setAdvertisingData:v5];

    [v4 setAdvertisingRate:{-[WPAdvertisingRequest advertisingRate](self, "advertisingRate")}];
    [v4 setPriorityValue:{-[WPAdvertisingRequest priorityValue](self, "priorityValue")}];
    [(WPAdvertisingRequest *)self updateTime];
    [v4 setUpdateTime:?];
    [v4 setConnectable:{-[WPAdvertisingRequest connectable](self, "connectable")}];
    v6 = [(WPAdvertisingRequest *)self advertisingOptions];
    [v4 setAdvertisingOptions:v6];

    [v4 setStopOnAdvertisingAddressChange:{-[WPAdvertisingRequest stopOnAdvertisingAddressChange](self, "stopOnAdvertisingAddressChange")}];
    [v4 setHoldVoucher:{-[WPAdvertisingRequest holdVoucher](self, "holdVoucher")}];
    v7 = [(WPAdvertisingRequest *)self advertisementRequestedAt];
    [v4 setAdvertisementRequestedAt:v7];

    v8 = [(WPAdvertisingRequest *)self advertisingRandomData];
    [v4 setAdvertisingRandomData:v8];
  }

  return v4;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v3 = [(WPAdvertisingRequest *)self clientType];
  v4 = [(WPAdvertisingRequest *)self priorityValue];
  v5 = [(WPAdvertisingRequest *)self advertisingRate];
  v6 = [(WPAdvertisingRequest *)self advertisingRate]* 0.625;
  v7 = [(WPAdvertisingRequest *)self advertisingData];
  v8 = [(WPAdvertisingRequest *)self connectable];
  v9 = [(WPAdvertisingRequest *)self stopOnAdvertisingAddressChange];
  v10 = [(WPAdvertisingRequest *)self advertisingOptions];
  v11 = [(WPAdvertisingRequest *)self advertisementRequestedAt];
  v12 = [v11 longLongValue];
  v13 = [(WPAdvertisingRequest *)self advertisingRandomData];
  v14 = [v16 stringWithFormat:@"advertising request of type %ld, priority %ld, UseFG %ld (%.2f ms), data %@, connectable %d, addr change %d, options %@, advertisementRequestedAt %llu, randomData %@", v3, v4, v5, *&v6, v7, v8, v9, v10, v12, v13];

  return v14;
}

- (WPAdvertisingRequest)initWithCoder:(id)a3
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = WPAdvertisingRequest;
  v5 = [(WPAdvertisingRequest *)&v20 init];
  if (v5)
  {
    v5->_clientType = [v4 decodeIntegerForKey:@"kClientType"];
    v5->_advertisingRate = [v4 decodeIntegerForKey:@"kAdvertisingRate"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAdvertisingData"];
    advertisingData = v5->_advertisingData;
    v5->_advertisingData = v6;

    v5->_priorityValue = [v4 decodeIntegerForKey:@"kPriorityValue"];
    [v4 decodeDoubleForKey:@"kUpdateTime"];
    v5->_updateTime = v8;
    v5->_connectable = [v4 decodeBoolForKey:@"kConnectableAdvert"];
    v9 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v21[3] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    v11 = [v9 setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"kAdvertisingOptions"];
    advertisingOptions = v5->_advertisingOptions;
    v5->_advertisingOptions = v12;

    v5->_stopOnAdvertisingAddressChange = [v4 decodeBoolForKey:@"kStopOnAddressChange"];
    v5->_holdVoucher = [v4 decodeBoolForKey:@"kHoldVoucher"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAdvertisingRequestedAt"];
    advertisementRequestedAt = v5->_advertisementRequestedAt;
    v5->_advertisementRequestedAt = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAdvertisingRandomData"];
    advertisingRandomData = v5->_advertisingRandomData;
    v5->_advertisingRandomData = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[WPAdvertisingRequest clientType](self forKey:{"clientType"), @"kClientType"}];
  [v4 encodeInteger:-[WPAdvertisingRequest advertisingRate](self forKey:{"advertisingRate"), @"kAdvertisingRate"}];
  v5 = [(WPAdvertisingRequest *)self advertisingData];
  [v4 encodeObject:v5 forKey:@"kAdvertisingData"];

  [v4 encodeInteger:-[WPAdvertisingRequest priorityValue](self forKey:{"priorityValue"), @"kPriorityValue"}];
  [(WPAdvertisingRequest *)self updateTime];
  [v4 encodeDouble:@"kUpdateTime" forKey:?];
  [v4 encodeBool:-[WPAdvertisingRequest connectable](self forKey:{"connectable"), @"kConnectableAdvert"}];
  v6 = [(WPAdvertisingRequest *)self advertisingOptions];
  [v4 encodeObject:v6 forKey:@"kAdvertisingOptions"];

  [v4 encodeBool:-[WPAdvertisingRequest stopOnAdvertisingAddressChange](self forKey:{"stopOnAdvertisingAddressChange"), @"kStopOnAddressChange"}];
  [v4 encodeBool:-[WPAdvertisingRequest holdVoucher](self forKey:{"holdVoucher"), @"kHoldVoucher"}];
  v7 = [(WPAdvertisingRequest *)self advertisementRequestedAt];
  [v4 encodeObject:v7 forKey:@"kAdvertisingRequestedAt"];

  v8 = [(WPAdvertisingRequest *)self advertisingRandomData];
  [v4 encodeObject:v8 forKey:@"kAdvertisingRandomData"];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [v4 priorityValue];
  if (v5 <= [(WPAdvertisingRequest *)self priorityValue])
  {
    v7 = [v4 priorityValue];
    if (v7 == [(WPAdvertisingRequest *)self priorityValue])
    {
      v6 = 0;
    }

    else
    {
      v8 = [v4 priorityValue];
      if (v8 >= [(WPAdvertisingRequest *)self priorityValue])
      {
        v10 = [MEMORY[0x277CBEAD8] exceptionWithName:@"PriorityValueError" reason:@"There was an error comparing the priority values. Are you sure it was set for the advertising request?" userInfo:0];
        objc_exception_throw(v10);
      }

      v6 = -1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setAdvertisingData:(id)a3
{
  v4 = a3;
  v5 = [(WPAdvertisingRequest *)self clientType];
  v6 = [(NSData *)v4 length];
  v7 = v5 == 18;
  v8 = 28;
  if (v5 == 18)
  {
    v9 = 31;
  }

  else
  {
    v9 = 28;
  }

  if (v7)
  {
    v8 = 31;
  }

  if (v6 + 6 > v8)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"The data that was provided is too large (%ld) to fit in a BTLE advertising packet (%d)", -[NSData length](v4, "length") + 6, v9];
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:@"WPBadData" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v11);
  }

  advertisingData = self->_advertisingData;
  self->_advertisingData = v4;
}

- (void)changePriorityValue:(int64_t)a3
{
  if (a3 == 1)
  {

    [(WPAdvertisingRequest *)self setPriorityValue:99];
  }

  else if (!a3)
  {
    v4 = [(WPAdvertisingRequest *)self clientType];

    [(WPAdvertisingRequest *)self setClientType:v4];
  }
}

@end