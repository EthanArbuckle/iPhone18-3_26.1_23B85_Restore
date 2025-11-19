@interface PCLatLon
- (PCLatLon)initWithCoder:(id)a3;
- (PCLatLon)initWithLatitude:(double)a3 longitude:(double)a4;
- (double)distanceTo:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCLatLon

- (PCLatLon)initWithLatitude:(double)a3 longitude:(double)a4
{
  v7.receiver = self;
  v7.super_class = PCLatLon;
  result = [(PCLatLon *)&v7 init];
  if (result)
  {
    result->_latitudeDeg = a3;
    result->_longitudeDeg = a4;
  }

  return result;
}

- (double)distanceTo:(id)a3
{
  v4 = a3;
  v5 = [PCLocationUtils latLonToCartesianWithLatLon:self];
  v6 = [PCLocationUtils latLonToCartesianWithLatLon:v4];

  [v5 x];
  v8 = v7;
  [v6 x];
  v10 = v8 - v9;
  [v5 y];
  v12 = v11;
  [v6 y];
  v14 = v12 - v13;
  [v5 z];
  v16 = v15;
  [v6 z];
  v18 = sqrt(v14 * v14 + v10 * v10 + (v16 - v17) * (v16 - v17));

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(PCLatLon *)self latitudeDeg];
  v5 = v4;
  [(PCLatLon *)self longitudeDeg];
  return [v3 stringWithFormat:@"PCLatLon: (Latitude: %.6f°, Longitude: %.6f°)", v5, v6];
}

- (PCLatLon)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"latitude"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"longitude"];
  v8 = v7;

  return [(PCLatLon *)self initWithLatitude:v6 longitude:v8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(PCLatLon *)self latitudeDeg];
  [v4 encodeDouble:@"latitude" forKey:?];
  [(PCLatLon *)self longitudeDeg];
  [v4 encodeDouble:@"longitude" forKey:?];
}

@end