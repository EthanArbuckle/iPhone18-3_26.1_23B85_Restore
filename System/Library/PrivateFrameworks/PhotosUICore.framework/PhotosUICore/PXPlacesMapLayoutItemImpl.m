@interface PXPlacesMapLayoutItemImpl
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLayoutItem:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (NSString)description;
- (PXPlacesMapLayoutItemImpl)initWithCoordinate:(CLLocationCoordinate2D)a3;
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
  v9 = [(PXPlacesMapLayoutItemImpl *)self geotaggables];
  [v5 appendFormat:@"- Geotaggables: %@:\n", v9];

  return v5;
}

- (BOOL)isEqualToLayoutItem:(id)a3
{
  v4 = a3;
  [(PXPlacesMapLayoutItemImpl *)self coordinate];
  v6 = v5;
  [v4 coordinate];
  if (vabdd_f64(v6, v7) >= 2.22044605e-16 || (-[PXPlacesMapLayoutItemImpl coordinate](self, "coordinate"), v9 = v8, [v4 coordinate], vabdd_f64(v9, v10) >= 2.22044605e-16))
  {
    v14 = 0;
  }

  else
  {
    v11 = [(PXPlacesMapLayoutItemImpl *)self geotaggables];
    v12 = [v4 geotaggables];
    v13 = [v11 count];
    if (v13 == [v12 count])
    {
      v14 = [v11 isEqualToOrderedSet:v12];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PXPlacesMapLayoutItemImpl *)self isEqualToLayoutItem:v5];
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

- (PXPlacesMapLayoutItemImpl)initWithCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9.receiver = self;
  v9.super_class = PXPlacesMapLayoutItemImpl;
  v5 = [(PXPlacesMapLayoutItemImpl *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(PXPlacesMapLayoutItemImpl *)v5 setCoordinate:latitude, longitude];
    v7 = [MEMORY[0x1E695DFA0] orderedSet];
    [(PXPlacesMapLayoutItemImpl *)v6 setLayoutGeotaggables:v7];
  }

  return v6;
}

@end