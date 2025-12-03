@interface LoiLocation
- (BOOL)isEqual:(id)equal;
- (LoiLocation)initWithCoder:(id)coder;
- (LoiLocation)initWithLocation:(id)location;
- (id)toLocation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LoiLocation

- (LoiLocation)initWithLocation:(id)location
{
  locationCopy = location;
  v10.receiver = self;
  v10.super_class = LoiLocation;
  v5 = [(LoiLocation *)&v10 init];
  if (v5)
  {
    [locationCopy locationLatitudeDeg];
    v5->_locationLatitudeDeg = v6;
    [locationCopy locationLongitudeDeg];
    v5->_locationLongitudeDeg = v7;
    v5->_locationReferenceFrame = [locationCopy locationReferenceFrame];
    [locationCopy locationHorizontalUncertaintyMeters];
    v5->_locationHorizontalUncertaintyMeters = v8;
  }

  return v5;
}

- (LoiLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = LoiLocation;
  v5 = [(LoiLocation *)&v10 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"loilat"];
    v5->_locationLatitudeDeg = v6;
    [coderCopy decodeDoubleForKey:@"loilong"];
    v5->_locationLongitudeDeg = v7;
    v5->_locationReferenceFrame = [coderCopy decodeIntForKey:@"loiref"];
    [coderCopy decodeDoubleForKey:@"loiunc"];
    v5->_locationHorizontalUncertaintyMeters = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  locationLatitudeDeg = self->_locationLatitudeDeg;
  coderCopy = coder;
  [coderCopy encodeDouble:@"loilat" forKey:locationLatitudeDeg];
  [coderCopy encodeDouble:@"loilong" forKey:self->_locationLongitudeDeg];
  [coderCopy encodeInt:self->_locationReferenceFrame forKey:@"loiref"];
  [coderCopy encodeDouble:@"loiunc" forKey:self->_locationHorizontalUncertaintyMeters];
}

- (id)toLocation
{
  v3 = objc_alloc_init(PCPLocation);
  [(PCPLocation *)v3 setLocationLatitudeDeg:self->_locationLatitudeDeg];
  [(PCPLocation *)v3 setLocationLongitudeDeg:self->_locationLongitudeDeg];
  [(PCPLocation *)v3 setLocationReferenceFrame:self->_locationReferenceFrame];
  [(PCPLocation *)v3 setLocationHorizontalUncertaintyMeters:self->_locationHorizontalUncertaintyMeters];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (!equalCopy)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  [equalCopy locationLatitudeDeg];
  v6 = v5;
  [(LoiLocation *)self locationLatitudeDeg];
  if (v6 - v7 < 0.0001 && ([equalCopy locationLongitudeDeg], v9 = v8, -[LoiLocation locationLongitudeDeg](self, "locationLongitudeDeg"), v9 - v10 < 0.0001) && (v11 = objc_msgSend(equalCopy, "locationReferenceFrame"), v11 == -[LoiLocation locationReferenceFrame](self, "locationReferenceFrame")))
  {
    [equalCopy locationHorizontalUncertaintyMeters];
    v13 = v12;
    [(LoiLocation *)self locationHorizontalUncertaintyMeters];
    v15 = v13 - v14 < 0.0001;
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

  return v15;
}

@end