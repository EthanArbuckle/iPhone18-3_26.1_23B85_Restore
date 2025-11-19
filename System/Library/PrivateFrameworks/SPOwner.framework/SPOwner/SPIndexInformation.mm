@interface SPIndexInformation
- (NSDateInterval)dateInterval;
- (SPIndexInformation)initWithBeaconIdentifier:(id)a3 sequence:(unsigned __int8)a4 index:(unint64_t)a5;
- (SPIndexInformation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPIndexInformation

- (SPIndexInformation)initWithBeaconIdentifier:(id)a3 sequence:(unsigned __int8)a4 index:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SPIndexInformation;
  v10 = [(SPIndexInformation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_beaconIdentifier, a3);
    v11->_sequence = a4;
    v11->_index = a5;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPIndexInformation alloc];
  sequence = self->_sequence;
  beaconIdentifier = self->_beaconIdentifier;
  index = self->_index;

  return [(SPIndexInformation *)v4 initWithBeaconIdentifier:beaconIdentifier sequence:sequence index:index];
}

- (void)encodeWithCoder:(id)a3
{
  beaconIdentifier = self->_beaconIdentifier;
  v5 = a3;
  [v5 encodeObject:beaconIdentifier forKey:@"beaconIdentifer"];
  [v5 encodeInteger:self->_sequence forKey:@"sequence"];
  [v5 encodeInt64:self->_index forKey:@"index"];
}

- (SPIndexInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifer"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v5;

  self->_sequence = [v4 decodeIntegerForKey:@"sequence"];
  v7 = [v4 decodeInt64ForKey:@"index"];

  self->_index = v7;
  return self;
}

- (id)description
{
  v3 = [(SPIndexInformation *)self sequence];
  v4 = @"secondary";
  if (v3 != 2)
  {
    v4 = 0;
  }

  if (v3 == 1)
  {
    v5 = @"primary";
  }

  else
  {
    v5 = v4;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [(SPIndexInformation *)self beaconIdentifier];
  v8 = [v6 stringWithFormat:@"%@:%@/%llu", v7, v5, -[SPIndexInformation index](self, "index")];

  return v8;
}

- (NSDateInterval)dateInterval
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  v3 = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [v2 initWithStartDate:v3 duration:0.0];

  return v4;
}

@end