@interface PCEventVisit
- (PCEventVisit)init;
- (PCEventVisit)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)sensitiveDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCEventVisit

- (PCEventVisit)init
{
  v3.receiver = self;
  v3.super_class = PCEventVisit;
  return [(PCEventVisit *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  placeName = self->_placeName;
  v5 = a3;
  [v5 encodeObject:placeName forKey:@"placeName"];
  [v5 encodeObject:self->_location forKey:@"location"];
  [v5 encodeInteger:self->_mapItemPlaceType forKey:@"placeType"];
  [v5 encodeInteger:self->_placeUserType forKey:@"placeUserType"];
  [v5 encodeObject:self->_poiCategory forKey:@"poiCategory"];
  [v5 encodeInteger:self->_placeSource forKey:@"placeSource"];
}

- (PCEventVisit)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PCEventVisit;
  v5 = [(PCEventVisit *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeName"];
    placeName = v5->_placeName;
    v5->_placeName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v8;

    v5->_mapItemPlaceType = [v4 decodeIntegerForKey:@"placeType"];
    v5->_placeUserType = [v4 decodeIntegerForKey:@"placeUserType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"poiCategory"];
    poiCategory = v5->_poiCategory;
    v5->_poiCategory = v10;

    v5->_placeSource = [v4 decodeIntegerForKey:@"placeSource"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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