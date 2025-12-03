@interface SPBeaconObservation
- (SPBeaconObservation)init;
- (SPBeaconObservation)initWithBeaconIdentifier:(id)identifier type:(int64_t)type date:(id)date location:(id)location;
- (SPBeaconObservation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconObservation

- (SPBeaconObservation)init
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(sel_initWithBeaconIdentifier_type_date_location_);
  v5 = [v2 stringWithFormat:@"%@ requires the use of the initializer: %@", v3, v4];

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v5 userInfo:0];
  objc_exception_throw(v6);
}

- (SPBeaconObservation)initWithBeaconIdentifier:(id)identifier type:(int64_t)type date:(id)date location:(id)location
{
  identifierCopy = identifier;
  dateCopy = date;
  locationCopy = location;
  if (!identifierCopy)
  {
    if (![SPBeaconObservation initWithBeaconIdentifier:a2 type:self date:dateCopy location:?])
    {
LABEL_9:
      selfCopy = 0;
      goto LABEL_6;
    }

LABEL_8:
    [SPBeaconObservation initWithBeaconIdentifier:a2 type:self date:? location:?];
    goto LABEL_9;
  }

  if (!dateCopy)
  {
    goto LABEL_8;
  }

  v23.receiver = self;
  v23.super_class = SPBeaconObservation;
  v14 = [(SPBeaconObservation *)&v23 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    beaconIdentifier = v14->_beaconIdentifier;
    v14->_beaconIdentifier = v15;

    v14->_type = type;
    v17 = [dateCopy copy];
    date = v14->_date;
    v14->_date = v17;

    v19 = [locationCopy copy];
    location = v14->_location;
    v14->_location = v19;
  }

  self = v14;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  beaconIdentifier = self->_beaconIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:beaconIdentifier forKey:@"kSPBeaconObservationSecureCodingBeaconIdentifierKey"];
  [coderCopy encodeInteger:self->_type forKey:@"kSPBeaconObservationSecureCodingTypeKey"];
  [coderCopy encodeObject:self->_date forKey:@"kSPBeaconObservationSecureCodingDateKey"];
  [coderCopy encodeObject:self->_location forKey:@"kSPBeaconObservationSecureCodingLocationKey"];
}

- (SPBeaconObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSPBeaconObservationSecureCodingBeaconIdentifierKey"];
  v6 = [coderCopy decodeIntegerForKey:@"kSPBeaconObservationSecureCodingTypeKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSPBeaconObservationSecureCodingDateKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSPBeaconObservationSecureCodingLocationKey"];

  v9 = [(SPBeaconObservation *)self initWithBeaconIdentifier:v5 type:v6 date:v7 location:v8];
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->_beaconIdentifier UUIDString];
  v5 = [v3 stringWithFormat:@"SPBeaconObservation, identifier, %@, type, %lld, date, %@, location, %@", uUIDString, self->_type, self->_date, self->_location];

  return v5;
}

- (BOOL)initWithBeaconIdentifier:(uint64_t)a3 type:date:location:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SPBeaconObservation.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"beaconIdentifier"}];

  return a3 == 0;
}

- (void)initWithBeaconIdentifier:(uint64_t)a1 type:(uint64_t)a2 date:location:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SPBeaconObservation.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"date"}];
}

@end