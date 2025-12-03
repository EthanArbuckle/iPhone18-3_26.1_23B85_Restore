@interface SPIndexInformation
- (NSDateInterval)dateInterval;
- (SPIndexInformation)initWithBeaconIdentifier:(id)identifier sequence:(unsigned __int8)sequence index:(unint64_t)index;
- (SPIndexInformation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPIndexInformation

- (SPIndexInformation)initWithBeaconIdentifier:(id)identifier sequence:(unsigned __int8)sequence index:(unint64_t)index
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SPIndexInformation;
  v10 = [(SPIndexInformation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_beaconIdentifier, identifier);
    v11->_sequence = sequence;
    v11->_index = index;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPIndexInformation alloc];
  sequence = self->_sequence;
  beaconIdentifier = self->_beaconIdentifier;
  index = self->_index;

  return [(SPIndexInformation *)v4 initWithBeaconIdentifier:beaconIdentifier sequence:sequence index:index];
}

- (void)encodeWithCoder:(id)coder
{
  beaconIdentifier = self->_beaconIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:beaconIdentifier forKey:@"beaconIdentifer"];
  [coderCopy encodeInteger:self->_sequence forKey:@"sequence"];
  [coderCopy encodeInt64:self->_index forKey:@"index"];
}

- (SPIndexInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifer"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v5;

  self->_sequence = [coderCopy decodeIntegerForKey:@"sequence"];
  v7 = [coderCopy decodeInt64ForKey:@"index"];

  self->_index = v7;
  return self;
}

- (id)description
{
  sequence = [(SPIndexInformation *)self sequence];
  v4 = @"secondary";
  if (sequence != 2)
  {
    v4 = 0;
  }

  if (sequence == 1)
  {
    v5 = @"primary";
  }

  else
  {
    v5 = v4;
  }

  v6 = MEMORY[0x277CCACA8];
  beaconIdentifier = [(SPIndexInformation *)self beaconIdentifier];
  v8 = [v6 stringWithFormat:@"%@:%@/%llu", beaconIdentifier, v5, -[SPIndexInformation index](self, "index")];

  return v8;
}

- (NSDateInterval)dateInterval
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [v2 initWithStartDate:distantPast duration:0.0];

  return v4;
}

@end