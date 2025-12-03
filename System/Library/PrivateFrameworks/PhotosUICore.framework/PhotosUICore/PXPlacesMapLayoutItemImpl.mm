@interface PXPlacesMapLayoutItemImpl
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLayoutItem:(id)item;
- (CLLocationCoordinate2D)coordinate;
- (NSString)description;
- (PXPlacesMapLayoutItemImpl)initWithCoordinate:(CLLocationCoordinate2D)coordinate;
- (unint64_t)hash;
@end

@implementation PXPlacesMapLayoutItemImpl

- (CLLocationCoordinate2D)coordinate
{
  objc_copyStruct(v4, &self->_coordinate, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v11.receiver = self;
  v11.super_class = PXPlacesMapLayoutItemImpl;
  v4 = [(PXPlacesMapLayoutItemImpl *)&v11 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  [v5 appendString:@"---------------------\n"];
  [(PXPlacesMapLayoutItemImpl *)self coordinate];
  v7 = v6;
  [(PXPlacesMapLayoutItemImpl *)self coordinate];
  [v5 appendFormat:@"- Location: %f, %f:\n", v7, v8];
  geotaggables = [(PXPlacesMapLayoutItemImpl *)self geotaggables];
  [v5 appendFormat:@"- Geotaggables: %@:\n", geotaggables];

  return v5;
}

- (BOOL)isEqualToLayoutItem:(id)item
{
  itemCopy = item;
  [(PXPlacesMapLayoutItemImpl *)self coordinate];
  v6 = v5;
  [itemCopy coordinate];
  if (vabdd_f64(v6, v7) >= 2.22044605e-16 || (-[PXPlacesMapLayoutItemImpl coordinate](self, "coordinate"), v9 = v8, [itemCopy coordinate], vabdd_f64(v9, v10) >= 2.22044605e-16))
  {
    v14 = 0;
  }

  else
  {
    geotaggables = [(PXPlacesMapLayoutItemImpl *)self geotaggables];
    geotaggables2 = [itemCopy geotaggables];
    v13 = [geotaggables count];
    if (v13 == [geotaggables2 count])
    {
      v14 = [geotaggables isEqualToOrderedSet:geotaggables2];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PXPlacesMapLayoutItemImpl *)self isEqualToLayoutItem:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  [(PXPlacesMapLayoutItemImpl *)self coordinate];
  v4 = v3;
  [(PXPlacesMapLayoutItemImpl *)self coordinate];
  return fabs(v5 * 1000.0 + v4 * 1000.0);
}

- (PXPlacesMapLayoutItemImpl)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v9.receiver = self;
  v9.super_class = PXPlacesMapLayoutItemImpl;
  v5 = [(PXPlacesMapLayoutItemImpl *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(PXPlacesMapLayoutItemImpl *)v5 setCoordinate:latitude, longitude];
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    [(PXPlacesMapLayoutItemImpl *)v6 setLayoutGeotaggables:orderedSet];
  }

  return v6;
}

@end