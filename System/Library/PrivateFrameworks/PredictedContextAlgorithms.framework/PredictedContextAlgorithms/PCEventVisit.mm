@interface PCEventVisit
- (PCEventVisit)init;
- (PCEventVisit)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)sensitiveDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCEventVisit

- (PCEventVisit)init
{
  v3.receiver = self;
  v3.super_class = PCEventVisit;
  return [(PCEventVisit *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  placeName = self->_placeName;
  coderCopy = coder;
  [coderCopy encodeObject:placeName forKey:@"placeName"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeInteger:self->_mapItemPlaceType forKey:@"placeType"];
  [coderCopy encodeInteger:self->_placeUserType forKey:@"placeUserType"];
  [coderCopy encodeObject:self->_poiCategory forKey:@"poiCategory"];
  [coderCopy encodeInteger:self->_placeSource forKey:@"placeSource"];
}

- (PCEventVisit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PCEventVisit;
  v5 = [(PCEventVisit *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeName"];
    placeName = v5->_placeName;
    v5->_placeName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v8;

    v5->_mapItemPlaceType = [coderCopy decodeIntegerForKey:@"placeType"];
    v5->_placeUserType = [coderCopy decodeIntegerForKey:@"placeUserType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"poiCategory"];
    poiCategory = v5->_poiCategory;
    v5->_poiCategory = v10;

    v5->_placeSource = [coderCopy decodeIntegerForKey:@"placeSource"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PCEventVisit);
  objc_storeStrong(&v4->_location, self->_location);
  objc_storeStrong(&v4->_placeName, self->_placeName);
  v4->_placeUserType = self->_placeUserType;
  v4->_mapItemPlaceType = self->_mapItemPlaceType;
  v4->_placeSource = self->_placeSource;
  objc_storeStrong(&v4->_poiCategory, self->_poiCategory);
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ placeUserType:%d, poiCategory:%@, placeSource:%llu, mapItemPlaceType:%d, mapItemID:%lu>", v5, self->_placeUserType, self->_poiCategory, self->_placeSource, self->_mapItemPlaceType, self->_mapItemID];

  return v6;
}

- (id)sensitiveDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PCEventVisit *)self description];
  placeName = self->_placeName;
  v6 = [v3 stringWithFormat:@"%@ <placeName:%@, location:%@>", v4, placeName, self->_location];

  return v6;
}

@end