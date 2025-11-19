@interface SPBeaconObservation
- (SPBeaconObservation)init;
- (SPBeaconObservation)initWithBeaconIdentifier:(id)a3 type:(int64_t)a4 date:(id)a5 location:(id)a6;
- (SPBeaconObservation)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (SPBeaconObservation)initWithBeaconIdentifier:(id)a3 type:(int64_t)a4 date:(id)a5 location:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    if (![SPBeaconObservation initWithBeaconIdentifier:a2 type:self date:v12 location:?])
    {
LABEL_9:
      v21 = 0;
      goto LABEL_6;
    }

LABEL_8:
    [SPBeaconObservation initWithBeaconIdentifier:a2 type:self date:? location:?];
    goto LABEL_9;
  }

  if (!v12)
  {
    goto LABEL_8;
  }

  v23.receiver = self;
  v23.super_class = SPBeaconObservation;
  v14 = [(SPBeaconObservation *)&v23 init];
  if (v14)
  {
    v15 = [v11 copy];
    beaconIdentifier = v14->_beaconIdentifier;
    v14->_beaconIdentifier = v15;

    v14->_type = a4;
    v17 = [v12 copy];
    date = v14->_date;
    v14->_date = v17;

    v19 = [v13 copy];
    location = v14->_location;
    v14->_location = v19;
  }

  self = v14;
  v21 = self;
LABEL_6:

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  beaconIdentifier = self->_beaconIdentifier;
  v5 = a3;
  [v5 encodeObject:beaconIdentifier forKey:@"kSPBeaconObservationSecureCodingBeaconIdentifierKey"];
  [v5 encodeInteger:self->_type forKey:@"kSPBeaconObservationSecureCodingTypeKey"];
  [v5 encodeObject:self->_date forKey:@"kSPBeaconObservationSecureCodingDateKey"];
  [v5 encodeObject:self->_location forKey:@"kSPBeaconObservationSecureCodingLocationKey"];
}

- (SPBeaconObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSPBeaconObservationSecureCodingBeaconIdentifierKey"];
  v6 = [v4 decodeIntegerForKey:@"kSPBeaconObservationSecureCodingTypeKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSPBeaconObservationSecureCodingDateKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSPBeaconObservationSecureCodingLocationKey"];

  v9 = [(SPBeaconObservation *)self initWithBeaconIdentifier:v5 type:v6 date:v7 location:v8];
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSUUID *)self->_beaconIdentifier UUIDString];
  v5 = [v3 stringWithFormat:@"SPBeaconObservation, identifier, %@, type, %lld, date, %@, location, %@", v4, self->_type, self->_date, self->_location];

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