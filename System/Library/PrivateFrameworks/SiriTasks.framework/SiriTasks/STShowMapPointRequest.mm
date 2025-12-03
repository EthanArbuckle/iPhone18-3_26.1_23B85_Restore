@interface STShowMapPointRequest
- (STShowMapPointRequest)initWithCoder:(id)coder;
- (id)_initWithPlaceData:(id)data extSessionGuid:(id)guid extSessionGuidCreatedTimestamp:(id)timestamp;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowMapPointRequest

- (STShowMapPointRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STShowMapPointRequest;
  v5 = [(AFSiriRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSTShowMapPointRequestPlaceDataKey"];
    placeData = v5->_placeData;
    v5->_placeData = v6;

    v5->_isCurrentLocation = [coderCopy decodeBoolForKey:@"kSTShowMapPointRequestIsCurrentLocationKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSTShowMapPointRequestExtSessionGuidKey"];
    extSessionGuid = v5->_extSessionGuid;
    v5->_extSessionGuid = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSTShowMapPointRequestExtSessionGuidCreatedTimestampKey"];
    extSessionGuidCreatedTimestamp = v5->_extSessionGuidCreatedTimestamp;
    v5->_extSessionGuidCreatedTimestamp = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowMapPointRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_placeData forKey:{@"kSTShowMapPointRequestPlaceDataKey", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_isCurrentLocation forKey:@"kSTShowMapPointRequestIsCurrentLocationKey"];
  [coderCopy encodeObject:self->_extSessionGuid forKey:@"kSTShowMapPointRequestExtSessionGuidKey"];
  [coderCopy encodeObject:self->_extSessionGuidCreatedTimestamp forKey:@"kSTShowMapPointRequestExtSessionGuidCreatedTimestampKey"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithPlaceData:(id)data extSessionGuid:(id)guid extSessionGuidCreatedTimestamp:(id)timestamp
{
  dataCopy = data;
  guidCopy = guid;
  timestampCopy = timestamp;
  v15.receiver = self;
  v15.super_class = STShowMapPointRequest;
  v12 = [(AFSiriRequest *)&v15 init];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_placeData, data);
    objc_storeStrong(p_isa + 6, guid);
    objc_storeStrong(p_isa + 7, timestamp);
  }

  return p_isa;
}

@end