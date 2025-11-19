@interface STShowMapPointRequest
- (STShowMapPointRequest)initWithCoder:(id)a3;
- (id)_initWithPlaceData:(id)a3 extSessionGuid:(id)a4 extSessionGuidCreatedTimestamp:(id)a5;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowMapPointRequest

- (STShowMapPointRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STShowMapPointRequest;
  v5 = [(AFSiriRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSTShowMapPointRequestPlaceDataKey"];
    placeData = v5->_placeData;
    v5->_placeData = v6;

    v5->_isCurrentLocation = [v4 decodeBoolForKey:@"kSTShowMapPointRequestIsCurrentLocationKey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSTShowMapPointRequestExtSessionGuidKey"];
    extSessionGuid = v5->_extSessionGuid;
    v5->_extSessionGuid = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSTShowMapPointRequestExtSessionGuidCreatedTimestampKey"];
    extSessionGuidCreatedTimestamp = v5->_extSessionGuidCreatedTimestamp;
    v5->_extSessionGuidCreatedTimestamp = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowMapPointRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_placeData forKey:{@"kSTShowMapPointRequestPlaceDataKey", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_isCurrentLocation forKey:@"kSTShowMapPointRequestIsCurrentLocationKey"];
  [v4 encodeObject:self->_extSessionGuid forKey:@"kSTShowMapPointRequestExtSessionGuidKey"];
  [v4 encodeObject:self->_extSessionGuidCreatedTimestamp forKey:@"kSTShowMapPointRequestExtSessionGuidCreatedTimestampKey"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithPlaceData:(id)a3 extSessionGuid:(id)a4 extSessionGuidCreatedTimestamp:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = STShowMapPointRequest;
  v12 = [(AFSiriRequest *)&v15 init];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_placeData, a3);
    objc_storeStrong(p_isa + 6, a4);
    objc_storeStrong(p_isa + 7, a5);
  }

  return p_isa;
}

@end