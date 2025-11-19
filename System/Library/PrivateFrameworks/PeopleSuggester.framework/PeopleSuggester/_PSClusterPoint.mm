@interface _PSClusterPoint
- (BOOL)inConvexHull:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_PSClusterPoint)initWithCoder:(id)a3;
- (_PSClusterPoint)initWithDate:(id)a3;
- (_PSClusterPoint)initWithX:(double)a3 Y:(double)a4;
- (double)distanceToHull:(id)a3;
- (double)distanceToLineFormedByStart:(id)a3 End:(id)a4;
- (double)euclideanDistanceToPoint:(id)a3;
- (id)description;
- (int)findSideOfLineFormedByStart:(id)a3 End:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSClusterPoint

- (_PSClusterPoint)initWithDate:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = _PSClusterPoint;
  v6 = [(_PSClusterPoint *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timestamp, a3);
    v7->_timestampExists = 1;
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v8 setDateFormat:@"HH"];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v8 stringFromDate:v5];
    v11 = [v9 stringWithFormat:@"%@", v10];
    [v11 doubleValue];
    v13 = v12;

    [v8 setDateFormat:@"mm"];
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v8 stringFromDate:v5];
    v16 = [v14 stringWithFormat:@"%@", v15];
    [v16 doubleValue];
    v18 = v17;

    [v8 setDateFormat:@"ss"];
    v19 = MEMORY[0x1E696AEC0];
    v20 = [v8 stringFromDate:v5];
    v21 = [v19 stringWithFormat:@"%@", v20];
    [v21 doubleValue];
    v23 = v22;

    v24 = [MEMORY[0x1E695DEE8] currentCalendar];
    v25 = [v24 component:512 fromDate:v5];
    v26 = __sincos_stret((v18 + v13 * 60.0 + v23 / 60.0 + v18 + v13 * 60.0 + v23 / 60.0) * 3.14159265 / 1440.0);
    v7->_x = v26.__cosval * v25;
    v7->_y = v26.__sinval * v25;
  }

  return v7;
}

- (_PSClusterPoint)initWithX:(double)a3 Y:(double)a4
{
  v7.receiver = self;
  v7.super_class = _PSClusterPoint;
  result = [(_PSClusterPoint *)&v7 init];
  if (result)
  {
    result->_x = a3;
    result->_y = a4;
    result->_timestampExists = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      timestampExists = self->_timestampExists;
      if (timestampExists)
      {
        v3 = [(_PSClusterPoint *)self timestamp];
        v4 = [(_PSClusterPoint *)v6 timestamp];
        if ([v3 isEqual:v4])
        {
          v8 = 1;
          goto LABEL_10;
        }
      }

      [(_PSClusterPoint *)self x];
      v10 = v9;
      [(_PSClusterPoint *)v6 x];
      if (v10 != v11)
      {
        v8 = 0;
        if (!timestampExists)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      [(_PSClusterPoint *)self y];
      v13 = v12;
      [(_PSClusterPoint *)v6 y];
      v8 = v13 == v14;
      if (timestampExists)
      {
LABEL_10:
      }
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  [(_PSClusterPoint *)self x];
  v4 = v3;
  [(_PSClusterPoint *)self y];
  return (v4 * v5);
}

- (double)euclideanDistanceToPoint:(id)a3
{
  x = self->_x;
  v5 = a3;
  [v5 x];
  v7 = (x - v6) * (x - v6);
  y = self->_y;
  [v5 y];
  v10 = v9;

  return sqrt(v7 + (y - v10) * (y - v10));
}

- (double)distanceToLineFormedByStart:(id)a3 End:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 x];
  v9 = v8;
  [v6 x];
  v11 = v9 - v10;
  [(_PSClusterPoint *)self x];
  v13 = v12;
  [v6 x];
  v15 = v13 - v14;
  [v7 y];
  v17 = v16;
  [v6 y];
  v19 = v17 - v18;
  [(_PSClusterPoint *)self y];
  v21 = v20;
  [v6 y];
  v23 = v19 * (v21 - v22) + v11 * v15;
  [v6 euclideanDistanceToPoint:v7];
  v25 = v23 / (v24 * v24);
  v26 = 0.0;
  if (v25 >= 0.0)
  {
    v26 = v25;
    if (v25 > 1.0)
    {
      v26 = 1.0;
    }
  }

  [(_PSClusterPoint *)self x];
  v28 = v27;
  [v6 x];
  v30 = v28 - v29;
  [v7 x];
  v32 = v31;
  [v6 x];
  v34 = (v30 - v26 * (v32 - v33)) * (v30 - v26 * (v32 - v33));
  [(_PSClusterPoint *)self y];
  v36 = v35;
  [v6 y];
  v38 = v36 - v37;
  [v7 y];
  v40 = v39;
  [v6 y];
  v42 = sqrt(v34 + (v38 - v26 * (v40 - v41)) * (v38 - v26 * (v40 - v41)));

  return v42;
}

