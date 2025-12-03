@interface PRRelativePosition
+ (id)relativePositionWithTimestamp:(double)timestamp range:(id)range azimuth:(id)azimuth elevation:(id)elevation;
- (BOOL)isEqual:(id)equal;
- (PRRelativePosition)initWithCoder:(id)coder;
- (PRRelativePosition)initWithTimestamp:(double)timestamp range:(id)range azimuth:(id)azimuth elevation:(id)elevation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRRelativePosition

- (PRRelativePosition)initWithTimestamp:(double)timestamp range:(id)range azimuth:(id)azimuth elevation:(id)elevation
{
  rangeCopy = range;
  azimuthCopy = azimuth;
  elevationCopy = elevation;
  v17.receiver = self;
  v17.super_class = PRRelativePosition;
  v14 = [(PRRelativePosition *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_timestamp = timestamp;
    objc_storeStrong(&v14->_range, range);
    objc_storeStrong(&v15->_azimuth, azimuth);
    objc_storeStrong(&v15->_elevation, elevation);
  }

  return v15;
}

+ (id)relativePositionWithTimestamp:(double)timestamp range:(id)range azimuth:(id)azimuth elevation:(id)elevation
{
  elevationCopy = elevation;
  azimuthCopy = azimuth;
  rangeCopy = range;
  v13 = [[self alloc] initWithTimestamp:rangeCopy range:azimuthCopy azimuth:elevationCopy elevation:timestamp];

  return v13;
}

- (PRRelativePosition)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"Timestamp"];
  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Range"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Azimuth"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Elevation"];

  v10 = [(PRRelativePosition *)self initWithTimestamp:v7 range:v8 azimuth:v9 elevation:v6];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"Timestamp" forKey:timestamp];
  [coderCopy encodeObject:self->_range forKey:@"Range"];
  [coderCopy encodeObject:self->_azimuth forKey:@"Azimuth"];
  [coderCopy encodeObject:self->_elevation forKey:@"Elevation"];
  [coderCopy encodeInteger:self->_cycleIndex forKey:@"CycleIndex"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRRelativePosition alloc];
  timestamp = self->_timestamp;
  range = self->_range;
  azimuth = self->_azimuth;
  elevation = self->_elevation;

  return [(PRRelativePosition *)v4 initWithTimestamp:range range:azimuth azimuth:elevation elevation:timestamp];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(PRRelativePosition *)self timestamp];
    v7 = v6;
    [v5 timestamp];
    if (v7 == v8)
    {
      range = [(PRRelativePosition *)self range];
      range2 = [v5 range];
      if ([range isEqual:range2])
      {
        azimuth = [(PRRelativePosition *)self azimuth];
        azimuth2 = [v5 azimuth];
        if ([azimuth isEqual:azimuth2])
        {
          elevation = [(PRRelativePosition *)self elevation];
          elevation2 = [v5 elevation];
          v15 = [elevation isEqual:elevation2];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end