@interface SBDeviceMotionVector
- (BOOL)isEqual:(id)equal;
- (SBDeviceMotionVector)initWithDictionary:(id)dictionary;
- (SBDeviceMotionVector)initWithX:(double)x y:(double)y z:(double)z;
- (id)dictionaryRepresentation;
@end

@implementation SBDeviceMotionVector

- (SBDeviceMotionVector)initWithX:(double)x y:(double)y z:(double)z
{
  v9.receiver = self;
  v9.super_class = SBDeviceMotionVector;
  result = [(SBDeviceMotionVector *)&v9 init];
  if (result)
  {
    result->_x = x;
    result->_y = y;
    result->_z = z;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  x = self->_x;
  [equalCopy x];
  if (x == v6 && (y = self->_y, [equalCopy y], y == v8))
  {
    z = self->_z;
    [equalCopy z];
    v11 = z == v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)dictionaryRepresentation
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"x";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_x];
  v9[0] = v3;
  v8[1] = @"y";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_y];
  v9[1] = v4;
  v8[2] = @"z";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_z];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (SBDeviceMotionVector)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"x"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"y"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"z"];

  [v11 doubleValue];
  v13 = v12;

  v14 = [[SBDeviceMotionVector alloc] initWithX:v7 y:v10 z:v13];
  return v14;
}

@end