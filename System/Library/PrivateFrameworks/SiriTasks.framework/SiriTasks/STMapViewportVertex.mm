@interface STMapViewportVertex
- (STMapViewportVertex)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STMapViewportVertex

- (STMapViewportVertex)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STMapViewportVertex;
  v5 = [(STMapViewportVertex *)&v9 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_latitude"];
    v5->_latitude = v6;
    [v4 decodeDoubleForKey:@"_longitude"];
    v5->_longitude = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  latitude = self->_latitude;
  v5 = a3;
  [v5 encodeDouble:@"_latitude" forKey:latitude];
  [v5 encodeDouble:@"_longitude" forKey:self->_longitude];
}

@end