@interface PCXYZCoordinate
- (PCXYZCoordinate)initWithX:(double)x y:(double)y z:(double)z;
- (double)distanceTo:(id)to;
- (id)description;
@end

@implementation PCXYZCoordinate

- (PCXYZCoordinate)initWithX:(double)x y:(double)y z:(double)z
{
  v9.receiver = self;
  v9.super_class = PCXYZCoordinate;
  result = [(PCXYZCoordinate *)&v9 init];
  if (result)
  {
    result->_x = x;
    result->_y = y;
    result->_z = z;
  }

  return result;
}

- (double)distanceTo:(id)to
{
  toCopy = to;
  [(PCXYZCoordinate *)self x];
  v6 = v5;
  [toCopy x];
  v8 = v6 - v7;
  [(PCXYZCoordinate *)self y];
  v10 = v9;
  [toCopy y];
  v12 = v10 - v11;
  [(PCXYZCoordinate *)self z];
  v14 = v13;
  [toCopy z];
  v16 = v15;

  return sqrt(v12 * v12 + v8 * v8 + (v14 - v16) * (v14 - v16));
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(PCXYZCoordinate *)self x];
  v5 = v4;
  [(PCXYZCoordinate *)self y];
  v7 = v6;
  [(PCXYZCoordinate *)self z];
  return [v3 stringWithFormat:@"PCXYZCoordinate: (X: %.2f, Y: %.2f, Z: %.2f)", v5, v7, v8];
}

@end