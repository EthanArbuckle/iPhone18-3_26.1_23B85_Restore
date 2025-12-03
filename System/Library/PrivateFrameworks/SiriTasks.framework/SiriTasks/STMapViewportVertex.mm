@interface STMapViewportVertex
- (STMapViewportVertex)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STMapViewportVertex

- (STMapViewportVertex)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STMapViewportVertex;
  v5 = [(STMapViewportVertex *)&v9 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_latitude"];
    v5->_latitude = v6;
    [coderCopy decodeDoubleForKey:@"_longitude"];
    v5->_longitude = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  latitude = self->_latitude;
  coderCopy = coder;
  [coderCopy encodeDouble:@"_latitude" forKey:latitude];
  [coderCopy encodeDouble:@"_longitude" forKey:self->_longitude];
}

@end