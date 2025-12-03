@interface WBSCRDTGeneration
- (BOOL)isEqual:(id)equal;
- (WBSCRDTGeneration)initWithCoder:(id)coder;
- (WBSCRDTGeneration)initWithDeviceIdentifier:(id)identifier generation:(unint64_t)generation;
- (id)incrementedGenerationWithDeviceIdentifier:(id)identifier;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSCRDTGeneration

- (WBSCRDTGeneration)initWithDeviceIdentifier:(id)identifier generation:(unint64_t)generation
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = WBSCRDTGeneration;
  v7 = [(WBSCRDTGeneration *)&v12 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    deviceIdentifier = v7->_deviceIdentifier;
    v7->_deviceIdentifier = v8;

    v7->_generation = generation;
    v10 = v7;
  }

  return v7;
}

- (id)incrementedGenerationWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithDeviceIdentifier:identifierCopy generation:self->_generation + 1];

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  generation = self->_generation;
  v6 = compareCopy[2];
  if (generation >= v6)
  {
    if (generation > v6)
    {
      v7 = NSOrderedDescending;
    }

    else
    {
      v7 = [(NSString *)self->_deviceIdentifier compare:compareCopy[1]];
    }
  }

  else
  {
    v7 = NSOrderedAscending;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_generation == v6->_generation)
    {
      v7 = [(NSString *)self->_deviceIdentifier isEqual:v6->_deviceIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WBSCRDTGeneration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"generation"];

  v7 = [(WBSCRDTGeneration *)self initWithDeviceIdentifier:v5 generation:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  deviceIdentifier = self->_deviceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:deviceIdentifier forKey:@"deviceIdentifier"];
  [coderCopy encodeInteger:self->_generation forKey:@"generation"];
}

@end