@interface WBSCRDTGeneration
- (BOOL)isEqual:(id)a3;
- (WBSCRDTGeneration)initWithCoder:(id)a3;
- (WBSCRDTGeneration)initWithDeviceIdentifier:(id)a3 generation:(unint64_t)a4;
- (id)incrementedGenerationWithDeviceIdentifier:(id)a3;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSCRDTGeneration

- (WBSCRDTGeneration)initWithDeviceIdentifier:(id)a3 generation:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = WBSCRDTGeneration;
  v7 = [(WBSCRDTGeneration *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    deviceIdentifier = v7->_deviceIdentifier;
    v7->_deviceIdentifier = v8;

    v7->_generation = a4;
    v10 = v7;
  }

  return v7;
}

- (id)incrementedGenerationWithDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeviceIdentifier:v4 generation:self->_generation + 1];

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  generation = self->_generation;
  v6 = v4[2];
  if (generation >= v6)
  {
    if (generation > v6)
    {
      v7 = NSOrderedDescending;
    }

    else
    {
      v7 = [(NSString *)self->_deviceIdentifier compare:v4[1]];
    }
  }

  else
  {
    v7 = NSOrderedAscending;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = v4;
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

- (WBSCRDTGeneration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"generation"];

  v7 = [(WBSCRDTGeneration *)self initWithDeviceIdentifier:v5 generation:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  deviceIdentifier = self->_deviceIdentifier;
  v5 = a3;
  [v5 encodeObject:deviceIdentifier forKey:@"deviceIdentifier"];
  [v5 encodeInteger:self->_generation forKey:@"generation"];
}

@end