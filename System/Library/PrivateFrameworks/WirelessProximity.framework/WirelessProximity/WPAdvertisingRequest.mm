@interface WPAdvertisingRequest
- (WPAdvertisingRequest)init;
- (WPAdvertisingRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)changePriorityValue:(int64_t)value;
- (void)encodeWithCoder:(id)coder;
- (void)setAdvertisingData:(id)data;
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
    data = [MEMORY[0x277CBEA90] data];
    advertisingData = v3->_advertisingData;
    v3->_advertisingData = data;

    *&v3->_clientType = 28;
    v3->_stopOnAdvertisingAddressChange = 0;
    v3->_priorityValue = 0;
    v3->_updateTime = 0.0;
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    advertisingOptions = v3->_advertisingOptions;
    v3->_advertisingOptions = dictionary;

    v3->_holdVoucher = 0;
    advertisementRequestedAt = v3->_advertisementRequestedAt;
    v3->_advertisementRequestedAt = 0;

    advertisingRandomData = v3->_advertisingRandomData;
    v3->_advertisingRandomData = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    [v4 setClientType:{-[WPAdvertisingRequest clientType](self, "clientType")}];
    advertisingData = [(WPAdvertisingRequest *)self advertisingData];
    [v4 setAdvertisingData:advertisingData];

    [v4 setAdvertisingRate:{-[WPAdvertisingRequest advertisingRate](self, "advertisingRate")}];
    [v4 setPriorityValue:{-[WPAdvertisingRequest priorityValue](self, "priorityValue")}];
    [(WPAdvertisingRequest *)self updateTime];
    [v4 setUpdateTime:?];
    [v4 setConnectable:{-[WPAdvertisingRequest connectable](self, "connectable")}];
    advertisingOptions = [(WPAdvertisingRequest *)self advertisingOptions];
    [v4 setAdvertisingOptions:advertisingOptions];

    [v4 setStopOnAdvertisingAddressChange:{-[WPAdvertisingRequest stopOnAdvertisingAddressChange](self, "stopOnAdvertisingAddressChange")}];
    [v4 setHoldVoucher:{-[WPAdvertisingRequest holdVoucher](self, "holdVoucher")}];
    advertisementRequestedAt = [(WPAdvertisingRequest *)self advertisementRequestedAt];
    [v4 setAdvertisementRequestedAt:advertisementRequestedAt];

    advertisingRandomData = [(WPAdvertisingRequest *)self advertisingRandomData];
    [v4 setAdvertisingRandomData:advertisingRandomData];
  }

  return v4;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  clientType = [(WPAdvertisingRequest *)self clientType];
  priorityValue = [(WPAdvertisingRequest *)self priorityValue];
  advertisingRate = [(WPAdvertisingRequest *)self advertisingRate];
  v6 = [(WPAdvertisingRequest *)self advertisingRate]* 0.625;
  advertisingData = [(WPAdvertisingRequest *)self advertisingData];
  connectable = [(WPAdvertisingRequest *)self connectable];
  stopOnAdvertisingAddressChange = [(WPAdvertisingRequest *)self stopOnAdvertisingAddressChange];
  advertisingOptions = [(WPAdvertisingRequest *)self advertisingOptions];
  advertisementRequestedAt = [(WPAdvertisingRequest *)self advertisementRequestedAt];
  longLongValue = [advertisementRequestedAt longLongValue];
  advertisingRandomData = [(WPAdvertisingRequest *)self advertisingRandomData];
  v14 = [v16 stringWithFormat:@"advertising request of type %ld, priority %ld, UseFG %ld (%.2f ms), data %@, connectable %d, addr change %d, options %@, advertisementRequestedAt %llu, randomData %@", clientType, priorityValue, advertisingRate, *&v6, advertisingData, connectable, stopOnAdvertisingAddressChange, advertisingOptions, longLongValue, advertisingRandomData];

  return v14;
}