- (int)findSideOfLineFormedByStart:(id)a3 End:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 x];
  v9 = v8;
  [v7 x];
  v11 = v9 - v10;
  [(_PSClusterPoint *)self y];
  v13 = v12;
  [v7 y];
  v15 = v13 - v14;
  [v6 y];
  v17 = v16;

  [v7 y];
  v19 = v17 - v18;
  [(_PSClusterPoint *)self x];
  v21 = v20;
  [v7 x];
  v23 = v22;

  v24 = v11 * v15 - v19 * (v21 - v23);
  if (v24 >= 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  if (v24 > 0.0)
  {
    return 1;
  }

  else
  {
    return v25;
  }
}

- (BOOL)inConvexHull:(id)a3
{
  v4 = a3;
  v5 = 0;
  do
  {
    v6 = v5;
    v7 = [v4 count];
    if (v5 >= v7)
    {
      break;
    }

    v8 = [v4 objectAtIndexedSubscript:v5];
    v9 = [v4 objectAtIndexedSubscript:{++v5 % objc_msgSend(v4, "count")}];
    v10 = [(_PSClusterPoint *)self findSideOfLineFormedByStart:v8 End:v9];
  }

  while (v10 != -1);

  return v6 >= v7;
}

- (double)distanceToHull:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if ([v4 count])
    {
      v5 = 0;
      v6 = 1.79769313e308;
      do
      {
        v7 = [v4 objectAtIndexedSubscript:v5];
        v8 = [v4 objectAtIndexedSubscript:{++v5 % objc_msgSend(v4, "count")}];
        [(_PSClusterPoint *)self distanceToLineFormedByStart:v7 End:v8];
        v10 = v9;

        if (v10 < v6)
        {
          v6 = v10;
        }
      }

      while (v5 < [v4 count]);
    }

    else
    {
      v6 = 1.79769313e308;
    }

    if ([(_PSClusterPoint *)self inConvexHull:v4])
    {
      v11 = -v6;
    }

    else
    {
      v11 = v6;
    }
  }

  else
  {
    v11 = 14.0;
  }

  return v11;
}

- (id)description
{
  if (self->_timestamp)
  {
    v3 = objc_opt_new();
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  timestampExists = self->_timestampExists;
  timestamp = self->_timestamp;
  [v3 setDateFormat:@"HH"];
  v7 = [v3 stringFromDate:self->_timestamp];
  [v3 setDateFormat:@"mm"];
  v8 = [v3 stringFromDate:self->_timestamp];
  [v3 setDateFormat:@"ss"];
  v9 = [v3 stringFromDate:self->_timestamp];
  v10 = v9;
  if (self->_timestamp)
  {
    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    v12 = [v4 initWithFormat:@"<_PSClusterPoint %p> timestampExists=%d timestamp=%@ (%@:%@:%@ weekday=%ld) x=%f y=%f", self, timestampExists, timestamp, v7, v8, v10, objc_msgSend(v11, "component:fromDate:", 512, self->_timestamp), *&self->_x, *&self->_y];
  }

  else
  {
    v12 = [v4 initWithFormat:@"<_PSClusterPoint %p> timestampExists=%d timestamp=%@ (%@:%@:%@ weekday=%ld) x=%f y=%f", self, timestampExists, timestamp, v7, v8, v9, -1, *&self->_x, *&self->_y];
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_PSClusterPoint *)self timestamp];
  v5 = NSStringFromSelector(sel_timestamp);
  [v4 encodeObject:v6 forKey:v5];
}

- (_PSClusterPoint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_timestamp);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(_PSClusterPoint *)self initWithDate:v7];
  return v8;
}

@end