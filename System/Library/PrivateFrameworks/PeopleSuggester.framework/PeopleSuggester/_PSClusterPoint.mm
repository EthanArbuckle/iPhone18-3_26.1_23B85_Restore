@interface _PSClusterPoint
- (BOOL)inConvexHull:(id)hull;
- (BOOL)isEqual:(id)equal;
- (_PSClusterPoint)initWithCoder:(id)coder;
- (_PSClusterPoint)initWithDate:(id)date;
- (_PSClusterPoint)initWithX:(double)x Y:(double)y;
- (double)distanceToHull:(id)hull;
- (double)distanceToLineFormedByStart:(id)start End:(id)end;
- (double)euclideanDistanceToPoint:(id)point;
- (id)description;
- (int)findSideOfLineFormedByStart:(id)start End:(id)end;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSClusterPoint

- (_PSClusterPoint)initWithDate:(id)date
{
  dateCopy = date;
  v28.receiver = self;
  v28.super_class = _PSClusterPoint;
  v6 = [(_PSClusterPoint *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timestamp, date);
    v7->_timestampExists = 1;
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v8 setDateFormat:@"HH"];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v8 stringFromDate:dateCopy];
    v11 = [v9 stringWithFormat:@"%@", v10];
    [v11 doubleValue];
    v13 = v12;

    [v8 setDateFormat:@"mm"];
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v8 stringFromDate:dateCopy];
    v16 = [v14 stringWithFormat:@"%@", v15];
    [v16 doubleValue];
    v18 = v17;

    [v8 setDateFormat:@"ss"];
    v19 = MEMORY[0x1E696AEC0];
    v20 = [v8 stringFromDate:dateCopy];
    v21 = [v19 stringWithFormat:@"%@", v20];
    [v21 doubleValue];
    v23 = v22;

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v25 = [currentCalendar component:512 fromDate:dateCopy];
    v26 = __sincos_stret((v18 + v13 * 60.0 + v23 / 60.0 + v18 + v13 * 60.0 + v23 / 60.0) * 3.14159265 / 1440.0);
    v7->_x = v26.__cosval * v25;
    v7->_y = v26.__sinval * v25;
  }

  return v7;
}

- (_PSClusterPoint)initWithX:(double)x Y:(double)y
{
  v7.receiver = self;
  v7.super_class = _PSClusterPoint;
  result = [(_PSClusterPoint *)&v7 init];
  if (result)
  {
    result->_x = x;
    result->_y = y;
    result->_timestampExists = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
        timestamp = [(_PSClusterPoint *)self timestamp];
        timestamp2 = [(_PSClusterPoint *)equalCopy timestamp];
        if ([timestamp isEqual:timestamp2])
        {
          v8 = 1;
          goto LABEL_10;
        }
      }

      [(_PSClusterPoint *)self x];
      v10 = v9;
      [(_PSClusterPoint *)equalCopy x];
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
      [(_PSClusterPoint *)equalCopy y];
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

- (double)euclideanDistanceToPoint:(id)point
{
  x = self->_x;
  pointCopy = point;
  [pointCopy x];
  v7 = (x - v6) * (x - v6);
  y = self->_y;
  [pointCopy y];
  v10 = v9;

  return sqrt(v7 + (y - v10) * (y - v10));
}

- (double)distanceToLineFormedByStart:(id)start End:(id)end
{
  startCopy = start;
  endCopy = end;
  [endCopy x];
  v9 = v8;
  [startCopy x];
  v11 = v9 - v10;
  [(_PSClusterPoint *)self x];
  v13 = v12;
  [startCopy x];
  v15 = v13 - v14;
  [endCopy y];
  v17 = v16;
  [startCopy y];
  v19 = v17 - v18;
  [(_PSClusterPoint *)self y];
  v21 = v20;
  [startCopy y];
  v23 = v19 * (v21 - v22) + v11 * v15;
  [startCopy euclideanDistanceToPoint:endCopy];
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
  [startCopy x];
  v30 = v28 - v29;
  [endCopy x];
  v32 = v31;
  [startCopy x];
  v34 = (v30 - v26 * (v32 - v33)) * (v30 - v26 * (v32 - v33));
  [(_PSClusterPoint *)self y];
  v36 = v35;
  [startCopy y];
  v38 = v36 - v37;
  [endCopy y];
  v40 = v39;
  [startCopy y];
  v42 = sqrt(v34 + (v38 - v26 * (v40 - v41)) * (v38 - v26 * (v40 - v41)));

  return v42;
}

- (int)findSideOfLineFormedByStart:(id)start End:(id)end
{
  endCopy = end;
  startCopy = start;
  [endCopy x];
  v9 = v8;
  [startCopy x];
  v11 = v9 - v10;
  [(_PSClusterPoint *)self y];
  v13 = v12;
  [startCopy y];
  v15 = v13 - v14;
  [endCopy y];
  v17 = v16;

  [startCopy y];
  v19 = v17 - v18;
  [(_PSClusterPoint *)self x];
  v21 = v20;
  [startCopy x];
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

- (BOOL)inConvexHull:(id)hull
{
  hullCopy = hull;
  v5 = 0;
  do
  {
    v6 = v5;
    v7 = [hullCopy count];
    if (v5 >= v7)
    {
      break;
    }

    v8 = [hullCopy objectAtIndexedSubscript:v5];
    v9 = [hullCopy objectAtIndexedSubscript:{++v5 % objc_msgSend(hullCopy, "count")}];
    v10 = [(_PSClusterPoint *)self findSideOfLineFormedByStart:v8 End:v9];
  }

  while (v10 != -1);

  return v6 >= v7;
}

- (double)distanceToHull:(id)hull
{
  hullCopy = hull;
  if ([hullCopy count])
  {
    if ([hullCopy count])
    {
      v5 = 0;
      v6 = 1.79769313e308;
      do
      {
        v7 = [hullCopy objectAtIndexedSubscript:v5];
        v8 = [hullCopy objectAtIndexedSubscript:{++v5 % objc_msgSend(hullCopy, "count")}];
        [(_PSClusterPoint *)self distanceToLineFormedByStart:v7 End:v8];
        v10 = v9;

        if (v10 < v6)
        {
          v6 = v10;
        }
      }

      while (v5 < [hullCopy count]);
    }

    else
    {
      v6 = 1.79769313e308;
    }

    if ([(_PSClusterPoint *)self inConvexHull:hullCopy])
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
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v12 = [v4 initWithFormat:@"<_PSClusterPoint %p> timestampExists=%d timestamp=%@ (%@:%@:%@ weekday=%ld) x=%f y=%f", self, timestampExists, timestamp, v7, v8, v10, objc_msgSend(currentCalendar, "component:fromDate:", 512, self->_timestamp), *&self->_x, *&self->_y];
  }

  else
  {
    v12 = [v4 initWithFormat:@"<_PSClusterPoint %p> timestampExists=%d timestamp=%@ (%@:%@:%@ weekday=%ld) x=%f y=%f", self, timestampExists, timestamp, v7, v8, v9, -1, *&self->_x, *&self->_y];
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  timestamp = [(_PSClusterPoint *)self timestamp];
  v5 = NSStringFromSelector(sel_timestamp);
  [coderCopy encodeObject:timestamp forKey:v5];
}

- (_PSClusterPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_timestamp);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(_PSClusterPoint *)self initWithDate:v7];
  return v8;
}

@end