- (WPAdvertisingRequest)initWithCoder:(id)coder
{
  v21[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = WPAdvertisingRequest;
  v5 = [(WPAdvertisingRequest *)&v20 init];
  if (v5)
  {
    v5->_clientType = [coderCopy decodeIntegerForKey:@"kClientType"];
    v5->_advertisingRate = [coderCopy decodeIntegerForKey:@"kAdvertisingRate"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAdvertisingData"];
    advertisingData = v5->_advertisingData;
    v5->_advertisingData = v6;

    v5->_priorityValue = [coderCopy decodeIntegerForKey:@"kPriorityValue"];
    [coderCopy decodeDoubleForKey:@"kUpdateTime"];
    v5->_updateTime = v8;
    v5->_connectable = [coderCopy decodeBoolForKey:@"kConnectableAdvert"];
    v9 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v21[3] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"kAdvertisingOptions"];
    advertisingOptions = v5->_advertisingOptions;
    v5->_advertisingOptions = v12;

    v5->_stopOnAdvertisingAddressChange = [coderCopy decodeBoolForKey:@"kStopOnAddressChange"];
    v5->_holdVoucher = [coderCopy decodeBoolForKey:@"kHoldVoucher"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAdvertisingRequestedAt"];
    advertisementRequestedAt = v5->_advertisementRequestedAt;
    v5->_advertisementRequestedAt = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAdvertisingRandomData"];
    advertisingRandomData = v5->_advertisingRandomData;
    v5->_advertisingRandomData = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WPAdvertisingRequest clientType](self forKey:{"clientType"), @"kClientType"}];
  [coderCopy encodeInteger:-[WPAdvertisingRequest advertisingRate](self forKey:{"advertisingRate"), @"kAdvertisingRate"}];
  advertisingData = [(WPAdvertisingRequest *)self advertisingData];
  [coderCopy encodeObject:advertisingData forKey:@"kAdvertisingData"];

  [coderCopy encodeInteger:-[WPAdvertisingRequest priorityValue](self forKey:{"priorityValue"), @"kPriorityValue"}];
  [(WPAdvertisingRequest *)self updateTime];
  [coderCopy encodeDouble:@"kUpdateTime" forKey:?];
  [coderCopy encodeBool:-[WPAdvertisingRequest connectable](self forKey:{"connectable"), @"kConnectableAdvert"}];
  advertisingOptions = [(WPAdvertisingRequest *)self advertisingOptions];
  [coderCopy encodeObject:advertisingOptions forKey:@"kAdvertisingOptions"];

  [coderCopy encodeBool:-[WPAdvertisingRequest stopOnAdvertisingAddressChange](self forKey:{"stopOnAdvertisingAddressChange"), @"kStopOnAddressChange"}];
  [coderCopy encodeBool:-[WPAdvertisingRequest holdVoucher](self forKey:{"holdVoucher"), @"kHoldVoucher"}];
  advertisementRequestedAt = [(WPAdvertisingRequest *)self advertisementRequestedAt];
  [coderCopy encodeObject:advertisementRequestedAt forKey:@"kAdvertisingRequestedAt"];

  advertisingRandomData = [(WPAdvertisingRequest *)self advertisingRandomData];
  [coderCopy encodeObject:advertisingRandomData forKey:@"kAdvertisingRandomData"];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  priorityValue = [compareCopy priorityValue];
  if (priorityValue <= [(WPAdvertisingRequest *)self priorityValue])
  {
    priorityValue2 = [compareCopy priorityValue];
    if (priorityValue2 == [(WPAdvertisingRequest *)self priorityValue])
    {
      v6 = 0;
    }

    else
    {
      priorityValue3 = [compareCopy priorityValue];
      if (priorityValue3 >= [(WPAdvertisingRequest *)self priorityValue])
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

- (void)setAdvertisingData:(id)data
{
  dataCopy = data;
  clientType = [(WPAdvertisingRequest *)self clientType];
  v6 = [(NSData *)dataCopy length];
  v7 = clientType == 18;
  v8 = 28;
  if (clientType == 18)
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
    [MEMORY[0x277CCACA8] stringWithFormat:@"The data that was provided is too large (%ld) to fit in a BTLE advertising packet (%d)", -[NSData length](dataCopy, "length") + 6, v9];
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:@"WPBadData" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v11);
  }

  advertisingData = self->_advertisingData;
  self->_advertisingData = dataCopy;
}

- (void)changePriorityValue:(int64_t)value
{
  if (value == 1)
  {

    [(WPAdvertisingRequest *)self setPriorityValue:99];
  }

  else if (!value)
  {
    clientType = [(WPAdvertisingRequest *)self clientType];

    [(WPAdvertisingRequest *)self setClientType:clientType];
  }
}

@end