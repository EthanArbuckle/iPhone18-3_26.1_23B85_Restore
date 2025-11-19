@interface STStartNavigationRequest
- (STStartNavigationRequest)initWithCoder:(id)a3;
- (id)_initWithStartLocation:(id)a3 destinationLocation:(id)a4 directionsType:(int64_t)a5 arrivalDate:(id)a6 departureDate:(id)a7 extSessionGuid:(id)a8 extSessionGuidCreatedTimestamp:(id)a9;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStartNavigationRequest

- (STStartNavigationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = STStartNavigationRequest;
  v5 = [(AFSiriRequest *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAFStartNavigationRequestStartLocationKey"];
    startLocation = v5->_startLocation;
    v5->_startLocation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAFStartNavigationRequestDestinationLocationKey"];
    destinationLocation = v5->_destinationLocation;
    v5->_destinationLocation = v8;

    v5->_directionsType = [v4 decodeIntegerForKey:@"kAFStartNavigationRequestDirectionsTypeKey"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAFStartNavigationRequestArrivalDateKey"];
    arrivalDate = v5->_arrivalDate;
    v5->_arrivalDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAFStartNavigationRequestDepartureDateKey"];
    departureDate = v5->_departureDate;
    v5->_departureDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAFStartNavigationRequestExtSessionGuidKey"];
    extSessionGuid = v5->_extSessionGuid;
    v5->_extSessionGuid = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAFStartNavigationRequestExtSessionGuidCreatedTimestampKey"];
    extSessionGuidCreatedTimestamp = v5->_extSessionGuidCreatedTimestamp;
    v5->_extSessionGuidCreatedTimestamp = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStartNavigationRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_startLocation forKey:{@"kAFStartNavigationRequestStartLocationKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_destinationLocation forKey:@"kAFStartNavigationRequestDestinationLocationKey"];
  [v4 encodeInteger:self->_directionsType forKey:@"kAFStartNavigationRequestDirectionsTypeKey"];
  [v4 encodeObject:self->_arrivalDate forKey:@"kAFStartNavigationRequestArrivalDateKey"];
  [v4 encodeObject:self->_departureDate forKey:@"kAFStartNavigationRequestDepartureDateKey"];
  [v4 encodeObject:self->_extSessionGuid forKey:@"kAFStartNavigationRequestExtSessionGuidKey"];
  [v4 encodeObject:self->_extSessionGuidCreatedTimestamp forKey:@"kAFStartNavigationRequestExtSessionGuidCreatedTimestampKey"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithStartLocation:(id)a3 destinationLocation:(id)a4 directionsType:(int64_t)a5 arrivalDate:(id)a6 departureDate:(id)a7 extSessionGuid:(id)a8 extSessionGuidCreatedTimestamp:(id)a9
{
  v24 = a3;
  v23 = a4;
  v22 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = STStartNavigationRequest;
  v18 = [(AFSiriRequest *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_startLocation, a3);
    objc_storeStrong(&v19->_destinationLocation, a4);
    v19->_directionsType = a5;
    objc_storeStrong(&v19->_arrivalDate, a6);
    objc_storeStrong(&v19->_departureDate, a7);
    objc_storeStrong(&v19->_extSessionGuid, a8);
    objc_storeStrong(&v19->_extSessionGuidCreatedTimestamp, a9);
  }

  return v19;
}

@end