@interface PCXYZCoordinate
- (PCXYZCoordinate)initWithX:(double)a3 y:(double)a4 z:(double)a5;
- (double)distanceTo:(id)a3;
- (id)description;
@end

@implementation PCXYZCoordinate

- (PCXYZCoordinate)initWithX:(double)a3 y:(double)a4 z:(double)a5
{
  v9.receiver = self;
  v9.super_class = PCXYZCoordinate;
  result = [(PCXYZCoordinate *)&v9 init];
  if (result)
  {
    result->_x = a3;
    result->_y = a4;
    result->_z = a5;
  }

  return result;
}

- (double)distanceTo:(id)a3
{
  v4 = a3;
  [(PCXYZCoordinate *)self x];
  v6 = v5;
  [v4 x];
  v8 = v6 - v7;
  [(PCXYZCoordinate *)self y];
  v10 = v9;
  [v4 y];
  v12 = v10 - v11;
  [(PCXYZCoordinate *)self z];
  v14 = v13;
  [v4 z];
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