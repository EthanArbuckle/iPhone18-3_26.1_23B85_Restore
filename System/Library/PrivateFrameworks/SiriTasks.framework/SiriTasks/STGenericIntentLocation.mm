@interface STGenericIntentLocation
- (STGenericIntentLocation)initWithCoder:(id)coder;
- (STGenericIntentLocation)initWithName:(id)name latitude:(double)latitude longitude:(double)longitude;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STGenericIntentLocation

- (STGenericIntentLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = STGenericIntentLocation;
  v5 = [(STGenericIntentLocation *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    [coderCopy decodeDoubleForKey:@"_latitude"];
    v5->_latitude = v8;
    [coderCopy decodeDoubleForKey:@"_longitude"];
    v5->_longitude = v9;
    v5->_isLatLong = [coderCopy decodeBoolForKey:@"_isLatLong"];
    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"_name"];
  [coderCopy encodeDouble:@"_latitude" forKey:self->_latitude];
  [coderCopy encodeDouble:@"_longitude" forKey:self->_longitude];
  [coderCopy encodeBool:self->_isLatLong forKey:@"_isLatLong"];
}

- (STGenericIntentLocation)initWithName:(id)name latitude:(double)latitude longitude:(double)longitude
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = STGenericIntentLocation;
  v10 = [(STGenericIntentLocation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, name);
    v11->_latitude = latitude;
    v11->_longitude = longitude;
  }

  return v11;
}

@end