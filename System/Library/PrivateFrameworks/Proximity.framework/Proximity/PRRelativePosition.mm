@interface PRRelativePosition
+ (id)relativePositionWithTimestamp:(double)a3 range:(id)a4 azimuth:(id)a5 elevation:(id)a6;
- (BOOL)isEqual:(id)a3;
- (PRRelativePosition)initWithCoder:(id)a3;
- (PRRelativePosition)initWithTimestamp:(double)a3 range:(id)a4 azimuth:(id)a5 elevation:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRRelativePosition

- (PRRelativePosition)initWithTimestamp:(double)a3 range:(id)a4 azimuth:(id)a5 elevation:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = PRRelativePosition;
  v14 = [(PRRelativePosition *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_timestamp = a3;
    objc_storeStrong(&v14->_range, a4);
    objc_storeStrong(&v15->_azimuth, a5);
    objc_storeStrong(&v15->_elevation, a6);
  }

  return v15;
}

+ (id)relativePositionWithTimestamp:(double)a3 range:(id)a4 azimuth:(id)a5 elevation:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[a1 alloc] initWithTimestamp:v12 range:v11 azimuth:v10 elevation:a3];

  return v13;
}

- (PRRelativePosition)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"Timestamp"];
  v6 = v5;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Range"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Azimuth"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Elevation"];

  v10 = [(PRRelativePosition *)self initWithTimestamp:v7 range:v8 azimuth:v9 elevation:v6];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeDouble:@"Timestamp" forKey:timestamp];
  [v5 encodeObject:self->_range forKey:@"Range"];
  [v5 encodeObject:self->_azimuth forKey:@"Azimuth"];
  [v5 encodeObject:self->_elevation forKey:@"Elevation"];
  [v5 encodeInteger:self->_cycleIndex forKey:@"CycleIndex"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRRelativePosition alloc];
  timestamp = self->_timestamp;
  range = self->_range;
  azimuth = self->_azimuth;
  elevation = self->_elevation;

  return [(PRRelativePosition *)v4 initWithTimestamp:range range:azimuth azimuth:elevation elevation:timestamp];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(PRRelativePosition *)self timestamp];
    v7 = v6;
    [v5 timestamp];
    if (v7 == v8)
    {
      v9 = [(PRRelativePosition *)self range];
      v10 = [v5 range];
      if ([v9 isEqual:v10])
      {
        v11 = [(PRRelativePosition *)self azimuth];
        v12 = [v5 azimuth];
        if ([v11 isEqual:v12])
        {
          v13 = [(PRRelativePosition *)self elevation];
          v14 = [v5 elevation];
          v15 = [v13 isEqual:v14];
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