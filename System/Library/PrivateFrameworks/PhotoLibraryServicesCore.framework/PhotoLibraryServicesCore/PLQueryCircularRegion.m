@interface PLQueryCircularRegion
- (PLQueryCircularRegion)initWithCenterLatitude:(double)a3 centerLongitude:(double)a4 radius:(double)a5 identifier:(id)a6;
- (PLQueryCircularRegion)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLQueryCircularRegion

- (PLQueryCircularRegion)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PLQueryCircularRegion;
  v5 = [(PLQueryCircularRegion *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latitude"];
    [v6 doubleValue];
    v5->_latitude = v7;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"longitude"];
    [v8 doubleValue];
    v5->_longitude = v9;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"radius"];
    [v10 doubleValue];
    v5->_radius = v11;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  latitude = self->_latitude;
  v9 = a3;
  v6 = [v4 numberWithDouble:latitude];
  [v9 encodeObject:v6 forKey:@"latitude"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_longitude];
  [v9 encodeObject:v7 forKey:@"longitude"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_radius];
  [v9 encodeObject:v8 forKey:@"radius"];

  [v9 encodeObject:self->_identifier forKey:@"identifier"];
}

- (PLQueryCircularRegion)initWithCenterLatitude:(double)a3 centerLongitude:(double)a4 radius:(double)a5 identifier:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = PLQueryCircularRegion;
  v12 = [(PLQueryCircularRegion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_latitude = a3;
    v12->_longitude = a4;
    v12->_radius = a5;
    objc_storeStrong(&v12->_identifier, a6);
  }

  return v13;
}

@end