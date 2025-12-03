@interface PLQueryCircularRegion
- (PLQueryCircularRegion)initWithCenterLatitude:(double)latitude centerLongitude:(double)longitude radius:(double)radius identifier:(id)identifier;
- (PLQueryCircularRegion)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLQueryCircularRegion

- (PLQueryCircularRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PLQueryCircularRegion;
  v5 = [(PLQueryCircularRegion *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latitude"];
    [v6 doubleValue];
    v5->_latitude = v7;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"longitude"];
    [v8 doubleValue];
    v5->_longitude = v9;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"radius"];
    [v10 doubleValue];
    v5->_radius = v11;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  latitude = self->_latitude;
  coderCopy = coder;
  v6 = [v4 numberWithDouble:latitude];
  [coderCopy encodeObject:v6 forKey:@"latitude"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_longitude];
  [coderCopy encodeObject:v7 forKey:@"longitude"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_radius];
  [coderCopy encodeObject:v8 forKey:@"radius"];

  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (PLQueryCircularRegion)initWithCenterLatitude:(double)latitude centerLongitude:(double)longitude radius:(double)radius identifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = PLQueryCircularRegion;
  v12 = [(PLQueryCircularRegion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_latitude = latitude;
    v12->_longitude = longitude;
    v12->_radius = radius;
    objc_storeStrong(&v12->_identifier, identifier);
  }

  return v13;
}

@end