@interface STStartNavigationRequest
- (STStartNavigationRequest)initWithCoder:(id)coder;
- (id)_initWithStartLocation:(id)location destinationLocation:(id)destinationLocation directionsType:(int64_t)type arrivalDate:(id)date departureDate:(id)departureDate extSessionGuid:(id)guid extSessionGuidCreatedTimestamp:(id)timestamp;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStartNavigationRequest

- (STStartNavigationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = STStartNavigationRequest;
  v5 = [(AFSiriRequest *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAFStartNavigationRequestStartLocationKey"];
    startLocation = v5->_startLocation;
    v5->_startLocation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAFStartNavigationRequestDestinationLocationKey"];
    destinationLocation = v5->_destinationLocation;
    v5->_destinationLocation = v8;

    v5->_directionsType = [coderCopy decodeIntegerForKey:@"kAFStartNavigationRequestDirectionsTypeKey"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAFStartNavigationRequestArrivalDateKey"];
    arrivalDate = v5->_arrivalDate;
    v5->_arrivalDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAFStartNavigationRequestDepartureDateKey"];
    departureDate = v5->_departureDate;
    v5->_departureDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAFStartNavigationRequestExtSessionGuidKey"];
    extSessionGuid = v5->_extSessionGuid;
    v5->_extSessionGuid = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAFStartNavigationRequestExtSessionGuidCreatedTimestampKey"];
    extSessionGuidCreatedTimestamp = v5->_extSessionGuidCreatedTimestamp;
    v5->_extSessionGuidCreatedTimestamp = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStartNavigationRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_startLocation forKey:{@"kAFStartNavigationRequestStartLocationKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_destinationLocation forKey:@"kAFStartNavigationRequestDestinationLocationKey"];
  [coderCopy encodeInteger:self->_directionsType forKey:@"kAFStartNavigationRequestDirectionsTypeKey"];
  [coderCopy encodeObject:self->_arrivalDate forKey:@"kAFStartNavigationRequestArrivalDateKey"];
  [coderCopy encodeObject:self->_departureDate forKey:@"kAFStartNavigationRequestDepartureDateKey"];
  [coderCopy encodeObject:self->_extSessionGuid forKey:@"kAFStartNavigationRequestExtSessionGuidKey"];
  [coderCopy encodeObject:self->_extSessionGuidCreatedTimestamp forKey:@"kAFStartNavigationRequestExtSessionGuidCreatedTimestampKey"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithStartLocation:(id)location destinationLocation:(id)destinationLocation directionsType:(int64_t)type arrivalDate:(id)date departureDate:(id)departureDate extSessionGuid:(id)guid extSessionGuidCreatedTimestamp:(id)timestamp
{
  locationCopy = location;
  destinationLocationCopy = destinationLocation;
  dateCopy = date;
  departureDateCopy = departureDate;
  guidCopy = guid;
  timestampCopy = timestamp;
  v25.receiver = self;
  v25.super_class = STStartNavigationRequest;
  v18 = [(AFSiriRequest *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_startLocation, location);
    objc_storeStrong(&v19->_destinationLocation, destinationLocation);
    v19->_directionsType = type;
    objc_storeStrong(&v19->_arrivalDate, date);
    objc_storeStrong(&v19->_departureDate, departureDate);
    objc_storeStrong(&v19->_extSessionGuid, guid);
    objc_storeStrong(&v19->_extSessionGuidCreatedTimestamp, timestamp);
  }

  return v19;
}

@end